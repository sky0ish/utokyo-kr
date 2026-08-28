-- ═══════════════════════════════════════════════════════════
-- 「수험생 게시판」 만들기 (학생회)
--
--   도쿄대 진학을 준비하는 수험생·학부모님이 묻고, 재학생이 답하는 곳입니다.
--   비동문으로 가입한 준회원(GUEST)도 이 게시판만은 보고 쓸 수 있습니다.
--   (준회원은 그 밖의 학생회 게시판은 볼 수 없습니다)
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
-- ═══════════════════════════════════════════════════════════

-- ── 새 갈래(exam)를 받아들이게 ──
alter table public.posts drop constraint if exists posts_category_check;
alter table public.posts add constraint posts_category_check
  check (category in (
    -- 총동문회(OB)
    'notice','free','club','mentoring','promo','condolence','forum','seminar',
    'jobs','faculty','news','market','research',
    -- 학생회(YB)
    'qna','parttime','history','event','major',
    -- 양쪽에 있는 것
    'suggest',
    -- 이번에 생긴 것
    'exam'
  ));

-- ── 첫 글 하나 ──
--   게시판이 텅 비어 있으면 들어오신 분이 무엇을 물어도 되는지 모릅니다.
insert into public.posts (author_name, org, category, title, content, visibility)
select '도쿄대학 한국인학생회', 'YB', 'exam',
       '[입시] 수험생 게시판에 오신 것을 환영합니다',
       '도쿄대 진학을 준비하시는 분과 학부모님을 위한 게시판입니다.' || chr(10) || chr(10) ||
       '학부·대학원 입시 절차, 어학 준비, 기숙사와 생활비처럼 오시기 전에 궁금하신 것을 편하게 물어봐 주세요.' || chr(10) ||
       '재학생과 학생회 임원이 아는 대로 답해 드립니다.' || chr(10) || chr(10) ||
       '글을 쓰시려면 회원가입에서 「비동문 — 준회원」을 고르신 뒤 운영진 승인을 기다려주세요.' || chr(10) || chr(10) ||
       '말머리는 입시 · 유학준비 · 학교생활 · 기타 네 가지가 있습니다.' || chr(10) ||
       '제목 앞에 [입시] 처럼 붙여 주시면 찾기 쉽습니다.' || chr(10) || chr(10) ||
       '※ 학사 일정과 모집 요강은 반드시 도쿄대학 공식 안내를 먼저 확인해 주세요.' || chr(10) ||
       '   이곳의 답변은 재학생의 경험을 나누는 것이며 공식 안내가 아닙니다.',
       'members'
 where not exists (select 1 from public.posts where org = 'YB' and category = 'exam');

-- ── 확인 ──
select org as "단체", category as "갈래", count(*) as "글수"
  from public.posts
 where category = 'exam'
 group by org, category;

-- → 게시판 > 수험생 게시판 에 생깁니다.
