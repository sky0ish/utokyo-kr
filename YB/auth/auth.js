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

/** 홈페이지에 들른 것 — 하루 한 번만 세어집니다 */
export async function noteVisit() {
  try {
    if (!(await currentUser())) return;            // 로그인한 분만
    const key = "utokyo-visit";
    const today = new Date().toISOString().slice(0, 10);
    if (localStorage.getItem(key) === today) return;   // 이 기기에서 오늘 이미 셌음
    localStorage.setItem(key, today);
    await noteActivity("visit", 1);
  } catch (e) { /* 저장소를 못 쓰는 환경은 그냥 넘어감 */ }
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
