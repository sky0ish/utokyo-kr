-- ═══════════════════════════════════════════════════════════
-- 참여마당 게시판화 : 단과대포럼(forum) · 세미나(seminar) 분류 추가
--   ※ 동문회 총회는 기존 페이지(#news) 그대로 유지 → 분류 추가 없음
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- (여러 번 실행해도 안전합니다)
-- ═══════════════════════════════════════════════════════════

alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    -- 공통
    'notice','free','news','market','jobs',
    -- OB(총동문회)
    'club','faculty','mentoring','promo','condolence','forum','seminar',
    -- YB(학생회)
    'qna','parttime'
  ));
