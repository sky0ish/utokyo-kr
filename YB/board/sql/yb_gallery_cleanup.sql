-- ═══════════════════════════════════════════════════════════
-- 학생회(YB) 갤러리 정리
--   · 학생회 갤러리에는 「한국인학생회 / 제NN기 학생회」 자료만 남깁니다.
--   · 총동문회에서 잘못 넘어온 앨범·사진은 지웁니다.
--   · 분류는 옛 학생회 홈페이지(tokyoksa.com) 갤러리 메뉴 그대로입니다.
--       event2015 = 행사 사진 및 동영상 (2015~)
--       event     = 행사 사진 및 동영상
--       general   = 일반 사진 및 동영상
-- 실행: Supabase 대시보드 → SQL Editor
--   ① 먼저 [확인] 부분만 실행해서 지워질 목록을 봐주세요.
--   ② 맞으면 [삭제] 부분을 실행하세요.
-- ═══════════════════════════════════════════════════════════

-- ── ① 확인 : 학생회 자료가 아닌 것 (지워질 목록) ──
select album_key as 앨범키, title as 제목, category as 분류, event_date as 날짜
  from public.gallery_albums
 where org = 'YB'
   and coalesce(title, '') !~ '학생회'
 order by event_date;

-- ── ② 삭제 ──
-- 위 목록이 맞으면 아래 두 줄을 실행하세요.
--
-- delete from public.gallery_photos
--  where org = 'YB'
--    and album_key in (select album_key from public.gallery_albums
--                       where org = 'YB' and coalesce(title, '') !~ '학생회');
--
-- delete from public.gallery_albums
--  where org = 'YB' and coalesce(title, '') !~ '학생회';

-- ── ③ 남은 것 확인 ──
select a.title as 앨범, a.category as 분류, a.event_date as 날짜,
       count(p.id) as 사진수
  from public.gallery_albums a
  left join public.gallery_photos p on p.album_key = a.album_key and p.org = 'YB'
 where a.org = 'YB'
 group by a.title, a.category, a.event_date
 order by a.event_date desc;
