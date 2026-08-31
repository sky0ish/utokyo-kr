-- ═══════════════════════════════════════════════════════════
--  한 글을 두 게시판에 함께 걸어 두기
--
--   전공별모임에 올린 글을 포럼·세미나에서도 보이게 하고 싶을 때 씁니다.
--   글을 복사하는 것이 아니라 한 글이 두 곳에 함께 보이는 것이라,
--   고치면 양쪽이 함께 바뀌고 지우면 양쪽에서 함께 사라집니다.
--
--   글보기 화면 아래 「포럼·세미나에도 함께」 체크칸으로 켜고 끕니다.
--   (운영진에게만 보입니다)
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 함께 걸어 둘 게시판 이름을 담는 칸 ──
alter table public.posts add column if not exists also_cat text;

-- 게시판 이름은 posts.category 와 같은 목록만 받습니다 (비워 두어도 됩니다)
alter table public.posts drop constraint if exists posts_also_cat_check;
alter table public.posts add constraint posts_also_cat_check
  check (also_cat is null or also_cat in (
    'assembly','notice','free','club','mentoring','promo','condolence','forum','seminar',
    'jobs','faculty','news','market','research',
    'qna','parttime','history','event','major',
    'exam','scholarship','career','counsel',
    'suggest'
  ));

-- 제자리에 또 거는 것은 막습니다
alter table public.posts drop constraint if exists posts_also_cat_diff;
alter table public.posts add constraint posts_also_cat_diff
  check (also_cat is null or also_cat <> category);

create index if not exists posts_also_cat_idx on public.posts (also_cat)
  where also_cat is not null;

-- ── 확인 : 지금 두 곳에 걸린 글 ──
select org as "단체", category as "원래 게시판", also_cat as "함께 걸린 곳",
       count(*) as "글수"
  from public.posts
 where also_cat is not null
 group by 1, 2, 3
 order by 1, 2;
