// ─── 공용 인증 모듈 ───────────────────────────────────
import { createClient } from "https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/+esm";
import { SUPABASE_URL, SUPABASE_KEY } from "./config.js";

// 한 번 로그인하면 브라우저를 닫았다 열어도 로그인 상태가 유지된다.
//  · persistSession   : 세션을 localStorage 에 저장 (창을 닫아도 남음)
//  · autoRefreshToken : 만료 전에 자동으로 토큰을 갱신 (계속 로그인 유지)
export const sb = createClient(SUPABASE_URL, SUPABASE_KEY, {
  auth: {
    persistSession: true,
    autoRefreshToken: true,
    detectSessionInUrl: true,
    storage: window.localStorage,
    storageKey: "utokyo-auth",
    flowType: "pkce",
  },
});

// '로그인 상태 유지'를 끄고 로그인한 경우, 브라우저를 새로 연 첫 방문에서 세션을 정리한다.
try {
  if (localStorage.getItem("utokyo-keep") === "0" && !sessionStorage.getItem("utokyo-live")) {
    localStorage.removeItem("utokyo-auth");
  }
  sessionStorage.setItem("utokyo-live", "1");
} catch (e) { /* 저장소를 못 쓰는 환경은 무시 */ }

// 현재 로그인 세션 (없으면 null)
export async function currentUser() {
  const { data: { session } } = await sb.auth.getSession();
  return session ? session.user : null;
}

/** 활동 한 건을 기록한다 (로그인·방문·글읽기·글쓰기·댓글·사진).
 *  겹쳐 세는 것은 자료방 쪽에서 걸러 주므로 마음 놓고 부르셔도 됩니다.
 *  기록이 안 되어도 화면은 그대로 돌아갑니다. */
export async function noteActivity(kind, amount, ref) {
  try {
    await sb.rpc("note_activity", {
      p_kind: kind, p_amount: amount || 1, p_ref: ref || null,
    });
  } catch (e) { /* 아직 준비 전이면 조용히 넘어감 */ }
}

/** 로그인 한 번 */
export const noteLogin = () => noteActivity("login", 1);

/** 홈페이지 한 쪽을 열어 보신 것 — 두 가지를 함께 적습니다.
 *    visit  다녀가신 한 차례   (30분 안에 다시 오시면 같은 방문으로 봅니다)
 *    view   쪽 하나를 보신 것  (누르고 옮겨 다니신 만큼 그대로 쌓입니다)
 *  겹쳐 세지 않도록 거르는 일은 자료방 쪽에서 맡습니다.
 *  예전에는 「하루 한 번」이라 온종일 둘러보셔도 1이었습니다. */
export async function noteVisit() {
  try {
    if (!(await currentUser())) return;            // 로그인한 분만
    await Promise.all([
      noteActivity("visit", 1),
      noteActivity("view", 1, location.pathname),
    ]);
  } catch (e) { /* 안 되어도 화면은 그대로 돌아갑니다 */ }
}

// 내 프로필 (profiles 테이블)
export async function myProfile() {
  const user = await currentUser();
  if (!user) return null;
  const { data } = await sb.from("profiles").select("*").eq("id", user.id).single();
  return data;
}

export async function logout() {
  await sb.auth.signOut();
  location.href = "login.html";
}

// 폼 아래 메시지 표시
export function showMsg(el, text, ok = false) {
  el.textContent = text;
  el.className = "msg " + (ok ? "ok" : "err");
  el.style.display = "block";
}

/** 여러 줄 입력칸에서 한글 조합 중 엔터가 줄을 못 바꾸는 것을 바로잡는다.
 *  브라우저가 이미 줄을 바꿨으면 아무 일도 하지 않습니다. */
export function fixEnter(el) {
  if (!el || el.dataset.enterFixed) return;
  el.dataset.enterFixed = "1";
  el.addEventListener("keydown", (e) => {
    if (e.key !== "Enter" || e.shiftKey || e.ctrlKey || e.metaKey || e.altKey) return;
    if (!e.isComposing) return;            // 조합 중이 아니면 브라우저가 알아서 합니다
    setTimeout(() => {
      const p = el.selectionStart;
      if (el.value.charAt(p - 1) === "\n") return;   // 이미 바뀌었으면 그대로
      el.setRangeText("\n", p, p, "end");
      el.dispatchEvent(new Event("input", { bubbles: true }));
    }, 0);
  });
}
