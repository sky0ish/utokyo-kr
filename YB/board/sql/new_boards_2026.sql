-- ═══════════════════════════════════════════════════════════
-- 학생회에 새로 생긴 게시판 세 곳
--
--   참여마당 > 진로상담      (counsel) — 진학·취업·연구실 선택 고민
--   참여마당 > 진학/취업 후기 (career)  — 지나온 과정을 남겨 후배가 읽도록
--   게시판   > 수험생 게시판  (exam)    — 준회원(비동문)도 보고 쓸 수 있는 곳
--
--   ※ 앞서 exam_board.sql 을 돌리셨어도 이 파일을 그대로 돌리시면 됩니다.
--     그 내용까지 함께 들어 있고, 두 번 돌려도 탈이 없습니다.
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

-- ── 새 갈래를 받아들이게 ──
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
    'exam','career','counsel'
  ));

-- ── 수험생 게시판 첫 글 ──
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

-- ── 진로상담 첫 글 ──
insert into public.posts (author_name, org, category, title, content, visibility)
select '도쿄대학 한국인학생회', 'YB', 'counsel',
       '[진로 고민] 진로상담 게시판을 엽니다',
       '진학·취업·연구실 선택을 두고 혼자 앓지 마시고 여기에 적어주세요.' || chr(10) ||
       '먼저 지나온 선배와 학생회 임원이 함께 답해 드립니다.' || chr(10) || chr(10) ||
       '말머리는 진학 상담 · 취업 상담 · 연구실 선택 · 진로 고민 · 기타 다섯 가지입니다.' || chr(10) || chr(10) ||
       '실명이 부담스러운 이야기라면, 학생회 회장에게 따로 연락 주셔도 됩니다.' || chr(10) ||
       '(tokyoksa.president@gmail.com · 카카오톡 qazqwer)',
       'members'
 where not exists (select 1 from public.posts where org = 'YB' and category = 'counsel');

-- ── 진학/취업 후기 첫 글 ──
insert into public.posts (author_name, org, category, title, content, visibility)
select '도쿄대학 한국인학생회', 'YB', 'career',
       '[기타] 진학·취업 후기를 남겨주세요',
       '대학원에 어떻게 지원하셨는지, 취업 준비를 어떻게 하셨는지 적어주시면' || chr(10) ||
       '뒤에 오는 후배들에게 가장 큰 도움이 됩니다.' || chr(10) || chr(10) ||
       '이런 것들이 특히 궁금합니다.' || chr(10) ||
       '  · 언제부터 무엇을 준비하셨는지' || chr(10) ||
       '  · 서류와 면접에서 실제로 물어본 것' || chr(10) ||
       '  · 돌아보니 미리 알았으면 좋았을 것' || chr(10) || chr(10) ||
       '말머리는 대학원 진학 · 학부 진학 · 취업 · 인턴 · 기타 다섯 가지입니다.' || chr(10) || chr(10) ||
       '회사명이나 연구실을 밝히기 어려우시면 ○○사 처럼 가려 적으셔도 좋습니다.',
       'members'
 where not exists (select 1 from public.posts where org = 'YB' and category = 'career');

-- ── 확인 — 세 줄이 나오면 성공입니다 ──
select category as "게시판", count(*) as "글수"
  from public.posts
 where org = 'YB' and category in ('exam','career','counsel')
 group by category
 order by category;
