-- ═══════════════════════════════════════════════════════════
--  소모임의 [학술] 글을 [참여마당 / 포럼·세미나] 로 옮깁니다.
--
--   포럼·세미나 게시판의 말머리에 맞춰 다시 답니다
--     한일교류 — 한일국제포럼처럼 두 나라가 함께한 자리
--     세미나   — 세미나·강연·워크숍
--     학술     — 그 밖의 학술 모임과 포럼 소식
--
--   ※ 총동문회(OB) 것만 건드립니다.
--
--   실행 : Supabase 대시보드 → SQL Editor
--     【1부】를 드래그해서 Run → 목록을 보시고
--     괜찮으면 【2부】를 드래그해서 Run 하십시오.
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════


-- ═══ 【1부】 무엇이 옮겨질지 먼저 봅니다 ═══════════════════

select case
         when title ~ '한일|국제포럼|교류'    then '한일교류'
         when title ~ '세미나|강연|워크숍'    then '세미나'
         else '학술'
       end as "붙을 말머리",
       title as "제목"
  from public.posts
 where org = 'OB' and category = 'club'
   and title ~ '^\s*[\[【]\s*학술'
 order by 1, 2;


-- ═══ 【2부】 실제로 옮깁니다 ═══════════════════════════════

with t as (
  select id, title,
         nullif(regexp_replace(title, '^\s*[\[【][^\]】]{1,14}[\]】]\s*', ''), '') as stripped
    from public.posts
   where org = 'OB' and category = 'club'
     and title ~ '^\s*[\[【]\s*학술'
)
update public.posts p
   set category = 'forum',
       title = '[' || case
         when t.title ~ '한일|국제포럼|교류'    then '한일교류'
         when t.title ~ '세미나|강연|워크숍'    then '세미나'
         else '학술'
       end || '] ' || coalesce(t.stripped, t.title)
  from t
 where t.id = p.id;

-- ── 옮긴 뒤 : 포럼·세미나 게시판 모습 ──
select split_part(split_part(title, ']', 1), '[', 2) as "말머리",
       count(*) as "글수"
  from public.posts
 where org = 'OB' and category = 'forum'
 group by 1
 order by count(*) desc;
