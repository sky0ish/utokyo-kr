-- =========================================================
--  등급을 셋으로 나눕니다 : 회원 · 준회원 · Guest
--
--   member     회원    도쿄대학 동문. 모든 게시판을 씁니다.
--   associate  준회원  회칙의 준회원. 회원과 같은 곳을 보되
--                      운영진이 따로 정하신 자격의 분들입니다.
--   guest      Guest   도쿄대학 출신이 아닌 분.
--                      포럼·세미나 · 구인·채용 · 수험생 세 곳만.
--
--   ※ 준회원은 회원과 같은 범위를 봅니다. 이름표만 다릅니다.
--     따로 좁히고 싶으시면 말씀해 주십시오.
--
--   실행 : Supabase 대시보드 -> SQL Editor -> 붙여넣기 -> Run
--   ※ 여러 번 실행해도 안전합니다.
-- =========================================================


-- ── ① 등급값에 associate 를 더합니다 ──
alter table public.profiles drop constraint if exists profiles_grade_check;
alter table public.profiles add constraint profiles_grade_check
  check (grade is null or grade in ('member', 'associate', 'guest', 'admin'));


-- ── ② 「회원 이상」에 준회원을 넣습니다 ──
--    자유게시판 · 갤러리처럼 회원께만 열린 곳을 준회원도 보십니다.
create or replace function public.is_member()
returns boolean language sql stable security definer set search_path = public as
$$
  select coalesce((select coalesce(is_admin, false)
                          or coalesce(grade,'') in ('member', 'associate', 'admin')
                     from public.profiles where id = auth.uid()), false)
$$;

grant execute on function public.is_member() to anon, authenticated;


-- ── ③ Guest 판별은 그대로 (준회원은 Guest 가 아닙니다) ──
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


-- ── ④ 확인 ──
select coalesce(grade, '(없음)') as "등급",
       count(*)                 as "인원",
       count(*) filter (where approved) as "승인"
  from public.profiles
 group by grade
 order by count(*) desc;
