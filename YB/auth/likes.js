// ─── 좋아요 ────────────────────────────────────────────────
// 게시판 글과 갤러리 사진에 함께 씁니다.
//   kind : "post" 또는 "photo"
//   ref  : 글 번호 또는 사진 번호 (글자)
// 자리(테이블)가 아직 없으면 조용히 아무것도 하지 않습니다.
import { sb, currentUser, myProfile } from "/YB/auth/auth.js";

let READY = null;          // 자리가 준비되었는가
let ME = undefined;        // 지금 보고 계신 분

async function me() {
  if (ME === undefined) {
    const u = await currentUser();
    ME = u ? { id: u.id, p: await myProfile() } : null;
  }
  return ME;
}

/** 여러 개를 한꺼번에 — { n: {ref: 수}, mine: Set(ref) } */
export async function loadLikes(kind, refs) {
  const out = { n: {}, mine: new Set() };
  const list = [...new Set((refs || []).map(String))].filter(Boolean);
  if (!list.length || READY === false) return out;

  const c = await sb.from("like_counts").select("ref,n").eq("kind", kind).in("ref", list);
  if (c.error) {
    READY = false;
    return out;
  }
  READY = true;
  (c.data || []).forEach(r => { out.n[String(r.ref)] = Number(r.n) || 0; });

  const u = await me();
  if (u) {
    const m = await sb.from("likes").select("ref")
      .eq("kind", kind).eq("user_id", u.id).in("ref", list);
    (m.data || []).forEach(r => out.mine.add(String(r.ref)));
  }
  return out;
}

/** 눌렀다 뗐다 — 바뀐 뒤의 { on, n } 을 돌려줍니다 */
export async function toggleLike(kind, ref, on) {
  const u = await me();
  if (!u) { alert("로그인하신 뒤에 누르실 수 있습니다."); return null; }
  if (!(u.p && (u.p.approved || u.p.is_admin))) {
    alert("운영진 승인이 끝난 뒤에 누르실 수 있습니다.");
    return null;
  }
  const r = String(ref);
  const q = on
    ? await sb.from("likes").delete().eq("kind", kind).eq("ref", r).eq("user_id", u.id)
    : await sb.from("likes").insert({ kind, ref: r, user_id: u.id });
  if (q.error) {
    alert(/likes|schema cache|relation/i.test(q.error.message || "")
      ? "아직 준비 전입니다 — auth/likes.sql 을 한 번 실행해주세요."
      : "누르지 못했습니다: " + q.error.message);
    return null;
  }
  const c = await sb.from("like_counts").select("n").eq("kind", kind).eq("ref", r).maybeSingle();
  return { on: !on, n: (c.data && Number(c.data.n)) || 0 };
}

/** 하트 모양 (채운 것 / 빈 것) */
export const heart = (on) => on
  ? '<svg viewBox="0 0 24 24" width="15" height="15" aria-hidden="true">' +
    '<path fill="currentColor" d="M12 21s-8-4.9-8-10.4A4.6 4.6 0 0 1 12 7a4.6 4.6 0 0 1 8 3.6C20 16.1 12 21 12 21z"/></svg>'
  : '<svg viewBox="0 0 24 24" width="15" height="15" aria-hidden="true">' +
    '<path fill="none" stroke="currentColor" stroke-width="1.8" ' +
    'd="M12 20.3S4.8 15.8 4.8 10.7A4 4 0 0 1 12 8a4 4 0 0 1 7.2 2.7c0 5.1-7.2 9.6-7.2 9.6z"/></svg>';
