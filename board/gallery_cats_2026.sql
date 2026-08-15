-- ═══════════════════════════════════════════════════════════
-- 학생회 갤러리 갈래 정리 — 연도 구분을 없애고 기능별로
--     총회 · 행사 · 소모임 · 인재채용 · 아르바이트 · 일상 · 기타
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다. 가장 먼저 실행하세요.
-- ═══════════════════════════════════════════════════════════

-- 1) 새 갈래를 쓸 수 있게 허용 (지난 이름도 잠시 함께 허용)
alter table public.gallery_photos drop constraint if exists gallery_photos_category_check;
alter table public.gallery_photos add constraint gallery_photos_category_check
  check (category in (
    -- 총동문회(OB)
    'assembly','club','faculty','forum','old','daily','etc',
    -- 학생회(YB)
    'event','jobs','parttime',
    -- 지난 이름 (정리 중에 잠시 남아 있을 수 있음)
    'event2015','event2026','daily2026','general'
  ));

-- 2) 지난 이름을 새 갈래로 옮김
--    행사 사진 및 동영상 (2015~ / 2026~) → 행사
--    일상생활 (2026~)                    → 일상
--    일반 사진                            → 기타
update public.gallery_photos set category = 'event'
 where org = 'YB' and category in ('event2015','event2026');
update public.gallery_albums set category = 'event'
 where org = 'YB' and category in ('event2015','event2026');

update public.gallery_photos set category = 'daily'
 where org = 'YB' and category = 'daily2026';
update public.gallery_albums set category = 'daily'
 where org = 'YB' and category = 'daily2026';

update public.gallery_photos set category = 'etc'
 where org = 'YB' and category = 'general';
update public.gallery_albums set category = 'etc'
 where org = 'YB' and category = 'general';

update public.gallery_overrides set category = 'event'
 where category in ('event2015','event2026');
update public.gallery_overrides set category = 'daily' where category = 'daily2026';
update public.gallery_overrides set category = 'etc'   where category = 'general';

-- 3) 지난 이름을 이제 막음
alter table public.gallery_photos drop constraint if exists gallery_photos_category_check;
alter table public.gallery_photos add constraint gallery_photos_category_check
  check (category in (
    'assembly','club','faculty','forum','old','daily','etc',
    'event','jobs','parttime'
  ));

-- 확인용
-- select org, category, count(*) from public.gallery_photos group by 1,2 order by 1,2;
