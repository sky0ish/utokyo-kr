-- ═══════════════════════════════════════════════════════════
-- 학생회(YB) 가입 화면에 늘어난 칸을 담을 자리 만들기
--   · 전공 (학생증에 적힌 정식 명칭)
--   · 한국 전화번호 / 일본 전화번호
-- 실행 방법: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--
-- 총동문회(OB) 화면은 이 칸들을 보내지 않습니다. 그때는 빈칸으로 들어가므로
-- 기존 가입 흐름은 그대로입니다.
-- ═══════════════════════════════════════════════════════════

-- 1) 칸 추가 (여러 번 실행해도 안전합니다)
alter table public.profiles add column if not exists major    text;  -- 전공 (정식 명칭)
alter table public.profiles add column if not exists phone_kr text;  -- 한국 전화번호
alter table public.profiles add column if not exists phone_jp text;  -- 일본 전화번호

-- 2) 가입할 때 프로필을 만드는 함수에 새 칸을 더합니다
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = public
as $$
begin
  insert into public.profiles (
    id, email, name, member_type, faculty, major, grad_year,
    company, job_title, phone, phone_kr, phone_jp
  )
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data->>'name', ''),
    nullif(new.raw_user_meta_data->>'member_type', ''),
    coalesce(new.raw_user_meta_data->>'faculty', ''),
    coalesce(new.raw_user_meta_data->>'major', ''),
    coalesce(new.raw_user_meta_data->>'grad_year', ''),
    coalesce(new.raw_user_meta_data->>'company', ''),
    coalesce(new.raw_user_meta_data->>'job_title', ''),
    coalesce(new.raw_user_meta_data->>'phone', ''),
    coalesce(new.raw_user_meta_data->>'phone_kr', ''),
    coalesce(new.raw_user_meta_data->>'phone_jp', '')
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- 3) 확인 — 새로 생긴 칸이 보이면 성공입니다
-- select column_name from information_schema.columns
--  where table_schema='public' and table_name='profiles'
--    and column_name in ('major','phone_kr','phone_jp');
