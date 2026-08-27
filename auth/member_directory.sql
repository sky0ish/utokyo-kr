-- ═══════════════════════════════════════════════════════════
-- 회원끼리 볼 수 있는 「회원 명부」 창구 만들기
--
--   운영진 명단에는 이메일·전화번호가 들어 있어 회원에게 열 수 없습니다.
--   그래서 이름 · 구분 · 전공 · 연도 네 가지만 내보내는 창구를 따로 둡니다.
--   개인 연락처는 이 창구를 통해 절대 나가지 않습니다.
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 창구(뷰) 만들기 ──
--    · 승인된 회원의 줄만 보입니다.
--    · 보는 사람도 승인된 회원이어야 합니다 (is_approved()).
--      로그인하지 않았거나 승인 대기 중이면 한 줄도 나오지 않습니다.
drop view if exists public.member_directory;
create view public.member_directory as
select
  p.name        as name,
  p.member_type as member_type,
  p.faculty     as faculty,
  p.grad_year   as grad_year
from public.profiles p
where p.approved = true
  and coalesce(p.name, '') <> ''
  and public.is_approved();

comment on view public.member_directory is
  '회원끼리 보는 명부 — 이름·구분·전공·연도만. 이메일·전화번호는 담지 않습니다.';

-- ── 2) 로그인한 회원만 읽을 수 있게 ──
revoke all on public.member_directory from anon;
grant select on public.member_directory to authenticated;

-- ── 3) 잘 되었는지 확인 ──
select count(*) as "명부에 보이는 사람 수" from public.member_directory;
-- → SQL Editor 는 운영자 권한으로 도니 승인 회원 수가 그대로 나옵니다.
--   실제 화면에서는 로그인한 승인 회원에게만 보입니다.

select column_name as "명부가 내보내는 칸"
  from information_schema.columns
 where table_schema = 'public' and table_name = 'member_directory'
 order by ordinal_position;
-- → name, member_type, faculty, grad_year 네 줄만 나오면 끝입니다.
--   (email, phone 이 없다는 것을 눈으로 확인해주세요)
