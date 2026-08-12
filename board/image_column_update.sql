-- ═══════════════════════════════════════════════════════════
-- 게시글 대표 사진 컬럼 추가
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

alter table public.posts add column if not exists image_url text;   -- 목록 썸네일용 대표 사진
alter table public.posts add column if not exists images text[];    -- 글 안에 표시할 사진 전체
alter table public.posts add column if not exists source_url text;  -- 원문(밴드/페이스북) 주소
