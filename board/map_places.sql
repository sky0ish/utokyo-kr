-- ═══════════════════════════════════════════════════════════
-- MAP — 회원이 올린 장소 (도쿄대학 · 도쿄맛집 · 도쿄까페 · 추억핫플 · 건축물)
--   · 주소를 적으면 지도 위에 표시로 모입니다.
--   · 총동문회(OB)와 학생회(YB)가 같은 지도를 함께 씁니다(org='ALL').
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- (여러 번 실행해도 안전합니다)
-- ═══════════════════════════════════════════════════════════

create table if not exists public.map_places (
  id          uuid primary key default gen_random_uuid(),
  category    text not null check (category in
                ('utokyo','food','cafe','memory','arch')),
  name        text not null,
  address     text not null,
  note        text,
  lat         double precision not null,
  lng         double precision not null,
  post_id     uuid references public.posts(id) on delete set null,  -- 게시판 글과 연결(선택)
  org         text not null default 'ALL' check (org in ('OB','YB','ALL')),
  owner_name  text,
  owner_admin boolean not null default false,
  created_by  uuid references auth.users(id),
  created_at  timestamptz not null default now()
);
create index if not exists map_places_cat_idx on public.map_places (category, created_at desc);

alter table public.map_places enable row level security;

-- 읽기 : 누구나
drop policy if exists "read places" on public.map_places;
create policy "read places" on public.map_places for select using (true);

-- 등록 : 승인된 회원
drop policy if exists "insert places" on public.map_places;
create policy "insert places" on public.map_places for insert
  with check (public.is_approved() or public.is_admin());

-- 수정·삭제 : 올린 본인 또는 운영진
drop policy if exists "update places" on public.map_places;
create policy "update places" on public.map_places for update
  using (created_by = auth.uid() or public.is_admin());
drop policy if exists "delete places" on public.map_places;
create policy "delete places" on public.map_places for delete
  using (created_by = auth.uid() or public.is_admin());

-- ── 확인용 ──
select category as 분류, count(*) as 개수 from public.map_places group by category;
