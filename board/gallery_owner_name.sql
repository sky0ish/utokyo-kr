-- ═══════════════════════════════════════════════════════════
-- 회원 사진첩에 「공유자(이름)」 표시하기
--   · gallery_albums 에 만든 사람 이름을 함께 저장합니다.
--   · 회원 명부(profiles)는 본인 것만 읽을 수 있어서, 다른 회원의 이름을
--     화면에서 바로 불러올 수 없습니다. 그래서 사진첩을 만들 때
--     이름을 함께 적어 두는 방식으로 했습니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- (여러 번 실행해도 안전합니다)
-- ═══════════════════════════════════════════════════════════

alter table public.gallery_albums add column if not exists owner_name text;

-- 이미 만들어져 있는 사진첩의 이름을 채워 넣습니다
update public.gallery_albums a
   set owner_name = p.name
  from public.profiles p
 where a.created_by = p.id
   and coalesce(a.owner_name, '') = ''
   and coalesce(p.name, '') <> '';

-- ── 확인용 ──
select album_key, title, owner_name, event_date
  from public.gallery_albums
 where album_key like 'custom:%'
 order by event_date desc nulls last;
