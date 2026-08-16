-- ═══════════════════════════════════════════════════════════
-- 총동문회 갤러리 — 「총회」만 누구나, 나머지는 회원만
--   소모임 · 단과대모임 · 포럼·세미나 · 옛날사진 · 일상 · 기타
--   → 승인된 회원으로 로그인해야 보입니다.
--   ※ 학생회(YB) 갤러리는 지금처럼 그대로 둡니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

drop policy if exists "gallery_photos_select" on public.gallery_photos;
create policy "gallery_photos_select" on public.gallery_photos for select
  using (
    org <> 'OB'
    or category = 'assembly'
    or public.is_approved()
  );

drop policy if exists "gallery_albums_select" on public.gallery_albums;
create policy "gallery_albums_select" on public.gallery_albums for select
  using (
    org <> 'OB'
    or category = 'assembly'
    or category is null
    or public.is_approved()
  );

-- 되돌리려면 (다시 전체 공개)
-- drop policy if exists "gallery_photos_select" on public.gallery_photos;
-- create policy "gallery_photos_select" on public.gallery_photos for select using (true);
-- drop policy if exists "gallery_albums_select" on public.gallery_albums;
-- create policy "gallery_albums_select" on public.gallery_albums for select using (true);
