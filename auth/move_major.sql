-- ═══════════════════════════════════════════════════════════
--  전공별 모임 · 전공별 상담 이야기를 [참여마당 / 전공별모임] 으로 모읍니다.
--
--   말머리는 전공 계열로 나눕니다
--     명부의 전공코드를 그대로 따릅니다 —
--     농학부(AG) · 건축학(AR) · C.U.E(CUE) · 전기·기계·항공(EM) · 재료·화학(CM)
--     의약(MM) · 법학부(L) · 인문사회(HS) · 이학부(SC) · 총합문화(T)
--     공학 기타(EE) · 생산기술연구소(LAB) · 경제학부(EC) · 정보이공(IN) · 기타(NONE)
--
--   무엇을 옮기나
--     ① 제목이 [전공별] 로 시작하는 글  (지금 소모임에 들어가 있는 것들)
--     ② 제목에 전공 이름과 「모임·상담」 이 함께 든 글
--        (전공 이름만 있는 글은 건드리지 않습니다. 포럼 발표나 책 소개까지
--         끌려오지 않도록 두 가지가 함께 있을 때만 옮깁니다)
--
--   ※ 총동문회(OB) 것만 건드립니다.
--   ※ 두 단체가 함께 쓰는 게시판(멘토멘티 · 구인채용)은 손대지 않습니다.
--
--   실행 : Supabase 대시보드 → SQL Editor
--     먼저 auth/board_categories.sql 을 돌려 'major' 를 알려 두셔야 합니다.
--     아래 【1부】를 드래그해서 Run → 목록을 보시고
--     괜찮으면 【2부】를 드래그해서 Run 하십시오.
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════


-- ═══ 【1부】 무엇이 옮겨질지 먼저 봅니다 ═══════════════════

select category as "지금 게시판",
       case
         when title ~ '항공|우주|전자|전기|기계|계측|시스템창성|기계정보'  then '전기·기계·항공'
         when title ~ '농학|농생명|농업|수의|산림|축산|응용생명'            then '농학부'
         when title ~ '건축'                                              then '건축학'
         when title ~ 'C\.?U\.?E|도시공학|도시|토목|환경|사회기반|방재|신영역' then 'C.U.E'
         when title ~ '금속|재료|공업화학|화학시스템|화공|신소재|응용화학'   then '재료·화학'
         when title ~ '의학|의약|약학|의대|병원|보건|간호'                  then '의약'
         when title ~ '법학|법과대'                                        then '법학부'
         when title ~ '인문|사회학|사회과학|교육학|문학'                    then '인문사회'
         when title ~ '이학부|이학계|물리|수학|화학과|지구|천문'             then '이학부'
         when title ~ '총합문화|교양학부'                                   then '총합문화'
         when title ~ '정보이공|정보학|정보관련|컴퓨터|정보공학'             then '정보이공'
         when title ~ '생산기술연구소|생기연'                               then '생산기술연구소'
         when title ~ '경제학|경영'                                        then '경제학부'
         when title ~ '공학'                                              then '공학 기타'
         else '기타'
       end as "붙을 말머리",
       title as "제목"
  from public.posts
 where org = 'OB'
   and category not in ('major', 'mentoring', 'jobs')
   and (
        title ~ '^\s*[\[【]\s*전공별'
     or (
          title ~ '농학|농생명|수의|산림|축산|건축|도시|토목|C\.?U\.?E|의학|의약|약학|생명|보건|화학|화공|재료|신소재|전기|전자|기계|정보공학|항공|우주|전공|학부|계열|연구과'
      and title ~ '모임|동호회|친목|모여|만남|간담|상담|번개|회식|정기모임|모임안내'
        )
       )
 order by 1, 2;


-- ═══ 【2부】 실제로 옮깁니다 ═══════════════════════════════

with t as (
  select id, title,
         nullif(regexp_replace(title, '^\s*[\[【][^\]】]{1,14}[\]】]\s*', ''), '') as stripped
    from public.posts
   where org = 'OB'
     and category not in ('major', 'mentoring', 'jobs')
     and (
          title ~ '^\s*[\[【]\s*전공별'
       or (
            title ~ '농학|농생명|수의|산림|축산|건축|도시|토목|C\.?U\.?E|의학|의약|약학|생명|보건|화학|화공|재료|신소재|전기|전자|기계|정보공학|항공|우주|전공|학부|계열|연구과'
        and title ~ '모임|동호회|친목|모여|만남|간담|상담|번개|회식|정기모임|모임안내'
          )
         )
)
update public.posts p
   set category = 'major',
       title = '[' || case
         when t.title ~ '항공|우주|전자|전기|기계|계측|시스템창성|기계정보'  then '전기·기계·항공'
         when t.title ~ '농학|농생명|농업|수의|산림|축산|응용생명'            then '농학부'
         when t.title ~ '건축'                                              then '건축학'
         when t.title ~ 'C\.?U\.?E|도시공학|도시|토목|환경|사회기반|방재|신영역' then 'C.U.E'
         when t.title ~ '금속|재료|공업화학|화학시스템|화공|신소재|응용화학'   then '재료·화학'
         when t.title ~ '의학|의약|약학|의대|병원|보건|간호'                  then '의약'
         when t.title ~ '법학|법과대'                                        then '법학부'
         when t.title ~ '인문|사회학|사회과학|교육학|문학'                    then '인문사회'
         when t.title ~ '이학부|이학계|물리|수학|화학과|지구|천문'             then '이학부'
         when t.title ~ '총합문화|교양학부'                                   then '총합문화'
         when t.title ~ '정보이공|정보학|정보관련|컴퓨터|정보공학'             then '정보이공'
         when t.title ~ '생산기술연구소|생기연'                               then '생산기술연구소'
         when t.title ~ '경제학|경영'                                        then '경제학부'
         when t.title ~ '공학'                                              then '공학 기타'
         else '기타'
       end || '] ' || coalesce(t.stripped, t.title)
  from t
 where t.id = p.id;

-- ── 옮긴 뒤 모습 ──
select split_part(split_part(title, ']', 1), '[', 2) as "말머리",
       count(*) as "글수"
  from public.posts
 where org = 'OB' and category = 'major'
 group by 1
 order by count(*) desc;
