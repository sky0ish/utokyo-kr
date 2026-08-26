-- ═══════════════════════════════════════════════════════════
-- 갤러리 갈래 정리 — 「기타」를 없애고 「운영진」을 새로 만듭니다
--
--   · 기타에 있던 사진은 모두 「일상」으로 옮깁니다.
--   · 고문단 모임 · 임원 모임 · 이사진 모임 같은 앨범을 담을
--     「운영진(staff)」 갈래를 새로 받아들입니다.
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
--
--   ※ 홈페이지 쪽은 이미 손봐 두었습니다. 이 SQL을 아직 안 돌리셔도
--     기타 사진은 화면에서 「일상」으로 보입니다. 다만 자료방까지
--     깨끗이 맞추고 「운영진」으로 옮기려면 한 번 실행해주세요.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 「운영진」을 쓸 수 있게 (기타는 옛 자료를 위해 남겨둡니다) ──
alter table public.gallery_photos drop constraint if exists gallery_photos_category_check;
alter table public.gallery_photos add constraint gallery_photos_category_check
  check (category in (
    -- 총동문회(OB)
    'assembly','staff','club','faculty','forum','old','daily',
    -- 학생회(YB)
    'event','jobs','parttime',
    -- 옛 자료 (더는 쓰지 않지만 남아 있을 수 있어 허용)
    'etc'
  ));

-- ── 2) 기타에 있던 것을 일상으로 ──
update public.gallery_photos    set category = 'daily' where category = 'etc';
update public.gallery_overrides set category = 'daily' where category = 'etc';
update public.gallery_albums    set category = 'daily' where category = 'etc';

-- ── 3) 잘 되었는지 눈으로 확인 ──
select category as "갈래", count(*) as "사진"
  from public.gallery_photos
 where org = 'OB'
 group by category
 order by count(*) desc;

-- → 'etc' 가 한 줄도 없으면 끝입니다.
--
--   이제 갤러리 위쪽 갈래 단추에 「운영진」이 생겼습니다.
--   고문단·임원·이사진 모임 앨범은 갤러리 목록에서 앨범을 고른 뒤
--   「운영진」을 골라 「이 분류로 옮기기」를 누르시면 됩니다.
