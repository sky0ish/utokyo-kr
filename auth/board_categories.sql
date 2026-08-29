-- ═══════════════════════════════════════════════════════════
-- 게시판 갈래 목록 다시 맞추기 (지금 홈페이지에 있는 모든 게시판)
--
--   화면에는 게시판이 생겼는데 데이터베이스가 그 이름을 모르면
--   글을 옮기거나 새로 쓸 때 이런 오류가 납니다:
--     new row for relation "posts" violates check constraint "posts_category_check"
--
--   이 파일은 지금 쓰이는 갈래를 한 번에 모두 받아들이게 합니다.
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    -- 재한 도쿄대학 총동문회 (OB)
    'notice','free','club','mentoring','promo','condolence','forum','seminar',
    'jobs','faculty','news','market','research',

    -- 도쿄대학 한국인학생회 (YB)
    'qna','parttime','history','event','major',
    'exam','scholarship','career','counsel',

    -- 양쪽 공통
    'suggest'
  ));

-- ── 확인 : 지금 갈래별로 글이 몇 건인지 ──
select org as "단체", category as "갈래", count(*) as "글수"
  from public.posts
 group by org, category
 order by org, count(*) desc;
