// ─── 회원 안내 메일 발송 (운영진 전용) ──────────────────────────
// Supabase Edge Function · Resend 로 발송
//
// 보내는 방법은 둘 중 하나만 갖추면 됩니다.
//   ① 지메일 (권장 · 이미 쓰고 계신 앱 비밀번호 그대로)
//        GMAIL_USER     : utokyo2011@gmail.com
//        GMAIL_APP_PW   : 구글 앱 비밀번호 16자리
//   ② Resend
//        RESEND_API_KEY : re_ 로 시작하는 키
//   공통(없어도 됨)
//        MAIL_FROM      : 보내는 사람 표기. 예) 도쿄대학 한국인 총동문회 <utokyo2011@gmail.com>
//
import { createClient } from "npm:@supabase/supabase-js@2";
import { SMTPClient } from "https://deno.land/x/denomailer@1.6.0/mod.ts";

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

    const gUser = Deno.env.get("GMAIL_USER");
    const gPass = (Deno.env.get("GMAIL_APP_PW") ?? "").replace(/\s+/g, "");
    const key = Deno.env.get("RESEND_API_KEY");
    if (!gUser && !key) {
      return json({ error: "보내는 계정이 설정되지 않았습니다. GMAIL_USER · GMAIL_APP_PW 또는 RESEND_API_KEY 를 넣어주세요." }, 500);
    }
    const from = Deno.env.get("MAIL_FROM") ??
      (gUser ? `도쿄대학 한국인 총동문회 <${gUser}>` : "도쿄대학 한국인 총동문회 <no-reply@u-tokyo.kr>");
    const selfAddr = (from.match(/<([^>]+)>/)?.[1]) ?? from;

    // 줄바꿈을 살린 간단한 HTML 본문
    const esc = (s: string) =>
      s.replace(/[&<>]/g, (c) => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;" }[c]!));
    const html = `<div style="font-family:'Apple SD Gothic Neo','Malgun Gothic',sans-serif;
      font-size:15px;line-height:1.8;color:#2f2a1d;white-space:pre-wrap;">${esc(text)}</div>`;

    const sent: string[] = [];
    const failed: { emails: string[]; reason: string }[] = [];

    if (gUser) {
      // ── 지메일로 보내기 (한 번에 50명씩 숨은참조) ──
      const client = new SMTPClient({
        connection: { hostname: "smtp.gmail.com", port: 465, tls: true,
                      auth: { username: gUser, password: gPass } },
      });
      try {
        for (let i = 0; i < list.length; i += 50) {
          const chunk = list.slice(i, i + 50);
          try {
            await client.send({ from, to: selfAddr, bcc: chunk, subject, content: text, html });
            sent.push(...chunk);
          } catch (e) {
            failed.push({ emails: chunk, reason: String(e).slice(0, 300) });
          }
        }
      } finally {
        try { await client.close(); } catch (_e) { /* 무시 */ }
      }
    } else {
      // ── Resend 로 보내기 ──
      for (let i = 0; i < list.length; i += 50) {
        const chunk = list.slice(i, i + 50);
        const res = await fetch("https://api.resend.com/emails", {
          method: "POST",
          headers: { Authorization: `Bearer ${key}`, "Content-Type": "application/json" },
          body: JSON.stringify({ from, to: [selfAddr], bcc: chunk, subject, text, html }),
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
