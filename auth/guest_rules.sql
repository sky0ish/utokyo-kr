-- =========================================================
--  비동문 Guest 가 무엇을 할 수 있는지 정합니다. (총동문회·학생회 공통)
--
--   보기   포럼·세미나 · 구인·채용 · 수험생  세 게시판
--   쓰기   구인·채용 · 수험생 두 곳 (글도 댓글도)
--   그 밖  갤러리 · 명부 · 다른 게시판은 보이지 않습니다
--          (소개 · 인사말 · 후원 같은 안내 쪽은 누구나 그대로 봅니다)
--
--   ※ 기존 규칙은 건드리지 않고 「덧대는 규칙(restrictive)」 으로 얹습니다.
--     그래서 회원·운영진에게는 아무 변화가 없습니다.
--
--   실행 : Supabase 대시보드 -> SQL Editor -> 붙여넣기 -> Run
--   ※ 여러 번 실행해도 안전합니다.
-- =========================================================


-- ── ① 지금 보는 사람이 Guest 인가 ──
--    등급이 'guest' 이거나 구분이 'GUEST' 이면 Guest 로 봅니다.
--    운영진은 Guest 로 보지 않습니다.
create or replace function public.is_guest()
returns boolean language sql stable security definer set search_path = public as
$$
  select coalesce((select (coalesce(grade,'') = 'guest' or coalesce(member_type,'') = 'GUEST')
                          and coalesce(is_admin, false) = false
                     from public.profiles where id = auth.uid()), false)
$$;

grant execute on function public.is_guest() to anon, authenticated;


-- ── ② Guest 가 볼 수 있는 게시판 ──
--    여기만 고치면 아래 규칙이 모두 따라옵니다.
create or replace function public.guest_cats()
returns text[] language sql immutable as
$$ select array['forum', 'jobs', 'exam'] $$;

grant execute on function public.guest_cats() to anon, authenticated;


-- ── ③ 게시판 — Guest 는 정해진 곳만 봅니다 ──
drop policy if exists "guest read limit" on public.posts;
create policy "guest read limit" on public.posts as restrictive for select
  using (not public.is_guest() or category = any(public.guest_cats()));


-- ── ④ 글쓰기 — Guest 는 구인·채용과 수험생 게시판에만 ──
drop policy if exists "guest write limit" on public.posts;
create policy "guest write limit" on public.posts as restrictive for insert
  with check (not public.is_guest() or category in ('jobs', 'exam'));

drop policy if exists "guest edit limit" on public.posts;
create policy "guest edit limit" on public.posts as restrictive for update
  using      (not public.is_guest() or category in ('jobs', 'exam'))
  with check (not public.is_guest() or category in ('jobs', 'exam'));


-- ── ⑤ 댓글도 그 두 곳에만 ──
drop policy if exists "guest comment limit" on public.comments;
create policy "guest comment limit" on public.comments as restrictive for insert
  with check (
    not public.is_guest()
    or exists (select 1 from public.posts p
                where p.id = comments.post_id and p.category in ('jobs', 'exam'))
  );


-- ── ⑥ 확인 ──

select polname as "규칙", polcmd as "무엇에", polpermissive as "덧대기 아님"
  from pg_policy
 where polname like 'guest%'
 order by polname;

select unnest(public.guest_cats()) as "Guest 가 보는 게시판";
