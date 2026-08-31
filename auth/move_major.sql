-- ═══════════════════════════════════════════════════════════
--  소모임에 들어가 있던 [전공별] 글을 [참여마당 / 전공별모임] 으로 옮깁니다.
--
--   말머리는 전공 계열로 나눕니다
--     농학부 · 건축학부 · C.U.E · 의약 · 응용화학계열 · 전기전자기계 · 항공우주 · 기타
--
--   ※ 총동문회(OB) 것만 건드립니다. 학생회 소모임은 그대로 둡니다.
--   ※ 지금 제목이 [전공별] 로 시작하는 글만 옮깁니다.
--      다른 말머리를 단 소모임 글(골프·등산 등)은 제자리에 남습니다.
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 먼저 auth/board_categories.sql 을 돌려 'major' 를 알려 두셔야 합니다.
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── ① 옮기기 전 : 어떤 글이 있는지 ──
select title as "제목"
  from public.posts
 where org = 'OB' and category = 'club'
   and title ~ '^\s*[\[【]\s*전공별'
 order by created_at desc;

-- ── ② 어떤 말머리가 붙을지 미리 보기 ──
select case
         when title ~ '항공|우주'                              then '항공우주'
         when title ~ '농학|농생명|농업|수의|산림|축산'          then '농학부'
         when title ~ '건축'                                    then '건축학부'
         when title ~ 'C\.?U\.?E|도시|토목|환경|사회기반|방재'  then 'C.U.E'
         when title ~ '의학|의약|약학|생명|의대|병원|보건|간호'  then '의약'
         when title ~ '응용화학|화학|화공|재료|신소재'           then '응용화학계열'
         when title ~ '전기|전자|기계|정보공학|컴퓨터|계측|시스템창성'
                                                                then '전기전자기계'
         else '기타'
       end as "붙을 말머리",
       count(*) as "글수"
  from public.posts
 where org = 'OB' and category = 'club'
   and title ~ '^\s*[\[【]\s*전공별'
 group by 1
 order by count(*) desc;

-- ── ③ 옮기고, 말머리를 다시 붙입니다 ──
with t as (
  select id, title,
         nullif(regexp_replace(title, '^\s*[\[【][^\]】]{1,14}[\]】]\s*', ''), '') as stripped
    from public.posts
   where org = 'OB' and category = 'club'
     and title ~ '^\s*[\[【]\s*전공별'
)
update public.posts p
   set category = 'major',
       title = '[' || case
         when t.title ~ '항공|우주'                              then '항공우주'
         when t.title ~ '농학|농생명|농업|수의|산림|축산'          then '농학부'
         when t.title ~ '건축'                                    then '건축학부'
         when t.title ~ 'C\.?U\.?E|도시|토목|환경|사회기반|방재'  then 'C.U.E'
         when t.title ~ '의학|의약|약학|생명|의대|병원|보건|간호'  then '의약'
         when t.title ~ '응용화학|화학|화공|재료|신소재'           then '응용화학계열'
         when t.title ~ '전기|전자|기계|정보공학|컴퓨터|계측|시스템창성'
                                                                  then '전기전자기계'
         else '기타'
       end || '] ' || coalesce(t.stripped, t.title)
  from t
 where t.id = p.id;

-- ── ④ 옮긴 뒤 모습 ──
select split_part(split_part(title, ']', 1), '[', 2) as "말머리",
       count(*) as "글수"
  from public.posts
 where org = 'OB' and category = 'major'
 group by 1
 order by count(*) desc;
