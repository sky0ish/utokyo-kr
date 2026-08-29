-- ═══════════════════════════════════════════════════════════
--  총동문회 소모임 글을 골프 · 등산 · 운영진 · 기타 넷으로 다시 나눕니다.
--
--   ※ 학생회(YB) 소모임은 건드리지 않습니다.
--      학생회 쪽은 운동 · 종교 · 학술 · 친목 · 기타 를 그대로 씁니다.
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── ① 어떤 말머리가 붙을지 미리 보기 ──
select case
         when title ~ '^\s*[\[【]\s*골프'                                    then '골프'
         when title ~ '^\s*[\[【]\s*등산'                                    then '등산'
         when title ~ '^\s*[\[【]\s*운영진'                                  then '운영진'
         when title ~ '골프|라운딩|골프장|캐디'                              then '골프'
         when title ~ '등산|산행|산악|트레킹|둘레길|북한산|관악산|지리산|설악|도봉'
                                                                             then '등산'
         when title ~ '운영진|임원|간사|총무|회칙|회비'                      then '운영진'
         else '기타'
       end as "붙을 말머리",
       count(*) as "글수"
  from public.posts
 where org = 'OB' and category = 'club'
 group by 1
 order by count(*) desc;

-- ── ② 말머리를 다시 붙입니다 ──
--     제목 앞에 있던 [○○] 은 떼어내고 새 말머리를 답니다.
with t as (
  select id, title,
         nullif(regexp_replace(title, '^\s*[\[【][^\]】]{1,14}[\]】]\s*', ''), '') as stripped
    from public.posts
   where org = 'OB' and category = 'club'
)
update public.posts p
   set title = '[' || case
         when t.title ~ '^\s*[\[【]\s*골프'                                  then '골프'
         when t.title ~ '^\s*[\[【]\s*등산'                                  then '등산'
         when t.title ~ '^\s*[\[【]\s*운영진'                                then '운영진'
         when t.title ~ '골프|라운딩|골프장|캐디'                            then '골프'
         when t.title ~ '등산|산행|산악|트레킹|둘레길|북한산|관악산|지리산|설악|도봉'
                                                                             then '등산'
         when t.title ~ '운영진|임원|간사|총무|회칙|회비'                    then '운영진'
         else '기타'
       end || '] ' || coalesce(t.stripped, t.title)
  from t
 where t.id = p.id;

-- ── ③ 나눈 뒤 모습 ──
select split_part(split_part(title, ']', 1), '[', 2) as "말머리",
       count(*) as "글수"
  from public.posts
 where org = 'OB' and category = 'club'
 group by 1
 order by count(*) desc;
