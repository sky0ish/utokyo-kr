-- ═══════════════════════════════════════════════════════════
-- 사진이 한 장도 없는 사진첩(앨범) 지우기
--
--   갤러리에서 「사진을 올려주세요」 라고만 나오는 빈 사진첩을 없앱니다.
--   (예: 옛날사진 분류의 「2015.10.24 인문사회계」)
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════
--
-- ※ 앨범에 사진이 담기는 길은 두 가지입니다. 둘 다 비어 있어야 지웁니다.
--    ① gallery_photos.album_key   — 회원·운영진이 올린 사진
--    ② gallery_overrides.album_key — 원래 있던 사진을 이 앨범으로 옮긴 것
--
-- ※ 아래 두 가지는 비어 있어도 그대로 둡니다.
--    · 'custom:' 으로 시작하지 않는 것 — 연도 앨범의 제목을 고쳐둔 기록입니다.
--      지우면 「2026년」 처럼 손수 붙인 앨범 이름이 사라집니다.
--    · created_by 가 있는 것 — 회원이 사진을 올리려고 방금 만든 사진첩일 수 있습니다.


-- ── 1) 먼저 무엇이 지워질지 확인 ───────────────────────────
select a.album_key, a.title, a.category, a.org, a.event_date
  from public.gallery_albums a
 where a.album_key like 'custom:%'
   and a.created_by is null
   and not exists (select 1 from public.gallery_photos p
                    where p.album_key = a.album_key)
   and not exists (select 1 from public.gallery_overrides o
                    where o.album_key = a.album_key and o.hidden = false)
 order by a.org, a.category, a.event_date;


-- ── 2) 확인하셨으면 아래를 실행 ────────────────────────────
delete from public.gallery_albums a
 where a.album_key like 'custom:%'
   and a.created_by is null
   and not exists (select 1 from public.gallery_photos p
                    where p.album_key = a.album_key)
   and not exists (select 1 from public.gallery_overrides o
                    where o.album_key = a.album_key and o.hidden = false);


-- ── 3) 「2015.10.24 인문사회계」 하나만 지우고 싶으시면 ────
--     위 2) 대신 아래 줄만 실행하세요.
-- delete from public.gallery_albums where album_key = 'custom:fb-2015-10-24-old';


-- ── 확인 ──
select count(*) as "남은 사진첩" from public.gallery_albums where album_key like 'custom:%';
