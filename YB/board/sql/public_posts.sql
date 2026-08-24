-- ═══════════════════════════════════════════════════════════
-- 공지사항 · 홍보 게시판을 전체 공개로 전환
-- (나머지 게시판은 회원 전용 유지)
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

-- 1) 기존 글 : 공지사항·홍보 → 전체 공개
update public.posts
set visibility = 'public'
where category in ('notice', 'promo');

-- 2) 그 외 게시판 글은 회원 전용으로 통일
update public.posts
set visibility = 'members'
where category not in ('notice', 'promo');

-- 확인용
-- select category, visibility, count(*) from public.posts group by 1,2 order by 1;
