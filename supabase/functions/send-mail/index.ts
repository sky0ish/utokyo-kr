// ─── 회원 안내 메일 발송 (운영진 전용) ──────────────────────────
// Supabase Edge Function
//
// 보내는 방법은 둘 중 하나만 갖추면 됩니다.
//   ① 지메일 (권장)
//        GMAIL_USER     : utokyo2011@gmail.com
//        GMAIL_APP_PW   : 구글 앱 비밀번호 16자리
//   ② Resend
//        RESEND_API_KEY : re_ 로 시작하는 키
//   공통(없어도 됨)
//        MAIL_FROM      : 보내는 사람 표기. 예) 도쿄대학 한국인 총동문회 <utokyo2011@gmail.com>
//
// 한글 제목·본문이 깨지지 않도록 메일 규격(MIME)을 직접 만들어 보냅니다.
//
import { createClient } from "npm:@supabase/supabase-js@2";

const CORS = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
};
const json = (body: unknown, status = 200) =>
  new Response(JSON.stringify(body), {
    status,
    headers: { ...CORS, "Content-Type": "application/json" },
  });

// ── 글자 다루기 ──────────────────────────────────────────────
const UTF8 = new TextEncoder();
const b64 = (s: string) => {
  const bytes = UTF8.encode(s);
  let bin = "";
  for (const b of bytes) bin += String.fromCharCode(b);
  return btoa(bin);
};
// 본문은 base64 로 감싸고 76자마다 줄을 바꾼다
const b64Body = (s: string) => (b64(s).match(/.{1,76}/g) ?? []).join("\r\n");

// 제목처럼 한글이 섞인 머리글은 =?UTF-8?B?…?= 로 감싼다.
// 한 토막이 75자를 넘으면 안 되므로 45바이트씩 잘라 이어붙인다.
function encHeader(s: string): string {
  if (/^[\x20-\x7E]*$/.test(s)) return s;            // 영문·숫자뿐이면 그대로
  const parts: string[] = [];
  let cur = "", len = 0;
  for (const ch of s) {                              // 글자 단위로 잘라야 깨지지 않는다
    const n = UTF8.encode(ch).length;
    if (len + n > 45) { parts.push(cur); cur = ""; len = 0; }
    cur += ch; len += n;
  }
  if (cur) parts.push(cur);
  return parts.map((p) => `=?UTF-8?B?${b64(p)}?=`).join("\r\n ");
}
// 보내는 사람 표기를 이름과 주소로 나눈다
function splitFrom(from: string): { name: string; addr: string } {
  const m = from.match(/^\s*(.*?)\s*<([^>]+)>\s*$/);
  return m ? { name: m[1], addr: m[2] } : { name: "", addr: from.trim() };
}

// ── 지메일과 직접 이야기해서 보낸다 (SMTP over TLS) ───────────
async function smtpSend(
  host: string, port: number, user: string, pass: string,
  fromAddr: string, rcpts: string[], raw: string,
) {
  const conn = await Deno.connectTls({ hostname: host, port });
  const dec = new TextDecoder();
  let buf = "";

  const recv = async (): Promise<{ code: number; text: string }> => {
    for (;;) {
      const lines = buf.split("\r\n");
      for (let i = 0; i < lines.length - 1; i++) {
        if (/^\d{3} /.test(lines[i])) {                       // 마지막 줄은 '숫자 공백'
          const text = lines.slice(0, i + 1).join(" | ");
          buf = lines.slice(i + 1).join("\r\n");
          return { code: parseInt(lines[i].slice(0, 3), 10), text };
        }
      }
      const p = new Uint8Array(8192);
      const n = await conn.read(p);
      if (n === null) throw new Error("연결이 끊어졌습니다.");
      buf += dec.decode(p.subarray(0, n));
    }
  };
  const send = async (s: string) => { await conn.write(UTF8.encode(s + "\r\n")); };
  const step = async (s: string, want: number[], what: string) => {
    await send(s);
    const r = await recv();
    if (!want.includes(r.code)) throw new Error(`${what} 실패 — ${r.text}`);
    return r;
  };

  try {
    const hello = await recv();
    if (hello.code !== 220) throw new Error(`연결 실패 — ${hello.text}`);
    await step("EHLO u-tokyo.kr", [250], "인사");
    await step("AUTH LOGIN", [334], "로그인 시작");
    await step(b64(user), [334], "계정 확인");
    await step(b64(pass), [235], "비밀번호 확인");
    await step(`MAIL FROM:<${fromAddr}>`, [250], "보내는 사람");
    for (const r of rcpts) await step(`RCPT TO:<${r}>`, [250, 251], `받는 사람(${r})`);
    await step("DATA", [354], "본문 시작");
    // 줄 첫머리의 점은 두 개로 (SMTP 규칙)
    await send(raw.replace(/\r\n\./g, "\r\n..") + "\r\n.");
    const done = await recv();
    if (done.code !== 250) throw new Error(`보내기 실패 — ${done.text}`);
    try { await send("QUIT"); } catch (_e) { /* 무시 */ }
  } finally {
    try { conn.close(); } catch (_e) { /* 무시 */ }
  }
}

Deno.serve(async (req) => {
  if (req.method === "OPTIONS") return new Response("ok", { headers: CORS });

  try {
    // ── 운영진인지 확인 ──
    const auth = req.headers.get("Authorization") ?? "";
    const sb = createClient(
      Deno.env.get("SUPABASE_URL")!,
      Deno.env.get("SUPABASE_ANON_KEY")!,
      { global: { headers: { Authorization: auth } } },
    );
    const { data: { user } } = await sb.auth.getUser();
    if (!user) return json({ error: "로그인이 필요합니다." }, 401);

    const { data: prof } = await sb.from("profiles")
      .select("is_admin").eq("id", user.id).single();
    if (!prof?.is_admin) return json({ error: "운영진만 보낼 수 있습니다." }, 403);

    // ── 입력 ──
    const { to, subject, text } = await req.json();
    const list: string[] = Array.isArray(to)
      ? [...new Set(to.map((s: string) => (s || "").trim()).filter(Boolean))]
      : [];
    if (!list.length) return json({ error: "받는 사람이 없습니다." }, 400);
    if (!subject || !text) return json({ error: "제목과 내용을 입력해주세요." }, 400);

    const gUser = (Deno.env.get("GMAIL_USER") ?? "").trim();
    const gPass = (Deno.env.get("GMAIL_APP_PW") ?? "").replace(/\s+/g, "");
    const key = Deno.env.get("RESEND_API_KEY");
    if (!gUser && !key) {
      return json({ error: "보내는 계정이 설정되지 않았습니다. GMAIL_USER · GMAIL_APP_PW 또는 RESEND_API_KEY 를 넣어주세요." }, 500);
    }
    const from = (Deno.env.get("MAIL_FROM") ?? "").trim() ||
      (gUser ? `도쿄대학 한국인 총동문회 <${gUser}>` : "도쿄대학 한국인 총동문회 <no-reply@u-tokyo.kr>");
    const { name: fromName, addr: fromAddr } = splitFrom(from);

    // ── 줄바꿈을 살린 HTML 본문 ──────────────────────────────
    // 웹메일 상당수(네이버·다음·사내메일·아웃룩 등)는 style 의 white-space 를
    // 지워버립니다. 그래서 CSS 에 기대지 않고 줄바꿈을 <br> 로 직접 넣습니다.
    const esc = (s: string) =>
      s.replace(/[&<>]/g, (c) => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;" }[c]!));
    const linkify = (s: string) =>
      s.replace(/(https?:\/\/[^\s<]+)/g,
        `<a href="$1" style="color:#8a6d2b;text-decoration:underline;">$1</a>`);
    const bodyHtml = esc(String(text))
      .replace(/\r\n?/g, "\n")
      .split("\n")
      .map((ln) =>
        // 줄 앞 띄어쓰기(회비 안내처럼 들여 쓴 줄)도 그대로 살린다.
        // 빈 줄은 &nbsp; 로 채워야 아웃룩에서 줄이 사라지지 않습니다.
        linkify(ln.replace(/^ +/, (sp) => "&nbsp;".repeat(sp.length))) || "&nbsp;")
      .join("<br>");
    const html =
      `<div style="font-family:'Apple SD Gothic Neo','Malgun Gothic','맑은 고딕',sans-serif;` +
      `font-size:15px;line-height:1.9;color:#2f2a1d;word-break:keep-all;">${bodyHtml}</div>`;

    const sent: string[] = [];
    const failed: { emails: string[]; reason: string }[] = [];

    if (gUser) {
      // ── 지메일로 보내기 (한 번에 50명씩 숨은참조) ──
      const fromHdr = fromName ? `${encHeader(fromName)} <${fromAddr}>` : fromAddr;
      const bd = "utokyokr-" + fromAddr.length.toString(36) + "-boundary";
      const head = [
        `From: ${fromHdr}`,
        `To: ${fromAddr}`,                       // 받는 분들은 숨은참조라 여기 안 적습니다
        `Subject: ${encHeader(String(subject))}`,
        `MIME-Version: 1.0`,
        `Content-Type: multipart/alternative; boundary="${bd}"`,
      ].join("\r\n");
      const body = [
        ``, ``,
        `--${bd}`,
        `Content-Type: text/plain; charset=UTF-8`,
        `Content-Transfer-Encoding: base64`,
        ``,
        b64Body(String(text).replace(/\r\n?|\n/g, "\r\n")),   // 메일 규격의 줄끝(CRLF)
        `--${bd}`,
        `Content-Type: text/html; charset=UTF-8`,
        `Content-Transfer-Encoding: base64`,
        ``,
        b64Body(html),
        `--${bd}--`,
      ].join("\r\n");

      for (let i = 0; i < list.length; i += 50) {
        const chunk = list.slice(i, i + 50);
        try {
          const raw = head + `\r\nDate: ${new Date().toUTCString()}` + body;
          await smtpSend("smtp.gmail.com", 465, gUser, gPass, fromAddr, chunk, raw);
          sent.push(...chunk);
        } catch (e) {
          failed.push({ emails: chunk, reason: String(e).slice(0, 300) });
        }
      }
    } else {
      // ── Resend 로 보내기 ──
      for (let i = 0; i < list.length; i += 50) {
        const chunk = list.slice(i, i + 50);
        const res = await fetch("https://api.resend.com/emails", {
          method: "POST",
          headers: { Authorization: `Bearer ${key}`, "Content-Type": "application/json" },
          body: JSON.stringify({ from, to: [fromAddr], bcc: chunk, subject, text, html }),
        });
        if (res.ok) sent.push(...chunk);
        else failed.push({ emails: chunk, reason: (await res.text()).slice(0, 300) });
      }
    }

    return json({ ok: failed.length === 0, sent: sent.length, sentEmails: sent, failed });
  } catch (e) {
    return json({ error: String(e) }, 500);
  }
});
