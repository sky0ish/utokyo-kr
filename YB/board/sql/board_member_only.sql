-- ═══════════════════════════════════════════════════════════
-- 게시판 — 「공지사항」만 누구나, 나머지는 회원만 (양쪽 홈페이지)
--   비회원은 공지사항만 볼 수 있고, 그 밖의 글은 목록에도 나오지 않습니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

update public.posts set visibility = 'public'
 where category = 'notice' and visibility <> 'public';

update public.posts set visibility = 'members'
 where category <> 'notice' and visibility <> 'members';

-- 확인용
-- select org, category, visibility, count(*) from public.posts
--  group by 1,2,3 order by 1,2,3;

-- 되돌리려면 (취업정보·아르바이트도 다시 공개)
-- update public.posts set visibility = 'public'
--  where category in ('notice','jobs','parttime','promo');
