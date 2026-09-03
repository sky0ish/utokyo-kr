-- ─────────────────────────────────────────────────────────────
--  사라진 글 찾기 — 재한 도쿄대학 총동문회 (ojnukcciozchnsycxtfq)
--  Supabase → SQL Editor 에 붙여넣고 실행하세요.
--  RLS 를 지나가지 않으므로 로그인해야 보이는 글도 다 나옵니다.
-- ─────────────────────────────────────────────────────────────

-- ① 낱말로 찾기 — 제목과 본문을 함께 봅니다
select created_at, org, category, title, author_name, source, id
  from public.posts
 where title   ilike any (array['%북콘서트%','%고려대%','%인문사회%','%박물관%'])
    or content ilike any (array['%북콘서트%','%고려대박물관%','%인문사회포럼%','%1CGqCekt%'])
 order by created_at desc;

-- ② 그 무렵(8월 12일 앞뒤) 올라온 글 전부
select created_at, org, category, title, author_name
  from public.posts
 where created_at >= '2026-08-05' and created_at < '2026-08-20'
 order by created_at desc;

-- ③ 포럼 게시판에 지금 무엇이 있나
select category, count(*) , max(created_at) as 최근
  from public.posts
 where category like 'forum%'
 group by category order by category;

-- ④ 갈래별 전체 — 어디가 비었는지 한눈에
select org, category, count(*) , max(created_at) as 최근
  from public.posts
 group by org, category order by org, category;
