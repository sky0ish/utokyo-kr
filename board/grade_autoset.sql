-- ═══════════════════════════════════════════════════════════
-- 가입자 이름을 동문 명단과 대조해 등급 매기기
--   · 이름이 명단에 있으면  → 회원(member)
--   · 없으면               → 준회원(guest)
--   · 운영진(is_admin)     → 관리자(admin)
--   · 운영진이 손으로 올린 분 → 그대로 유지 (화면·CSV 에 「재승인」 으로 표기)
--
--   ※ 띄어쓰기·대소문자는 무시하고 맞춥니다
--      「강 승현」·「강승현」·「강　승현」 모두 같은 사람으로 봅니다
--      한글 이름뿐 아니라 영문·한자 이름도 함께 대조합니다
--
--   실행 순서
--     ① auth/admin_members.sql
--     ② board/roster_import.sql
--     ③ board/grade_setup.sql
--     ④ board/grade_autoset.sql   ← 이 파일
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 0) 필요한 칸 ──
-- 명단에서 확인된 내용 (CSV 저장에 함께 나갑니다)
alter table public.profiles add column if not exists roster_dept      text;
alter table public.profiles add column if not exists roster_year      text;
alter table public.profiles add column if not exists roster_belong    text;
alter table public.profiles add column if not exists roster_email     text;
-- 손으로 등급을 정한 시각 (있으면 일괄확인이 건드리지 않습니다 = 재승인)
alter table public.profiles add column if not exists grade_manual_at  timestamptz;
-- 회원 여부를 확인한 시각 (확인 끝난 분은 버튼이 회색 [확인] 으로 바뀝니다)
alter table public.profiles add column if not exists grade_checked_at timestamptz;

-- 이름을 견주기 좋게 다듬는 함수 (띄어쓰기·가운뎃점·대소문자 무시)
create or replace function public.name_key(t text)
returns text language sql immutable as $$
  select lower(regexp_replace(coalesce(t, ''), '[[:space:]．·・.]', '', 'g'))
$$;

-- 이름이 명단에 있는지 (한글·영문·한자 어느 것이든)
create or replace function public.in_roster(nm text)
returns boolean language sql security definer set search_path = private, public as $$
  select exists (
    select 1 from private.roster r
     where public.name_key(r.name_ko)    = public.name_key(nm)
        or public.name_key(r.name_en)    = public.name_key(nm)
        or public.name_key(r.name_kanji) = public.name_key(nm))
$$;

-- ── 1) 지금 한 번 대조 ──
update public.profiles p
   set grade = 'member'
 where coalesce(p.is_admin, false) = false
   and p.grade_manual_at is null                 -- 손으로 정한 분은 그대로
   and public.name_key(p.name) <> ''
   and public.in_roster(p.name);

update public.profiles p
   set grade = 'guest'
 where coalesce(p.is_admin, false) = false
   and p.grade_manual_at is null
   and not public.in_roster(p.name);

update public.profiles set grade = 'admin' where is_admin = true;

-- 명단에서 확인된 전공·학위연도·소속·이메일 채워 넣기
update public.profiles p
   set roster_dept   = r.department,
       roster_year   = r.degree_year,
       roster_belong = r.belong,
       roster_email  = r.email
  from private.roster r
 where public.name_key(r.name_ko)    = public.name_key(p.name)
    or public.name_key(r.name_en)    = public.name_key(p.name)
    or public.name_key(r.name_kanji) = public.name_key(p.name);

-- 대조를 마친 시각 남기기
update public.profiles set grade_checked_at = now() where grade_checked_at is null;

-- ── 2) 이름 하나 조회 (관리자 화면의 [회원여부 확인] 버튼) ──
create or replace function public.roster_check(q text)
returns table (name_ko text, department text, degree_year text, email text, belong text)
language sql security definer set search_path = private, public as $$
  select r.name_ko, r.department, r.degree_year, r.email, r.belong
    from private.roster r
   where public.is_admin()
     and (public.name_key(r.name_ko)    = public.name_key(q)
       or public.name_key(r.name_en)    = public.name_key(q)
       or public.name_key(r.name_kanji) = public.name_key(q))
   order by r.department nulls last
   limit 20
$$;
revoke all on function public.roster_check(text) from anon;
grant execute on function public.roster_check(text) to authenticated;

-- ── 3) 일괄확인 (관리자 화면의 [회원여부 일괄확인] 버튼) ──
create or replace function public.roster_autoset()
returns table (등급 text, 인원 bigint)
language plpgsql security definer set search_path = private, public as $$
begin
  if not public.is_admin() then
    raise exception '운영진만 실행할 수 있습니다';
  end if;

  update public.profiles p
     set grade = 'member'
   where coalesce(p.is_admin, false) = false
     and p.grade_manual_at is null
     and public.name_key(p.name) <> ''
     and public.in_roster(p.name);

  update public.profiles p
     set grade = 'guest'
   where coalesce(p.is_admin, false) = false
     and p.grade_manual_at is null
     and not public.in_roster(p.name);

  update public.profiles set grade = 'admin' where is_admin = true;

  update public.profiles p
     set roster_dept   = r.department,
         roster_year   = r.degree_year,
         roster_belong = r.belong,
         roster_email  = r.email
    from private.roster r
   where public.name_key(r.name_ko)    = public.name_key(p.name)
      or public.name_key(r.name_en)    = public.name_key(p.name)
      or public.name_key(r.name_kanji) = public.name_key(p.name);

  update public.profiles set grade_checked_at = now();

  return query
    select coalesce(pr.grade, '(없음)')::text, count(*)::bigint
      from public.profiles pr group by pr.grade order by 1;
end $$;
revoke all on function public.roster_autoset() from anon;
grant execute on function public.roster_autoset() to authenticated;

-- ── 확인용 ──
select coalesce(grade, '(없음)') as 등급, count(*) as 인원
  from public.profiles group by grade order by grade;

-- 준회원으로 남은 분들 (이름 표기 확인용)
select name as 이름, email as 이메일, phone as 연락처
  from public.profiles
 where coalesce(grade, 'guest') = 'guest'
 order by created_at desc;
