-- ═══════════════════════════════════════════════════════════
-- (구)총동문회 홈페이지(alumni.tokyoksa.com) 글 이전  —  21건
--   공지사항 · 행사안내 → 공지사항 / 구인구직 → 홍보·채용
--   ※ 제목에 적힌 행사 연도로 날짜를 맞춰 옛 글이 뒤쪽 페이지로 갑니다.
--   ※ 이미 올라와 있는 글(네이버 밴드 이전분)과 중복되는 3건은 제외했습니다.
--   ※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜와 원문 링크만 옮겼습니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

delete from public.posts where org = 'OB' and source_url like '%alumni.tokyoksa.com%';

insert into public.posts
  (author_name, org, category, title, content, visibility, source, source_url, created_at)
values
('박상우', 'OB', 'promo', '[채용] 시리즈D 스타트업 메디쿼터스 재무총괄 포지션을 찾습니다.', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b17&wr_id=6

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b17&wr_id=6', '2025-10-07 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] 동경대 교우회', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=24

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=24', '2025-09-30 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] 동경대 학생의 한국체험프로그램을 위한 호스트패밀리 모집중', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=22

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=22', '2025-06-30 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[행사] [동경대학 총동문회] 5월20일(토) 등산대회 안내', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=15

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=15', '2025-06-28 09:00:00+09'),
('Jin Park', 'OB', 'promo', '[채용] 【유급 인턴십】【디자이너】 Babel에서 당신의 창의력을 발산해보세요!', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b17&wr_id=5

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b17&wr_id=5', '2025-03-03 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] 東京フォーラム 2021 「Science and the Human Mind (科学と人の心)」 要事前申込', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=20

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=20', '2024-11-29 09:00:00+09'),
('신영훈', 'OB', 'promo', '[채용] [구인] [SK실트론] 일본 사업개발 Position 경력직 채용', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b17&wr_id=3

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b17&wr_id=3', '2024-04-03 09:00:00+09'),
('신영민', 'OB', 'promo', '[채용] 구인합니다.', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b17&wr_id=2

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b17&wr_id=2', '2023-12-29 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] [한국 도쿄대학 총동문회] 동경대 동문회 한일국제포럼 무료 초청', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=14

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=14', '2023-01-19 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] 2022년 재한동경대학 총동문회 총회 안내', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=21

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=21', '2022-02-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'OB', 'notice', '[안내] [동경대학 재일한국인 동창회] 와세다대학 한국학 연구소 개설기념 세미나', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=1

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=1', '2021-12-12 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[행사] 2019년 총회 행사안내', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=18

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=18', '2019-01-04 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] 2018년 재한동경대학총동문회 신년회 및 한일국제포럼 안내', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=17

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=17', '2018-12-16 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[행사] 2017년 가을 동문회 행사 안내', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=17

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=17', '2017-10-10 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[행사] 2017년 동문회 행사예정 및 참석부탁', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=16

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=16', '2017-06-28 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[행사] 2017년 재한 동경대학 총동문회 최종일정표', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=14

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=14', '2017-06-28 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[행사] 2016년 재한 동경대학 총동문회 신년회 및 포럼', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=12

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=12', '2016-01-20 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] 2016년 재한 동경대학 총동문회 신년회 및 포럼안내‏', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=7

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=7', '2016-01-19 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] 재한동경대총동문회 2015년 신년회', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=6

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=6', '2015-11-13 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[안내] [한국 도쿄대학 총동문회] 2014년도 신년회', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=5

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b12&wr_id=5', '2014-01-09 09:00:00+09'),
('한국 도쿄대학 총동문회', 'OB', 'notice', '[행사] [한국 도쿄대학 총동문회] 2014년도 신년회 (시간:오후6시, 장소:한국과학기술회관 12층 아나이스홀)', '(구)총동문회 홈페이지에서 옮겨온 글입니다.
원문 보기 : https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=11

※ 원문 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://alumni.tokyoksa.com/bbs/board.php?bo_table=alumni_b11&wr_id=11', '2014-01-09 09:00:00+09');

-- 확인용
-- select category, count(*) from public.posts
--  where source_url like '%alumni.tokyoksa.com%' group by 1;
