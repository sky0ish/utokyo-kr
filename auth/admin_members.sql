-- ═══════════════════════════════════════════════════════════
-- ① 회원 관리 (운영진이 전체 회원 목록을 보고 승인할 수 있게)
--
--   실행 순서
--     ① auth/admin_members.sql   ← 이 파일
--     ② board/roster_import.sql   (동문 명단)
--     ③ board/grade_setup.sql     (등급 3단계)
--     ④ board/grade_autoset.sql   (이름 대조)
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 필요한 칸 ──
alter table public.profiles add column if not exists welcome_sent_at  timestamptz;  -- 안내메일 보낸 시각
alter table public.profiles add column if not exists grade_checked_at timestamptz;  -- 회원여부 확인 시각

-- ── 2) 가입 시 이메일이 비어 있던 경우 로그인 정보에서 채워 넣기 ──
update public.profiles p
   set email = u.email
  from auth.users u
 where p.id = u.id
   and (p.email is null or p.email = '');

-- ── 3) 운영진 권한 ──
drop policy if exists "admin read all profiles" on public.profiles;
create policy "admin read all profiles" on public.profiles
  for select using (public.is_admin());

drop policy if exists "admin update profiles" on public.profiles;
create policy "admin update profiles" on public.profiles
  for update using (public.is_admin()) with check (public.is_admin());

-- ── 확인용 ──
select approved as 승인여부, count(*) as 인원
  from public.profiles group by approved order by approved;
