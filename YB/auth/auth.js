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

/** 로그인 한 번을 기록한다 (횟수 세기 · 월별 통계용).
 *  자료방 쪽에서 10분 안의 중복은 걸러 주므로 여러 번 불러도 괜찮습니다.
 *  기록이 실패해도 로그인 자체는 그대로 진행됩니다. */
export async function noteLogin() {
  try { await sb.rpc("note_login"); } catch (e) { /* 아직 준비 전이면 조용히 넘어감 */ }
}

// 현재 로그인 세션 (없으면 null)
export async function currentUser() {
  const { data: { session } } = await sb.auth.getSession();
  return session ? session.user : null;
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
