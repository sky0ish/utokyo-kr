-- ═══════════════════════════════════════════════════════════
-- 「단행본 및 연구소개」 게시판 만들기 (총동문회 OB 전용)
--
--   동문이 펴낸 책과 연구 성과, 새로 개발한 것을 소개하는 곳입니다.
--   말머리 : 단행본 · 연구 · 신규개발 · 기타
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
-- ═══════════════════════════════════════════════════════════

-- ── 새 갈래(research)를 받아들이게 ──
alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    -- 총동문회(OB)
    'notice','free','club','mentoring','promo','condolence','forum','seminar',
    'jobs','faculty','news','market',
    -- 학생회(YB)
    'qna','parttime','history',
    -- 양쪽에 새로 생긴 것
    'suggest',
    -- 총동문회에 새로 생긴 것
    'research'
  ));

-- ── 확인 ──
select org as "단체", category as "갈래", count(*) as "글수"
  from public.posts
 group by org, category
 order by org, count(*) desc;

-- → 이제 총동문회 게시판에 「단행본 및 연구소개」가 생겼습니다.
--   학생회(YB)에는 넣지 않았습니다.
