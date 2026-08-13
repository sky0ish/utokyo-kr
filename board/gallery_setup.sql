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
  hidden     boolean not null default false,
  updated_by uuid references auth.users(id),
  updated_at timestamptz not null default now()
);

-- ── 3) 앨범 제목 수정 내역 ──
create table if not exists public.gallery_albums (
  album_key  text primary key,      -- 'assembly|2026'
  title      text,
  sort       int,
  updated_by uuid references auth.users(id),
  updated_at timestamptz not null default now()
);

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

-- ── 4) 정책 : 누구나 보기 / 관리자만 추가·수정·삭제 ──
do $$
declare t text;
begin
  foreach t in array array['gallery_photos','gallery_overrides','gallery_albums'] loop
    execute format('drop policy if exists "%s_select" on public.%I', t, t);
    execute format('create policy "%s_select" on public.%I for select using (true)', t, t);
    execute format('drop policy if exists "%s_admin" on public.%I', t, t);
    execute format('create policy "%s_admin" on public.%I for all
                    using (public.is_admin()) with check (public.is_admin())', t, t);
  end loop;
end $$;

-- ── 5) 사진 저장소(Storage) 버킷 ──
insert into storage.buckets (id, name, public)
values ('gallery', 'gallery', true)
on conflict (id) do update set public = true;

drop policy if exists "gallery_read" on storage.objects;
create policy "gallery_read" on storage.objects
  for select using (bucket_id = 'gallery');

drop policy if exists "gallery_admin_upload" on storage.objects;
create policy "gallery_admin_upload" on storage.objects
  for insert with check (bucket_id = 'gallery' and public.is_admin());

drop policy if exists "gallery_admin_update" on storage.objects;
create policy "gallery_admin_update" on storage.objects
  for update using (bucket_id = 'gallery' and public.is_admin());

drop policy if exists "gallery_admin_delete" on storage.objects;
create policy "gallery_admin_delete" on storage.objects
  for delete using (bucket_id = 'gallery' and public.is_admin());

-- ── 확인용 ──
-- select category, count(*) from public.gallery_photos group by 1;
-- select * from public.gallery_albums;
-- select * from public.gallery_overrides where hidden;
