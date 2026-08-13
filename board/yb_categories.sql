-- ═══════════════════════════════════════════════════════════
-- 학생회(YB) 게시판 분류 추가
--   공지사항(notice) · 자유게시판(free) · Q&A(qna)
--   취업정보(jobs) · 아르바이트(parttime) · 벼룩시장(market)
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    -- 총동문회(OB)
    'notice','free','news','jobs','market','condolence','club','faculty','mentoring','promo',
    -- 학생회(YB) 추가분
    'qna','parttime'
  ));

-- 학생회 게시판을 새로 시작 (기존에 잘못 들어간 YB 글이 있으면 정리)
delete from public.posts where org = 'YB';
