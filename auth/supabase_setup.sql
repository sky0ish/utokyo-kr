-- ═══════════════════════════════════════════════════════════
-- 도쿄대학교 한국 커뮤니티 회원 시스템 초기 설정
-- 실행 방법: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

-- 1) 회원 프로필 테이블
create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  email text,
  name text,
  member_type text check (member_type in ('YB','OB')),
  faculty text,
  grad_year text,
  company text,          -- 현재 직장명
  job_title text,        -- 직급
  phone text,
  approved boolean not null default false,
  is_admin boolean not null default false,
  created_at timestamptz not null default now()
);

-- 1-1) 이미 테이블을 만든 뒤 다시 실행해도 안전하도록 (전화번호 컬럼 추가)
alter table public.profiles add column if not exists phone text;
alter table public.profiles add column if not exists company text;
alter table public.profiles add column if not exists job_title text;

-- 2) 행 단위 보안(RLS): 본인 것만 읽기/수정 가능
alter table public.profiles enable row level security;

drop policy if exists "read own profile" on public.profiles;
create policy "read own profile" on public.profiles
  for select using (auth.uid() = id);

drop policy if exists "update own profile" on public.profiles;
create policy "update own profile" on public.profiles
  for update using (auth.uid() = id)
  with check (auth.uid() = id
    -- 본인이 승인/관리자 플래그를 스스로 바꾸는 것 방지
    and approved = (select approved from public.profiles where id = auth.uid())
    and is_admin = (select is_admin from public.profiles where id = auth.uid()));

-- 3) 회원가입 시 프로필 자동 생성 트리거
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
