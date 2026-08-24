-- ═══════════════════════════════════════════════════════════
-- 학생회(YB) 재학생 명단 받을 준비
--
--   지금까지 명단은 총동문회(OB) 것 하나뿐이라, 학생회 회원은
--   [확인] 을 눌러도 늘 「명단에 없음」 이 나왔습니다.
--   명단에 소속(OB/YB) 을 두어, 그 사람의 구분에 맞는 명단만
--   대조하도록 고칩니다.
--
--   ※ 이 파일만 돌려도 지금 동작이 나빠지지 않습니다.
--     (OB 명단은 그대로, YB 는 명단이 들어오면 바로 작동)
--
--   실행 순서
--     ① auth/admin_members.sql
--     ② board/roster_import.sql      ← 총동문회 명단
--     ③ board/grade_setup.sql
--     ④ board/grade_autoset.sql
--     ⑤ board/roster_yb.sql          ← 이 파일
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 명단에 소속 칸을 둔다 (지금 있는 분들은 모두 총동문회) ──
alter table private.roster add column if not exists org text;
update private.roster set org = 'OB' where org is null;
alter table private.roster alter column org set default 'OB';
create index if not exists roster_org_idx on private.roster (org);

-- ── 2) 대조할 때 소속을 함께 본다 ──
--    p_org 가 비어 있으면 예전처럼 명단 전체에서 찾습니다.
create or replace function public.in_roster(nm text, p_org text default null)
returns boolean language sql security definer set search_path = private, public as $$
  select exists (
    select 1 from private.roster r
     where (p_org is null or r.org = p_org)
       and (public.name_key(r.name_ko)    = public.name_key(nm)
         or public.name_key(r.name_en)    = public.name_key(nm)
         or public.name_key(r.name_kanji) = public.name_key(nm)))
$$;

-- ── 3) 이름 하나 조회 ([확인] 단추) ──
drop function if exists public.roster_check(text);
create or replace function public.roster_check(q text, p_org text default null)
returns table (name_ko text, department text, degree_year text, email text, belong text)
language sql security definer set search_path = private, public as $$
  select r.name_ko, r.department, r.degree_year, r.email, r.belong
    from private.roster r
   where public.is_admin()
     and (p_org is null or r.org = p_org)
     and (public.name_key(r.name_ko)    = public.name_key(q)
       or public.name_key(r.name_en)    = public.name_key(q)
       or public.name_key(r.name_kanji) = public.name_key(q))
   order by r.department nulls last
   limit 20
$$;
revoke all on function public.roster_check(text, text) from anon;
grant execute on function public.roster_check(text, text) to authenticated;

-- ── 4) 일괄확인 — 그 사람의 구분에 맞는 명단만 대조 ──
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
     and public.in_roster(p.name, p.member_type);

  update public.profiles p
     set grade = 'guest'
   where coalesce(p.is_admin, false) = false
     and p.grade_manual_at is null
     and not public.in_roster(p.name, p.member_type);

  update public.profiles set grade = 'admin' where is_admin = true;

  -- 명단에서 확인된 전공·학위연도·소속·이메일 채워 넣기
  update public.profiles p
     set roster_dept   = r.department,
         roster_year   = r.degree_year,
         roster_belong = r.belong,
         roster_email  = r.email
    from private.roster r
   where r.org = p.member_type
     and (public.name_key(r.name_ko)    = public.name_key(p.name)
       or public.name_key(r.name_en)    = public.name_key(p.name)
       or public.name_key(r.name_kanji) = public.name_key(p.name));

  update public.profiles set grade_checked_at = now();

  return query
    select coalesce(pr.grade, '(없음)')::text, count(*)::bigint
      from public.profiles pr group by pr.grade order by 1;
end $$;
revoke all on function public.roster_autoset() from anon;
grant execute on function public.roster_autoset() to authenticated;

-- ═══════════════════════════════════════════════════════════
-- ⑤ 학생회 재학생 명단 넣기
--
--   학생회에서 명단을 받으시면 아래 -- 를 지우고 이름을 채워 넣으세요.
--   칸 차례 : 이름(한글), 이름(영문), 이름(한자), 전공, 입학·졸업연도, 이메일, 소속
--   모르는 칸은 '' 로 비워두시면 됩니다.
--
--   ※ 개인정보 — 전화번호·주소는 넣지 마세요.
--     이 표는 private 스키마에 있어 홈페이지 API 에서 보이지 않고,
--     운영진이 이름을 조회할 때만 정해진 함수로 읽힙니다.
-- ═══════════════════════════════════════════════════════════

-- delete from private.roster where org = 'YB';   -- 명단을 새로 갈아끼울 때만
--
-- insert into private.roster (name_ko, name_en, name_kanji, department, degree_year, email, belong, org)
-- values
-- ('이지원', '', '', '공학계연구과', '2024', '', '도쿄대학 재학', 'YB'),
-- ('김현지', '', '', '',             '',     '', '도쿄대학 재학', 'YB')
-- ;

-- ── 확인 ──
select coalesce(org, '(없음)') as 소속, count(*) as 인원
  from private.roster group by 1 order by 1;
