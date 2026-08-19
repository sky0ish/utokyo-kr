-- ═══════════════════════════════════════════════════════════
-- 단과대포럼 · 세미나 게시판을 [공지] 안으로 합치기
--
--   따로 있던 두 게시판을 없애고, 공지 게시판 안에서
--   제목 앞 말머리 [단과대포럼] · [세미나] 로 구분합니다.
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 말머리가 겹쳐 붙지 않습니다.
-- ═══════════════════════════════════════════════════════════

-- ① 옮기기 전 몇 건인지 확인
select category, count(*) as 글수
  from public.posts
 where org = 'OB' and category in ('forum', 'seminar')
 group by category;

-- ② 제목 앞에 말머리 붙이기
update public.posts
   set title = '[단과대포럼] ' || title
 where org = 'OB' and category = 'forum'
   and title not like '[단과대포럼]%';

update public.posts
   set title = '[세미나] ' || title
 where org = 'OB' and category = 'seminar'
   and title not like '[세미나]%';

-- ③ 공지 게시판으로 옮기기
update public.posts
   set category = 'notice'
 where org = 'OB' and category in ('forum', 'seminar');

-- ④ 결과 확인 — 옮겨온 글이 공지 안에 잘 들어갔는지
select left(title, 40) as 제목, created_at::date as 날짜
  from public.posts
 where org = 'OB' and category = 'notice'
   and (title like '[단과대포럼]%' or title like '[세미나]%')
 order by created_at desc
 limit 20;
