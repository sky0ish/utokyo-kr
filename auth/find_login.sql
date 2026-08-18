-- ═══════════════════════════════════════════════════════════
-- 아이디 찾기 · 비밀번호 새로 정하기 (메일 없이)
--   이름과 휴대전화가 모두 맞을 때만 알려주고, 바꿔줍니다.
--   ※ 비밀번호는 암호로 바뀌어 저장되므로 예전 값은 누구도 볼 수 없습니다.
--      그래서 '알려주기'가 아니라 '새로 정하기'로 처리합니다.
--      예전과 같은 비밀번호를 넣으셔도 그대로 받아들입니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

create extension if not exists pgcrypto with schema extensions;

-- 숫자만 남겨서 견주기 (010-1234-5678 == 01012345678)
create or replace function public.only_digits(t text)
returns text language sql immutable as
$$ select regexp_replace(coalesce(t, ''), '[^0-9]', '', 'g') $$;

-- ── 1) 아이디(이메일) 찾기 ──
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

-- ── 2) 비밀번호 새로 정하기 ──
create or replace function public.reset_password(p_name text, p_phone text, p_password text)
returns text
language plpgsql
security definer
set search_path = public, extensions
as $$
declare
  v_id    uuid;
  v_email text;
begin
  if length(coalesce(p_password, '')) < 6 then
    return 'SHORT';                       -- 6자 미만
  end if;

  select p.id, p.email into v_id, v_email
    from public.profiles p
   where btrim(lower(p.name)) = btrim(lower(coalesce(p_name, '')))
     and public.only_digits(p.phone) = public.only_digits(p_phone)
     and public.only_digits(p_phone) <> ''
   limit 1;

  if v_id is null then
    return 'NOTFOUND';                    -- 이름·전화가 맞는 회원 없음
  end if;

  update auth.users
     set encrypted_password = extensions.crypt(p_password, extensions.gen_salt('bf')),
         updated_at = now()
   where id = v_id;

  return v_email;                         -- 성공하면 그 회원의 아이디를 돌려준다
end;
$$;

revoke all on function public.find_login(text, text) from public;
revoke all on function public.reset_password(text, text, text) from public;
grant execute on function public.find_login(text, text) to anon, authenticated;
grant execute on function public.reset_password(text, text, text) to anon, authenticated;

-- 확인용
-- select public.find_login('남지현', '010-6650-6691');
