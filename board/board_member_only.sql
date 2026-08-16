-- ═══════════════════════════════════════════════════════════
-- 총동문회 게시판 — 「공지사항」만 누구나, 나머지는 회원만
--   ※ 학생회(YB) 게시판은 지금처럼 그대로 둡니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

update public.posts set visibility = 'public'
 where org = 'OB' and category = 'notice' and visibility <> 'public';

update public.posts set visibility = 'members'
 where org = 'OB' and category <> 'notice' and visibility <> 'members';

-- 확인용
-- select org, category, visibility, count(*) from public.posts
--  where org = 'OB' group by 1,2,3 order by 2,3;
