-- ═══════════════════════════════════════════════════════════
--  ① 게시판 갈래 목록 맞추기   ② 「장학」 글을 장학정보 게시판으로
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다. 옮기기 전 모습을 먼저 보여드립니다.
-- ═══════════════════════════════════════════════════════════

-- ── ① 지금 홈페이지에 있는 모든 게시판 이름을 데이터베이스에 알려줍니다 ──
alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    -- 재한 도쿄대학 총동문회 (OB)
    'assembly','notice','free','club','mentoring','promo','condolence','forum','seminar',
    'jobs','faculty','news','market','research',
    -- 도쿄대학 한국인학생회 (YB)
    'qna','parttime','history','event','major',
    'exam','scholarship','career','counsel',
    -- 양쪽 공통
    'suggest'
  ));

-- ── ② 옮기기 전 : 제목에 「장학」이 든 글이 지금 어디에 있는지 ──
select org as "단체", category as "지금 게시판", count(*) as "글수"
  from public.posts
 where title ilike '%장학%'
   and category <> 'scholarship'
 group by org, category
 order by count(*) desc;

-- ── ③ 옮기기 ──
--   제목에 「장학」이 들어간 글을 모두 [장학정보]로 보냅니다.
--   단체(OB/YB)는 그대로 둡니다 — 장학정보는 양쪽이 함께 쓰는 게시판입니다.
update public.posts
   set category = 'scholarship'
 where title ilike '%장학%'
   and category <> 'scholarship';

-- ── ④ 옮긴 뒤 : 장학정보 게시판에 몇 건이 모였는지 ──
select org as "단체", count(*) as "장학정보 글수"
  from public.posts
 where category = 'scholarship'
 group by org
 order by org;
