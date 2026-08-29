-- ═══════════════════════════════════════════════════════════
-- 학생회(YB) 가입 화면에 늘어난 칸을 담을 자리 만들기
--   · 전공 (학생증에 적힌 정식 명칭)
--   · 한국 전화번호 / 일본 전화번호
--   · 비동문 준회원 칸 — 오신 자격(기업·수험생·기타) / 소속 기관 / 기타
--   · 이용약관에 동의한 시각
-- 실행 방법: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--
-- 총동문회(OB) 화면은 이 칸들을 보내지 않습니다. 그때는 빈칸으로 들어가므로
-- 기존 가입 흐름은 그대로입니다.
-- ═══════════════════════════════════════════════════════════

-- 1) 칸 추가 (여러 번 실행해도 안전합니다)
alter table public.profiles add column if not exists major    text;  -- 전공 (정식 명칭)
alter table public.profiles add column if not exists phone_kr text;  -- 한국 전화번호
alter table public.profiles add column if not exists phone_jp text;  -- 일본 전화번호
alter table public.profiles add column if not exists guest_type text; -- 비동문: 기업 / 수험생 / 기타
alter table public.profiles add column if not exists org_name   text; -- 비동문: 소속 기관
alter table public.profiles add column if not exists guest_note text; -- 비동문: 기타 적으신 내용
alter table public.profiles add column if not exists terms_agreed_at timestamptz; -- 이용약관에 동의한 시각

-- 2) 가입할 때 프로필을 만드는 함수에 새 칸을 더합니다
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = public
as $$
begin
  insert into public.profiles (
    id, email, name, member_type, faculty, major, grad_year,
    company, job_title, phone, phone_kr, phone_jp,
    guest_type, org_name, guest_note, terms_agreed_at
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
    coalesce(new.raw_user_meta_data->>'phone_jp', ''),
    coalesce(new.raw_user_meta_data->>'guest_type', ''),
    coalesce(new.raw_user_meta_data->>'org_name', ''),
    coalesce(new.raw_user_meta_data->>'guest_note', ''),
    nullif(new.raw_user_meta_data->>'terms_agreed_at', '')::timestamptz
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- 3) 이미 가입하신 분들의 값을 되살립니다
--    칸이 없어 profiles 에 담기지 못했을 뿐, 가입할 때 적어주신 값은
--    auth.users 의 가입 기록(raw_user_meta_data)에 그대로 남아 있습니다.
--    그래서 이 한 번으로 그동안 놓친 값이 모두 채워집니다.
update public.profiles p
   set major       = coalesce(nullif(p.major, ''),      u.raw_user_meta_data->>'major'),
       phone_kr    = coalesce(nullif(p.phone_kr, ''),   u.raw_user_meta_data->>'phone_kr'),
       phone_jp    = coalesce(nullif(p.phone_jp, ''),   u.raw_user_meta_data->>'phone_jp'),
       guest_type  = coalesce(nullif(p.guest_type, ''), u.raw_user_meta_data->>'guest_type'),
       org_name    = coalesce(nullif(p.org_name, ''),   u.raw_user_meta_data->>'org_name'),
       guest_note  = coalesce(nullif(p.guest_note, ''), u.raw_user_meta_data->>'guest_note'),
       terms_agreed_at = coalesce(p.terms_agreed_at,
                                  nullif(u.raw_user_meta_data->>'terms_agreed_at', '')::timestamptz)
  from auth.users u
 where u.id = p.id;

-- 되살아난 값 확인 (비동문 회원의 자격이 채워졌는지)
select name as "이름", member_type as "구분", guest_type as "자격",
       org_name as "소속 기관", major as "전공"
  from public.profiles
 where member_type = 'GUEST'
 order by created_at desc;

-- 4) 확인 — 새 칸이 보이면 성공입니다
-- select column_name from information_schema.columns
--  where table_schema='public' and table_name='profiles'
--    and column_name in ('major','phone_kr','phone_jp','guest_type','org_name','guest_note','terms_agreed_at');
