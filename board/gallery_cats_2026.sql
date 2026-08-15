-- ═══════════════════════════════════════════════════════════
-- 학생회 갤러리 분류 정리 — 연도 구분을 없애고 기능별 여섯 갈래로
--     총회 및 행사 · 소모임 · 인재채용 · 아르바이트 · 일상 · 기타
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- 1) 새 갈래를 쓸 수 있게 허용 (지난 이름도 잠시 함께 허용)
alter table public.gallery_photos drop constraint if exists gallery_photos_category_check;
alter table public.gallery_photos add constraint gallery_photos_category_check
  check (category in (
    -- 총동문회(OB)
    'assembly','club','faculty','forum','old','daily','etc',
    -- 학생회(YB)
    'jobs','parttime',
    -- 지난 이름 (정리 중에 잠시 남아 있을 수 있음)
    'event','event2015','event2026','daily2026','general'
  ));

-- 2) 지난 이름을 새 갈래로 옮김
--    행사 사진 및 동영상 (2026~)  → 총회 및 행사
--    일상생활 (2026~)            → 일상
--    예전사진(~2025) 등 남은 것   → 기타
do $$
begin
  update public.gallery_photos set category = 'assembly'
   where org = 'YB' and category = 'event2026';
  update public.gallery_albums set category = 'assembly'
   where org = 'YB' and category = 'event2026';

  update public.gallery_photos set category = 'daily'
   where org = 'YB' and category = 'daily2026';
  update public.gallery_albums set category = 'daily'
   where org = 'YB' and category = 'daily2026';

  update public.gallery_photos set category = 'etc'
   where org = 'YB' and category in ('event','event2015','general');
  update public.gallery_albums set category = 'etc'
   where org = 'YB' and category in ('event','event2015','general');

  update public.gallery_overrides set category = 'etc'
   where category in ('event','event2015','event2026','daily2026','general');
end $$;

-- 3) 지난 이름을 이제 막음
alter table public.gallery_photos drop constraint if exists gallery_photos_category_check;
alter table public.gallery_photos add constraint gallery_photos_category_check
  check (category in (
    'assembly','club','faculty','forum','old','daily','etc',
    'jobs','parttime'
  ));

-- 확인용
-- select org, category, count(*) from public.gallery_photos group by 1,2 order by 1,2;
