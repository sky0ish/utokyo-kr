-- ═══════════════════════════════════════════════════════════
-- 학생회(YB) 「참여마당」 — 행사 게시판 만들기
--
--   참여마당 = 소모임 · 행사 · 멘토멘티(OB/YB) · 동문회에 바란다
--   참여마당 = 소모임 · 전공별모임 · 행사 · 멘토멘티(OB/YB) · 동문회에 바란다
--   이 가운데 「행사(event)」와 「전공별모임(major)」이 새로 생깁니다.
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 새 갈래(event)를 받아들이게 ──
alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    -- 총동문회(OB)
    'notice','free','club','mentoring','promo','condolence','forum','seminar',
    'jobs','faculty','news','market','research',
    -- 학생회(YB)
    'qna','parttime','history','event','major',
    -- 양쪽 공통
    'suggest'
  ));

-- ── 2) 먼저 눈으로 확인 ──
--   「행사」라는 말이 든 학생회 글이 몇 건인지 봅니다.
select id, category, left(title, 60) as "제목", created_at::date as "날짜"
  from public.posts
 where org = 'YB'
   and category in ('free', 'notice')
   and (title ilike '%행사%' or content ilike '%행사%')
 order by created_at desc;

-- ── 3) 옮기기 (윗줄로 확인하신 뒤에 실행하세요) ──
--   자유게시판·공지사항에 있던 「행사」 글을 참여마당 → 행사로 옮깁니다.
--   ※ 아래 두 줄의 맨 앞 -- 를 지우고 실행하시면 됩니다.
--
-- update public.posts set category = 'event'
--  where org = 'YB' and category in ('free','notice')
--    and (title ilike '%행사%' or content ilike '%행사%');

-- ── 4) 확인 ──
select category as "갈래", count(*) as "글수"
  from public.posts
 where org = 'YB'
 group by category
 order by count(*) desc;

-- → 참여마당 메뉴에서 소모임 · 행사 · 멘토멘티 · 동문회에 바란다로 들어가실 수 있습니다.
--   게시판 메뉴에는 공지사항 · 자유게시판 · Q&A · 취업정보 · 아르바이트 · 벼룩시장만 남습니다.
