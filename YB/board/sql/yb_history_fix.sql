-- ═══════════════════════════════════════════════════════════
-- 활동 이력이 안 들어가던 이유 풀기
--
--   posts 표에 「어떤 갈래만 허용한다」는 규칙(posts_category_check)이 걸려 있는데,
--   거기에 history 가 없어서 활동 이력 글이 계속 튕겼습니다.
--   ① 규칙에 history 를 넣고
--   ② 예전에 공지사항으로 잘못 들어가 있던 활동 이력 18건을 제자리로 옮깁니다.
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── ① 갈래 규칙 다시 세우기 ──
alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check check (
  category in (
    -- 총동문회
    'notice','free','club','mentoring','promo','condolence',
    'forum','seminar','jobs','faculty','news','market',
    -- 학생회
    'qna','parttime','history'
  )
);

-- ── ② 공지사항에 들어가 있던 활동 이력을 제자리로 ──
update public.posts
   set category = 'history'
 where org = 'YB'
   and source_url like '%bo_table=sub02_08%';

-- ── 확인 ──
select category, count(*) as 글수
  from public.posts
 where org = 'YB' and category in ('club','history')
 group by category;
