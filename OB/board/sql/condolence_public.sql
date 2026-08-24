-- ═══════════════════════════════════════════════════════════
-- 총동문회 경조사를 누구나 볼 수 있게
--
--   부고·결혼·출산 소식은 회원이 아니어도 보실 수 있어야
--   제때 마음을 전할 수 있습니다.
--   이미 올라와 있는 경조사 글을 전체 공개로 바꿉니다.
--   (앞으로 쓰는 글은 홈페이지가 알아서 전체 공개로 저장합니다)
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 바꾸기 전 몇 건인지 ──
select visibility, count(*) as 글수
  from public.posts
 where org = 'OB' and category = 'condolence'
 group by visibility;

-- ── 전체 공개로 ──
update public.posts
   set visibility = 'public'
 where org = 'OB' and category = 'condolence'
   and visibility <> 'public';

-- ── 확인 ──
select visibility, count(*) as 글수
  from public.posts
 where org = 'OB' and category = 'condolence'
 group by visibility;
