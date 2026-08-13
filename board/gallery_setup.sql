-- ═══════════════════════════════════════════════════════════
-- 갤러리 관리 (관리자 사진 추가 · 삭제 · 제목/배치 수정)
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 관리자가 올린 사진 ──
create table if not exists public.gallery_photos (
  id           uuid primary key default gen_random_uuid(),
  category     text not null check (category in
                 ('assembly','club','faculty','forum','old','daily','etc')),
  taken_at     date not null default current_date,   -- 촬영일 (연도로 앨범이 묶입니다)
  caption      text,
  image_url    text not null,
  storage_path text,
  sort         int  not null default 0,              -- 앨범 안 배치 순서
  created_by   uuid references auth.users(id),
  created_at   timestamptz not null default now()
);
create index if not exists gallery_photos_cat_idx on public.gallery_photos (category, taken_at desc);
alter table public.gallery_photos add column if not exists sort int not null default 0;

-- ── 2) 기본 제공 사진 수정 내역 (숨김 · 설명 · 분류/날짜 이동 · 순서) ──
create table if not exists public.gallery_overrides (
  photo_key  text primary key,      -- 예: 'assembly/2026_00300'
  category   text,                  -- 다른 분류로 옮길 때
  taken_at   date,                  -- 다른 연도(앨범)로 옮길 때
  caption    text,
  sort       int,
  album_key  text,                  -- 다른 앨범으로 옮길 때 (앨범 합치기)
  hidden     boolean not null default false,
  updated_by uuid references auth.users(id),
  updated_at timestamptz not null default now()
);
alter table public.gallery_overrides add column if not exists album_key text;

-- ── 3) 사진첩(앨범) ──
--    · 'assembly|2026' 처럼 연도로 자동 생성되는 앨범의 제목 수정
--    · 'custom:<uuid>' 로 회원이 직접 만든 사진첩
create table if not exists public.gallery_albums (
  album_key  text primary key,
  title      text,
  category   text,                  -- 직접 만든 사진첩의 분류
  event_date date,                  -- 행사 날짜
  sort       int,
  created_by uuid references auth.users(id),
  created_at timestamptz not null default now(),
  updated_by uuid references auth.users(id),
  updated_at timestamptz not null default now()
);
alter table public.gallery_albums add column if not exists category   text;
alter table public.gallery_albums add column if not exists event_date date;
alter table public.gallery_albums add column if not exists created_by uuid references auth.users(id);
alter table public.gallery_albums add column if not exists created_at timestamptz not null default now();

-- 사진이 어느 사진첩에 속하는지 (비어 있으면 촬영 연도 앨범으로 들어갑니다)
alter table public.gallery_photos add column if not exists album_key text;
create index if not exists gallery_photos_album_idx on public.gallery_photos (album_key);

-- ── 총동문회(OB)와 학생회(YB) 갤러리 구분 ──
alter table public.gallery_photos add column if not exists org text not null default 'OB';
alter table public.gallery_albums add column if not exists org text not null default 'OB';
alter table public.gallery_photos drop constraint if exists gallery_photos_org_check;
alter table public.gallery_photos add constraint gallery_photos_org_check check (org in ('OB','YB'));
alter table public.gallery_albums drop constraint if exists gallery_albums_org_check;
alter table public.gallery_albums add constraint gallery_albums_org_check check (org in ('OB','YB'));
create index if not exists gallery_photos_org_idx on public.gallery_photos (org, category, taken_at desc);

-- 학생회 갤러리 분류도 허용 (도쿄대학 한국인 학생회 홈페이지 메뉴와 동일)
alter table public.gallery_photos drop constraint if exists gallery_photos_category_check;
alter table public.gallery_photos add constraint gallery_photos_category_check
  check (category in (
    -- 총동문회(OB)
    'assembly','club','faculty','forum','old','daily','etc',
    -- 학생회(YB)
    'event2015','event','general'
  ));

-- 이전 버전에서 만든 표가 있으면 내용을 옮기고 정리
do $$
begin
  if exists (select 1 from information_schema.tables
             where table_schema='public' and table_name='gallery_hidden') then
    insert into public.gallery_overrides (photo_key, hidden)
    select photo_key, true from public.gallery_hidden
    on conflict (photo_key) do update set hidden = true;
    drop table public.gallery_hidden;
  end if;
end $$;

alter table public.gallery_photos    enable row level security;
alter table public.gallery_overrides enable row level security;
alter table public.gallery_albums    enable row level security;

-- ── 4) 정책 ──
--    보기      : 누구나
--    올리기    : 승인된 회원 누구나 (사진첩 만들기 · 사진 추가)
--    수정·삭제 : 올린 본인 또는 운영진
do $$
declare t text;
begin
  foreach t in array array['gallery_photos','gallery_albums'] loop
    execute format('drop policy if exists "%s_select" on public.%I', t, t);
    execute format('create policy "%s_select" on public.%I for select using (true)', t, t);

    execute format('drop policy if exists "%s_admin" on public.%I', t, t);          -- 이전 버전 정리
    execute format('drop policy if exists "%s_insert" on public.%I', t, t);
    execute format('create policy "%s_insert" on public.%I for insert
                    with check (public.is_approved() or public.is_admin())', t, t);

    execute format('drop policy if exists "%s_update" on public.%I', t, t);
    execute format('create policy "%s_update" on public.%I for update
                    using (created_by = auth.uid() or public.is_admin())
                    with check (created_by = auth.uid() or public.is_admin())', t, t);

    execute format('drop policy if exists "%s_delete" on public.%I', t, t);
    execute format('create policy "%s_delete" on public.%I for delete
                    using (created_by = auth.uid() or public.is_admin())', t, t);
  end loop;
end $$;

-- 기본 제공 사진 수정 내역은 운영진만
drop policy if exists "gallery_overrides_select" on public.gallery_overrides;
create policy "gallery_overrides_select" on public.gallery_overrides for select using (true);
drop policy if exists "gallery_overrides_admin" on public.gallery_overrides;
create policy "gallery_overrides_admin" on public.gallery_overrides
  for all using (public.is_admin()) with check (public.is_admin());

-- ── 5) 사진 저장소(Storage) 버킷 ──
insert into storage.buckets (id, name, public)
values ('gallery', 'gallery', true)
on conflict (id) do update set public = true;

drop policy if exists "gallery_read" on storage.objects;
create policy "gallery_read" on storage.objects
  for select using (bucket_id = 'gallery');

drop policy if exists "gallery_admin_upload" on storage.objects;
drop policy if exists "gallery_member_upload" on storage.objects;
create policy "gallery_member_upload" on storage.objects
  for insert with check (bucket_id = 'gallery' and (public.is_approved() or public.is_admin()));

drop policy if exists "gallery_admin_update" on storage.objects;
drop policy if exists "gallery_member_update" on storage.objects;
create policy "gallery_member_update" on storage.objects
  for update using (bucket_id = 'gallery' and (owner = auth.uid() or public.is_admin()));

drop policy if exists "gallery_admin_delete" on storage.objects;
drop policy if exists "gallery_member_delete" on storage.objects;
create policy "gallery_member_delete" on storage.objects
  for delete using (bucket_id = 'gallery' and (owner = auth.uid() or public.is_admin()));

-- ── 확인용 ──
-- select category, count(*) from public.gallery_photos group by 1;
-- select * from public.gallery_albums;
-- select * from public.gallery_overrides where hidden;
