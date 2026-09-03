-- ═══════════════════════════════════════════════════════════
--  동경대 총동문회 사이트 —
--  「본인 정보는 본인이 고치되, 권한은 스스로 못 바꾼다」
--
--  ※ Supabase → whlove@gmail.com 계정 → 동문회 프로젝트
--     (ojnukcciozchnsycxtfq) → SQL Editor
--
--  ⚠️ 이 파일은 **다시 씌운 것입니다. 한 번 더 돌려 주세요.**
--
--  앞선 판에는 큰 허물이 있었습니다.
--  규칙(policy) 안에서 profiles 를 또 읽었습니다 —
--
--      with check ( … approved is not distinct from
--                   (select approved from public.profiles where id = auth.uid()) … )
--
--  PostgreSQL 은 규칙 식에 붙은 하위질의에도 그 표의 규칙을 다시 씌웁니다.
--  그래서 제자리를 맴돌며 42P17 (infinite recursion) 이 나고,
--  **profiles 를 고치는 모든 일이 막힙니다** — 운영진의 회원 승인까지.
--
--  고친 방법 : 하위질의를 security definer 함수 하나로 옮겼습니다.
--  그 함수는 주인 권한으로 따로 돌기 때문에 규칙을 다시 타지 않습니다.
--  (is_admin() 이 지금도 멀쩡한 것과 같은 까닭입니다.)
--
--  · 먼저 auth/profiles_rls_check.sql 을 돌려 지금 상태를 보시면 좋습니다.
--  · 이 파일은 통째로 한 덩이(transaction)라, 중간에 어긋나면
--    아무것도 바뀌지 않고 되돌아갑니다.
--  · 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

begin;

alter table public.profiles enable row level security;


-- ───────────────────────────────────────────────────────────
--  ① 권한 칸이 그대로인지 봐 주는 도우미
--
--  security definer — 주인 권한으로 돌기에 규칙을 다시 타지 않습니다.
--  이것이 맴돌지 않게 하는 핵심입니다.
--  search_path 를 못 박아 두는 것은 definer 함수의 기본 예의입니다.
-- ───────────────────────────────────────────────────────────
create or replace function public.keeps_own_rights(
  p_approved boolean, p_is_admin boolean, p_grade text)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select coalesce((
    select p_approved is not distinct from approved
       and p_is_admin is not distinct from is_admin
       and p_grade    is not distinct from grade::text
      from public.profiles
     where id = auth.uid()
  ), false)
$$;

revoke all on function public.keeps_own_rights(boolean, boolean, text) from public;
grant execute on function public.keeps_own_rights(boolean, boolean, text) to authenticated;

comment on function public.keeps_own_rights is
  '본인이 제 권한 칸(approved·is_admin·grade)을 그대로 두었는지 봅니다. 규칙이 맴돌지 않도록 definer 로 둡니다';


-- ───────────────────────────────────────────────────────────
--  ② 본인용 규칙 — 제 것만 보고, 제 것만 고칩니다
--     다만 권한 칸 세 개는 그대로여야 통과합니다.
-- ───────────────────────────────────────────────────────────

-- 흔히 쓰이던 느슨한 이름들을 걷어 냅니다
-- (규칙은 「하나라도 통과하면 통과」라, 느슨한 것이 하나 남으면 소용없습니다)
drop policy if exists "update own profile"        on public.profiles;
drop policy if exists "본인 정보 수정"             on public.profiles;
drop policy if exists "users update own profile"  on public.profiles;
drop policy if exists "profiles update own"       on public.profiles;
drop policy if exists "self update"               on public.profiles;
drop policy if exists "self edits own profile"    on public.profiles;

drop policy if exists "self reads own profile" on public.profiles;
create policy "self reads own profile" on public.profiles
  for select using (auth.uid() = id);

create policy "self edits own profile" on public.profiles
  for update using (auth.uid() = id)
  with check (
    auth.uid() = id
    and public.keeps_own_rights(approved, is_admin, grade::text)
  );


-- ───────────────────────────────────────────────────────────
--  ③ 운영진용 규칙 — 없으면 다시 깝니다
--
--  ②에서 옛 이름을 걷어 내다가 함께 날아갔을 수 있습니다.
--  이것이 없으면 운영진이 남의 줄을 못 고쳐 **승인이 안 됩니다.**
--  is_admin() 은 security definer 라 맴돌지 않습니다.
-- ───────────────────────────────────────────────────────────
drop policy if exists "admin read all profiles" on public.profiles;
create policy "admin read all profiles" on public.profiles
  for select using (public.is_admin());

drop policy if exists "admin update profiles" on public.profiles;
create policy "admin update profiles" on public.profiles
  for update using (public.is_admin()) with check (public.is_admin());

commit;


-- ═══════════════════════════════════════════════════════════
--  ④ 확인 — 정말 고쳐졌는지
-- ═══════════════════════════════════════════════════════════

-- 규칙 넷이 보여야 합니다
--   select : self reads own profile · admin read all profiles
--   update : self edits own profile · admin update profiles
select cmd as "무엇을", policyname as "규칙 이름"
  from pg_policies
 where schemaname = 'public' and tablename = 'profiles'
 order by cmd, policyname;

-- 아무 값도 안 바꾸는 update 로 눌러 봅니다.
-- 「고친 줄 1」 이 나와야 합니다. 0 이거나 42P17 이면 아직 막혀 있습니다.
do $$
declare n int;
begin
  update public.profiles set name = name
   where id = (select id from public.profiles order by created_at limit 1);
  get diagnostics n = row_count;
  raise notice '고친 줄 % (1 이어야 합니다)', n;
exception when others then
  raise notice '아직 막혀 있습니다 — % %', sqlstate, sqlerrm;
end $$;
