-- ═══════════════════════════════════════════════════════════
--  소모임 「전공별」 되짚기 ① — 읽기만 합니다
--
--  Supabase → whlove@gmail.com 계정 → 동문회 프로젝트 → SQL Editor
--
--  ■ 지금까지 밝혀진 일
--    ① OB/board/sql/club_tags.sql  이 소모임 글에 말머리를 붙였습니다
--         골프 / 등산 / 전공별 / 친목 / 기타
--    ② OB/board/sql/forum_import.sql 이 그중 일부를 포럼(forum)으로 옮기고
--         제목의 [전공별] 을 [기타] → [건축학]·[농학생명]·[공학] 으로 바꿨습니다
--    ③ 2026-08-29 커밋에서 말머리 목록에서 「전공별」이 빠져 칩이 안 보였습니다
--         (이건 2026-08-31 에 되살려 두었습니다)
--
--  ■ 옛 import SQL 로 되짚어 본 것 (내 컴퓨터에서 셈)
--    · 원래 소모임(club) 이던 글      112건
--    · 그중 [전공별] 로 찍혔을 글      11건
--    · 그중 포럼으로 옮겨졌을 글        5건   ← 되살릴 대상
--    · 소모임에 그대로 남았을 글        6건
--
--  아래 질의로 **실제 자료가 정말 그런지** 확인하십시오.
--  ①·② 스크립트를 안 돌리셨을 수도 있어, 실제 모습은 다를 수 있습니다.
-- ═══════════════════════════════════════════════════════════


-- ── 1. 소모임에 지금 어떤 말머리가 몇 건씩 있나 ──
--    「전공별」이 몇 건 나오는지가 첫 갈림길입니다.
--      · 여러 건 나온다  → 글은 멀쩡했고 칩만 없었던 것 (이미 고쳤습니다)
--      · 한 건뿐이다     → club_tags.sql 을 안 돌리셨거나 다른 말머리로 남아 있는 것
select coalesce(substring(title from '^\[([^\]]+)\]'), '(말머리 없음)') as "말머리",
       count(*)                                                        as "건수"
  from public.posts
 where org = 'OB' and category = 'club'
 group by 1
 order by 2 desc;


-- ── 2. 포럼으로 옮겨졌을 그 5건이 지금 어디 있나 ──
--    제목 앞머리로 찾습니다 (옮기면서 말머리만 바뀌고 본문 제목은 그대로였습니다)
select id,
       category                              as "지금 게시판",
       substring(title from '^\[([^\]]+)\]') as "지금 말머리",
       left(title, 60)                       as "제목",
       author_name                           as "쓴 사람",
       created_at::date                      as "쓴 날"
  from public.posts
 where org = 'OB'
   and regexp_replace(title, '^\s*\[[^\]]*\]\s*', '') like any (array[
         '동경대 응용화학계열 전반기 모임%',
         '응용화학계열 동문회 정기 세미나를%',
         '오늘 응용화학계열 송년회가 있었습니다%',
         '2023년 2월24일(금) 부산대학교에서 응용화학계열%',
         '오늘 7/22 응용화학부 동문회 모임이 있었습니다%'
       ])
 order by created_at;


-- ── 3. 소모임에 남아 있어야 할 6건이 지금 어디 있나 ──
select id,
       category                              as "지금 게시판",
       substring(title from '^\[([^\]]+)\]') as "지금 말머리",
       left(title, 60)                       as "제목",
       created_at::date                      as "쓴 날"
  from public.posts
 where org = 'OB'
   and regexp_replace(title, '^\s*\[[^\]]*\]\s*', '') like any (array[
         '안녕하십니까? 어제 "스마트 방재도시%',
         '4월 3일 협성대학교에서 전기전자정보계열%',
         '동경대 동문이신 "서울과 교토의 1만 년%',
         '저희 동경대학 동문회 소모임 중%',
         '반갑습니다. 건축학과 졸업한 박병순입니다%',
         '2013년도 제41기 동경대학 한국인동문회 회장 후보%'
       ])
 order by created_at;


-- ── 4. 소모임 글 가운데 「전공별」로 볼 만한데 다른 말머리를 단 것 ──
--    club_tags.sql 3) 이 쓰던 잣대 그대로입니다.
--    되살리기 ②에서 이것들도 함께 다룰지 정하실 때 보십시오.
select id,
       substring(title from '^\[([^\]]+)\]') as "지금 말머리",
       left(title, 66)                       as "제목",
       created_at::date                      as "쓴 날"
  from public.posts
 where org = 'OB' and category = 'club'
   and title !~ '^\[전공별\]'
   and (title ~ '(공학부|농학부|약학부|의학부|법학부|경제학부|문학부|이학부|건축|화학|전기|기계|도시|수의|응용화학|계열|학과|전공|연구실|단과대)'
     or content ~ '(공학부|농학부|약학부|의학부|법학부|경제학부|문학부|이학부|응용화학계열|단과대|학과 모임|전공 모임)')
 order by created_at;


-- ── 5. 포럼에 있는 글 가운데 원래 소모임이었을 만한 것 ──
--    forum_import.sql 이 옮길 때 쓰던 잣대입니다. 참고용으로만 보십시오 —
--    원래부터 포럼이던 글도 섞여 있습니다.
select id,
       substring(title from '^\[([^\]]+)\]') as "말머리",
       left(title, 66)                       as "제목",
       created_at::date                      as "쓴 날"
  from public.posts
 where org = 'OB' and category = 'forum'
   and (title ~ '(단과대|전공별 ?(모임|포럼)|구조계|농학생명|응용화학|화학공학|도시공학|건축학 ?(동문|포럼)|학과별 ?모임)'
     or title ~ '(계열|학부|대학원) ?(동문 ?)?(모임|포럼)')
 order by created_at;
