-- ═══════════════════════════════════════════════════════════
-- 포럼·세미나 게시판 하나로 모으기
--
--   단과대포럼 · 세미나 를 [포럼·세미나] 게시판 하나로 합치고,
--   제목 앞 말머리로 종류를 구분합니다.
--       [인문사회] [공학] [농학생명] …  ← 단과대포럼의 분야
--       [세미나]                        ← 세미나
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
--   ※ 앞서 '공지로 합치기' SQL 을 돌리셨더라도 되돌려 줍니다.
-- ═══════════════════════════════════════════════════════════

-- ① 지금 상태 확인
select category, count(*) as 글수
  from public.posts
 where org = 'OB' and category in ('forum', 'seminar')
 group by category;

-- ② 앞서 공지로 옮겼던 글이 있으면 되돌린다
--    [단과대포럼] 말머리는 게시판 이름과 겹치므로 떼어낸다
update public.posts
   set category = 'forum',
       title = regexp_replace(title, '^\[단과대포럼\]\s*', '')
 where org = 'OB' and category = 'notice' and title like '[단과대포럼]%';

update public.posts
   set category = 'forum'
 where org = 'OB' and category = 'notice' and title like '[세미나]%';

-- ③ 세미나 글에는 [세미나] 말머리를 달아준다
update public.posts
   set title = '[세미나] ' || title
 where org = 'OB' and category = 'seminar'
   and title not like '[세미나]%';

-- ④ 세미나를 포럼·세미나 게시판으로 합친다
update public.posts
   set category = 'forum'
 where org = 'OB' and category = 'seminar';

-- ⑤ 말머리가 하나도 없는 글에는 [포럼] 을 달아준다
update public.posts
   set title = '[포럼] ' || title
 where org = 'OB' and category = 'forum'
   and title !~ '^\[[^\]]{1,14}\]';

-- ⑥ 결과 확인
select left(title, 46) as 제목, created_at::date as 날짜
  from public.posts
 where org = 'OB' and category = 'forum'
 order by created_at desc
 limit 30;
