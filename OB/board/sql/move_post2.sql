-- ═══════════════════════════════════════════════════════════
-- 개별 글 이동 : 멘토멘티 → 소모임 [등산]
-- (임성근, 2017-09-21 "지난 9월 초에 일본 출장을 다녀왔습니다…")
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

update public.posts
set category = 'club',
    title = '[등산] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', ''),
    visibility = 'members'
where title like '%지난 9월 초에 일본 출장을 다녀왔습니다%';

-- ── 자유게시판으로 이동 ──
-- 에버랜드 흥얼송(자작곡) / 정웅일 교수님 요미우리 기고
update public.posts
set category = 'free',
    title = '[일상] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', ''),
    visibility = 'members'
where title like '%에버랜드 흥얼송%'
   or title like '%요미우리에 기고%';

-- 확인용
-- select category, title, created_at from public.posts
-- where title like '%일본 출장을 다녀왔습니다%' or title like '%흥얼송%' or title like '%요미우리%';
