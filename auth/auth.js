// ─── 공용 인증 모듈 ───────────────────────────────────
import { createClient } from "https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/+esm";
import { SUPABASE_URL, SUPABASE_KEY } from "./config.js";

export const sb = createClient(SUPABASE_URL, SUPABASE_KEY);

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
