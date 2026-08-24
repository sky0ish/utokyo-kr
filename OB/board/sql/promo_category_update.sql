-- ═══════════════════════════════════════════════════════════
-- 게시판 분류에 '홍보(promo)' 추가
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- (이전 분류 SQL을 실행했더라도 이 파일을 다시 실행하면 됩니다)
-- ═══════════════════════════════════════════════════════════

alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in ('notice','free','news','jobs','market','condolence','club','faculty','mentoring','promo'));
