-- ═══════════════════════════════════════════════════════════
-- 멘토멘티 게시판에 잘못 분류된 글 3건 이동
--   1) 에버랜드 흥얼송(자작곡)          → 자유게시판 [일상]
--   2) 정웅일 교수님 요미우리 기고       → 자유게시판 [일상]
--   3) 지난 9월 초 일본 출장 (임성근)    → 소모임   [등산]
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

-- ① 에버랜드 흥얼송 → 자유게시판
update public.posts
set category   = 'free',
    title      = '[일상] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', ''),
    visibility = 'members'
where category = 'mentoring'
  and title like '%에버랜드 흥얼송%';

-- ② 요미우리 기고 → 자유게시판
update public.posts
set category   = 'free',
    title      = '[일상] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', ''),
    visibility = 'members'
where category = 'mentoring'
  and (title like '%요미우리에 기고%' or title like '%정웅일 교수님%');

-- ③ 일본 출장 (등산) → 소모임
update public.posts
set category   = 'club',
    title      = '[등산] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', ''),
    visibility = 'members'
where category = 'mentoring'
  and title like '%일본 출장을 다녀왔습니다%';

-- ── 확인용 ──────────────────────────────────────────────
-- 멘토멘티에 남은 글 목록
select category, title, author_name, created_at
from public.posts
where category = 'mentoring'
order by created_at desc;
