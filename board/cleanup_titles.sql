-- ═══════════════════════════════════════════════════════════
-- 게시판 정리 : 말머리 중복 제거 + 경조사 지원 안내 글 공지사항 이동
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

-- 1) 말머리가 두 개 이상 붙은 제목은 뒤쪽(원문 말머리) 하나만 남깁니다.
--    예) "[일상] [공지] 동문회 경조사 지원 안내" → "[공지] 동문회 경조사 지원 안내"
--    3개 이상인 경우도 처리되도록 반복 실행
update public.posts
set title = regexp_replace(title, '^\[[^\]]*\]\s*(\[[^\]]*\])', '\1')
where title ~ '^\[[^\]]*\]\s*\[';

update public.posts
set title = regexp_replace(title, '^\[[^\]]*\]\s*(\[[^\]]*\])', '\1')
where title ~ '^\[[^\]]*\]\s*\[';

update public.posts
set title = regexp_replace(title, '^\[[^\]]*\]\s*(\[[^\]]*\])', '\1')
where title ~ '^\[[^\]]*\]\s*\[';

-- 2) 경조사 "지원 안내" 성격의 글은 공지사항으로 옮기고 말머리를 [안내]로 통일
update public.posts
set category = 'notice',
    title = '[안내] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where (title ilike '%경조사%지원%' or content ilike '%경조사%지원%안내%')
  and category <> 'notice';

-- 3) 그 외 제목에 [공지]가 붙어 있는데 분류가 자유게시판인 글도 공지사항으로
update public.posts
set category = 'notice',
    title = '[공지] ' || regexp_replace(title, '^\s*\[[^\]]*\]\s*', '')
where title ilike '[공지]%' and category = 'free';

-- 확인용
-- select category, count(*) from public.posts group by category order by 2 desc;
