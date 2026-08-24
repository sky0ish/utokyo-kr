-- ═══════════════════════════════════════════════════════════
-- 채용 관련 글을 '홍보·채용' 게시판으로 이동
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ public_posts.sql 을 아직 실행하지 않았다면 이 파일을 먼저 실행한 뒤 그것을 실행하세요.
-- ═══════════════════════════════════════════════════════════

-- 1) 예전 '구인구직(jobs)' 분류가 남아 있으면 홍보로 통합
update public.posts
set category = 'promo',
    title = '[채용] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where category = 'jobs';

-- 2) 채용·모집 성격의 글을 홍보로 이동 (경조사·공지는 제외)
update public.posts
set category = 'promo',
    title = '[채용] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where category in ('free', 'club')
  and (
    title  ~ '(채용|구인|모집공고|인턴|신입사원|경력직|리크루|공채)'
    or content ~ '(채용 공고|채용공고|구인 공고|구인공고|인턴 모집|신입사원 모집|경력직 모집|채용합니다|모집합니다.*(지원|이력서))'
  );

-- 3) 홍보 게시판은 전체 공개
update public.posts set visibility = 'public' where category in ('notice', 'promo');

-- 확인용
-- select category, count(*) from public.posts group by 1 order by 2 desc;
