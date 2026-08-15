-- ═══════════════════════════════════════════════════════════
-- 학생회 갤러리 분류 정리
--   · 「행사 사진 및 동영상 (2015~)」 · 「행사 사진 및 동영상」 · 「일반 사진 및 동영상」
--     세 가지를 → 「예전사진 (~2025)」 하나로 합칩니다.
--   · 「행사 사진 및 동영상 (2026~)」 을 새로 만듭니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- 1) 새 분류를 쓸 수 있게 허용 (옛 이름도 잠시 함께 허용)
alter table public.gallery_photos drop constraint if exists gallery_photos_category_check;
alter table public.gallery_photos add constraint gallery_photos_category_check
  check (category in (
    -- 총동문회(OB)
    'assembly','club','faculty','forum','old','daily','etc',
    -- 학생회(YB)
    'event','event2026','daily2026',
    'jobs','parttime',
    -- 지난 이름 (정리 중에 잠시 남아 있을 수 있음)
    'event2015','general'
  ));

-- 2) 옛 분류의 사진·앨범을 「예전사진」 으로 모음
update public.gallery_photos    set category = 'event' where category in ('event2015','general');
update public.gallery_albums    set category = 'event' where category in ('event2015','general');
update public.gallery_overrides set category = 'event' where category in ('event2015','general');

-- 3) 2026년 이후 행사 사진은 새 분류로
update public.gallery_photos set category = 'event2026'
 where org = 'YB' and category = 'event' and taken_at >= '2026-01-01';
update public.gallery_albums set category = 'event2026'
 where org = 'YB' and category = 'event' and event_date >= '2026-01-01';

-- 4) 옛 이름을 이제 막음
alter table public.gallery_photos drop constraint if exists gallery_photos_category_check;
alter table public.gallery_photos add constraint gallery_photos_category_check
  check (category in (
    'assembly','club','faculty','forum','old','daily','etc',
    'event','event2026','daily2026',
    'jobs','parttime'
  ));

-- 확인용
-- select org, category, count(*) from public.gallery_photos group by 1,2 order by 1,2;
