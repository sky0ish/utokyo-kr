-- ═══════════════════════════════════════════════════════════
-- 회원 관리 (운영진이 전체 회원 목록을 보고 승인할 수 있게)
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- 안내 메일을 언제 보냈는지 기록 (이미 보낸 사람에게 다시 보내지 않기 위해)
alter table public.profiles add column if not exists welcome_sent_at timestamptz;

-- 가입 시 이메일이 비어 있던 경우 채워 넣기
update public.profiles p
set email = u.email
from auth.users u
where p.id = u.id and (p.email is null or p.email = '');

-- 운영진은 모든 회원을 볼 수 있음
drop policy if exists "admin read all profiles" on public.profiles;
create policy "admin read all profiles" on public.profiles
  for select using (public.is_admin());

-- 운영진은 승인 여부를 바꿀 수 있음
drop policy if exists "admin update profiles" on public.profiles;
create policy "admin update profiles" on public.profiles
  for update using (public.is_admin()) with check (public.is_admin());

-- ── 확인용 ──
-- select approved, count(*) from public.profiles group by 1;
-- select name, email, member_type, approved, created_at from public.profiles order by created_at desc;
