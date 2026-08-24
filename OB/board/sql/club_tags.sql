-- ═══════════════════════════════════════════════════════════
-- 소모임 게시판 말머리 정리 : 골프 / 등산 / 전공별 / 친목 / 기타
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

-- 1) 골프
update public.posts
set title = '[골프] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where category = 'club'
  and (title ~ '(골프|라운딩|골프대회|은행회)' or content ~ '(골프|라운딩)');

-- 2) 등산
update public.posts
set title = '[등산] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where category = 'club'
  and title !~ '^\[골프\]'
  and (title ~ '(등산|산행|둘레길|트래킹|트레킹|북한산|관악산)' or content ~ '(등산|산행|둘레길)');

-- 3) 전공별 (단과대·학과·연구실 모임)
update public.posts
set title = '[전공별] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where category = 'club'
  and title !~ '^\[(골프|등산)\]'
  and (title ~ '(공학부|농학부|약학부|의학부|법학부|경제학부|문학부|이학부|건축|화학|전기|기계|도시|수의|응용화학|계열|학과|전공|연구실|단과대)'
    or content ~ '(공학부|농학부|약학부|의학부|법학부|경제학부|문학부|이학부|응용화학계열|단과대|학과 모임|전공 모임)');

-- 4) 친목 (모임·식사·번개 등)
update public.posts
set title = '[친목] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where category = 'club'
  and title !~ '^\[(골프|등산|전공별)\]'
  and (title ~ '(모임|친목|회식|번개|송년|신년|만남|뒤풀이)' or content ~ '(친목|회식|번개|뒤풀이)');

-- 5) 나머지는 기타
update public.posts
set title = '[기타] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where category = 'club'
  and title !~ '^\[(골프|등산|전공별|친목)\]';

-- 확인용
-- select substring(title from '^\[[^\]]*\]') as tag, count(*)
-- from public.posts where category='club' group by 1 order by 2 desc;
