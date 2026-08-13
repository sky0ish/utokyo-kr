-- ═══════════════════════════════════════════════════════════
-- 사진첩·사진에 「공유자(이름)」 표시하기
--   · gallery_albums · gallery_photos 에 올린 사람 이름을 함께 저장합니다.
--   · 회원 명부(profiles)는 본인 것만 읽을 수 있어서, 다른 회원의 이름을
--     화면에서 바로 불러올 수 없습니다. 그래서 올릴 때 이름을 함께
--     적어 두는 방식으로 했습니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- (여러 번 실행해도 안전합니다)
-- ═══════════════════════════════════════════════════════════

alter table public.gallery_albums add column if not exists owner_name text;
alter table public.gallery_photos add column if not exists owner_name text;

-- 이미 만들어져 있는 사진첩의 이름을 채워 넣습니다
update public.gallery_albums a
   set owner_name = p.name
  from public.profiles p
 where a.created_by = p.id
   and coalesce(a.owner_name, '') = ''
   and coalesce(p.name, '') <> '';

-- 이미 올라와 있는 사진의 이름도 채워 넣습니다
update public.gallery_photos g
   set owner_name = p.name
  from public.profiles p
 where g.created_by = p.id
   and coalesce(g.owner_name, '') = ''
   and coalesce(p.name, '') <> '';

-- ── 확인용 ──
select 'album' as 구분, album_key as 키, title as 제목, owner_name as 공유자
  from public.gallery_albums where coalesce(owner_name, '') <> ''
union all
select 'photo', id::text, coalesce(caption, ''), owner_name
  from public.gallery_photos where coalesce(owner_name, '') <> ''
 limit 100;
