-- ═══════════════════════════════════════════════════════════
-- 게시판 분류 추가: 소모임(club), 단과대별(faculty)
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in ('notice','free','news','jobs','market','condolence','club','faculty'));
