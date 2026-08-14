-- ═══════════════════════════════════════════════════════════
-- 회원 관리 (운영진이 전체 회원 목록을 보고 승인할 수 있게)
--
--   실행 순서
--     ① auth/admin_members.sql   ← 이 파일
--     ② board/roster_import.sql   (동문 명단)
--     ③ board/grade_setup.sql     (등급 3단계)
--     ④ board/grade_autoset.sql   (이름 일괄 대조)
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 필요한 칸 ──
-- 안내 메일을 언제 보냈는지 (이미 보낸 분에게 다시 보내지 않기 위해)
alter table public.profiles add column if not exists welcome_sent_at  timestamptz;
-- 회원 여부를 언제 확인했는지 (확인 끝난 분은 버튼이 회색 [확인] 으로 바뀝니다)
alter table public.profiles add column if not exists grade_checked_at timestamptz;

-- ── 2) 가입 시 이메일이 비어 있던 경우 로그인 정보에서 채워 넣기 ──
update public.profiles p
   set email = u.email
  from auth.users u
 where p.id = u.id
   and (p.email is null or p.email = '');

-- ── 3) 운영진 권한 ──
-- 운영진은 모든 회원을 볼 수 있음
drop policy if exists "admin read all profiles" on public.profiles;
create policy "admin read all profiles" on public.profiles
  for select using (public.is_admin());

-- 운영진은 승인 여부·등급을 바꿀 수 있음
drop policy if exists "admin update profiles" on public.profiles;
create policy "admin update profiles" on public.profiles
  for update using (public.is_admin()) with check (public.is_admin());

-- ── 확인용 ──
select approved as 승인여부, count(*) as 인원
  from public.profiles
 group by approved
 order by approved;
