-- ═══════════════════════════════════════════════════════════
-- 회원끼리 볼 수 있는 「회원 명부」 창구 만들기
--
--   운영진 명단에는 이메일·전화번호가 들어 있어 회원에게 열 수 없습니다.
--   그래서 이름 · 구분 · 전공 · 연도 네 가지만 내보내는 창구를 따로 둡니다.
--   개인 연락처는 이 창구를 통해 절대 나가지 않습니다.
--
--   누가 누구를 보는가
--     · 일반 회원  — 자기와 같은 쪽 사람만 (OB 회원은 OB만, YB 회원은 YB만)
--     · 운영진      — 양쪽 모두
--     · 비회원·승인대기 — 한 줄도 보이지 않음
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 보는 사람이 어느 쪽 사람인지 ──
create or replace function public.my_org()
returns text language sql stable security definer set search_path = public as
$$ select member_type from public.profiles where id = auth.uid() $$;

-- ── 2) 창구(뷰) 만들기 ──
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
  and public.is_approved()                    -- 보는 사람도 승인 회원이어야 하고
  and (
        public.is_admin()                     -- 운영진은 양쪽 다
     or p.member_type = public.my_org()       -- 일반 회원은 제 쪽만
      );

comment on view public.member_directory is
  '회원끼리 보는 명부 — 이름·구분·전공·연도만. 일반 회원은 제 소속만, 운영진은 전부.';

-- ── 3) 로그인한 회원만 읽을 수 있게 ──
revoke all on public.member_directory from anon;
grant select on public.member_directory to authenticated;

-- ── 4) 잘 되었는지 확인 ──
select column_name as "명부가 내보내는 칸"
  from information_schema.columns
 where table_schema = 'public' and table_name = 'member_directory'
 order by ordinal_position;
-- → name, member_type, faculty, grad_year 네 줄만 나오면 됩니다.
--   (email, phone 이 없다는 것을 눈으로 확인해주세요)

select coalesce(member_type, '(없음)') as "구분", count(*) as "승인 회원"
  from public.profiles where approved group by member_type order by count(*) desc;
-- → SQL Editor 는 운영자 권한으로 도니 전부 나옵니다.
--   실제 화면에서는 위의 규칙대로 갈라져 보입니다.
