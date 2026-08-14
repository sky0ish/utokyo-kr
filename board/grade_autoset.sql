-- ═══════════════════════════════════════════════════════════
-- 가입자 이름을 동문 명단과 한꺼번에 대조해 등급 매기기
--   · 이름이 명단에 있으면  → 회원(member)
--   · 없으면               → 준회원(guest)
--   · 운영진(is_admin)     → 관리자(admin) 그대로 유지
--
--   ① auth/admin_members.sql → ② board/roster_import.sql
--   → ③ board/grade_setup.sql → ④ 이 파일
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 지금 한 번 대조 ──
-- 명단에 있는 분 → 회원
update public.profiles p
   set grade = 'member'
 where coalesce(p.is_admin, false) = false
   and exists (select 1 from private.roster r
                where r.name_ko = btrim(coalesce(p.name, '')));

-- 명단에 없는 분 → 준회원
update public.profiles p
   set grade = 'guest'
 where coalesce(p.is_admin, false) = false
   and not exists (select 1 from private.roster r
                    where r.name_ko = btrim(coalesce(p.name, '')));

-- 운영진 → 관리자
update public.profiles set grade = 'admin' where is_admin = true;

-- ── 2) 관리자 화면의 「전체 자동 확인」 버튼이 쓰는 함수 ──
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
     and exists (select 1 from private.roster r
                  where r.name_ko = btrim(coalesce(p.name, '')));

  update public.profiles p
     set grade = 'guest'
   where coalesce(p.is_admin, false) = false
     and not exists (select 1 from private.roster r
                      where r.name_ko = btrim(coalesce(p.name, '')));

  update public.profiles set grade = 'admin' where is_admin = true;

  return query
    select coalesce(pr.grade, '(없음)')::text, count(*)::bigint
      from public.profiles pr group by pr.grade order by 1;
end $$;
revoke all on function public.roster_autoset() from anon;
grant execute on function public.roster_autoset() to authenticated;

-- ── 확인용 ──
select coalesce(grade, '(없음)') as 등급, count(*) as 인원
  from public.profiles group by grade order by grade;

-- 준회원으로 남은 분들의 이름 (오타·띄어쓰기 확인용)
select name as 이름, email as 이메일
  from public.profiles
 where coalesce(grade, 'guest') = 'guest'
 order by created_at desc;
