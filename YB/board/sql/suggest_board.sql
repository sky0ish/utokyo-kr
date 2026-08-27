-- ═══════════════════════════════════════════════════════════
-- 「동문회에 바란다」 게시판 만들기
--
--   총동문회(OB)와 학생회(YB) 양쪽에 같은 이름의 게시판을 둡니다.
--   다만 글은 서로 섞이지 않고 각자 쌓입니다 (org 로 갈라져 있습니다).
--   실명으로 쓰는 회원 전용 게시판입니다.
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
-- ═══════════════════════════════════════════════════════════

-- ── 새 갈래(suggest)를 받아들이게 ──
alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    -- 총동문회(OB)
    'notice','free','club','mentoring','promo','condolence','forum','seminar',
    'jobs','faculty','news','market',
    -- 학생회(YB)
    'qna','parttime','history',
    -- 양쪽에 새로 생긴 것
    'suggest'
  ));

-- ── 확인 ──
select org as "단체", category as "갈래", count(*) as "글수"
  from public.posts
 group by org, category
 order by org, count(*) desc;

-- → 이제 게시판 맨 끝에 「동문회에 바란다」가 생겼습니다.
--   총동문회에서 쓴 글은 총동문회에만, 학생회에서 쓴 글은 학생회에만 보입니다.
