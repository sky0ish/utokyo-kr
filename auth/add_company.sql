-- ═══════════════════════════════════════════════════════════
-- 회원 정보에 「현재 직장명 · 직급」 칸을 더합니다
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
--   OB · YB 가 한 자료방을 함께 쓰므로 이 한 번으로 양쪽 다 됩니다.
-- ═══════════════════════════════════════════════════════════

-- 1) 칸 두 개 만들기
alter table public.profiles add column if not exists company   text;   -- 현재 직장명
alter table public.profiles add column if not exists job_title text;   -- 직급

-- 2) 새로 가입하는 분의 직장·직급이 그대로 옮겨 담기도록
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = public
as $$
begin
  insert into public.profiles (id, email, name, member_type, faculty, grad_year, company, job_title, phone)
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data->>'name', ''),
    nullif(new.raw_user_meta_data->>'member_type', ''),
    coalesce(new.raw_user_meta_data->>'faculty', ''),
    coalesce(new.raw_user_meta_data->>'grad_year', ''),
    coalesce(new.raw_user_meta_data->>'company', ''),
    coalesce(new.raw_user_meta_data->>'job_title', ''),
    coalesce(new.raw_user_meta_data->>'phone', '')
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- 3) 잘 되었는지 눈으로 확인
select column_name
  from information_schema.columns
 where table_schema = 'public' and table_name = 'profiles'
   and column_name in ('company', 'job_title');
-- → company, job_title 두 줄이 나오면 끝입니다.
