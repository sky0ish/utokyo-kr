-- ═══════════════════════════════════════════════════════════
--  총회 이야기를 [참여마당 / 총회] 게시판 한곳으로 모읍니다.
--
--   말머리는 넷으로 나눕니다
--     현장중계 — 총회가 열리는 그날 올라온 소식
--     결과보고 — 회의록, 끝난 뒤의 보고
--     총회안내 — 언제 어디서 여는지 미리 알리는 글
--     기타     — 그 밖의 총회 소식
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다. 옮기기 전 모습을 먼저 보여드립니다.
-- ═══════════════════════════════════════════════════════════

-- ── ① 게시판 이름을 데이터베이스에 알려줍니다 (이미 하셨으면 그냥 지나갑니다) ──
alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    'assembly','notice','free','club','mentoring','promo','condolence','forum','seminar',
    'jobs','faculty','news','market','research',
    'qna','parttime','history','event','major',
    'exam','scholarship','career','counsel',
    'suggest'
  ));

-- ── ② 옮기기 전 : 어느 게시판에 몇 건이 흩어져 있는지 ──
select org as "단체", category as "지금 게시판", count(*) as "글수"
  from public.posts
 where title ilike '%총회%'
   and category <> 'assembly'
 group by org, category
 order by count(*) desc;

-- ── ③ 어떤 말머리가 붙을지 미리 보기 ──
select case
         when title ~ '중계|생중계|실시간|방송중'                       then '현장중계'
         when title ~ '회의록|의사록|결과|보고|후기|성황|마쳤|개최되|열렸|되었|있었던|내용입니다'
                                                                        then '결과보고'
         when title ~ '안내|개최|초대|알림|신청|모십|참석|모시|접수|리마인드|마감|일정|알려|엽니다|열리는|참여'
                                                                        then '총회안내'
         else '기타'
       end as "붙을 말머리",
       count(*) as "글수"
  from public.posts
 where category = 'assembly' or title ilike '%총회%'
 group by 1
 order by count(*) desc;

-- ── ④ 옮기고, 말머리를 다시 붙입니다 ──
--     제목 앞에 이미 붙어 있던 [○○] 은 떼어내고 새 말머리를 답니다.
--     떼어내면 제목이 통째로 사라지는 글은 원래 제목을 그대로 둡니다.
with t as (
  select id, title,
         nullif(regexp_replace(title, '^\s*[\[【][^\]】]{1,14}[\]】]\s*', ''), '') as stripped
    from public.posts
   where category = 'assembly' or title ilike '%총회%'
)
update public.posts p
   set category = 'assembly',
       title = '[' || case
         when t.title ~ '중계|생중계|실시간|방송중'                      then '현장중계'
         when t.title ~ '회의록|의사록|결과|보고|후기|성황|마쳤|개최되|열렸|되었|있었던|내용입니다'
                                                                        then '결과보고'
         when t.title ~ '안내|개최|초대|알림|신청|모십|참석|모시|접수|리마인드|마감|일정|알려|엽니다|열리는|참여'
                                                                        then '총회안내'
         else '기타'
       end || '] ' || coalesce(t.stripped, t.title)
  from t
 where t.id = p.id;

-- ── ⑤ 옮긴 뒤 : 총회 게시판이 어떻게 채워졌는지 ──
select org as "단체",
       split_part(split_part(title, ']', 1), '[', 2) as "말머리",
       count(*) as "글수"
  from public.posts
 where category = 'assembly'
 group by 1, 2
 order by 1, count(*) desc;
