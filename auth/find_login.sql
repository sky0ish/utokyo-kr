-- ═══════════════════════════════════════════════════════════
-- 아이디(이메일) 찾기 — 이름과 휴대전화가 모두 맞을 때만 알려줍니다
--   ※ 비밀번호는 암호로 바뀌어 저장되므로 누구도(운영진도) 볼 수 없습니다.
--      그래서 비밀번호는 '알려주기'가 아니라 '새로 정하기'로 처리합니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- 숫자만 남겨서 견주기 위한 도우미 (010-1234-5678 == 01012345678)
create or replace function public.only_digits(t text)
returns text language sql immutable as
$$ select regexp_replace(coalesce(t, ''), '[^0-9]', '', 'g') $$;

-- 이름 + 휴대전화가 모두 맞으면 그 회원의 이메일을 돌려준다
create or replace function public.find_login(p_name text, p_phone text)
returns text
language sql
security definer
set search_path = public
as $$
  select p.email
    from public.profiles p
   where btrim(lower(p.name)) = btrim(lower(coalesce(p_name, '')))
     and public.only_digits(p.phone) = public.only_digits(p_phone)
     and public.only_digits(p_phone) <> ''
   limit 1
$$;

revoke all on function public.find_login(text, text) from public;
grant execute on function public.find_login(text, text) to anon, authenticated;

-- 확인용
-- select public.find_login('남지현', '010-6650-6691');
