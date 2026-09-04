-- =========================================================
--  등급을 셋으로 나눕니다 : 회원 · 준회원 · Guest
--
--   member     회원    도쿄대학 동문. 모두 보고 모두 씁니다.
--   associate  준회원  모두 볼 수 있으나 글·댓글은 쓰지 못합니다.
--   guest      Guest   도쿄대학 출신이 아닌 분.
--                      포럼·세미나 · 구인·채용 · 수험생 세 곳만 보고,
--                      구인·채용 · 수험생 두 곳에만 씁니다.
--
--   한눈에
--                     보기            쓰기
--     회원            모두            모두
--     준회원          모두            없음
--     Guest           세 게시판       두 게시판
--
--   ※ 기존 규칙은 건드리지 않고 「덧대는 규칙(restrictive)」 으로 얹습니다.
--
--   실행 : Supabase 대시보드 -> SQL Editor -> 붙여넣기 -> Run
--   ※ 여러 번 실행해도 안전합니다.
-- =========================================================


-- ── ① 등급값에 associate 를 더합니다 ──
alter table public.profiles drop constraint if exists profiles_grade_check;
alter table public.profiles add constraint profiles_grade_check
  check (grade is null or grade in ('member', 'associate', 'guest', 'admin'));


-- ── ② 「회원 이상」에 준회원을 넣습니다 (보는 것은 회원과 같게) ──
create or replace function public.is_member()
returns boolean language sql stable security definer set search_path = public as
$$
  select coalesce((select coalesce(is_admin, false)
                          or coalesce(grade,'') in ('member', 'associate', 'admin')
                     from public.profiles where id = auth.uid()), false)
$$;

grant execute on function public.is_member() to anon, authenticated;


-- ── ③ 준회원인가 ──
create or replace function public.is_associate()
returns boolean language sql stable security definer set search_path = public as
$$
  select coalesce((select coalesce(grade,'') = 'associate'
                          and coalesce(is_admin, false) = false
                     from public.profiles where id = auth.uid()), false)
$$;

grant execute on function public.is_associate() to anon, authenticated;


-- ── ④ Guest 판별 (준회원은 Guest 가 아닙니다) ──
create or replace function public.is_guest()
returns boolean language sql stable security definer set search_path = public as
$$
  select coalesce((select (coalesce(grade,'') = 'guest' or
                           (coalesce(member_type,'') = 'GUEST'
                            and coalesce(grade,'') not in ('member', 'associate')))
                          and coalesce(is_admin, false) = false
                     from public.profiles where id = auth.uid()), false)
$$;

grant execute on function public.is_guest() to anon, authenticated;


-- ── ⑤ 준회원은 글도 댓글도 쓰지 못합니다 ──
--    보는 것은 회원과 똑같습니다. 손만 얹지 않는 것입니다.
drop policy if exists "associate no write" on public.posts;
create policy "associate no write" on public.posts as restrictive for insert
  with check (not public.is_associate());

drop policy if exists "associate no edit" on public.posts;
create policy "associate no edit" on public.posts as restrictive for update
  using      (not public.is_associate())
  with check (not public.is_associate());

drop policy if exists "associate no comment" on public.comments;
create policy "associate no comment" on public.comments as restrictive for insert
  with check (not public.is_associate());


-- ── ⑥ 확인 ──
select coalesce(grade, '(없음)') as "등급",
       count(*)                 as "인원",
       count(*) filter (where approved) as "승인"
  from public.profiles
 group by grade
 order by count(*) desc;

select polname as "규칙", polcmd as "무엇에"
  from pg_policy
 where polname like 'associate%' or polname like 'guest%'
 order by polname;
