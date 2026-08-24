-- ═══════════════════════════════════════════════════════════
-- 앨범 대표사진 고르기
--   갤러리 목록에서 앨범 버튼에 보일 사진을 직접 고를 수 있게 합니다.
--   · 사진첩을 만든 회원 본인, 또는 운영진이 고를 수 있습니다.
--   · 고르지 않으면 예전처럼 가장 앞 사진이 대표사진이 됩니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- (여러 번 실행해도 안전합니다)
-- ═══════════════════════════════════════════════════════════

alter table public.gallery_albums add column if not exists cover_key text;

-- ── 확인용 ──
select album_key, title, cover_key, event_date
  from public.gallery_albums
 where cover_key is not null
 order by event_date desc nulls last;
