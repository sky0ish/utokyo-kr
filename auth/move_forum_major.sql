-- ═══════════════════════════════════════════════════════════
--  포럼·세미나에 있던 「단과대별」 글을 [전공별모임(OB/YB)] 으로 나눕니다.
--
--   포럼·세미나에는 자리의 성격(세미나 · 학술 · 산업 · 한일교류)만 남기고,
--   전공 이름으로 달려 있던 말머리는 전공별모임으로 옮깁니다.
--
--     [건축학]   → 건축학
--     [농학생명] → 농학부
--     [공학]     → 공학 기타
--     [인문사회] → 인문사회
--     [약학]     → 의학·약학·간호학
--     [의학]     → 의학·약학·간호학
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
         when title ~ '^\s*[\[【]\s*건축학'   then '건축학'
         when title ~ '^\s*[\[【]\s*농학생명' then '농학부'
         when title ~ '^\s*[\[【]\s*공학'     then '공학 기타'
         when title ~ '^\s*[\[【]\s*인문사회' then '인문사회'
         when title ~ '^\s*[\[【]\s*약학'     then '의학·약학·간호학'
         when title ~ '^\s*[\[【]\s*의학'     then '의학·약학·간호학'
       end as "붙을 말머리",
       title as "제목"
  from public.posts
 where org = 'OB' and category = 'forum'
   and title ~ '^\s*[\[【]\s*(건축학|농학생명|공학|인문사회|약학|의학)'
 order by 1, 2;


-- ═══ 【2부】 실제로 옮깁니다 ═══════════════════════════════

with t as (
  select id, title,
         nullif(regexp_replace(title, '^\s*[\[【][^\]】]{1,14}[\]】]\s*', ''), '') as stripped
    from public.posts
   where org = 'OB' and category = 'forum'
     and title ~ '^\s*[\[【]\s*(건축학|농학생명|공학|인문사회|약학|의학)'
)
update public.posts p
   set category = 'major',
       title = '[' || case
         when t.title ~ '^\s*[\[【]\s*건축학'   then '건축학'
         when t.title ~ '^\s*[\[【]\s*농학생명' then '농학부'
         when t.title ~ '^\s*[\[【]\s*공학'     then '공학 기타'
         when t.title ~ '^\s*[\[【]\s*인문사회' then '인문사회'
         when t.title ~ '^\s*[\[【]\s*약학'     then '의학·약학·간호학'
         when t.title ~ '^\s*[\[【]\s*의학'     then '의학·약학·간호학'
         else '기타'
       end || '] ' || coalesce(t.stripped, t.title)
  from t
 where t.id = p.id;

-- ── 옮긴 뒤 : 두 게시판 모습 ──
select category as "게시판",
       split_part(split_part(title, ']', 1), '[', 2) as "말머리",
       count(*) as "글수"
  from public.posts
 where org = 'OB' and category in ('forum', 'major')
 group by 1, 2
 order by 1, count(*) desc;
