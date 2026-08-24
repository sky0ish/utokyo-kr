-- ═══════════════════════════════════════════════════════════
-- 개별 글 분류 이동 (총회 식순/접속 URL 안내 → 자유게시판)
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

update public.posts
set category = 'free',
    title = '[일상] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', ''),
    visibility = 'members'
where title like '%총회 식순과 접속 URL%';

-- 확인용
-- select category, title, created_at from public.posts where title like '%총회 식순%';
