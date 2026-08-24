-- ═══════════════════════════════════════════════════════════
-- MAP — 회원이 올린 장소
--   분류 : 도쿄대학(utokyo) · 도쿄맛집(food) · 도쿄까페(cafe)
--          추억핫플(memory) · 건축물(arch)
--   · 주소를 적으면 지도 위에 표시로 모입니다.
--   · 총동문회(OB)와 학생회(YB)가 같은 지도를 함께 봅니다.
--   · 사진은 기존 갤러리 저장소(gallery 버킷)의 map/ 폴더에 들어갑니다.
--
-- 실행 : Supabase 대시보드 → SQL Editor → 전체 붙여넣기 → Run
--        (여러 번 실행해도 안전합니다)
-- 먼저 : board/board_setup.sql 을 실행해 두셔야 합니다
--        (is_approved · is_admin 함수가 거기서 만들어집니다)
-- ═══════════════════════════════════════════════════════════

-- ── 1) 표 만들기 ──
create table if not exists public.map_places (
  id           uuid primary key default gen_random_uuid(),
  category     text not null default 'memory',
  name         text not null,
  address      text not null,
  note         text,                    -- 이곳의 특징
  memory       text,                    -- 얽힌 추억
  image_url    text,                    -- 사진 (선택)
  storage_path text,
  lat          double precision not null,
  lng          double precision not null,
  post_id      uuid,                    -- 게시판 글과 연결 (선택)
  org          text not null default 'ALL',
  owner_name   text,
  owner_admin  boolean not null default false,
  created_by   uuid,
  created_at   timestamptz not null default now()
);

-- ── 2) 예전에 만든 표에 빠진 칸이 있으면 채워 넣기 ──
alter table public.map_places add column if not exists note         text;
alter table public.map_places add column if not exists memory       text;
alter table public.map_places add column if not exists image_url    text;
alter table public.map_places add column if not exists storage_path text;
alter table public.map_places add column if not exists post_id      uuid;
alter table public.map_places add column if not exists org          text not null default 'ALL';
alter table public.map_places add column if not exists owner_name   text;
alter table public.map_places add column if not exists owner_admin  boolean not null default false;
alter table public.map_places add column if not exists created_by   uuid;
alter table public.map_places add column if not exists created_at   timestamptz not null default now();

-- ── 3) 분류·소속 확인 규칙 (분류가 바뀌어도 다시 실행하면 반영됩니다) ──
alter table public.map_places drop constraint if exists map_places_category_check;
alter table public.map_places add  constraint map_places_category_check
  check (category in ('utokyo','food','cafe','memory','arch'));

alter table public.map_places drop constraint if exists map_places_org_check;
alter table public.map_places add  constraint map_places_org_check
  check (org in ('OB','YB','ALL'));

create index if not exists map_places_cat_idx on public.map_places (category, created_at desc);

-- ── 4) 열람·등록 권한 ──
alter table public.map_places enable row level security;

-- 읽기 : 누구나 (지도는 방문객도 볼 수 있게)
drop policy if exists "read places" on public.map_places;
create policy "read places" on public.map_places
  for select using (true);

-- 등록 : 승인된 회원 또는 운영진
drop policy if exists "insert places" on public.map_places;
create policy "insert places" on public.map_places
  for insert with check (public.is_approved() or public.is_admin());

-- 수정 : 올린 본인 또는 운영진
drop policy if exists "update places" on public.map_places;
create policy "update places" on public.map_places
  for update using (created_by = auth.uid() or public.is_admin());

-- 삭제 : 올린 본인 또는 운영진
drop policy if exists "delete places" on public.map_places;
create policy "delete places" on public.map_places
  for delete using (created_by = auth.uid() or public.is_admin());

-- ── 5) 사진 저장소 (gallery 버킷을 함께 씁니다) ──
insert into storage.buckets (id, name, public)
values ('gallery', 'gallery', true)
on conflict (id) do nothing;

-- ── 확인용 ──
select category as 분류, count(*) as 개수
  from public.map_places
 group by category
 order by category;
