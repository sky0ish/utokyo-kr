-- ═══════════════════════════════════════════════════════════
-- 도쿄대학 한국인 학생회 (구)홈페이지 게시판 이전
--   tokyoksa.com → YB 게시판   (총 2042건)
--   공지사항 401 · 취업정보 1181 · 아르바이트 459 · 벼룩시장 1
--   ※ 자유게시판·Q&A 는 (구)홈페이지에서 회원 전용이라 가져오지 못했습니다.
--   ※ 본문도 회원 전용이라 제목·작성자·날짜와 원문 링크만 옮겼습니다.
-- 실행: board_setup.sql → joinboards.sql → 이 파일
-- ═══════════════════════════════════════════════════════════

delete from public.posts where org = 'YB' and source = 'legacy';

insert into public.posts
  (author_name, org, category, title, content, visibility, source, source_url, created_at)
values
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 18기 유엔협회세계연맹 한국대학생 대표단 – 해외 유학생 전형 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=978

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=978', '2026-03-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 미국 국무부 교류동문 프로젝트 | 한‧미‧일 청년 공공외교 대화 프로그램 - 2026년 3월 6일(금) / …', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=977

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=977', '2026-02-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] OKF 한일 청년 아이디어톤 2025 참가자 모집 (11/9 도쿄 개최)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=976

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=976', '2025-11-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [한국연구재단] 외국박사학위신고 제도 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=975

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=975', '2025-10-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 인스파이어 리조트 채용설명회 (6/24)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=974

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=974', '2025-06-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [두산에너빌리티] 회사 소개/ 채용 설명회 안내 (6.12)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=972

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=972', '2025-05-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [LX Semicon Japan] 26년도 신입사원 채용 및 회사설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=971

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=971', '2025-05-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 【LG전자】도쿄대 캠퍼스 리쿠르팅 활동 실시', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=970

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=970', '2025-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제53기 도쿄대학 한국인 학생회 회장 선거 결과]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=969

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=969', '2025-04-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제53기 도쿄대학 한국인 학생회 회장 투표 안내 및 공청회 자료]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=968

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=968', '2025-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2025년도 도쿄대학 한국인 학생회 차기 회장 선거 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=967

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=967', '2025-03-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [해외송금 모인] 일본 유학비 송금 서비스 재오픈', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=966

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=966', '2025-02-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [해외송금 모인] 롯데면세점 제휴 혜택 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=965

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=965', '2025-01-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [제16회 재일한국과학기술자협회 합동분과회 안내 및 모집]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=964

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=964', '2024-12-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [해외송금 모인] 연간 송금한도 상향 기념 이벤트 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=959

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=959', '2024-11-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [삼성디스플레이] 2024 Tech-Forum 참가 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=954

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=954', '2024-09-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [삼성디스플레이] 2024년 일본 캠퍼스 리크루팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=952

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=952', '2024-09-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [LG전자 x 도쿄대 캠퍼스 리쿠르팅]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=950

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=950', '2024-09-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [도쿄대학x모인] 해외송금 제휴 혜택 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=949

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=949', '2024-08-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] [제1회 AI반도체 기술인재 선발대회]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=948

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=948', '2024-08-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [도쿄대학교 X BGN밝은눈안과] 스마일라식 제휴 프로모션', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=947

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=947', '2024-07-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [LX세미콘] 도쿄 지역 회사 설명회 개최 및 신입사원 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=945

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=945', '2024-05-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [삼성전자 DS부문 박사과정 대상 리쿠르팅 면담 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=944

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=944', '2024-04-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [삼성전자 System LSI] 동경대 리크루팅 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=943

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=943', '2024-04-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] (일정변경) [세메스] 일본 리크루팅 - 반도체 기술특강 및 중식 간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=942

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=942', '2024-04-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [삼성SDI] 도쿄대 캠퍼스 리크루팅 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=940

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=940', '2024-03-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2024년도 회장선거 개표 결과]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=938

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=938', '2024-03-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제52기 도쿄대학교 한국인 학생회장 투표 리마인드]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=937

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=937', '2024-03-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제52기 도쿄대학교 한국인 학생회장 투표 안내 및 공청회 자료]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=936

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=936', '2024-03-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2024년도 학생회 차기 회장 후보등록 및 선거 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=935

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=935', '2024-02-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 2월 맥킨지 전은조 시니어 파트너님 강연회 접수 안내 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=930

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=930', '2024-01-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [Roland Berger] 유럽계 컨설팅사 2024년 상반기 정규직 전환형 RA 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=929

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=929', '2023-12-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 【12/15 삼성 일본연구소 상무님 강연회】 접수 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=927

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=927', '2023-12-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [해외송금 업체 모인(MOIN)]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=926

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=926', '2023-12-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [삼성전자 리쿠르팅 참석여부 조사(11/3까지)]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=925

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=925', '2023-11-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [(10/28마감) 도쿄대학 한국인 학생회 개강총회 접수 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=924

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=924', '2023-10-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] [10/8 동경 3대학 체육대회 참가자 모집]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=922

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=922', '2023-09-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [9/14-9/16 삼성디스플레이 캠퍼스 리쿠르팅 안내 (8/21갱신)]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=921

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=921', '2023-08-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [해외 송금 서비스 모인(MOIN)]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=920

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=920', '2023-06-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] [7/2 잡드림나이트 행사 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=919

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=919', '2023-06-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[장학] 「우아한 사장님 자녀 장학금 지원 안내」', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=918

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=918', '2023-06-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [도쿄대학 한국인 학생회 봄소풍회 접수]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=914

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=914', '2023-05-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [국립재난안전연구원] 2023 신종재난 위험요소 국제 발굴단 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=913

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=913', '2023-05-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [LG전자 후원]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=912

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=912', '2023-04-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [4/28] LG전자) 도쿄대학 캠퍼스 리쿠르팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=911

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=911', '2023-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 【4/25 한국투자증권 혼고캠 채용설명회】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=910

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=910', '2023-04-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [도쿄대학 한국인학생회 개강총회 접수]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=909

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=909', '2023-04-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [NAVER] 2023 팀네이버 신입 공채 (~4.10 월 오전 11시)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=908

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=908', '2023-04-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [포스코 동경지역 기업설명회 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=907

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=907', '2023-03-31 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2022년도 하반기 학생회 업무내역 보고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=906

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=906', '2023-03-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 【230420 LG화학 동경대 진로설명회】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=905

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=905', '2023-03-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [신입생 환영회 사전 수요조사]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=904

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=904', '2023-03-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [2023 DB-SNUbiz Global Startup Challenge]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=903

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=903', '2023-03-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 【230324 삼성전자 DS부문 S.LSI 사업부 오프라인 진로설명회】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=902

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=902', '2023-03-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2023년도 회장선거 개표 결과]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=901

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=901', '2023-03-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제51기 도쿄대학교 한국인 학생회장 투표 리마인드]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=900

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=900', '2023-03-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제51기 도쿄대학교 한국인 학생회장 투표 안내 및 공청회 자료]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=899

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=899', '2023-03-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2023년도 학생회 차기 회장 후보등록 및 선거 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=898

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=898', '2023-02-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [한국통신학회 동경 강연 공고(2/25 토)]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=897

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=897', '2023-02-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [서울대학교 국제대학원 홍보]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=896

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=896', '2023-01-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [2/6 오전, 혼고캠 삼성전자 MX사업부 오프라인 진로 설명회 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=895

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=895', '2023-01-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [혼고캠, 1/16] 서울대학교 국제대학원 홍보 및 간담회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=894

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=894', '2023-01-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [제1회 한일과학기술혁신포럼 공고 전달]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=893

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=893', '2022-11-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [2022 도쿄대 망년회 공지]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=892

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=892', '2022-11-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [학생회 후원기업 : LG디스플레이]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=891

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=891', '2022-10-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [학생회 후원기업 : 삼성디스플레이]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=890

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=890', '2022-10-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[장학] [LG Display] 2022년 하반기 해외 석/박사 및 산학장학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=889

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=889', '2022-10-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 【10/20 포스코 캠퍼스 리쿠르팅】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=888

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=888', '2022-10-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [선후배 매칭서비스방 하반기 모집 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=887

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=887', '2022-10-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [삼성전자, 삼성디스플레이, LG디스플레이 리쿠르팅 3건 개최예정표]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=886

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=886', '2022-09-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [삼성전자 DS부문 오프라인 채용설명회(9월말) 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=885

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=885', '2022-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2022년도 상반기 학생회 업무내역 보고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=884

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=884', '2022-08-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [문과직종 잡드림나이트 수요조사 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=883

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=883', '2022-06-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 【LG전자 오프라인 채용설명회】 리마인드', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=882

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=882', '2022-05-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] 【LG전자 오프라인 채용설명회】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=881

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=881', '2022-05-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [도쿄대 선후배 매칭서비스 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=880

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=880', '2022-04-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [도쿄대 한인 유학생 카카오톡 채팅방]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=879

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=879', '2022-03-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제 50기 학생회 임원 모집]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=878

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=878', '2022-03-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2022년도 회장선거 개표 결과]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=877

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=877', '2022-03-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제50기 도쿄대학교 한국인 학생회장 투표 리마인드]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=876

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=876', '2022-03-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [제50기 도쿄대학교 한국인 학생회장 투표 안내 및 공청회 자료]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=875

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=875', '2022-03-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2022년도 학생회 차기 회장 선거 리마인드]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=874

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=874', '2022-03-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2022년도 도쿄대학교 한국인 학생회 차기 회장 후보등록 및 선거 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=873

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=873', '2022-03-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [기업 관계자들 분께] 도쿄대학교 채용공고 홍보에 관련하여', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=871

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=871', '2021-12-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [한국화학공학회] 일본지부 2021년도 학술 세미나', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=870

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=870', '2021-06-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] *****[진로 및 취업 상담회 - 잡드림 나이트 2021]*****', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=869

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=869', '2021-06-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2021 회장선거 개표 결과]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=863

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=863', '2021-03-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2021년도 도쿄대학 한국인 학생회 차기 회장 선거 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=862

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=862', '2021-02-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2021년도 도쿄대학교 한국인 학생회 차기 회장 후보등록 및 선거 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=861

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=861', '2021-02-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] *****[진로 및 취업 상담회 - 잡드림 나이트 2020]******', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=860

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=860', '2020-08-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] [2020 전기 개강파티 공지]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=859

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=859', '2020-03-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2020 회장선거 개표 결과]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=858

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=858', '2020-01-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2020년도 학생회장 선거공지]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=857

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=857', '2020-01-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] 2020년도 도쿄대학교 한국인 학생회 차기 회장 후보등록 및 선거 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=856

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=856', '2020-01-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] 2019년도 3개대학 볼링대회 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=855

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=855', '2019-10-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2019년도 학생회장 선거결과]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=853

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=853', '2019-01-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [긴급] 고마바 투표장 개장 연장', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=852

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=852', '2019-01-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2019년도 학생회장 선거공지]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=851

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=851', '2019-01-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] 2019년도 도쿄대학교 한국인 학생회 차기 회장 후보등록 및 선거 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=850

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=850', '2018-12-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] 2018 후기 개강파티 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=849

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=849', '2018-09-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2018년도 학생회장 선거결과]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=848

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=848', '2018-04-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [2018년도 학생회장 선거공지]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=847

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=847', '2018-04-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] [도쿄대학교 한국인학생회 차기 회장 후보 등록 공지]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=846

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=846', '2018-04-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] 2018 전기 개강파티 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=844

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=844', '2018-04-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] 소모임 활성화 지원', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=843

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=843', '2017-12-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] 3개대학 연합 체육대회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=842

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=842', '2017-10-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[행사] 2017학년도 후기 개강파티', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=841

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=841', '2017-10-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[안내] [7월 고텐시타 운동 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=840

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=840', '2017-07-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'notice', '[학생회] 학생회 공식 카카오톡 플러스친구 계정 안내와 공식 명칭 변경에 대한 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=839

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=839', '2017-06-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 도쿄대학교 한국인 학생회 차기 회장 후보 재등록 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=836

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=836', '2017-04-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] [리마인드] 2017년도 개강파티', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=835

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=835', '2017-04-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [강연소개]ロシア極東地域の北朝鮮派遣労働者に関するワークショップ', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=833

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=833', '2017-03-26 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 2017년 재한 동경대학 총동문회 한일포럼 및 총회 개최 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=832

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=832', '2017-03-24 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 2017년도 여름학기 개강파티', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=831

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=831', '2017-03-14 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [기간연장]2017년도 도쿄대학교 한국인 학생회 차기 회장 후보등록 및 선거 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=830

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=830', '2017-01-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] <김제동 주진우의 인생 토크 와세다 대학 특강>개최', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=829

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=829', '2016-11-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] [2016년도 가을학기 개강파티 사진]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=827

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=827', '2016-11-03 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] [3개대학 연합 체육대회 행사 사진]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=826

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=826', '2016-11-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] [리마인드] 2016년도 가을학기 개강파티 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=825

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=825', '2016-10-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 2016년도 3개대학 연합 체육대회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=824

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=824', '2016-09-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 2016년도 가을학기 개강파티에 관한 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=823

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=823', '2016-09-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 손일교수님(현 연세대학교 재료공학과 교수)과의 석식간담회에 관한 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=822

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=822', '2016-07-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [리마인더]진로 및 취업 상담회(구 동문인의 밤)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=821

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=821', '2016-06-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 진로 및 취업 상담회 (구 동문인의 밤) 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=820

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=820', '2016-05-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 5월 고텐시타 운동 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=819

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=819', '2016-05-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [홍보]오월제 장소 및 기획', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=818

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=818', '2016-05-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 【홍보】留学生フェス2016', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=817

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=817', '2016-05-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 제48회 한일경제인회의 개최안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=816

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=816', '2016-05-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] [리마인드] 2016년도 여름학기 개강파티 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=814

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=814', '2016-04-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 2016년도 여름학기 개강파티 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=813

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=813', '2016-04-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 2016년도 여름학기 개강파티에 관한 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=812

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=812', '2016-03-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 2016년도 도쿄대학 한국인 학생회 차기회장 재선거 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=811

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=811', '2016-02-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 2016년도 도쿄대학 한국인 학생회 차기회장 후보등록공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=810

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=810', '2016-02-14 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 2016년도 도쿄대학 한국인 학생회 회장선거결과', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=809

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=809', '2016-02-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 2016년도 도쿄대학 한국인 학생회 차기회장 선거 공청회 자료', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=808

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=808', '2016-02-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 2016년도 도쿄대학 한국인 학생회 차기회장 선거 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=807

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=807', '2016-02-06 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 재일과학자협회합동분과회에 관한 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=806

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=806', '2016-01-14 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 2016년도 도쿄대학 한국인 학생회 차기회장 후보등록 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=805

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=805', '2016-01-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 【동경대학 한국인 동문회 BAND(어플)모임에 관한 홍보】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=804

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=804', '2015-12-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 제20대 국회의원 재외선거에 대한 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=803

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=803', '2015-12-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [한일 미래 창조 포럼]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=802

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=802', '2015-11-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [미래창조과학부 최양희 장관님 강연 리마인드]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=801

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=801', '2015-11-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [11월 28일 고텐시타 운동]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=800

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=800', '2015-11-16 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [강연소개]한국사회의 혈연과 가족, 그 역사적 전개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=799

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=799', '2015-11-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [지브리 미술관 관람]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=798

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=798', '2015-11-02 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [미래창조과학부 장관님 강연]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=797

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=797', '2015-10-31 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [버블사커 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=796

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=796', '2015-10-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 글로벌 한인 리더 육성 K-MOVE스쿨 특별강의', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=795

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=795', '2015-10-26 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] <2015년도 3개대학 연합 체육대회>', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=793

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=793', '2015-10-07 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 겨울학기 개강파티 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=792

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=792', '2015-10-06 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [10월 고텐시타 운동 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=791

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=791', '2015-09-22 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [動きのカガク展관람 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=790

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=790', '2015-09-22 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [타하라 소이치로씨의 강연에 한국인 유학생을 초대합니다]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=789

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=789', '2015-06-30 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] [볼링대회 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=787

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=787', '2015-06-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [고텐시타 6월 운동 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=786

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=786', '2015-05-28 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [롯데그룹 인턴십 프로그램 모집 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=785

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=785', '2015-05-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 롯데 인턴 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=784

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=784', '2015-05-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 2015 재일한국인유학생연합회 축구대회 참가 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=783

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=783', '2015-05-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [고텐시타 운동 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=782

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=782', '2015-05-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [루브르미술관 전 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=781

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=781', '2015-05-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 2015년도 학생회 임원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=780

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=780', '2015-02-26 09:00:00+09'),
('전성호', 'YB', 'notice', '[학생회] 제 42기 학생회장 퇴임인사 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=777

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=777', '2015-02-16 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [제43기 학생 회장 선거] 선거 결과 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=776

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=776', '2015-02-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [제43기 학생 회장 선거] 투표소 공지 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=774

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=774', '2015-02-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [제43기 학생 회장 선거]공청회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=773

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=773', '2015-02-03 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 제43기 도쿄대학교 한국인 학생회 차기회장 후보 등록 공지 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=771

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=771', '2015-01-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 언어학연구 한국인참가자 모집(Calling for Korean Participants for the rese…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=770

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=770', '2015-01-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 1/16일 외국인유학생들을 위한 업계연구박람회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=769

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=769', '2014-12-22 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [TOP CAREER] 2015년 TOPCAREER 일정안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=768

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=768', '2014-12-22 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] (이번주 금요일) 겨울학기 개강파티 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=767

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=767', '2014-10-28 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] <공지> 2014 겨울학기 개강파티 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=765

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=765', '2014-10-14 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 졸업 후 진로에 대한 앙케이트 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=763

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=763', '2014-10-06 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] TOP CAREER ’일본취업 스타트업’ 세미나 개최', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=761

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=761', '2014-09-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] TOP CAREER 2016 개최안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=760

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=760', '2014-09-06 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 동경대학 ・서울대학교 학생토론회 프로그램', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=759

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=759', '2014-07-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] [홍보]시민디자인연구소 해외디자인리포터 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=758

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=758', '2014-06-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 한양대학교 학생들과의 토론회(주제:개인정보보호)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=757

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=757', '2014-06-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 마이다스아이티 CEO 일본강연회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=756

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=756', '2014-05-30 09:00:00+09'),
('이민혁', 'YB', 'notice', '[행사] 문체국 배드민턴 모임 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=754

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=754', '2014-05-24 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 문화체육관광부 아시아문화중심도시 대학생기자단 7기 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=752

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=752', '2014-05-14 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 학생지원에 관련된 조성사업・콘테스트 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=751

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=751', '2014-05-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 여름학기 개강파티 (4월 25일 금요일)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=750

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=750', '2014-04-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 도쿄대학교・서울대학교 오피스상호설치 개소기념 심포지움 참가자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=748

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=748', '2014-04-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 동경대내 서울대 사무실직원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=747

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=747', '2014-04-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[행사] 2014년도 여름학기 개강파티 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=746

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=746', '2014-04-06 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 학생회 임원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=745

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=745', '2014-03-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 가부키 공연 할인정보 (学生支援課学生チーム)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=744

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=744', '2014-02-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 제 6회 정기총회+IBS 설문조사 응답자 스타벅스 카드 전달 알림', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=743

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=743', '2014-02-05 09:00:00+09'),
('변익주', 'YB', 'notice', '[안내] [선택2014] 투표 결과 공지 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=737

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=737', '2014-01-24 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [선택 2014] 42대 학생회장 선거 후보자 공청회 속기자료2', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=736

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=736', '2014-01-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [선택 2014] 공청회 동영상', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=735

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=735', '2014-01-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [선택 2014] 42대 학생회장 선거 후보자 공청회 속기자료', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=732

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=732', '2014-01-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [투표소안내] 2014 한국인학생회 학생회장 선거 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=730

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=730', '2014-01-23 09:00:00+09'),
('변익주', 'YB', 'notice', '[학생회] [회장선거 공청회] 1월23일 오후1시30분 고텐시타 3층 디스커션룸1', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=729

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=729', '2014-01-22 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'notice', '[안내] 전국경제인연합회 자유광장 소통공감 서포터즈 5기 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=728

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=728', '2014-01-16 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'notice', '[안내] 교환유학과 오월제에 대한 정보공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=727

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=727', '2014-01-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[안내] 2014 도쿄대학교 학생 스키 여행', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=726

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=726', '2013-12-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 제42기 도쿄대학교 한국인 학생회 차기회장 후보 등록 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=725

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=725', '2013-12-16 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'notice', '[안내] [문화] 11.3(일) 디자인 페스타(DESIGN FESTA)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=724

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=724', '2013-10-22 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'notice', '[행사] 3개대학 연합체육대회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=723

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=723', '2013-10-21 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'notice', '[행사] 10월22일(화) 고텐시타 운동모임 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=722

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=722', '2013-10-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 도쿄대학교 한국인 학생회 뉴스레터 2013년도 가을 제3호', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=721

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=721', '2013-10-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] 제 5회 정기총회 회의록', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=720

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=720', '2013-10-13 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [알림] 학생지원에 관한 조성사업, 상공모에 관한 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=719

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=719', '2013-10-07 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'notice', '[행사] [알림] 겨울학기 개강파티 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=718

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=718', '2013-10-06 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [알림] 겨울학기 개강파티 날짜, 장소 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=716

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=716', '2013-09-20 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제 5회 정기총회 알림', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=715

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=715', '2013-09-18 09:00:00+09'),
('webmaster', 'YB', 'notice', '[안내] 재일과협 설립30주년 기념 과학기술강연회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=714

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=714', '2013-09-12 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제 4회 정기총회 회의록', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=713

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=713', '2013-08-21 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 7월24일(수) 고텐시타 운동모임 공지 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=711

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=711', '2013-07-22 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제 4회 정기총회 알림', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=710

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=710', '2013-07-20 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [문화] 7.28(일) 동아시안컵 한일전 관람', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=709

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=709', '2013-07-16 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 도쿄대학교 한국인 학생회 뉴스레터 2013년도 여름 제2호', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=708

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=708', '2013-07-12 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 7월9일(화) 고텐시타 운동모임 공지 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=706

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=706', '2013-07-08 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 도쿄대학교 한국인 학생회 뉴스레터 2013년도 봄 제1호 (창간호)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=705

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=705', '2013-07-02 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 제 2 회 한국어 스피치 대회 알림', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=704

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=704', '2013-07-02 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [긴급알림] 무료영화시사회토크쇼 - タリウム少女の毒殺日記(탈륨소녀의 독살일기)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=702

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=702', '2013-06-27 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [알림] tvn 대학토론배틀 시즌4 참가모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=701

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=701', '2013-06-27 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [알림] 학생지원에 관한 조성사업, 상공모에 관한 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=700

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=700', '2013-06-27 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 평택항 동경 설명회 및 동경 유학생 초청', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=699

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=699', '2013-06-26 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제 3회 정기총회 회의록', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=697

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=697', '2013-06-14 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 6월21일(금) 에비스 아트나잇 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=696

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=696', '2013-06-13 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 6월18일 고텐시타 운동 모임 공지 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=693

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=693', '2013-06-10 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 6월 7일 고텐시타 운동 모임 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=689

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=689', '2013-05-30 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 한국무역협회 해외유학생 하계 인턴 프로그램', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=688

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=688', '2013-05-30 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [세미나 안내] 동아시아와 한일관계', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=687

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=687', '2013-05-23 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 2013년도 재일한국유학생연합회 주최 제1회 볼링대회 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=686

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=686', '2013-05-16 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 5월24일 롯본기 힐즈 모리 미술관 10주년 기념전 행사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=685

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=685', '2013-05-15 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [한국국제교류재단] 공식서포터즈 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=684

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=684', '2013-05-14 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 한중일 대학생 프레젼테이션 비디오 콘테스트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=683

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=683', '2013-05-08 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 언론NPO 한일미래대화 초대', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=681

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=681', '2013-05-05 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 5월 고텐시타 운동 모임 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=680

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=680', '2013-05-05 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 도쿄대학교 도서관 이용 교육관련 한국어 강습회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=679

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=679', '2013-05-03 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제 2회 정기총회 회의록', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=677

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=677', '2013-04-19 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [알림] 여름학기 개강파티 공지 댓글 10 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=668

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=668', '2013-04-10 09:00:00+09'),
('webmaster', 'YB', 'notice', '[안내] 한국어 교실 강사 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=667

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=667', '2013-04-08 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 2013년 5월 고텐시타 체육관 이용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=666

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=666', '2013-04-02 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제 1회 정기총회 회의록', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=665

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=665', '2013-04-02 09:00:00+09'),
('webmaster', 'YB', 'notice', '[행사] [알림] 여름학기 개강파티 날짜, 장소 공지 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=661

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=661', '2013-03-28 09:00:00+09'),
('webmaster', 'YB', 'notice', '[안내] [다시알림] 홍정국 교수님 환송회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=660

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=660', '2013-03-27 09:00:00+09'),
('webmaster', 'YB', 'notice', '[안내] [알림] 홍정국 교수님 환송회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=659

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=659', '2013-03-23 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2013년도 동경대학 한국인 학생회 1차 임원총회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=658

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=658', '2013-03-13 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제41기 학생회 임원 모집 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=651

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=651', '2013-02-18 09:00:00+09'),
('변익주', 'YB', 'notice', '[학생회] 2013년도 제41기 동경대학 한국인 학생회 학생회장 취임사 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=649

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=649', '2013-02-17 09:00:00+09'),
('이원균', 'YB', 'notice', '[학생회] 제40기 학생회장 퇴임인사 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=648

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=648', '2013-02-17 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제41기 학생회 학생회장 선거 결과 발표 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=643

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=643', '2013-02-15 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 선거관리위원회에서 알려드립니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=640

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=640', '2013-02-14 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2013 한국인 학생회 학생회장 후보자 공청회 자료 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=637

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=637', '2013-02-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'notice', '[학생회] [투표소 안내] 2013 한국인학생회 학생회장 선거', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=636

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=636', '2013-02-12 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] [후보자와의 대화] 게시판 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=635

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=635', '2013-02-09 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2013 한국인 학생회 학생회장 후보자 공청회 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=634

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=634', '2013-02-07 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2013 한국인 학생회 학생회장 후보 소개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=632

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=632', '2013-02-06 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] Bridge Asia Foundation 第25回 留学生交流会', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=631

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=631', '2013-02-05 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공지] 2013년 한국인 학생회 학생회장 후보등록 공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=628

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=628', '2013-01-20 09:00:00+09'),
('박형원', 'YB', 'notice', '[안내] [공지] 2013년 코마바 캠퍼스 신년회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=627

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=627', '2013-01-17 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] 第四回 在日韓国科学技術者協会 合同分科会（予定）', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=626

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=626', '2013-01-11 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] 동경대학 총장상 모집안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=625

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=625', '2012-12-14 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] 한일경제심포지움 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=624

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=624', '2012-11-14 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] 소득세 면제 관련 (한일조세조약) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=621

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=621', '2012-11-02 09:00:00+09'),
('정헌욱', 'YB', 'notice', '[행사] 2012년 체육대회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=620

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=620', '2012-10-29 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] 고급 이공계 인력 정책개선을 위한 해외 유학생 및 신진인력 실태조사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=619

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=619', '2012-10-29 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] 안내사항 - 국제센터', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=618

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=618', '2012-10-17 09:00:00+09'),
('wklee', 'YB', 'notice', '[행사] 2012 겨울학기 개강파티 및 신입생 환영회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=617

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=617', '2012-10-10 09:00:00+09'),
('녹차벌레', 'YB', 'notice', '[학생회] 동경대학 재일한국인 동창회 창립총회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=616

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=616', '2012-10-09 09:00:00+09'),
('leig8n', 'YB', 'notice', '[안내] 10월 고텐시타 체육관 이용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=615

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=615', '2012-10-08 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] 10월오리엔테이션 및 세미나 안내ㅡ新入生向け・在学生向けの10月中のオリエンテーション・セミナーの案内 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=612

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=612', '2012-09-24 09:00:00+09'),
('박형원', 'YB', 'notice', '[안내] 12월 대선 부재자 투표 신고 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=609

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=609', '2012-09-10 09:00:00+09'),
('leig8n', 'YB', 'notice', '[안내] 9월 고텐시타 체육관 한국인 전용이용 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=606

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=606', '2012-09-06 09:00:00+09'),
('leig8n', 'YB', 'notice', '[안내] <<고텐시타 체육관 한국인 전용이용>> 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=602

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=602', '2012-08-06 09:00:00+09'),
('leig8n', 'YB', 'notice', '[안내] 롯데그룹에서 인턴을 원하시는 분들을 모집합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=601

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=601', '2012-07-18 09:00:00+09'),
('홍보국장', 'YB', 'notice', '[안내] [한일국제심포지엄] 방송의 공정성이란 무엇인가?', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=596

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=596', '2012-07-10 09:00:00+09'),
('바이오동익', 'YB', 'notice', '[행사] [7/20] 한국어 스피치대회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=595

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=595', '2012-07-05 09:00:00+09'),
('leig8n', 'YB', 'notice', '[안내] 7월 20일 고텐시타에서 운동해요. 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=594

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=594', '2012-07-03 09:00:00+09'),
('홍보국장', 'YB', 'notice', '[안내] [국제 컴퍼런스 설명회 안내] ICISTS-KAIST 2012', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=593

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=593', '2012-06-22 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [ 동경대학교 한국인 학생회 주최 아이디어 공모전 - 연중 (365일)상시 접수중 ]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=592

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=592', '2012-06-21 09:00:00+09'),
('바이오동익', 'YB', 'notice', '[안내] [강연회 안내] 색을 알면, 인생이 바뀝니다! 컬러 코디네이터 카도소노 후미코 상 강연회 안내 (06/26) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=590

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=590', '2012-06-20 09:00:00+09'),
('wklee', 'YB', 'notice', '[안내] 外国人卒業生・研究員・教職員の集い (Meeting for the International Alumni, Re…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=589

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=589', '2012-06-15 09:00:00+09'),
('wklee', 'YB', 'notice', '[행사] 소모임 소개 업데이트 관련 (소모임 대표분들께)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=588

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=588', '2012-05-10 09:00:00+09'),
('조민', 'YB', 'notice', '[안내] 국비 출신 한국인 유학생 여러분께', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=585

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=585', '2012-04-23 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 일본 지진 성금 전달', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=584

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=584', '2012-04-23 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] information for students,researchers and families (Internati…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=582

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=582', '2012-04-19 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 게시판 추가 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=579

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=579', '2012-04-18 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] (2차 공지-경품 안내) 2012년 봄학기 개강파티 및 신입생환영회 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=574

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=574', '2012-04-17 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] コモングランド・プロジェクト活動報告会 (2012年4月28日(土))', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=573

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=573', '2012-04-17 09:00:00+09'),
('wklee', 'YB', 'notice', '[행사] 소모임 대표분들께 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=572

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=572', '2012-04-15 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 2012년 봄학기 개강파티 및 신입생환영회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=571

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=571', '2012-04-12 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 2012년 해외 상생기자단 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=569

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=569', '2012-04-12 09:00:00+09'),
('바이오동익', 'YB', 'notice', '[안내] 2012년도 여름학기 한국어 클래스 개강 안내 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=568

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=568', '2012-04-11 09:00:00+09'),
('바이오동익', 'YB', 'notice', '[행사] [동경한국교육원 주최] 4월 한국어교사 스터디 연수모임 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=567

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=567', '2012-04-10 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 2012년도 현대한국센터 한국어 교실 안내 및 강사 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=566

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=566', '2012-04-04 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 재일본대학 이공계계열 대학원생(연구생) 현황 파악 협조 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=560

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=560', '2012-03-06 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2012년 동경대 한국인 학생회 학생회장 당선 인사 (더불어 학생회 임원 지원 및 추천) 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=556

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=556', '2012-03-02 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 제39기 학생회장 퇴임인사 댓글 7 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=549

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=549', '2012-02-28 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 일본지진 성금 모금 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=546

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=546', '2012-02-26 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2012년 제 40기 동경대 한국인 학생회 학생회장 선거결과 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=544

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=544', '2012-02-19 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2011년도 39기 동경대학교 한국인 학생회 정기총회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=543

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=543', '2012-02-17 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공지사항] 2012년도 제40기 동경대학교 한국인 학생회 회장 선거 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=541

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=541', '2012-02-14 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 동문회 명부용 재학생 연락처 조사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=540

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=540', '2012-02-08 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 2012년 총선/대선의 부재자 신고를 학내에서 실시합니다. 댓글 9 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=530

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=530', '2012-01-27 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공지]第三回 在日韓国科学技術者協会 合同分科会 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=527

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=527', '2012-01-24 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공지]2012년도 한국인학생회 학생회장 선거공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=526

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=526', '2012-01-23 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [안내] TOP CAREER 2013 기술계 외국인 유학생 한정 이벤트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=525

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=525', '2011-12-16 09:00:00+09'),
('나노', 'YB', 'notice', '[학생회] 재외부재자신고 및 재외선거인 등록신청 (2011.11.13~2012.2.11) 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=519

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=519', '2011-12-07 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공지] 2011년도 한국인 학생회 가을체육대회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=518

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=518', '2011-10-29 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] Special Lecture by the U.S. Deputy Secretary of State 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=516

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=516', '2011-10-24 09:00:00+09'),
('jiney0824', 'YB', 'notice', '[안내] 한국어클래스 F/W 안내 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=512

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=512', '2011-10-10 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공지] 2011년도 한국인학생회 가을학기 개강파티 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=509

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=509', '2011-10-05 09:00:00+09'),
('재료이창준', 'YB', 'notice', '[안내] [공지]김도연 국가과학기술위원장 강연 안내 (10월4일) 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=505

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=505', '2011-09-28 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [안내] 10월 6일, 신입생 오리엔테이션', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=504

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=504', '2011-09-17 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [안내] 2011 Asia Woment Eco-science Forum (2011 AWESF) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=501

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=501', '2011-08-30 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [동경대학 글로벌 30 일본유학설명회(서울 경희대, 9/3-4) 볼란티어 모집 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=499

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=499', '2011-08-23 09:00:00+09'),
('juliana', 'YB', 'notice', '[안내] [[동경대학 글로벌30 일본유학설명회 안내]] 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=497

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=497', '2011-07-26 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [안내] 2011년 관동지역 한국어교원연수', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=496

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=496', '2011-07-22 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [안내]Career day (Postdoc 연구자를 위한 국제적 지원제도)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=495

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=495', '2011-06-29 09:00:00+09'),
('재료이창준', 'YB', 'notice', '[안내] (6/28) 동아시아안전공동체 국제심포지엄 준비워크샾 안내 (현대한국연구센터)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=494

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=494', '2011-06-26 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] ”The March 11th 2011, Great Earthquake in Eastern Japan” 세미나…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=493

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=493', '2011-06-15 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [추가안내] 2011년도 봄학기 개강모임 및 신입생환영회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=492

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=492', '2011-05-16 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [안내] 개강모임 당일 날, 원자력과 방사선에 관한 강연이 있습니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=491

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=491', '2011-05-16 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [공지] 2011년 봄학기 개강파티 및 신입생 환영회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=489

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=489', '2011-05-12 09:00:00+09'),
('재료이창준', 'YB', 'notice', '[안내] [공지] 한국어 교실 안내 (5월17일 개강)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=488

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=488', '2011-05-05 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공지] 동일본 대지진 피해 성금모금 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=484

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=484', '2011-04-28 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2011년도 제39기 동경대학교 한국인 학생회 인사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=483

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=483', '2011-04-23 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공지] 학사일정 변경 및 방사선 최근 정보 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=480

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=480', '2011-03-26 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 동북지방 지진대응에 관해서', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=478

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=478', '2011-03-17 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [모집] 지진피해자 지원금 모금활동의 자원봉사자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=476

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=476', '2011-03-16 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [안내] 동경전력 계획정전', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=469

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=469', '2011-03-14 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [안내] 지진관련 정보 (수시 업데이트중) 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=467

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=467', '2011-03-13 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [조사] 지진으로 인한 유학생들의 피해상황 조사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=466

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=466', '2011-03-12 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [안내] 한국 동경대학 총동문회 모임 3월 18일(금) 18:00 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=461

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=461', '2011-03-07 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 학생회장 퇴임인사 댓글 8 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=444

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=444', '2011-02-28 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공지] 학생회장 선거결과 공지 댓글 16 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=434

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=434', '2011-02-20 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공지] 동경대학교 한국인 학생회 배너 공모전 결과 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=433

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=433', '2011-02-18 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [여론조사] 동경대학교 한국인 학생회 홈페이지가 유용하고 도움이 되신다고 생각하십니까?', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=427

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=427', '2011-02-11 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [이벤트] Bridge Asia Foundation주최 유학생 교류회 참가자 모집 공고 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=426

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=426', '2011-02-10 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [2월 26일] 제2회 재일한국기술자 협회 합동분과회 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=425

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=425', '2011-02-08 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [학생회장 후보등록] 2011년 동경대학교 한국인 학생회 회장선거 후보등록 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=424

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=424', '2011-01-23 09:00:00+09'),
('소영e', 'YB', 'notice', '[안내] [안내] 졸업생 동문회 2011년 신년회: 1월 21일 19:30 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=422

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=422', '2011-01-20 09:00:00+09'),
('austen', 'YB', 'notice', '[안내] [공지] 졸업생 협조요청ㅣ韓国人の日系民間企業への就職・定着促進のための調査', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=421

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=421', '2010-12-31 09:00:00+09'),
('김민선', 'YB', 'notice', '[안내] [안내] 한국어 교사연수회@도쿄대 개최안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=387

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=387', '2010-11-28 09:00:00+09'),
('호기미', 'YB', 'notice', '[안내] [안내] 강상중 교수님의 특별 강연회 안내 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=379

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=379', '2010-11-25 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [안내] 2010년 망년회 행사 안내 (동경대학교 한국인 학생회 주최) 댓글 35 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=374

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=374', '2010-11-25 09:00:00+09'),
('착한어린이', 'YB', 'notice', '[안내] [안내]"21세기 정보사회와 민주주의" 심포지움 개최 소식', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=370

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=370', '2010-11-10 09:00:00+09'),
('임화진', 'YB', 'notice', '[학생회] [안내] 코마바제 한국인 학생회 출점!!!<점포명: 泣けるブルコギ> 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=368

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=368', '2010-11-10 09:00:00+09'),
('호기미', 'YB', 'notice', '[안내] [경축] 도쿄대 스토리 2010년 문화체육관광부 우수교양도서로 선정!!! 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=363

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=363', '2010-11-08 09:00:00+09'),
('austen', 'YB', 'notice', '[안내] [안내] 몽골 대통령 강연회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=362

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=362', '2010-11-08 09:00:00+09'),
('김민선', 'YB', 'notice', '[안내] [안내] 한상진 전 서울대 교수님 강연회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=359

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=359', '2010-11-03 09:00:00+09'),
('김민선', 'YB', 'notice', '[안내] [안내] 정운찬 전총리와의 도쿄대 학생 세션에 초대합니다. 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=355

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=355', '2010-10-26 09:00:00+09'),
('지기지기', 'YB', 'notice', '[안내] [안내] 유학생&외국인연구원의 가족을 위한 생활 오리엔테이션', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=354

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=354', '2009-11-03 09:00:00+09'),
('김정일', 'YB', 'notice', '[행사] [재공지] 코마바 리서치캠퍼스 바베큐파티!! 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=352

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=352', '2009-11-01 09:00:00+09'),
('지기지기', 'YB', 'notice', '[안내] [안내] MBC 예능프로그램 "스타오디션 위대한탄생"에 끼 있으신 분들 많이 지원해 주세요^^ 댓글 18 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=334

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=334', '2009-10-26 09:00:00+09'),
('소영e', 'YB', 'notice', '[안내] [안내] 韓国語クラスの概要と説明会のご案内 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=327

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=327', '2008-10-28 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [공지] 동경대 홈커밍데이 (외국인 동창생들의 모임) 안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=320

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=320', '2008-10-25 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공지] 2010년 가을, 홈페이지 우수 이용자 발표 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=314

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=314', '2008-10-20 09:00:00+09'),
('Mint', 'YB', 'notice', '[안내] [공지] 한국어 강좌 강사 모집에 대한 안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=312

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=312', '2008-10-12 09:00:00+09'),
('김연아', 'YB', 'notice', '[행사] [공지] 2010년 가을학기 개강파티 및 신입생 환영회 공지 댓글 10 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=289

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=289', '2008-10-03 09:00:00+09'),
('니케니케', 'YB', 'notice', '[학생회] [공지] 학생회 배너 공모전 안내 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=288

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=288', '2008-10-03 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공고] 학생회 임원 모집 안내 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=286

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=286', '2008-09-26 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공지] 아이디어 공모전 안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=276

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=276', '2008-09-12 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 선배님들의 친목회 (일본 동경)‏ 댓글 9 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=275

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=275', '2008-09-08 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공지] 일본 동문회 안내 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=250

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=250', '2008-06-15 09:00:00+09'),
('희정', 'YB', 'notice', '[안내] [공지] KOSEN 홈페이지 가입요청 댓글 7 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=219

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=219', '2008-06-02 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] "경축" 도쿄대 스토리 출간안내 댓글 24 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=212

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=212', '2008-05-31 09:00:00+09'),
('니케니케', 'YB', 'notice', '[안내] 홈페이지 포인트 초기화 안내 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=197

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=197', '2008-05-01 09:00:00+09'),
('니케니케', 'YB', 'notice', '[안내] [포인트 고득점자 상품안내 ] 홈페이지 활동 우수자 발표 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=188

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=188', '2008-04-21 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [개강파티 최종 공지] 2010년 봄학기 개강파티 및 신입생 환영회 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=186

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=186', '2008-04-10 09:00:00+09'),
('xefri', 'YB', 'notice', '[안내] [공지] 등업관련 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=179

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=179', '2008-03-24 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공고] 2010년도 동경대 한국인 학생회 임원 지원 및 추천 안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=169

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=169', '2008-02-27 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2010년도 동경대 한국인 학생회 학생회장 당선자의 당선인사 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=166

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=166', '2008-02-25 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] 재일과협 동경대 합동 분과 연구발표회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=164

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=164', '2008-02-24 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 학생회장 퇴임 인사 댓글 14 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=149

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=149', '2008-02-22 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [공지] 학생회장 선거결과 공지 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=147

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=147', '2008-02-21 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [요청] 회원 개인정보 업데이트 요청 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=141

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=141', '2008-02-17 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] Bridge Asia Foundation 第23回 留学生交流会 参加入場券 댓글 8 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=136

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=136', '2008-02-09 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [동경대스토리] 결과발표', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=135

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=135', '2008-02-08 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] [학생회장 후보등록] 2010년 동경대 한국인 학생회 회장선거 후보등록 안내 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=129

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=129', '2008-01-18 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [동경대스토리] 출판안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=127

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=127', '2008-01-06 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [참가 희망자] Bridge Asia Foundation 댓글 10 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=117

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=117', '2007-12-02 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공지] 홈페이지 리뉴얼 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=116

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=116', '2007-12-02 09:00:00+09'),
('이우진', 'YB', 'notice', '[행사] 6개대학 친선 모임의 취소 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=112

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=112', '2007-11-09 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 6개대학 친선 모임', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=111

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=111', '2007-11-04 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [알림]동경대 스토리 원고 마감 연장안내 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=110

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=110', '2007-11-02 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [감사의말] 개강파티 및 신입생 환영회 감사 인사 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=102

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=102', '2007-10-25 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [공고] 가을 개강파티 및 신입생 환영회 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=90

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=90', '2007-10-16 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [당일 추첨 상품안내] 행사 당일 추첨 경품 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=89

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=89', '2007-10-16 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [포인트 고득점자 상품안내 ]가을 개강파티 및 신입생 환영회 홈페이지 활동 우수자 발표 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=88

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=88', '2007-10-16 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [출판계획] 도쿄대 스토리 출판에 졸업생 참여', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=85

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=85', '2007-10-14 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [개강파티 예비공지] 가을학기 개강파티 및 신입생 환영회 예비공지 댓글 10 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=73

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=73', '2007-10-11 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공고]도쿄대 스토리 저자 공개모집 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=65

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=65', '2007-09-30 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [출판계획]도쿄대학교 스토리(가제) 출판계획 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=60

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=60', '2007-09-20 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [공지사항]KOSEN 등록 결과에 대한 보고와 부탁의 말씀 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=54

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=54', '2007-09-18 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [설문조사] 도쿄 유학생 자원봉사에 대한 유학생들의 생각에 대하여..... 댓글 11 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=34

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=34', '2007-08-26 09:00:00+09'),
('xefri', 'YB', 'notice', '[안내] [공지사항] KOSEN 홈페이지 가입 요청 댓글 26 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=23

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=23', '2007-08-20 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [홈페이지 이용안내] 홈페이지가 열리지 않는 문제', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=22

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=22', '2007-08-17 09:00:00+09'),
('규태', 'YB', 'notice', '[안내] 홍정국 교수님으로부터의 공지사항입니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=19

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=19', '2007-08-11 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [심포지움] 외국인 유학생, 연구자 일본정착 국제심포지움', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=18

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=18', '2007-08-05 09:00:00+09'),
('KSA', 'YB', 'notice', '[안내] [충청북도] 아이디어챌린지2009 대학(원)생 공모전', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=17

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=17', '2007-07-29 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 학생회 홈페이지를 오픈하며......', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=15

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=15', '2007-07-22 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 동경대학교 한국인 학생회 홈페이지 오픈 임박', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=14

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=14', '2007-07-22 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] 2009년 재일 유학생 연합회 주최 볼링대회!!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=13

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=13', '2007-07-22 09:00:00+09'),
('KSA', 'YB', 'notice', '[행사] [최종공지] 2009 / 05 / 23 토요일 야유회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=12

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=12', '2007-07-22 09:00:00+09'),
('KSA', 'YB', 'notice', '[학생회] 2009년 동경대학교 한국인 학생회 피크닉 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=11

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_01&wr_id=11', '2007-07-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [차병원·차바이오그룹] 임원/경력 공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1836

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1836', '2026-06-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 채용 공고 안내) LG전자 VS사업본부 텔레매틱스(Telematics) 관련 일본 유학생 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1835

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1835', '2026-06-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 컨설팅펌 입사대비 7월 Class 개강 및 이벤트 안내 (26.7.4(토) 개강 예정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1834

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1834', '2026-05-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [덴소] AI연구소 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1833

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1833', '2026-05-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 한화생명 드림플러스 인베스터 클럽 2기 모집 (~5/18)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1832

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1832', '2026-04-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 2026 한화오션 온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1831

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1831', '2026-03-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스] ''26년 상반기 온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1830

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1830', '2026-03-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성화재] 회사 소개/ 채용 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1829

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1829', '2026-02-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 DS부문] ''26년 해외 온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1828

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1828', '2026-02-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성화재] ''26년1월 경력사원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1827

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1827', '2026-01-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [보스반도체] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1826

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1826', '2026-01-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [인터엑스] 2026년 전문연구요원(병역특례) 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1825

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1825', '2026-01-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [플랩풋볼] 도쿄대학교 학우분들을 위한 글로벌 프로젝트를 제안드립니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1824

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1824', '2026-01-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey & Company] 2026 Business Analyst Intern 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1823

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1823', '2026-01-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] Academia Meets Strategy: A Career in Consulting', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1822

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1822', '2026-01-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 티르티르 재팬 (D & ACE) 채용 포지션 (정규직)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1821

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1821', '2025-11-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 국도화학 해외영업 직무 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1820

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1820', '2025-11-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 보건의료, 바이오 분야와 관련된 글로벌 공동연구 수요를 파악을 위한 설문조사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1817

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1817', '2025-11-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 2025 하반기 AMOREPACIFIC GROUP 신입사원 수시채용 (~10/19)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1816

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1816', '2025-10-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [차병원·바이오그룹] 2025 신입/Junior 대규모 공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1815

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1815', '2025-10-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [KOTRA 도쿄] 온라인 JOB FAIR 가을 및 부대행사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1814

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1814', '2025-10-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [기획재정부 주최 – 국제금융기구 채용설명회 · 미주개발은행 채용설명회]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1813

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1813', '2025-10-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] 2025 하반기 SK AX AI x Japan 채용연계형 인턴십', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1809

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1809', '2025-10-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] CJ주식회사 SID Associate Consultant(신입) 모집 (~10/13)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1805

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1805', '2025-10-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 2025 Toss Ads ML Engineer 신입 집중 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1804

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1804', '2025-09-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [롯데케미칼 첨단소재사업] 2025년 Global Talent Recruitment (~10.12(일))', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1803

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1803', '2025-09-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG경영연구원] ''25년 신입연구원 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1802

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1802', '2025-09-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 2025 CJ그룹 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1801

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1801', '2025-09-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 2025년 삼성금융사 해외 석박사 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1800

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1800', '2025-09-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 2025 하반기 유니클로 신입사원(UMC) 채용 (~9/30)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1799

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1799', '2025-09-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 2025년 2차 과학기술분야 정부출연연구기관 온라인 공동채용 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1798

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1798', '2025-08-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성화재] 2025년 하반기 신입 채용 온라인 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1797

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1797', '2025-08-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성SDI] 박사/장학생 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1796

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1796', '2025-08-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [TPC Internet 일본팀 채용 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1795

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1795', '2025-08-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] McKinsey & Company Korea Office - "Inside Financial Services…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1794

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1794', '2025-08-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [Roland Berger] 2025년 상반기 정규직 전환형 RA인턴 공개채용 (~12/29)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1793

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1793', '2025-06-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Kearney Korea] 2025 하반기 Business Analyst 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1792

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1792', '2025-06-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [FRL Korea] 유니클로 일본 유학생 채용 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1785

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1785', '2025-05-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성디스플레이] ''25년 상반기 일본 캠퍼스 리쿠르팅 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1784

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1784', '2025-05-02 09:00:00+09'),
('이한주', 'YB', 'jobs', '[인턴] [덴소 인턴] AI연구소 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1783

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1783', '2025-04-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG이노텍] 2025년 채용 연계형 Global Internship - 해외대학 유학생', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1782

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1782', '2025-04-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [현대모비스] 2025 여름방학 장학 전환 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1781

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1781', '2025-04-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG이노텍] 2025년 해외 R&D 우수 인재(석/박사 신입 및 산학 장학생) 채용 (~5/2까지)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1777

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1777', '2025-04-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [통일부] 재외동포 통일문화행사 서포터즈 2기 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1776

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1776', '2025-04-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [포스코] 2025년 해외채용 공고 및 채용설명회 개최', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1775

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1775', '2025-04-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] Exciting Opportunity with McKinsey Next Generation Wom…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1773

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1773', '2025-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [포스코] 2025년 포스코 신입·경력 해외채용 (미국/캐나다/일본)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1772

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1772', '2025-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG에너지솔루션] 2025년 일본지역 R&D 인재Pool 등록', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1771

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1771', '2025-04-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey Korea] Event Invitation : Get to Know McKinsey Ses…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1770

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1770', '2025-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [현대자동차] 2025 해외대 학/석사 인턴십', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1769

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1769', '2025-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대자동차] 2025 해외 이공계 박사채용 개요', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1768

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1768', '2025-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【LG전자】25년 상반기 해외 R&D 석박사 인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1767

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1767', '2025-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 동아대학교 전임교원 공채 홍보 요청 건', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1766

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1766', '2025-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [BAT로스만스] 해외 인재 대상 특별 채용 행사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1765

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1765', '2025-03-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대무벡스] 전문연구요원(병역특례) 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1764

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1764', '2025-03-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [한국투자증권] FY2025 비대면 채용설명회 (해외대 대상)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1763

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1763', '2025-03-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스] ''25년 상반기 온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1762

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1762', '2025-03-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NAVER] 2025 팀네이버 신입 공채 (~3.17 월 오전 11시)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1761

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1761', '2025-03-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [2025년 1차 과학기술분야 정부출연연구기관 공동채용 설명회 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1760

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1760', '2025-03-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 미국 이차전지소재기업 소일렉트 채용정보（Postdoc・Battery Engineer）', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1759

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1759', '2025-03-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] Careertalk : Global Career Fair 2025 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1758

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1758', '2025-02-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성벤처투자 일본어 능통 인턴 구인 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1757

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1757', '2025-02-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] McKinsey & Company Korea - 2025 McKinsey Business Anal…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1756

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1756', '2025-01-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] *채용행사 일정 변경*[한화에어로스페이스] 2025년 글로벌 신입사원 채용(~01.31)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1755

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1755', '2025-01-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey Student Researcher 모집 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1753

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1753', '2025-01-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Kearney Korea] 2025 Business Analyst 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1752

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1752', '2025-01-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국투자증권] FY2025 KIS Chat in Seoul', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1751

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1751', '2024-12-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ADL] 25/26년도 한/일 Bilingual 인재 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1750

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1750', '2024-12-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [Roland Berger] 2025년 상반기 정규직 전환형 RA인턴 공개채용 (~12/29)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1749

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1749', '2024-12-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [넘버즈인, fwee] 비나우 일본마케터(온/오프라인) 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1748

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1748', '2024-12-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Invitation] Meet McKinsey Seoul (Virtual Session)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1747

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1747', '2024-12-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Kearney Korea] 2025 Business Analyst 공개채용 사전 홍보', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1746

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1746', '2024-12-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 2025 상반기 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1745

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1745', '2024-12-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Alvarez & Marsal] Project RA 채용 공고 (~11/22)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1744

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1744', '2024-11-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Hermès Korea] 2024 Retail Management Trainee 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1743

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1743', '2024-11-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Alvarez & Marsal] Project RA 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1742

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1742', '2024-11-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [카카오스타일] SNS 마케터 경력직 채용 (일본)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1741

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1741', '2024-11-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG경영연구원] ''24년 신입연구원 모집공고(~10/27 마감)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1740

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1740', '2024-10-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [기획재정부] 제16회 국제금융기구(World Bank, IMF 등) 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1739

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1739', '2024-10-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [카카오모빌리티] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1738

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1738', '2024-10-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [차병원·바이오그룹] 신입/Junior 대규모 공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1737

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1737', '2024-10-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [코오롱 FnC] 하반기 신입사원 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1736

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1736', '2024-10-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [AlphaSights] 일본 유학생 대상 Client Service Team 채용 및 설명회 안내 (도쿄 …', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1735

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1735', '2024-10-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한화호텔앤드리조트] 2024 한화그룹 서비스부문 신입사원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1734

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1734', '2024-10-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NH투자증권] 2025-2026년 해외대 신입사원 채용 (~10/11)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1733

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1733', '2024-10-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [RA모집] ISS RA Recruitment 2025 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1732

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1732', '2024-09-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [LS그룹] 신입/경력 수시 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1730

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1730', '2024-09-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [유니클로] 신입사원(UMC) 채용(~10/9)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1728

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1728', '2024-09-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대해상] 2024 대졸 신입사원 채용(일반/글로벌) (~10/4(금) 18:00)(KST)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1727

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1727', '2024-09-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] 【포스코】 ''24년 하반기 신입/경력 해외채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1726

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1726', '2024-09-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [현대자동차] 9월 신입·인턴 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1725

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1725', '2024-09-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [BAT] 2024 하반기 채용 안내 및 해외 우수인재 온라인 채용설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1721

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1721', '2024-09-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 15기 유엔협회세계연맹 한국대학생 대표단 – 해외 유학생 전형 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1718

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1718', '2024-09-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대제철] 2024 하반기 국내/해외 연구장학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1717

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1717', '2024-09-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [카카오모빌리티] 2024 주니어 개발자 영입', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1716

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1716', '2024-09-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스] ''24년도 하반기 3급 신입사원 채용공고 및 온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1715

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1715', '2024-09-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 삼성금융사 2024년 해외 석박사 채용 설명회 (생명,화재,카드,증권,자산)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1714

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1714', '2024-09-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【LG전자】 2024년 하반기 일본 R&D 인재 모집(산학 장학생)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1713

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1713', '2024-08-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성SDI] 기계/전기전자 및 S/W 직무 리크루팅 행사 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1712

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1712', '2024-08-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [AMOREPACIFIC] 2024 Entry-Level Recruitment_International Gr…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1711

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1711', '2024-08-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [이안손앤컴퍼니] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1706

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1706', '2024-07-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [슈피겐코리아] 채용연계형 인턴 공개채용 안내 (~07.28(일)까지)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1705

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1705', '2024-07-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey & Company Seoul Office] "Get to Know McKinsey Kore…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1704

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1704', '2024-07-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [대기업 IT 계열사 VNTG] 도쿄대학교 채용연계형 인턴 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1703

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1703', '2024-07-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [HD한국조선해양] 2024 해외 대학생 대상 하계 체험형 인턴 모집 (~07/06)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1702

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1702', '2024-06-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [트래블월렛] 일본법인 리드 채용 (경력직)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1701

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1701', '2024-06-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [CJ올리브영] 해외학부생 Summer Internship (체험형) 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1700

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1700', '2024-06-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [CJ제일제당] Global Frontier 인턴십 (해외대 유학생)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1699

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1699', '2024-06-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] McKinsey & Company Korea - 2024 하반기 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1698

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1698', '2024-06-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대자동차] 2024년 6월 신입 채용 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1697

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1697', '2024-05-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [LS그룹] 신입/경력 수시 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1696

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1696', '2024-05-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 2024년 2차 과학기술분야 정부출연연구기관 공동채용 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1695

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1695', '2024-05-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [HD한국조선해양] 2024 해외 대학생 대상 하계 체험형 인턴 모집 (~5/24)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1694

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1694', '2024-05-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] ★ 현대제철 in 도쿄대 캠퍼스 리크루팅 안내 ★ (리마인드)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1693

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1693', '2024-05-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] 리마인드 - [삼성생명] 2024년 해외경력(석박사) 인턴십 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1692

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1692', '2024-05-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 현대제철 in 도쿄대 캠퍼스 리크루팅 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1691

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1691', '2024-05-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 삼성전자 DS부문 티타임 행사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1690

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1690', '2024-05-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [맥킨지] 2024 채용 설명회 (Inside Financial Institutions Group)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1689

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1689', '2024-04-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 DS부문] Coffee Chat in Tokyo', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1688

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1688', '2024-04-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성생명] 2024년 해외경력(석박사) 인턴십 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1687

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1687', '2024-04-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [LS그룹] 4월 신입/경력 수시 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1686

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1686', '2024-04-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼양그룹] 2024년 4월 삼양그룹 신입사원 수시채용 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1684

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1684', '2024-04-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지&컴퍼니] 차세대 여성 리더 프로그램', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1681

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1681', '2024-04-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자] 2024년 상반기 LG전자 일본 R&D 우수 인재 채용 온라인 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1680

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1680', '2024-03-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성중공업] 미래사업 분야 경력사원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1679

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1679', '2024-03-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [한국투자증권] FY2024 해외 채용설명회 및 현장면접', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1678

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1678', '2024-03-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 Foundry사업부] Samsung Foundry Career Talk', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1677

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1677', '2024-03-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [LS그룹] 3월 신입/경력 수시 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1676

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1676', '2024-03-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성전자DX부문] 2024년 상반기 3급 신입사원 / 인턴십 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1675

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1675', '2024-03-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대제철] 2024년 상반기 현대제철 국내/해외 연구장학생 모집 (~3/24(일)(KST)까지)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1672

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1672', '2024-03-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성물산 상사부문] 2024년 상반기 신입사원 채용 및 대학생 인턴 모집(영업 / 기술영업 / 경영지원)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1671

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1671', '2024-03-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 포스코홀딩스 수소저탄소에너지연구소 설명회 및 채용상담', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1670

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1670', '2024-03-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NAVER] 2024 팀네이버 신입 공채 (~3.18 월 오전 11시)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1669

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1669', '2024-03-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG Display] ''24년 상반기 해외 석/박사 및 산학장학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1667

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1667', '2024-03-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] 2024년 현대자동차 3월 신입∙인턴 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1662

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1662', '2024-02-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 2024 McKinsey Business Analyst Intern 채용 공고 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1659

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1659', '2024-02-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [Line Ads] 인턴 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1658

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1658', '2024-01-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LINE Ads] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1657

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1657', '2024-01-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 DS] 글로벌 제조&인프라 총괄 오프라인(일본) 리쿠르팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1656

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1656', '2024-01-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성전자 DS부문] 경력채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1655

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1655', '2024-01-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [샤플앤컴퍼니] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1654

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1654', '2023-11-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대제철] 2023년 하반기 현대제철 국내/해외 연구장학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1653

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1653', '2023-11-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [(주)LS] 하반기 신입사원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1652

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1652', '2023-10-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG경영연구원] ''23 하반기 신입연구원 공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1651

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1651', '2023-10-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [파수] 23년 신입 공개 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1650

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1650', '2023-10-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NH농협은행] 23년 하반기 5급 신규직원 채용 (~10/27)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1649

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1649', '2023-10-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 DS] 글로벌 제조 &인프라총괄 사업부에 대한 설명과 채용 프로세스 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1648

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1648', '2023-10-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [원익그룹] 2023 원익그룹 신입사원 전직군 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1646

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1646', '2023-10-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [RA모집] ISS RA Recruitment', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1645

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1645', '2023-09-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NH투자증권] 2024-2025년 해외대 신입사원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1644

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1644', '2023-09-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LS전선] R&D 산학장학생 선발', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1643

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1643', '2023-09-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG Display] 2023년 하반기 전형', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1642

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1642', '2023-09-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [SK이노베이션] 글로벌 메타버스 채용 상담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1641

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1641', '2023-09-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성SDI] 하반기 신입사원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1637

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1637', '2023-09-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 DX부문] 2023년 하반기 채용 직무상담 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1636

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1636', '2023-09-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스] ''23년 하반기 온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1635

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1635', '2023-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [한화솔루션] 2023 한화솔루션 온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1634

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1634', '2023-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성디스플레이] 캠퍼스 리크루팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1633

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1633', '2023-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 「2023 엔씨소프트 신입사원 공개채용」', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1632

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1632', '2023-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국전자통신연구원(ETRI)] 정규직 공개채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1631

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1631', '2023-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성SDI] 석/박사 및 경력채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1630

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1630', '2023-08-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [롯데케미칼] 해외 석∙박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1629

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1629', '2023-08-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [8/25 포스코홀딩스 미래기술연구원 간담회 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1628

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1628', '2023-08-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [맥킨지] 2023 채용 설명회 (해외대 대상)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1627

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1627', '2023-07-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 2023 McKinsey 하반기 정규 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1626

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1626', '2023-06-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [2023 한국투자증권 해외대 채용연계형 인턴 공개 채용 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1625

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1625', '2023-06-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 DS부문 학내 커리어 상담 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1621

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1621', '2023-06-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [MORAI 전문연구요원 채용]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1620

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1620', '2023-05-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Roland Berger 신입 공채]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1619

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1619', '2023-05-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [국토연구원 2023년 연구직(부연구위원) 공개채용]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1618

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1618', '2023-05-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [CJ제일제당(식품사업/공통부문)] 2023년 상반기 채용연계형 Summer Internship(해외대 전형…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1617

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1617', '2023-05-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [아모레퍼시픽] 2023년 글로벌 인재 채용 (~5/22)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1616

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1616', '2023-05-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 【리마인드】 LG전자) 도쿄대학 캠퍼스 리쿠르팅 4월 28일(금) 14:00~', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1615

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1615', '2023-04-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [유니클로] 2023 유니클로(한국) 신입사원 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1614

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1614', '2023-04-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] LG전자 VS사업본부) 23년 일본 유학생(학사) 인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1613

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1613', '2023-04-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 【LG전자 온라인 채용설명회】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1611

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1611', '2023-04-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자] 2023년 상반기 일본 R&D 석/박사 인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1610

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1610', '2023-04-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Kearney Korea] 2023 Business Analyst Recruiting / 대졸 신입공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1609

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1609', '2023-03-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대제철] 2023 현대제철 국내/해외 연구장학생 모집(~4/2(일))', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1608

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1608', '2023-03-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [포스코 인터내셔널 일본 신입사원 채용공고 마감연장 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1607

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1607', '2023-03-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NH투자증권] 2023 상반기 해외대 신입사원 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1606

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1606', '2023-03-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성전자DS] 글로벌 제조&인프라 총괄 경력 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1605

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1605', '2023-03-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스] ''23년 상반기 온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1604

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1604', '2023-03-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국전자통신연구원] 2023년 2차 정규직 및 실무직 공개채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1603

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1603', '2023-03-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성SDI] 2023년 상반기 박사 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1602

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1602', '2023-03-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 반도체사업부 소수 면담회 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1601

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1601', '2023-02-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [SK주식회사머티리얼즈 일본사업개발 전문인력 모집안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1600

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1600', '2023-02-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [포스코 인터내셔널 일본 해외채용 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1599

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1599', '2023-02-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [포스코] ''23년 상반기 신입/경력사원 해외채용 서류접수 안내 (2.20~3.10)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1598

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1598', '2023-02-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG Display] 2023년 상반기 해외 석/박사 및 산학장학생 모집 & 채용설명회 진행', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1597

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1597', '2023-02-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [MORAI 전문연구요원 채용안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1596

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1596', '2023-02-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [포스코 23년 상반기 해외채용 사전안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1595

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1595', '2023-02-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한화생명, 한화생명금융서비스 채용상담 홍보]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1594

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1594', '2023-02-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [McKinsey Summer 인턴 채용 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1593

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1593', '2023-02-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기 해외박사 채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1592

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1592', '2023-02-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한화생명 신입사원 채용홍보]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1591

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1591', '2023-02-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Roland Berger 유럽계 컨설팅사 project RA 채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1590

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1590', '2023-02-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] (수정)[SK주식회사머티리얼즈 채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1589

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1589', '2023-01-31 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 삼성전자 DS부문 리쿠르팅 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1587

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1587', '2023-01-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [인재TITLE] Beyless 전문연구요원(병역특례) 자율주행 AI 연구개발자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1586

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1586', '2023-01-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey & Company Korea] 2023 McKinsey 상반기 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1585

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1585', '2022-12-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [(주)인텔리안테크놀로지스 신규 직원 채용 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1584

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1584', '2022-12-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [八戸工業高等専門学校] 교원(조교) 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1583

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1583', '2022-11-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [㈜한화/모멘텀 인턴십 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1582

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1582', '2022-11-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [미래에셋자산운용 2022년 하반기 신입사원 채용]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1581

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1581', '2022-09-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성디스플레이 연구소 캠퍼스 리쿠르팅 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1580

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1580', '2022-09-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey & Company Next Women in Operations virtual worksho…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1578

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1578', '2022-09-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG경영연구원 22년 신입연구원 채용 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1577

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1577', '2022-09-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG디스플레이 Career day]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1576

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1576', '2022-09-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ISS] 2023년 Research Assistant 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1575

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1575', '2022-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스 22년 하반기 온라인 채용설명회]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1574

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1574', '2022-09-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국전자통신연구원] 2023년 1차 정규직 및 실무직 공개채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1573

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1573', '2022-09-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [2022년 삼성화재 석박사 인턴십 모집 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1572

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1572', '2022-09-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [포스코] ''22년 하반기 신입/경력사원 해외채용 안내''', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1570

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1570', '2022-09-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NH투자증권] 2023-2024 NH투자증권 해외대 신입사원 채용(~9/16)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1568

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1568', '2022-08-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [2022 한국투자증권 채용연계형 해외대 인턴 공개채용 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1567

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1567', '2022-07-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [2022 McKinsey 하반기 채용 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1566

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1566', '2022-06-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ISS TOKYO] 2022 한국 주주총회 시즌 Reseach Assistant 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1565

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1565', '2021-12-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [기업 관계자 분들께] 도쿄대학교 채용공고 홍보에 관련하여', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1564

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1564', '2021-12-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ISS] 리서치 어시스턴트를 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1563

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1563', '2021-11-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [SK이노베이션]일본 Global R&D 경력사원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1562

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1562', '2021-09-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성화재] 글로벌 석박사 공채 · 인턴십 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1561

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1561', '2021-09-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자CE/IM] 21년 하반기 신입채용 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1559

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1559', '2021-09-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ISS] 2022 Research Assistant 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1558

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1558', '2021-09-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG디스플레이]2021년 하반기 석박사 장학생 모집(9/3~9/23)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1557

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1557', '2021-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스] ''21년 하반기 온라인 채용설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1556

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1556', '2021-09-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성증권] 2021년 삼성증권 해외석박사 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1555

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1555', '2021-09-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG경제연구원]2021신입연구원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1554

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1554', '2021-09-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [SK이노베이션] 석/박사/포닥 채용 공고 & 1:1 온라인 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1553

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1553', '2021-09-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [EY-Parthenon Strategy] 2021년도 춘기 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1552

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1552', '2021-08-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국표준과학연구원 (KRISS)] 멀티스케일길이측정팀 박사후 연구원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1551

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1551', '2021-08-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [SK이노베이션] 차세대배터리 연구개발(R&D) 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1550

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1550', '2021-08-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【LG전자】채용 이벤트 안내 : 하이엘지(메타버스)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1549

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1549', '2021-08-24 09:00:00+09'),
('김인기', 'YB', 'jobs', '[신입] [삼성전자 생산기술연구소] 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1548

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1548', '2021-08-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG chem] 2021 해외 R&D 석박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1547

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1547', '2021-06-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국전자통신연구원(ETRI)] 2021년 3차 정규직(연구직, 행정직) 공개채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1546

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1546', '2021-06-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LINE+] 채용공고 게시', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1545

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1545', '2021-06-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG생활건강] 브랜드 마케팅 상시 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1544

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1544', '2021-06-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [슈피겐코리아] 해외영업/해외마케팅 일본 담당자 채용의 건', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1543

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1543', '2021-06-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【LG전자】채용공고 및 온라인 채용 상담 관련 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1542

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1542', '2021-06-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [이수그룹]2021 이수그룹 채용연계형 인턴십 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1541

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1541', '2021-05-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자DS] 삼성전자 DS부문 글로벌인프라총괄 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1540

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1540', '2021-05-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [sk 이노베이션] 차세대 배터리 연구개발(R&D)채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1539

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1539', '2021-05-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [엘오디 코리아] Language Instruction Onsite manager 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1538

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1538', '2021-05-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대자동차] 2021 현대자동차 Global H-Experience', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1537

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1537', '2021-05-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성SDS] 박사채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1536

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1536', '2021-05-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [Kearney] RA(인턴) 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1535

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1535', '2021-05-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [2021 KRAFTON 대규모 채용]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1534

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1534', '2021-04-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [인하대학교] 신임교원 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1533

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1533', '2021-04-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG Chem] Global Internship Program 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1532

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1532', '2021-04-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼양그룹] 2021 상반기 Global Talent 모집(~4.26)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1531

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1531', '2021-04-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [바텍 네트웍스] R&D 협업 프로젝트 지원자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1530

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1530', '2021-04-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 【LG전자】온라인 리쿠르팅 시스템 오픈 및 참가 접수 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1529

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1529', '2021-04-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Kearney] 신입 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1528

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1528', '2021-04-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Kearney] 신입 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1527

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1527', '2021-04-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 2021 Women event', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1526

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1526', '2021-04-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자] 온라인 리쿠르팅 연구/기술 상담 관련 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1525

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1525', '2021-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성디스플레이] 박사채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1524

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1524', '2021-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기] 박사 채용 및 박사 장학생 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1523

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1523', '2021-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [부산대학교] 부산대학교 기계공학부 교수 채용 공고문', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1522

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1522', '2021-04-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한화토탈] 우수 R&D 인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1521

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1521', '2021-03-31 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [CJ제일제당] 2021년 상반기 신입사원 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1520

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1520', '2021-03-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성화재] 글로벌 석박사 인턴십 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1519

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1519', '2021-03-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [Kearney] RA(인턴) 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1516

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1516', '2021-03-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] (LG디스플레이) 2021년 상반기 해외 LGenius 석/박사 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1515

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1515', '2021-03-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Deloitte] 딜로이트 신입 컨설턴트 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1514

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1514', '2021-03-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [LG에너지솔루션]대학생 인턴십 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1513

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1513', '2021-03-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG에너지솔루션] 2021 해외 R&D 석박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1512

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1512', '2021-03-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [재일과학기술자협회] 온라인합동분과회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1511

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1511', '2021-03-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자]일본 우수 R&D 인재 온라인 채용 상담 실시(3월)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1509

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1509', '2021-03-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성바이오로직스] 여름인턴모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1508

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1508', '2021-03-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 2021 McKinsey Summer Business Analyst 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1507

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1507', '2021-03-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [머스트자산운용] 일본 리서치 지원 포지션 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1506

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1506', '2021-03-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 메모리사업부 해외우수 인력 채용안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1505

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1505', '2021-02-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자] 생산기술연구소 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1504

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1504', '2021-02-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [노무라 종합연구소 서울] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1503

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1503', '2021-02-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성SDI] 박사채용 및 리쿠르팅 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1502

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1502', '2021-02-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【LG전자】2021년 상반기 해외 우수 R&D 인재 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1501

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1501', '2021-02-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자]일본 우수 R&D 인재 온라인 채용 상담 실시', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1500

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1500', '2021-02-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [KEARNEY]인턴모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1499

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1499', '2021-01-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [TAIYO JOB] JOB FAIR 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1498

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1498', '2021-01-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 2021 McKinsey Spring 정규 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1497

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1497', '2021-01-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] LG Japan Lab 신규 채용 정보 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1496

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1496', '2021-01-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG생활건강] 해외(일본) 우수인재 모집(~1/27)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1495

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1495', '2021-01-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자DS] DIT센터 박사 채용 홍보 및 지원 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1494

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1494', '2021-01-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소 연구원 채용모집]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1493

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1493', '2021-01-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 메모리사업부 해외우수 인력 채용 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1492

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1492', '2021-01-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [씨젠] 채용공고(~12/27)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1491

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1491', '2020-12-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한화토탈]온라인 직무상담 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1490

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1490', '2020-12-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성전자DS] DIT Center 경력/박사 채용 직무 및 상담 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1489

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1489', '2020-12-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 반도체연구소] 일본 화상간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1488

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1488', '2020-12-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [SK이노베이션] 차세대 Battery Global R&D 우수인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1487

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1487', '2020-11-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] JOB EXPO 기업 박람회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1486

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1486', '2020-11-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] Crescendo Equity Partners 인턴 리쿠르팅 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1485

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1485', '2020-11-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] 【LG전자】 온라인 리쿠르팅 1:1 상담 관련 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1484

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1484', '2020-11-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] Get to know McKinsey Women Korea', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1483

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1483', '2020-11-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ISS]RA - Internship Recruitment', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1482

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1482', '2020-11-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [11월19일 오후5시까지][대상 학부생/석사/박사][삼성전자 Foundry]온라인 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1481

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1481', '2020-11-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국전자통신연구원]2021년 1차 정규직(연구직,기술직) 및 무기계약직(실무직) 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1480

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1480', '2020-11-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【LG전자】2020년 하반기 해외 우수 R&D 인재 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1479

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1479', '2020-10-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [리마인드][현대자동차] 2020하반기 현대자동차 연구개발본부 R&D 대규모채용(~11.02/월)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1478

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1478', '2020-10-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [TAIYO JOB] 인턴십 ＆ 업계연구페어 2022 (Zoom)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1477

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1477', '2020-10-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대자동차] 2020하반기 현대자동차 연구개발본부 R&D 대규모채용(~11.02/월)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1476

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1476', '2020-10-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [이수그룹] 2021년 이수그룹 신입사원 공개채용(~10.23/금 오후2시)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1475

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1475', '2020-10-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [Kearney] RA (인턴) 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1474

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1474', '2020-10-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성증권] 해외석박사 공개 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1473

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1473', '2020-10-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [이수그룹] 2021년 이수그룹 신입사원 공개채용(~10.23/금 오후2시)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1472

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1472', '2020-09-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [CJ LiveCity] 2020년 하반기 국내외 학부생 인턴(신입사원) 모집 (~10/6(화) 18:00)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1471

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1471', '2020-09-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [연세대학교] 연세대학교 국제학대학원 온라인 입학 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1470

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1470', '2020-09-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [SK이노베이션] R&D 연구원 채용 (Coating분야)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1469

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1469', '2020-09-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [채용공고] 부산대학교 기계공학부 교수 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1468

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1468', '2020-09-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소] 연구원 채용 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1467

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1467', '2020-09-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [DGIST 로봇공학 전공 온라인 교원채용설명회 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1466

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1466', '2020-09-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 VD사업부] 온라인 설명회를 개최합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1465

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1465', '2020-09-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [CJ제일제당] 2020년 하반기 CJ제일제당 신입사원 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1460

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1460', '2020-09-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성화재]글로벌 석박사 공채 · 인턴십 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1459

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1459', '2020-09-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성화재] 글로벌 석박사 공채 · 인턴십 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1458

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1458', '2020-09-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG경제연구원]2020 하반기 신입연구원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1457

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1457', '2020-09-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [TAIYO JOB]유학생을 위한 취업 대책 세미나 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1456

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1456', '2020-09-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스] 온라인 채용설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1455

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1455', '2020-09-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성전자 메모리 사업부] 삼성전자 메모리사업부 경력채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1454

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1454', '2020-08-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey Korea] 2020 McKinsey Fall 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1453

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1453', '2020-08-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [Archegos Capital] 재학생 대상 써머 인턴, 졸업 예정자 대상 풀타임 포지션 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1452

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1452', '2020-08-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG디스플레이] 2020년 하반기 생산기술분야 해외 석/박사 인재 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1451

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1451', '2020-07-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [TAIYO JOB] 22년 졸업 예정 유학생을 위한 세미나 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1450

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1450', '2020-07-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [부산대학교 저차원소재 광전소자응용 연구실 대학원생/인턴모집]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1449

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1449', '2020-07-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Kearney Korea] 2020 Business Analyst Recruiting / 대졸 신입공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1448

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1448', '2020-07-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [한국투자증권] 한국투자증권 2020 해외대 채용연계형 인턴 공개채용(~7/20)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1447

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1447', '2020-07-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG화학] 2020 R&D 석/박사 대상 1:1 온라인 채용상담회 실시', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1446

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1446', '2020-06-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소]연구원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1445

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1445', '2020-06-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국생산기술연구원] 정규직 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1444

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1444', '2020-06-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [네이버] 네이버 대학생 체험형 마케팅 인턴십 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1443

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1443', '2020-06-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Vein Global]외국인 유학생대상 취업활동지원 개시안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1442

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1442', '2020-06-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 생산기술연구소 AP설비개발팀] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1440

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1440', '2020-05-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [TAIYO JOB] NTT데이터그룹회사의 웹채용 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1439

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1439', '2020-05-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [TAIYO JOB]일본제철그룹회사 웹설명회 및 화학메이커 소개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1438

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1438', '2020-05-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【LG전자】유튜브 채용 채널 Open 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1436

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1436', '2020-05-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [제주대학교]2020학년도 제2학기 제주대학교 교수초빙 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1435

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1435', '2020-05-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대자동차] 2020 HMC Global Internship (H-Exp) 모집 (~5/5)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1434

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1434', '2020-05-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [네이버] 글로벌 여름인턴쉽(정규직 전환형)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1433

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1433', '2020-05-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [연세대 국제학대학원] 연세대 국제학대학원 신입생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1431

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1431', '2020-04-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [해커스] 2020년도 장학생 선발 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1429

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1429', '2020-04-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성전자] 메모리사업부 박사 경력 상시 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1427

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1427', '2020-04-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ETRI]한국전자통신연구원 2020년 2차 정규직(연구직) 채용공고2', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1426

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1426', '2020-04-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ETRI]한국전자통신연구원 2020년 2차 정규직(연구직) 채용공고1', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1425

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1425', '2020-04-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성전자 생산기술연구소] 박사 경력 상시 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1424

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1424', '2020-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성화재]해외 석박사 인턴십 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1423

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1423', '2020-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [딜로이트컨설팅] 신입 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1422

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1422', '2020-04-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 2020 여름 유엔협회세계연맹 유엔본부 한국 대학생 대표단 참가자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1421

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1421', '2020-03-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 한국연구재단 해외우수연구자 정부 초청 지원 프로그램', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1420

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1420', '2020-03-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 반도체연구소] 인재 채용을 위한 이력서 모집 및 홍보', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1419

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1419', '2020-03-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [IBM Korea 채용] 2020 상반기 Application Developer 신입사원 모집 (~3/15…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1418

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1418', '2020-03-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 채용] DS부문 DIT센터(Data & Information Technology Center) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1415

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1415', '2020-02-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] (COVID-19 관련추가)글로벌리더 외국인 유학생 대상 JOB FAIR 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1414

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1414', '2020-02-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 2020년 상반기 McKinsey & Company 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1413

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1413', '2020-02-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한화토탈] 해외 연구개발직 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1412

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1412', '2020-02-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【LG Electornics】 채용 이벤트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1411

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1411', '2019-11-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성엔지니어링] 전문가 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1410

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1410', '2019-11-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ETRI] 한국전자통신연구원 2020년 1차 정규직 및 실무지원직 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1409

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1409', '2019-11-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] ****2020년도 유니클로 신입사원 모집****', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1408

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1408', '2019-11-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ISS] Research Assistants for Korea AGM Season in 2020', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1407

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1407', '2019-10-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG화학 석유화학사업본부/R&D 설명회]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1406

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1406', '2019-10-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [연세대학교 국제대학원 입학설명회] 연세대학교 국제대학원 입학설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1405

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1405', '2019-10-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [재공지] 삼성전자 영상디스플레이 동경대 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1404

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1404', '2019-09-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [포스코 채용간담회]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1403

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1403', '2019-09-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] ****[삼성전자 반도체연구소] 도쿄대 취업간담회****', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1402

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1402', '2019-09-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [신입박사 발굴]삼성전자 영상디스플레이 사업부 채용상담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1401

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1401', '2019-09-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성화재/모집직무추가] 2019년도 글로벌 석박사 공채 인턴십 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1400

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1400', '2019-09-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] ****LG경제연구원 하반기 신입연구원 채용 ****', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1399

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1399', '2019-09-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [TAIYO JOB] 세미나 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1398

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1398', '2019-09-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] ****【LG전자】2019년 하반기 일본 우수 R&D 인재 채용 안내 ****', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1397

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1397', '2019-09-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] ****[삼성화재] 2019년도 글로벌 석박사 공채 인턴십 모집 안내****', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1396

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1396', '2019-08-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey&Company] 2019년 하반기 채용일정', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1395

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1395', '2019-08-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] ****NTTデータグループ会社 夏インターンシップ ****', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1394

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1394', '2019-08-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] ****[지니어스 주식회사]한국시장 담당 컨설턴트 학생인턴 모집****', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1393

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1393', '2019-08-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [TAIYO JOB] 한국인유학생을 위한 취업대책 세미나 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1392

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1392', '2019-07-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Rakuten] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1391

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1391', '2019-07-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국과학기술연구원] (KIST) 센서시스템연구실 나노광학/바이오 연구실 포스트닥터 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1388

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1388', '2019-07-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자] DS부문 메모리사업부 해외 리쿠르팅 및 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1387

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1387', '2019-07-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [SNU Science Fellow] 서울대학교 자연과학대학 기초과학연구원 박사후 연구원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1386

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1386', '2019-07-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [국토연구원] 2019년도 연구직 및 전문직 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1385

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1385', '2019-06-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [과학기술정보통신부]국제연구인력교류사업', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1384

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1384', '2019-06-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG생활건강] 해외채용 모집안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1383

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1383', '2019-06-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [전남대학교] 공과대학 전기공학과 교수특채 후보자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1382

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1382', '2019-06-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [유니레버코리아] 패스트트랙 프로그램: 유넥스트 오픈', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1381

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1381', '2019-06-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] (MBB) 전략컨설팅 취업대비반 무료상담 Event 및 개강안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1380

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1380', '2019-06-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [마이다스아이티재팬] 2019 상반기 열린채용 및 채용설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1378

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1378', '2019-06-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 생산기술연구소] 리쿠르팅 취소공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1377

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1377', '2019-05-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대중공업그룹] 2019 현대중공업그룹 해외석박사 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1376

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1376', '2019-05-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ETRI] 한국전자통신연구원 2019년 2차 정규직 및 실무지원직 채용공고2', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1375

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1375', '2019-05-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ETRI] 한국전자통신연구원 2019년 2차 정규직 및 실무지원직 채용공고1', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1374

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1374', '2019-05-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [한화토탈] 도쿄대 채용상담회 및 회사설명회 +석식간담회 사전 신청 기간 연장 안내 **사전 신청자에 한해 …', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1373

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1373', '2019-05-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 생산기술연구소] 리쿠르팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1372

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1372', '2019-05-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ASEAN CAREER] 2019년 일본 우수인재 모집(Internship)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1371

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1371', '2019-05-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [한화토탈] 도쿄대 채용상담회 및 회사설명회 +석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1370

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1370', '2019-05-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG Display] 19년 상반기 해외 우수인재 채용면담 및 HR 부문 신입사원 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1369

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1369', '2019-05-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국투자신탁운용] 2019년 해외대 신입사원 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1368

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1368', '2019-05-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [해커스교육그룹] 2019 해커스 장학생 선발 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1367

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1367', '2019-05-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG화학]2019년 일본 우수인재 모집(학사 Internship)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1366

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1366', '2019-04-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [부산대학교] 포스트닥터 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1365

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1365', '2019-04-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [노무라] 2019 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1364

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1364', '2019-04-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [에코마케팅] 일본어 능통자 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1363

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1363', '2019-04-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [한국미쓰비시상사] 인턴사원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1362

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1362', '2019-04-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [A.T. Kearney] 채용안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1361

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1361', '2019-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [카카오] 2019년 전문연구요원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1360

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1360', '2019-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG 전자] 캠퍼스 리쿠르팅 및 석식교류회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1359

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1359', '2019-04-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG 화학] 교내 해외채용 이공계 R&D 석/박사 채용설명회 (혼고캠퍼스)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1358

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1358', '2019-04-09 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [연세대학교 국제학대학원] 입학 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1357

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1357', '2019-04-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성디스플레이] 해외박사 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1356

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1356', '2019-04-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG경제연구원]신입연구원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1355

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1355', '2019-04-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성SDS]2019년 석/박사 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1354

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1354', '2019-04-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자]2019년 상반기 일본 우수 R&D 인재 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1353

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1353', '2019-04-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [마이다스아이티재팬] 2020년도 신졸 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1352

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1352', '2019-04-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한화토탈] 해외대 연구개발직 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1351

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1351', '2019-03-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대제철]해외우수인력 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1350

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1350', '2019-03-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [KIST,강원대학교,경희대학교] Postdoctoral Fellow 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1349

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1349', '2019-03-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [에코마케팅] 마케팅회사 관련 채용정보', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1348

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1348', '2019-03-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼양그룹]일본 우수 연구인력 대상 간담회(일정 확정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1347

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1347', '2019-03-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [효성 그룹 기술원] 리쿠르팅 및 석식교류회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1346

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1346', '2019-03-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey & Company Korea Office] Summer Business Analyst 채용…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1345

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1345', '2019-03-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [풀무원 일본법인 아사히코] 연구팀 인력 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1344

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1344', '2019-03-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 DS부문 메모리사업부] 일본 현지 Meeting 예정 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1343

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1343', '2019-03-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성바이오에피스] 글로벌 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1342

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1342', '2019-03-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼양그룹]일본 우수 연구인력 대상 간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1341

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1341', '2019-03-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성화재]2019년 글로벌 석박사 인턴십 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1340

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1340', '2019-03-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [과학기술정보통신부]국제 연구 인력 교류 사업', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1339

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1339', '2019-03-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [한화금융] 2019년 하계 글로벌 인턴십', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1338

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1338', '2019-03-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [외국인유학생 취업페어]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1337

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1337', '2019-03-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NHK] 한국어 아나운서 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1336

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1336', '2019-03-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [BNP Paribas] Graduate Opportunity (Seoul Office)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1335

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1335', '2019-03-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [삼성 바이오로직스] 글로벌 인턴쉽', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1334

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1334', '2019-02-25 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 TSP 총괄] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1333

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1333', '2019-02-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [미국 취업 실전 가이드북]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1332

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1332', '2019-02-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey&Company] 2019년 봄 정기 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1329

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1329', '2019-02-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG생활건강] 해외우수인재 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1326

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1326', '2019-02-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG CNS] 19년 상반기 해외 석박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1325

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1325', '2019-02-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [KAIST] 전기 및 전기전자공학부 신임교원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1324

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1324', '2019-02-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [TOP CAREER] 도쿄대학 한국인학생 한정 취업세미나', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1323

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1323', '2019-01-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [세메스] 박사 및 박사 장학생 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1322

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1322', '2019-01-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] "월요일의 도쿄 일본 탑티어기업 집중코스"', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1321

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1321', '2018-12-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [경북첨단의료산업재단] 교내 방문 미팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1320

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1320', '2018-12-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [Superior Essex] 해외근무 신입/경력직 채용 (LS그룹 자회사)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1319

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1319', '2018-12-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [한국 마루베니] 기능화학팀 무역영업 신입/경력 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1318

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1318', '2018-12-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [A.T. Kearney Korea] 인턴(RA) 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1317

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1317', '2018-12-10 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국전자통신연구원 (ETRI)] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1316

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1316', '2018-11-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국생산기술연구원] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1315

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1315', '2018-11-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [악센츄어] 한국인유학생대상 설명회/좌담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1314

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1314', '2018-11-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [충남 대학교] 컴퓨터공학과 전임교수 초빙 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1313

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1313', '2018-10-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자 H&A사업본부] 리쿠르팅 및 석식 교류회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1312

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1312', '2018-10-28 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [외국인 유학생 대상 인턴쉽]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1311

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1311', '2018-10-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [포스코] (기간연장 10/26) 해외채용 현장면접 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1310

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1310', '2018-10-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [한화금융그룹] 교내 글로벌인턴쉽 프로그램 간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1309

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1309', '2018-10-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Top Career] 도쿄대학 한국인 유학생 한정 취업 세미나', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1308

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1308', '2018-10-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국생산기술연구원] 서남본부 박사급 정규직채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1307

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1307', '2018-10-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [CJ제일제당] 교내 리쿠르팅(R&D분야) 및 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1306

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1306', '2018-10-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [마이더스아이티] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1305

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1305', '2018-10-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성증권] 해외 우수대학 석/박사 경력직 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1304

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1304', '2018-10-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [Institutional Shareholder Services Inc.] RA채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1303

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1303', '2018-10-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국생산기술연구원] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1302

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1302', '2018-10-05 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG경제연구원] 신입연구원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1301

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1301', '2018-10-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [BNP Paribas] Graduate & Summer Internship Opportunities', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1300

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1300', '2018-09-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자] 채용 이벤트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1299

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1299', '2018-09-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국전력] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1298

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1298', '2018-09-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [포스코] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1297

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1297', '2018-09-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [신영증권] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1296

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1296', '2018-09-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국타이어] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1295

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1295', '2018-09-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [효성그룹 기술원] 리쿠르팅 및 석식교류회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1294

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1294', '2018-09-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [포스코] 리쿠르팅 및 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1293

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1293', '2018-09-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [국토연구원] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1292

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1292', '2018-09-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG화학] 리쿠르팅 & 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1291

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1291', '2018-09-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [코오롱] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1290

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1290', '2018-09-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [OCI주식회사] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1289

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1289', '2018-09-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [McKinsey&Company] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1288

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1288', '2018-08-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼정KPMG] 하반기 advisory 공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1287

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1287', '2018-08-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [유펜솔루션] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1286

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1286', '2018-08-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [ 삼성SDI ] 채용공고 **기간연장**', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1285

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1285', '2018-07-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [한화큐셀재팬] 채용 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1284

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1284', '2018-07-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대중공업그룹] 2018년도 해외 석박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1283

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1283', '2018-06-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 Foundry] 리쿠르팅 / 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1282

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1282', '2018-06-24 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 글로벌 기술센터] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1281

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1281', '2018-06-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [현대제철] 리쿠르팅 및 중식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1280

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1280', '2018-06-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 메모리사업부] 리쿠르팅 및 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1279

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1279', '2018-06-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG하우시스] 채용상담/채용설명회/석식간담회 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1278

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1278', '2018-05-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [신영증권] 2018년 상반기 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1277

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1277', '2018-05-14 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG디스플레이] 채용상담회 및 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1276

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1276', '2018-05-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국투자증권] 해외대 신입사원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1274

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1274', '2018-05-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성디스플레이] 채용상담회 및 박사채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1273

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1273', '2018-04-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 생산기술 연구소] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1272

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1272', '2018-04-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [유니클로] 한국인 유학생 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1271

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1271', '2018-04-20 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전기] 채용설명회 및 1:1면담 안내 (박사과정 및 Post-Doc대상) (RSVP기간 수정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1270

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1270', '2018-04-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG화학] 일본 우수인재 채용설명회 및 internship안내(학사과정 대상)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1269

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1269', '2018-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG화학] 일본 R&D 우수인재 채용설명회 (석/박사 및 Post-Doc 대상)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1268

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1268', '2018-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자] 일본 우수 R&D 인재 채용 관련 홍고캠퍼스 리쿠르팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1267

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1267', '2018-04-12 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [세메스] 2018년 인재 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1266

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1266', '2018-04-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [효성기술원] 2018년 상반기 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1264

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1264', '2018-04-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한화토탈] 박사채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1262

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1262', '2018-04-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자] 일본 우수 R&D 인재 채용 안내 등', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1260

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1260', '2018-03-31 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [LG화학] 2018년 일본 지역 R&D 취업설명회 안내 및 우수인재 모집(석/박사)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1259

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1259', '2018-03-30 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [현대자동차 x AsiaHaptics] 자동차 햅틱 기술 공모전 (~4/30)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1258

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1258', '2018-03-29 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [KAIST] 2018년 KAIST GCORE 연구사업설명회 in 코마바', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1257

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1257', '2018-03-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소] 분야별 전문가 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1256

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1256', '2018-03-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [KAIST] 2018년 KAIST GCORE 연구사업설명회 in 홍고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1255

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1255', '2018-03-21 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자] 2018년 상반기 LG전자 일본 우수 R&D 인재 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1254

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1254', '2018-03-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] 【삼양그룹】Global Talent 모집 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1253

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1253', '2018-03-17 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자] DS부문 메모리사업부 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1252

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1252', '2018-01-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [CJ대한통운] 석/박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1251

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1251', '2018-01-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼양그룹] 일본 우수 연구인력 대상 간담회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1250

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1250', '2018-01-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [삼성전자] 생산기술연구소(DS부문) 박사 경력 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1249

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1249', '2018-01-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기] 채용공고 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1247

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1247', '2018-01-16 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 반도체연구소]개인면담 및 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1246

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1246', '2018-01-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[경력] [마이다스아이티] 건축/건설관련 전공자 및 경력자사원모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1245

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1245', '2018-01-13 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼성디스플레이] 박사채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1244

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1244', '2017-12-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG Electronics] 한국 본사 CFO부문 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1243

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1243', '2017-12-18 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자글로벌기술센터] 도쿄대학 캠퍼스 리쿠르팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1242

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1242', '2017-12-08 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [국토연구원] 2017년도 연구직 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1241

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1241', '2017-11-11 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [業界研究フェア] 일본에서의 취업을 희망하시는 분들', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1240

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1240', '2017-11-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [한국타이어] 2017 하반기 한국타이어 Proactive 공개채용 (해외유학생)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1239

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1239', '2017-11-03 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자] 11월 채용 이벤트 Tech Fair 2017 at Tokyo', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1238

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1238', '2017-10-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [서울반도체/서울바이오시스]2017년 하반기 신입사원 및 박사 초빙', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1237

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1237', '2017-10-26 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [신영증권] 2017년 하반기 신입 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1235

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1235', '2017-10-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [효성기술원] 기업 설명회 및 상담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1234

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1234', '2017-10-06 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[인턴] [ISS]인턴 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1233

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1233', '2017-10-02 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [POSCO] 하반기 포스코 해외인력 채용 (+상담회일정 추가)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1232

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1232', '2017-09-15 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [세메스] 2017년 일본 우수인재 대상 회사설명회 최종안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1231

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1231', '2017-09-07 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [세메스] 2017년 일본 우수인재 대상 회사설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1230

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1230', '2017-09-01 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [삼양그룹] 2017 Global Talent 모집(~8/3)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1229

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1229', '2017-07-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG CNS] 2017년 하반기 해외 석/박사 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1228

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1228', '2017-07-27 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자] 하반기 우수 R&D 인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1227

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1227', '2017-07-19 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [NAVER] R&D센터 전문연구원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1226

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1226', '2017-07-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[신입] [위캔솔루션] 전문연구원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1225

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1225', '2017-07-04 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [효성기술원] 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1224

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1224', '2017-06-22 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'jobs', '[설명회] [현대제철] 채용상담회 / 회사설명회 / 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1223

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1223', '2017-06-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성바이오로직스] 일본 글로벌 로드쇼', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1222

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1222', '2017-06-07 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG디스플레이] 이공계 일본 한국인 유학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1221

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1221', '2017-06-02 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오로직스] 글로벌 리쿠르팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1220

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1220', '2017-05-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG하우시스] 채용상담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1219

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1219', '2017-05-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자dmc연구소] 석식간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1218

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1218', '2017-05-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [국토연구원] 연구직 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1217

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1217', '2017-05-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG디스플레이] 리쿠르팅 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1215

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1215', '2017-05-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [네이버] 하계 인턴모집 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1213

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1213', '2017-05-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국투자증권] 해외대 신입사원 채용 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1211

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1211', '2017-05-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [Bain & Company] RA 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1210

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1210', '2017-05-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [A.T. Kearney Korea] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1209

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1209', '2017-05-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [서울반도체/서울바이오시스] 상반기 전문가 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1200

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1200', '2017-04-28 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1199

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1199', '2017-04-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국타이어] 상반기 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1198

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1198', '2017-04-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [엘지전자] 캠퍼스 리쿠르팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1197

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1197', '2017-04-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기] 2017년 박사채용 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1196

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1196', '2017-04-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 영상디스플레이사업부] 박사급 인력 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1195

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1195', '2017-04-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [한화토탈] 회사설명회 및 채용상담 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1194

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1194', '2017-04-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성바이오에피스] 채용상담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1193

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1193', '2017-04-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [KIST] 선배와의 간담회 재공지 (수정 20170404)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1192

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1192', '2017-04-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [엘지화학] 채용연계형 학부생대상 인턴쉽', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1191

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1191', '2017-03-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한화생명]상반기 신입사원 공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1190

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1190', '2017-03-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [KIST] 선배와의 간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1189

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1189', '2017-03-28 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한화큐셀] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1188

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1188', '2017-03-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG화학] 채용설명회 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1186

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1186', '2017-03-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성SDI] 박사급인력 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1185

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1185', '2017-03-06 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성디스플레이] 채용상담회 및 박사채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1184

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1184', '2017-02-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 정기채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1183

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1183', '2017-02-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [TOP CAREER] 외국인유학생한정 취직이벤트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1182

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1182', '2017-02-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [국민재난안전연구원] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1181

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1181', '2017-02-16 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG CNS] 상반기 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1180

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1180', '2017-02-05 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 메모리사업부] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1179

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1179', '2017-01-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기] 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1178

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1178', '2017-01-05 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 생활가전사업부] 우수 인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1177

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1177', '2016-12-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [TOP CAREER] 외국인유학생대상 취직이벤트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1176

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1176', '2016-12-05 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [KOTRA주최]한국인유학생대상 취업상담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1175

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1175', '2016-11-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG U+]채용 설명회 (2016.11.11 수정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1174

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1174', '2016-11-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 글로벌기술센터] 취업설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1173

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1173', '2016-10-31 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 메모리사업부] 취업설명회 안내 (대상 확대)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1172

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1172', '2016-10-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [서울반도체/서울바이오시스]2016년 하반기 신입공채 (2016.10.19 추가수정-전문연구요원안내)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1171

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1171', '2016-10-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [마이다스아이티] 채용 설명회 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1169

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1169', '2016-10-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 메모리사업부] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1168

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1168', '2016-10-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG U+]채용 설명회 및 설문조사 (2016.11.11 수정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1167

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1167', '2016-10-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 글로벌기술센터]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1166

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1166', '2016-10-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한화생명] 하반기 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1165

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1165', '2016-10-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 로봇 그룹]개별 면담 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1164

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1164', '2016-10-05 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자]특정 분야 인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1162

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1162', '2016-10-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [KIST]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1161

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1161', '2016-09-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG CNS]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1159

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1159', '2016-09-07 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자]하반기 캠퍼스 리쿠르팅 관련 상담', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1158

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1158', '2016-08-31 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 생산기술원]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1157

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1157', '2016-08-31 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [포스코]채용 정보 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1156

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1156', '2016-08-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 메모리사업부]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1155

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1155', '2016-08-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 글로벌기술센터]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1154

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1154', '2016-08-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [노무라 종합연구소] 컨설턴트 정규직 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1153

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1153', '2016-08-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [KAIST IT융합연구소]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1152

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1152', '2016-07-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [마감일 수정, LS산전]GBT(Global Business Talent) 우수인재 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1151

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1151', '2016-07-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG CNS] 해외 인재 초청 Seminar', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1150

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1150', '2016-06-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성SDI]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1149

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1149', '2016-06-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지 한국사무소]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1148

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1148', '2016-06-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 종합기술원] 채용상담회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1147

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1147', '2016-06-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG생활건강] 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1146

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1146', '2016-06-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [JR東日本]글로벌 인턴쉽 고지 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1145

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1145', '2016-05-31 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기] 박사급 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1144

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1144', '2016-05-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG디스플레이] 채용 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1143

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1143', '2016-05-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG Hausys] 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1142

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1142', '2016-05-13 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [A.T. Kearney] 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1141

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1141', '2016-05-06 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국경제연구원] 연구원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1140

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1140', '2016-05-06 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [현대제철] (리마인드) 해외 우수 R&D인재 채용(석, 박사)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1139

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1139', '2016-04-22 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국타이어] 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1138

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1138', '2016-04-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [LG화학] 인턴쉽 채용 공고 안내(학사)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1137

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1137', '2016-04-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG화학] 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1136

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1136', '2016-04-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [유니클로]유학생 채용전형 정보 및 사전 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1135

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1135', '2016-04-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [현대제철] 해외 우수 R&D인재 채용(석, 박사)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1134

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1134', '2016-04-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [두산중공업] 2016년 상반기 두산중공업 R&D 부문 해외 우수인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1133

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1133', '2016-03-30 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [현대제철]채용 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1132

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1132', '2016-03-30 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자] 채용설명회 (추가 사항)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1131

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1131', '2016-03-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [고려대학교]교수초빙공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1130

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1130', '2016-03-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국투자증권]채용공고안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1129

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1129', '2016-03-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [롯데케미컬]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1127

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1127', '2016-03-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자]도쿄 커리어 컨설팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1126

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1126', '2016-03-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [SEMES]회사설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1125

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1125', '2016-03-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자]취업설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1124

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1124', '2016-03-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지 서울사무소] Business Analyst & Associate 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1123

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1123', '2016-02-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [롯데중앙연구소]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1122

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1122', '2016-02-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 반도체연구소]회사설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1121

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1121', '2016-02-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [TOP CAREER]합동설명회(이과계열)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1120

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1120', '2016-02-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [TOP CAREER]합동설명회 리마인드', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1119

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1119', '2016-02-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [KCC]박사 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1118

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1118', '2015-12-16 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 글로벌 기술센터] 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1117

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1117', '2015-12-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [KIST전북분원]채용 안내 (화학)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1116

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1116', '2015-12-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [TOP CAREER]취업활동교류회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1115

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1115', '2015-12-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [NRI Consulting] RA 모집(ASAP)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1114

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1114', '2015-12-05 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [TOP CAREER]합동설명회(외국인유학생한정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1113

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1113', '2015-12-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [SEMES]채용상담회 (동경공대)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1112

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1112', '2015-12-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [グローバルリーダー]취업 페어 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1111

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1111', '2015-12-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LS엠트론]산학장학생 설명회 안내 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1109

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1109', '2015-11-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [TOP CAREER]취업정보안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1108

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1108', '2015-11-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자]취업설명회 변경 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1107

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1107', '2015-11-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [2015 Seoul Winter Career Forum 안내]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1106

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1106', '2015-11-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [TOP CAREER] 취업 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1104

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1104', '2015-10-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [POSCO] 포스코 채용 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1103

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1103', '2015-10-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [ETRI] 채용 정보 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1102

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1102', '2015-10-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [GE초음파]채용 정보 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1101

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1101', '2015-10-14 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [グローバル​リーダー運営事務局] 유학생 대상 합동취업설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1100

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1100', '2015-10-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [포스코] 포스코 해외 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1099

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1099', '2015-09-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성금융관계사] 채용 정보 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1098

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1098', '2015-09-24 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [Top Career] 취업 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1097

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1097', '2015-09-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG화학 일본법인]현지 직원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1096

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1096', '2015-09-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [노무라 종합연구소] 노무라 종합연구소 서울지점 인턴 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1095

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1095', '2015-09-09 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [두산중공업] 2015(하)두산그룹 해외 우수인재 채용(두산중공업 R&D 박사)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1094

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1094', '2015-09-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [Bain & Company] 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1093

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1093', '2015-09-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG생활건강 기술연구원] 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1092

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1092', '2015-08-31 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [국방기술품질원]전문연구요원(병역특례) 및 일반 연구직 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1091

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1091', '2015-08-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [SEMES] 취업설명회 참가신청 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1090

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1090', '2015-08-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소] 특별채용에 관한 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1089

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1089', '2015-08-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [TOP CAREER] 취업설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1088

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1088', '2015-07-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기]해외대 박사 채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1087

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1087', '2015-07-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 생활가전사업부]채용 공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1086

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1086', '2015-07-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [녹색기술센터]KIST 부설 녹색기술센터 리쿠르트 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1085

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1085', '2015-07-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [노무라종합연구소] 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1084

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1084', '2015-07-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [ETRI] 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1083

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1083', '2015-07-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [KAIST] 산업및시스템공학과 CE 연구실 연구원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1082

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1082', '2015-07-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자]코마바 캠퍼스 취업설명회(세부사항)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1081

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1081', '2015-06-26 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [롯데 그룹] 인턴십 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1080

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1080', '2015-06-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자]코마바 캠퍼스 취업설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1079

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1079', '2015-06-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자DS] 취업설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1078

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1078', '2015-06-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [마이다스아이티재팬] 인턴쉽 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1076

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1076', '2015-06-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [마이다스아이티] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1075

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1075', '2015-06-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 DS사업부(memory/LSI/반도체연구소)] 채용설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1074

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1074', '2015-05-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [한국투자증권] 신입공채(인턴전형) 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1073

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1073', '2015-05-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [신세계]채용정보안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1072

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1072', '2015-05-28 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [금호석유화학]채용정보안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1071

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1071', '2015-05-26 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기][박사채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1069

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1069', '2015-05-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LS엠트론]채용설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1067

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1067', '2015-05-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국 유니클로] 채용정보 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1066

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1066', '2015-05-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [동우화인켐] 채용공고안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1065

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1065', '2015-05-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG디스플레이] 채용 면담 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1063

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1063', '2015-05-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG생활건강 기술연구원] 채용공고 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1062

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1062', '2015-03-26 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자] 학내 채용 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1061

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1061', '2015-03-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자]일본 우수 R&D 인재 채용 공고 및 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1060

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1060', '2015-03-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [현대중공업] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1059

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1059', '2015-03-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 글로벌기술센터] 채용공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1055

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1055', '2015-03-07 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성디스플레이] 채용설명회 예정 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1054

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1054', '2015-03-07 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [두산중공업] 채용 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1052

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1052', '2015-03-07 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [제일모직] 2015 해외 우수인재 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1051

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1051', '2015-03-03 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [두산중공업] 2015 R&D 부문 해외 우수인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1050

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1050', '2015-03-02 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소]노동경제, 중국경제분야 연구원 특별채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1049

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1049', '2015-03-02 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [롯데케미칼] 2015년 해외우수인재 모집 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1048

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1048', '2015-02-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소] 연구원 특별채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1046

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1046', '2015-02-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국경제연구원] 연구원 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1045

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1045', '2015-02-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지 서울사무소] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1043

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1043', '2015-02-04 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [일정변경][LG전자] 사내 설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1042

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1042', '2015-01-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG생명과학] 기술연구원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1041

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1041', '2015-01-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [재공지][효성기술원] 채용설명회 방문', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1040

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1040', '2015-01-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [수정][아이리버] 일본 현지 유학생 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1039

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1039', '2015-01-07 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [금호석유화학] R&D부문 해외 박사연구원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1038

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1038', '2014-12-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [수정] [LG Display] Sales 분야 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1037

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1037', '2014-11-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG전자] 신규 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1036

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1036', '2014-11-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [Corporate Governance Solution] RA모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1035

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1035', '2014-11-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [글로벌리더] 외국인 유학생을 위한 업계연구페어', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1034

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1034', '2014-11-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [재공지][LG Display] 동경​대 방문 채용면담', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1033

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1033', '2014-11-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LS엠트론] 15년 신입 및 산학장학생 채용 관련 학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1032

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1032', '2014-11-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [GE Korea] 인턴모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1031

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1031', '2014-11-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [인천대학교] 대학교수 초빙 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1030

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1030', '2014-11-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성SDI-에너지솔루션] 박사 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1029

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1029', '2014-10-31 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성정밀화학] 채용설명회 (장소:교토)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1028

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1028', '2014-10-22 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [IBS] 해외 우수인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1027

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1027', '2014-10-16 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [서울반도체] 2014년 하반기 신입사원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1026

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1026', '2014-10-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [포스코] 채용상담회 및 석식간담회(졸업예정자 대상) 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1025

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1025', '2014-10-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성금융관계사] 해외 석/박사 MBA 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1024

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1024', '2014-10-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소] 연구원 특별채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1023

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1023', '2014-09-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국타이어] 2014 하반기 공개 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1022

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1022', '2014-09-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1021

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1021', '2014-09-27 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기] 신입사원 공채 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1020

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1020', '2014-09-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성 에스원] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1019

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1019', '2014-09-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [LG화학] 영업/마케팅 직무 학부생 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1018

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1018', '2014-09-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [마이다스아이티] 2015년 글로벌대졸신입공채 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1017

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1017', '2014-09-05 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [포스코] 일본 해외채용 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1016

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1016', '2014-08-28 09:00:00+09'),
('이민혁', 'YB', 'jobs', '[신입] [롯데면세점] 간사이공항 현지 직원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1015

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1015', '2014-08-26 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [유명외국계패션회사 일본법인] Accounting 담당자 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1014

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1014', '2014-08-26 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [맥킨지] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1013

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1013', '2014-08-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [GE Korea] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1012

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1012', '2014-07-22 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 글로벌기술센터] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1011

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1011', '2014-07-16 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성테크윈] 채용설명회 이후 이력/연구기술서 제출 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1008

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1008', '2014-07-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [롯데면세점] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1007

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1007', '2014-07-02 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 글로벌 기술센터] 금속공학 및 재료공학 관련 인재 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1006

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1006', '2014-07-02 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전기] 멘토링 프로그램 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1005

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1005', '2014-07-02 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 생산기술연구원] 리크루팅 설명회 개최', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1004

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1004', '2014-06-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자 종합기술원] 채용상담회 방문', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1003

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1003', '2014-06-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [재공지][LG화학] 채용설명회 방문', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1002

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1002', '2014-06-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [마이다스아이티] 특별채용 및 행복장학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1001

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1001', '2014-06-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [재공지][삼성테크윈] 해외 우수인재 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1000

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=1000', '2014-06-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [롯데그룹] 2014년도 하계 인턴십 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=999

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=999', '2014-06-12 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [LG전자] 채용상담회 방문', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=997

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=997', '2014-06-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성테크윈] 채용상담회 방문', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=995

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=995', '2014-06-03 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성테크윈] 해외 우수인재 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=994

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=994', '2014-06-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [한국무역협회] 해외유학생 하계인턴십 프로그램', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=993

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=993', '2014-05-22 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [아모레퍼시픽] 채용설명회 (건축, 실내건축 계열 직무)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=992

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=992', '2014-05-21 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [한국투자증권] 신입공채(인턴전형) 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=991

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=991', '2014-05-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [IBS] 기초과학연구원 우수 인재 채용 공고 및 Pool 등록', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=990

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=990', '2014-05-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [GE Korea] 인턴모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=989

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=989', '2014-05-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [롯데케미칼] 2014년 해외 우수인재 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=988

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=988', '2014-04-30 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [롯데그룹] Global 인재 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=987

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=987', '2014-04-30 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자] 프린팅솔루션사업부 박사급R&D인력 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=986

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=986', '2014-04-25 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자] 생산기술 연구소 해외 석/박사 인력채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=985

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=985', '2014-04-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [서울반도체] 해외대학 우수 R&D 인력 및 해외장학생 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=984

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=984', '2014-04-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [아모레퍼시픽] 마케팅공모전', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=983

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=983', '2014-04-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소] 연구원 특별채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=981

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=981', '2014-04-20 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [현대중공업] 해외 유학생 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=980

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=980', '2014-04-15 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성디스플레이] -방문시간대 변경- 채용상담회 일정 (4월21일) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=974

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=974', '2014-04-11 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[인턴] [롯데그룹] 인턴사원 모집 설명회 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=971

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=971', '2014-04-10 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [두산중공업] 2014 해외 석/박사 R&D 우수 인재 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=970

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=970', '2014-04-07 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국타이어] R&D 및 Engineer 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=969

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=969', '2014-04-01 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] -수정: 일정변경- [롯데케미칼] 2014 해외 우수인재 채용설명회 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=968

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=968', '2014-03-29 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [삼성전자] 우수 일본 한인유학생 리크루팅 (수정) 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=962

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=962', '2014-03-19 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성경제연구소] 연구원 특별채용 공고안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=961

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=961', '2014-03-17 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [한국과학기술연구원] 이공계 Post doc. 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=960

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=960', '2014-03-05 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [Bain & Company] RA 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=959

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=959', '2014-02-23 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [Bosch] 일본내 대학 한국인 유학생 채용 관련', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=958

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=958', '2014-02-18 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[경력] [삼성전자] 생산기술연구소 경력 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=957

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=957', '2014-02-14 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[신입] [삼성전자 글로벌기술센터] 박사급 연구인력 채용 간담회 (첨부파일 및 장소 수정) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=955

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=955', '2014-01-19 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[신입] [대구경북첨단의료산업진흥재단] 연구직 및 일반직 직원 공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=954

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=954', '2014-01-09 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[설명회] [삼성전기] ACI사업부 박사 채용 리크루팅 (첨부파일 수정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=953

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=953', '2014-01-08 09:00:00+09'),
('도쿄대학교 한국인 학생회', 'YB', 'jobs', '[설명회] [효성기술원] 채용설명회 1/28 (내용수정: 산학장학생 관련)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=952

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=952', '2014-01-08 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[경력] [삼성전자 무선사업부] 동경대 석/박사급 경력사원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=951

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=951', '2014-01-03 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[신입] 【特別先行予約のご案内】日本最大外国人留学生就職イベントTOP CAREER2015', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=950

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=950', '2013-12-27 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[경력] [현대자동차] 2014 일본 경력,신입 우수인재채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=949

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=949', '2013-12-20 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성전자 글로벌 기술센터] 글로벌기술센터 박사 연구인력 채용안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=948

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=948', '2013-12-20 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[신입] [LS엠트론] 전공세미나 및 채용상담 방문 공지 (12/19) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=945

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=945', '2013-12-11 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[신입] 【TOP CAREER 2015 エンジニア】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=944

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=944', '2013-12-11 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[신입] [부산대학교 화공생명공학부] 외국인 전임교원 초빙', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=943

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=943', '2013-12-02 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] 【TOP CAREER】TOP CAREER 2015出展企業確定のお知らせ', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=942

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=942', '2013-11-19 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[신입] [도레이첨단소재] 신입사원 및 전문연구요원 선발 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=938

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=938', '2013-11-01 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[신입] [한국과학기술연구원(KIST)] 천연의약센터 하반기 전문연구요원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=937

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=937', '2013-10-30 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성전자 영상디스플레이] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=935

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=935', '2013-10-23 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'jobs', '[신입] [삼성SDI] 일본 박사급 대상 채용 간담회 실시 안내 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=933

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=933', '2013-10-23 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [현대자동차] 1:1 채용상담 (11월 14일) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=932

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=932', '2013-10-13 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [TOP CAREER] 유학생 취직지원 취업이벤트 홍보', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=931

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=931', '2013-10-08 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자] 영상디스플레이사업부 (VD사업부) 하반기 채용설명 방문', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=930

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=930', '2013-10-08 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LS엠트론] 13년 하반기 산학장학생 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=929

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=929', '2013-10-07 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [한화큐셀재팬] 신입사원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=928

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=928', '2013-10-03 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LS엠트론] 13년 하반기 산학장학생 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=927

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=927', '2013-09-29 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [ 대구경북첨단의료산업진흥재단] 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=926

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=926', '2013-09-29 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼양홀딩스] -기간연장- 채용공고 안내 (병역특례 우대)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=922

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=922', '2013-09-13 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [포스코] 일본지역 채용관련 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=920

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=920', '2013-09-10 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [NHK 국제방송국] 한국어 아나운서 모집 댓글 7 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=916

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=916', '2013-09-07 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성] 금융관계사 2013 해외 석박사채용 채용공고 (수정 2013.09.13)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=915

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=915', '2013-09-05 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성에스원] 채용설명회 (9월 6일)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=911

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=911', '2013-09-02 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [SBI모기지] 한국법인 채용안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=910

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=910', '2013-09-02 09:00:00+09'),
('KSA', 'YB', 'jobs', '[인턴] [맥킨지] 서울사무소 리서치팀 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=909

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=909', '2013-08-28 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [건국대학교] 2013 전문연구요원 선발안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=908

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=908', '2013-08-26 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [한국에너지기술연구원] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=907

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=907', '2013-08-26 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [TOP CAREER] 유학생생 취직지원원 취업박람회 홍보', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=906

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=906', '2013-08-20 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성메디슨] 일본 우수 석/박사 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=905

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=905', '2013-08-15 09:00:00+09'),
('KSA', 'YB', 'jobs', '[인턴] [노무라종합연구소] 인턴 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=904

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=904', '2013-08-07 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성코닝정밀소재] R&D부문 박사채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=903

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=903', '2013-08-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성화재]’13年 해외 석/박사 대상 직무설명회(이공계 환영) ~8/7(水)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=902

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=902', '2013-08-05 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성전자 프린팅솔루션사업부] 일본 R&D 박사인재 채용 현지미팅', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=898

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=898', '2013-07-23 09:00:00+09'),
('KSA', 'YB', 'jobs', '[인턴] [롯데] 롯데그룹 인턴십 모집 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=896

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=896', '2013-07-21 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [미쓰이물산] 일본본사채용관련 기업설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=895

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=895', '2013-07-21 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [미디어젠] 병역특례 전문연구요원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=894

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=894', '2013-07-16 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [삼성전자 영상디스플레이사업부(VD사업부)] 경력사원 상시 채용 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=893

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=893', '2013-07-11 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [한국생산기술연구원] 강원지역본부 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=889

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=889', '2013-07-05 09:00:00+09'),
('KSA', 'YB', 'jobs', '[인턴] [SUNGARD]인턴채용 : 일본 현지 프로젝트 통번역(일본어)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=888

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=888', '2013-07-04 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LG화학] 일본 해외 우수인재 모집 공고 (유첨 파일 업로드 수정) 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=887

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=887', '2013-07-04 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [LG화학] 채용설명회 (설명회 장소 수정 공지) -참석 신청 방법 수정-', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=886

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=886', '2013-07-04 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[경력] [현대자동차] 2013년 일본 경력,신입 우수인재채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=885

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=885', '2013-06-26 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [롯데케미칼] 2013 Global 인재 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=884

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=884', '2013-06-26 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈] MBA 전공자 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=883

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=883', '2013-06-18 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성SDI] 박사급 인력 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=882

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=882', '2013-06-18 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성디스플레이] 일본 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=881

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=881', '2013-06-11 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성테크윈] 일본 석/박사 전형 지원안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=879

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=879', '2013-06-05 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성에스원] 해외채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=878

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=878', '2013-06-05 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [롯데그룹] 글로벌 인재 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=877

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=877', '2013-05-30 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [롯데케미칼] 2013 Global 인재 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=876

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=876', '2013-05-30 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [삼성디스플레이] Career 상담 및 회사설명회 장소변경 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=875

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=875', '2013-05-30 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [삼성전자 DS] 채용 면담 및 회사설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=873

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=873', '2013-05-22 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[인턴] [언론NPO] 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=871

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=871', '2013-05-20 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [LG전자] 2013년 LG전자 우수 R&D연구원 채용안내 및 채용설명회 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=870

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=870', '2013-05-20 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성 에스원] 일본채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=869

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=869', '2013-05-20 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성디스플레이] Career 상담 및 회사설명회 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=867

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=867', '2013-05-17 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[인턴] 2013 한국투자증권 대졸 신입공채(인턴 전형) 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=866

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=866', '2013-05-16 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [LG디스플레이] 2013년 일본 채용면담', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=865

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=865', '2013-05-16 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [삼성전자 DS] Career Forum 홍보 및 참석 요청 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=864

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=864', '2013-05-14 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [삼성정밀화학] 채용설명회 안내 (장소 추가)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=862

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=862', '2013-05-09 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성테크윈] 채용 및 개별면담 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=861

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=861', '2013-05-08 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] 대구경북첨단의료복지연구단지 연구원 모집 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=859

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=859', '2013-04-26 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성토탈] 긴급 면접자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=858

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=858', '2013-04-23 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [현대중공업] 석/박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=857

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=857', '2013-04-20 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[경력] [제일모직] ’13년 중앙연구소 상반기 경력사원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=855

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=855', '2013-04-16 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성BP화학] 해외박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=854

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=854', '2013-04-16 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자 생활가전사업부] 채용면담 방문 (당일 내용 변경 코멘트 참고) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=853

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=853', '2013-04-10 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [한국IBM] GBS 신입컨설턴트 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=850

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=850', '2013-04-09 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [두산중공업] 채용설명회 및 석식', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=848

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=848', '2013-04-03 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [효성기술원] 회사설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=847

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=847', '2013-04-01 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성전자 System LSI사업부] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=845

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=845', '2013-03-29 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성토탈] 해외 박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=844

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=844', '2013-03-27 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성전자 메모리사업부] 취업에 관한 면담 진행', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=843

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=843', '2013-03-26 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [삼성전자 영상디스플레이] 박사 졸업자 및 졸업 예정자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=842

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=842', '2013-03-25 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [JW홀딩스] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=841

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=841', '2013-03-21 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [삼성디스플레이] 설명회 및 석식간담회 (석식장소 변경되었습니다)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=840

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=840', '2013-03-19 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[경력] [삼성전자 종합기술원] 2013년 R&D 박사 및 경력사원 모집(3/19마감)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=839

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=839', '2013-03-17 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [제일모직] 채용설명회 및 중식', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=838

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=838', '2013-03-15 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[설명회] [삼성전자 생활가전사업부] 채용설명회 및 석식간담회 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=837

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=837', '2013-03-15 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [LG 생산기술원] 동경대학 인재모집-현지 인터뷰요청', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=836

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=836', '2013-03-13 09:00:00+09'),
('webmaster', 'YB', 'jobs', '[신입] [포스코재팬] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=835

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=835', '2013-02-28 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [kt]해외우수인재 채용안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=831

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=831', '2013-02-14 09:00:00+09'),
('간바레', 'YB', 'jobs', '[설명회] <일본 후지츠 주식회사>기업설명회 개최', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=830

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=830', '2013-02-13 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [주식회사 시큐어 소프트] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=829

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=829', '2013-02-12 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전자 영상디스플레이사업부]회사설명회 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=828

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=828', '2013-02-11 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [KB금융그룹] 2013 해외 우수인재 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=827

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=827', '2013-02-11 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자 영상디스플레이사업부]오디오 분야 인재채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=825

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=825', '2013-01-31 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성토탈] 해외 박사 및 MBA 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=824

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=824', '2013-01-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [두산중공업] 금속소재 분야 석박사 인력 채용 안내‏', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=823

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=823', '2013-01-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자 VD사업부] 채용정보', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=822

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=822', '2013-01-21 09:00:00+09'),
('wklee', 'YB', 'jobs', '[신입] [재안내-설문내용이 간략화되었습니다.]기초과학연구원(IBS) 신진연구자 Pool 구축 설문조사 요청 및 연구… 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=821

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=821', '2013-01-21 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] 1/12,19の留学生向けのCareer Fair「TOP CAREER 2014」', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=820

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=820', '2013-01-07 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] 기초과학연구원(IBS) 설문조사 요청 및 연구단 연구원 모집 (스타벅스 쿠폰 드려요~^^)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=819

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=819', '2013-01-07 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [삼성전자 반도체연구소] 박사/경력 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=818

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=818', '2013-01-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [삼성디스플레이] 경력 및 신입박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=817

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=817', '2013-01-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LS엠트론] 일본유학생 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=816

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=816', '2012-12-10 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LG디스플레이]2012년 하반기 일본 채용면담', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=815

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=815', '2012-12-06 09:00:00+09'),
('wklee', 'YB', 'jobs', '[신입] セガサミーホールディングス (한국인 채용 정보)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=814

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=814', '2012-11-30 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [LG전자 생산기술원] 연구분야 소개 및 채용 설명회 일정 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=813

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=813', '2012-11-27 09:00:00+09'),
('유글', 'YB', 'jobs', '[신입] [삼성코닝정밀소재] 박사 채용안내 및 상담부스 운영 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=810

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=810', '2012-11-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성SDI] 일본 박사급 우수인재 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=809

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=809', '2012-11-21 09:00:00+09'),
('wklee', 'YB', 'jobs', '[신입] 삼성건설 주거성능연구소 채용안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=808

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=808', '2012-11-13 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] 日本大手電子部品の製造メーカー 韓国留学生募集情報', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=807

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=807', '2012-11-10 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LS엠트론] #장소 및 일정 확정# 전공세미나 개최안내 (전자공학 및 기계전공 관련) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=806

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=806', '2012-11-09 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼양그룹] 식품R&D 전문연구요원(병역특례) 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=805

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=805', '2012-11-08 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성SDI] 일본 석박사 채용관련 개별면담 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=804

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=804', '2012-11-06 09:00:00+09'),
('wklee', 'YB', 'jobs', '[신입] ＜TOP CAREER 2014 エンジニア＞', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=803

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=803', '2012-11-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자 S.LSI]해외채용 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=802

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=802', '2012-10-24 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈]’12년 박사과정 졸업 및 졸업대상자 전문연구요원(병역특례) 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=801

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=801', '2012-10-24 09:00:00+09'),
('변익주', 'YB', 'jobs', '[신입] 포스텍 신규 교원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=800

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=800', '2012-10-23 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼양그룹]전문연구요원 추가모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=799

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=799', '2012-10-17 09:00:00+09'),
('지기지기', 'YB', 'jobs', '[설명회] [회사설명회/채용면접] KOTRA 주최 한국인유학생 합동취업세미나 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=798

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=798', '2012-10-17 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼양그룹]정식지원서 작성안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=796

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=796', '2012-10-09 09:00:00+09'),
('유글', 'YB', 'jobs', '[신입] 오늘(10/3)삼양홀딩스 식사간담회 시간변경되었습니다. 5시반부터입니다 (냉무)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=795

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=795', '2012-10-03 09:00:00+09'),
('한재훈', 'YB', 'jobs', '[인턴] [인턴모집_마이나비]메이지야스다생명', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=794

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=794', '2012-10-03 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼양홀딩스]채용설명회/간담회 일정 및 장소', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=793

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=793', '2012-09-30 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈] 박사 졸업자 및 졸업대상자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=792

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=792', '2012-09-30 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [노무라종합연구소] 2012 신입사원 모집 요강', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=791

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=791', '2012-09-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [TOP CAREER] 동경 한국인 유학생을 위한 특별취직 강좌 개최 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=790

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=790', '2012-09-20 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [POSCO]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=789

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=789', '2012-09-18 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈]전문연구요원(병역특례)모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=788

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=788', '2012-09-14 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성에스원]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=787

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=787', '2012-09-14 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [서울반도체]채용공고 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=785

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=785', '2012-09-11 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [OCI] 2012 전문연구요원(병특) 모집요강', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=784

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=784', '2012-09-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [SKC] R&D 전문연구요원(병특) 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=783

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=783', '2012-09-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼양홀딩스]채용공고 및 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=782

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=782', '2012-09-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [LG화학]회사설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=781

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=781', '2012-08-27 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [NRI Consulting Seoul Office] 정기 Recruiting 지원 희망자 대상 Office…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=780

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=780', '2012-08-21 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LS엠트론]산학장학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=779

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=779', '2012-08-02 09:00:00+09'),
('leig8n', 'YB', 'jobs', '[인턴] [reminder] 롯데그룹 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=778

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=778', '2012-07-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [TOP CAREER 2014]高度外国人留学生専門の就職支援サービス', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=777

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=777', '2012-07-24 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [삼성디스플레이]경력사원채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=776

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=776', '2012-07-24 09:00:00+09'),
('leig8n', 'YB', 'jobs', '[인턴] 롯데그룹에서 인턴을 원하시는 분들을 모집합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=775

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=775', '2012-07-18 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성 SDI] #장소공지# 일본박사 채용간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=773

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=773', '2012-07-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전자 생활가전사업부] #재공지# 채용설명회 장소', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=772

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=772', '2012-07-05 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [LG이노텍]채용상담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=771

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=771', '2012-07-03 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전자 생활가전사업부] 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=770

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=770', '2012-06-30 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [금호석유화학]박사연구원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=769

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=769', '2012-06-26 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [노무라종합연구소]RA모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=768

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=768', '2012-06-23 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [도레이첨단소재] 2012년 해외우수인재 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=767

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=767', '2012-06-20 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성SDI]박사급 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=766

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=766', '2012-06-15 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LG이노텍]채용공고 (일정연장)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=765

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=765', '2012-06-15 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [삼성디스플레이]2012년 경력사원 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=764

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=764', '2012-06-15 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [SK이노베이션]채용설명회/간담회 일정 및 장소 공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=762

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=762', '2012-06-01 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LG이노텍]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=761

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=761', '2012-05-30 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자 반도체연구소]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=760

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=760', '2012-05-30 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성모바일디스플레이]입사지원 방법 및 일정', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=759

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=759', '2012-05-29 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [롯데호남석유화학]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=757

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=757', '2012-05-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전자 종합기술원]설명회 및 석식장소 공지 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=756

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=756', '2012-05-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LS엠트론]R&D장학생 모집공고(국내 최고수준)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=755

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=755', '2012-05-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈]추가 입사지원자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=754

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=754', '2012-05-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성모바일디스플레이]채용설명회 행사장 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=752

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=752', '2012-05-19 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전기]1nside edge 논문대상 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=751

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=751', '2012-05-18 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자 반도체연구소]재료, 화학전공자 근무 희망 인력조사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=750

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=750', '2012-05-17 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [LG화학]5/17 설명회 및 석식장소공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=749

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=749', '2012-05-17 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [포스코재팬]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=747

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=747', '2012-05-11 09:00:00+09'),
('minsoo429', 'YB', 'jobs', '[설명회] [LG전자]채용 및 설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=746

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=746', '2012-05-11 09:00:00+09'),
('minsoo429', 'YB', 'jobs', '[신입] [삼성디스플레이]박사급 인재 상시채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=745

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=745', '2012-05-11 09:00:00+09'),
('minsoo429', 'YB', 'jobs', '[설명회] [삼성전자 종합기술원]채용설명회 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=744

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=744', '2012-05-11 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [KIMS 재료연구소]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=743

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=743', '2012-05-10 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] (주)잡뉴스 솔로몬서치 Recruiting', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=742

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=742', '2012-05-09 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] KOTRA TOKYO 주최 채용 세미나 및 면접회 개최 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=741

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=741', '2012-05-09 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전자DS]회사설명회 장소 및 일정 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=739

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=739', '2012-05-08 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [SK이노베이션]채용설명회 공고 ##일정확정## 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=738

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=738', '2012-05-08 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [헤드헌팅] 외국계 화학회사-화학 영업 및 R&D 일본 현지 근무', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=737

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=737', '2012-05-07 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [현대자동차]채용공고 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=736

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=736', '2012-05-06 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [LG화학]채용설명회 공고 #장소공고#', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=735

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=735', '2012-05-03 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전자 DS부문 (반도체, LED)] 회사설명회 공고#수정#', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=734

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=734', '2012-04-30 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성모바일디스플레이]채용설명회 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=733

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=733', '2012-04-28 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [SKC]신입사원 및 산학장학생 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=732

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=732', '2012-04-27 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈]현지면접 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=731

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=731', '2012-04-26 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [SK하이닉스]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=730

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=730', '2012-04-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전기] 채용설명회 공고 (##일정 수정##)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=729

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=729', '2012-04-19 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈] ##채용상담 일정 및 장소 확정##', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=728

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=728', '2012-04-18 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [OCI(舊 동양제철화학)] 채용설명회 (##일정변경##)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=727

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=727', '2012-04-16 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성디스플레이] 채용설명회 및 저녁식사 (##장소 확정##)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=726

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=726', '2012-04-16 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈] 채용상담 실시 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=725

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=725', '2012-04-13 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] (주)잡뉴스 솔로몬서치 H.R. Consulting Division 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=724

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=724', '2012-04-09 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] 삼성전자 DS부문 메모리사업부 경력사원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=723

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=723', '2012-04-07 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] 삼성디스플레이 경력사원 채용공고 (4.3 ~ 4.16)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=722

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=722', '2012-04-05 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] 삼성전자 VD사업부 해외채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=721

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=721', '2012-03-30 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전자] DS부문 System LSI사업부 설명회 개최 안내‏', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=720

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=720', '2012-03-29 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [3월28일]롯데그룹 호남석유화학 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=717

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=717', '2012-03-27 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성코닝정밀소재] 박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=716

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=716', '2012-03-27 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] LG화학 석유화학 본부 석/박사 인력 채용 관련', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=711

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=711', '2012-03-16 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] GS칼텍스 이차전지 소재개발 경력사원 채용공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=710

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=710', '2012-03-14 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [SK이노베이션] 2012년도 상반기산학장학생 공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=709

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=709', '2012-03-12 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] LG화학 동경 지사 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=708

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=708', '2012-03-12 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[설명회] 현대자동차 채용설명회 사전조사 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=703

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=703', '2012-03-01 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[설명회] [3월28일]롯데그룹 호남석유화학 채용설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=699

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=699', '2012-02-27 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [2월28일]효성 저녁식사 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=698

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=698', '2012-02-23 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 【荏原製作所_留学生採用セミナー】 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=695

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=695', '2012-02-21 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] KB금융그룹', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=694

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=694', '2012-02-19 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[설명회] KT채용설명회 & 채용일정 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=688

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=688', '2012-01-31 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[경력] [삼성전자 LCD사업부 경력채용]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=687

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=687', '2012-01-28 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [삼성전자LCD사업부]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=686

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=686', '2012-01-14 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [삼성코닝정밀소재 R&D부문 박사 채용 공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=685

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=685', '2012-01-03 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [삼성전자 System LSI사업부 12년 채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=684

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=684', '2011-12-26 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [인사(HR) 채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=683

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=683', '2011-12-21 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [철강 Trading 채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=682

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=682', '2011-12-21 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 행정안전부 국립방재연구원', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=681

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=681', '2011-12-14 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [12월20일]삼성전기 (병특제외)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=680

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=680', '2011-12-11 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [채용분야추가]삼성전자 제조기술센터', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=679

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=679', '2011-12-05 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 삼성BP화학 해외박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=678

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=678', '2011-12-05 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [병특](주)바이오니아', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=677

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=677', '2011-11-29 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [채용공고]OCI 현지 인터뷰', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=676

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=676', '2011-11-28 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 효성기술원[12년 병특]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=673

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=673', '2011-11-23 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[인턴] 삼성모바일 디스플레이 ’11년 해외박사 인턴', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=672

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=672', '2011-11-08 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [LG디스플레이 채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=670

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=670', '2011-11-04 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 노무라총합연구소 서울지점 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=669

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=669', '2011-10-28 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [11월28일]삼성전자 제조기술센터 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=668

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=668', '2011-10-27 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [시급]삼성전자', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=666

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=666', '2011-10-25 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [서울외대스카우트] 서비스사업전략 과장급', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=665

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=665', '2011-10-21 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [10월26일]효성 저녁식사 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=663

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=663', '2011-10-19 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [10월24일]LS엠트론', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=662

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=662', '2011-10-12 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 서울반도체/옵토디바이스', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=655

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=655', '2011-10-03 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 삼성BP화학', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=654

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=654', '2011-10-01 09:00:00+09'),
('워렌뼝핏', 'YB', 'jobs', '[신입] KAIST IT융합연구소 전문연구요원(병역특례) 채용공고 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=652

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=652', '2011-09-23 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] OCI채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=650

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=650', '2010-09-28 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[설명회] LG화학 채용설명회겸 만찬행사 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=648

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=648', '2010-09-28 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] LG U+ 11년도TO병특', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=644

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=644', '2010-09-24 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 노무라총합연구소', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=643

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=643', '2010-09-21 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [LG화학 ~9월21일]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=641

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=641', '2010-09-15 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 골드만삭스 이벤트 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=639

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=639', '2010-09-14 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] CJ그룹 연구원모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=637

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=637', '2010-09-10 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [포스코 일본채용] 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=636

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=636', '2010-09-10 09:00:00+09'),
('워렌뼝핏', 'YB', 'jobs', '[신입] Fairchild Korea 병특 (취업 정보에 글을 못 쓰네요) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=634

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=634', '2010-09-06 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [하이닉스 11년도 병특모집]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=632

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=632', '2010-09-05 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [OCI] 2011년 하반기 R&D 연구원 모집(9.23까지)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=630

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=630', '2010-09-05 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [LG패션채용공고]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=629

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=629', '2010-09-01 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [서울외대스카우트 경유]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=628

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=628', '2010-08-30 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[경력] 삼성전자 반도체연구소 박사/경력 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=627

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=627', '2010-08-29 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] SKC R&D인재모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=626

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=626', '2010-08-26 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 서울반도체/서울옵토디바이스', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=622

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=622', '2010-08-23 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [OCI병특모집] 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=620

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=620', '2010-08-19 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [8월29일]삼성중공업 채용 면담 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=619

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=619', '2010-08-18 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [헤드헌팅 경유] 외국계 반도체 회사 솔라셀 엔지니어', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=618

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=618', '2010-08-18 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[경력] [헤드헌터 경유] 국내 글로벌 대기업 금형설계 경력', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=617

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=617', '2010-08-18 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[설명회] [롯데그룹, 호남석유화학]설명회 8월30일 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=616

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=616', '2010-08-15 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 삼성테크윈 면담 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=614

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=614', '2010-08-04 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [삼성테크윈]면접일정 변경', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=613

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=613', '2010-07-29 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] ETRI정규 연구직 (전문연구요원 포함), 행정직 공개채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=610

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=610', '2010-07-20 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [서울외대스카우트] 글로벌 대기업 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=609

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=609', '2010-07-19 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [분야추가]삼성테크윈 MBA채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=606

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=606', '2010-07-15 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 2차전지 일본 마케팅 분야 인재 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=605

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=605', '2010-07-15 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 삼성전자 반도체연구소 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=604

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=604', '2010-07-12 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[설명회] [7월20일]삼성토탈설명회 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=603

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=603', '2010-07-12 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[경력] SK이노베이션 하반기 경력연구원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=602

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=602', '2010-07-08 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] LG전자 생산기술원 R&D 연구원채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=601

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=601', '2010-07-08 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] 변경사항 및 재공지 - 삼성중공업(주) 채용분야 공고 (박사졸업예정자/군필) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=597

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=597', '2010-07-05 09:00:00+09'),
('김호준', 'YB', 'jobs', '[신입] TOP CAREER2013 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=596

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=596', '2010-07-02 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] 서울반도체 / 서울옵토디바이스', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=595

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=595', '2010-07-02 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [재공지]호남석유화학', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=591

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=591', '2010-06-25 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [병특]삼성모바일디스플레이', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=590

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=590', '2010-06-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] 삼성코닝정밀소재 채용설명회 연기', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=589

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=589', '2010-06-24 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[설명회] [7월11일 삼성전자]채용 설명회 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=587

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=587', '2010-06-22 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [헤드헌터 경유]일본대기업 한국법인 - 회계팀', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=585

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=585', '2010-06-17 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [재공지]장소확정 LG전자채용면담 6월17일금요일', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=583

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=583', '2010-06-14 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [6월30일]삼성코닝정밀소재 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=578

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=578', '2010-06-12 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[신입] [채용공고]GS칼텍스 기술연구소', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=576

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=576', '2010-06-09 09:00:00+09'),
('이우진', 'YB', 'jobs', '[신입] 삼성물산', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=575

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=575', '2010-06-08 09:00:00+09'),
('SHKIM', 'YB', 'jobs', '[설명회] [6월15일]삼성SDI 및 SBLiMotive의 합동 설명회 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=574

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=574', '2010-06-07 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] 삼성전자 반도체사업부 system LSI', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=573

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=573', '2010-06-04 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성SDI & BOSCH] 합작기업 SB리모티브 우수 인력 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=572

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=572', '2010-06-03 09:00:00+09'),
('KSA', 'YB', 'jobs', '[인턴] [국민은행] 2011 KB 하계 인턴쉽 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=571

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=571', '2010-06-03 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [재공지]ETRI병특포함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=569

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=569', '2010-05-31 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] KIST채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=568

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=568', '2010-05-31 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] LG화학 채용설명회 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=565

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=565', '2010-05-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전기]헤드헌터 경유', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=564

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=564', '2010-05-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] 호남 석유화학 인재 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=563

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=563', '2010-05-25 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [공식]삼성테크윈 채용설명회, 면접 - 일본지역 유학생 전체대상', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=561

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=561', '2010-05-24 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] 삼성테크윈 채용설명회 (추가 실시에 관하여)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=560

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=560', '2010-05-23 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] LG전자 채용면담 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=557

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=557', '2010-05-21 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [대기업 화학사]컨택후 사명공개 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=556

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=556', '2010-05-21 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] LG이노텍 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=555

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=555', '2010-05-21 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [장소,일정 변경사항 있음]삼성테크윈 채용 면담 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=548

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=548', '2010-05-13 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [재공지]OCI 채용설명회 개최 및 해외우수인재 상시채용 안내 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=547

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=547', '2010-05-12 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] LG히다찌 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=546

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=546', '2010-05-07 09:00:00+09'),
('김호준', 'YB', 'jobs', '[신입] [도레이첨단소재㈜] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=544

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=544', '2010-05-03 09:00:00+09'),
('김호준', 'YB', 'jobs', '[설명회] [내용 업데이트]OCI주식회사(舊 동양제철화학) 채용설명회 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=542

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=542', '2010-05-02 09:00:00+09'),
('김현수', 'YB', 'jobs', '[설명회] 삼양그룹 채용설명회 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=540

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=540', '2010-04-27 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] 삼성중공업(주) 채용분야 공고 (박사졸업예정자/군필) 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=536

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=536', '2010-04-22 09:00:00+09'),
('김호준', 'YB', 'jobs', '[신입] [삼성중공업(주)] 채용분야 공고 (박사졸업예정자/군필) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=534

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=534', '2010-04-21 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] LS엠트론 해외유학생 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=532

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=532', '2010-04-12 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] KCC(구,금강고려화학) 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=531

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=531', '2010-04-11 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] LG전자 채용일정 변경에 관하여 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=528

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=528', '2010-04-08 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] 한국에너지기술연구원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=527

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=527', '2010-04-07 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] 대한항공 항공우주사업본부 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=525

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=525', '2010-04-05 09:00:00+09'),
('장화선', 'YB', 'jobs', '[신입] [LG화학] 채용 공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=524

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=524', '2010-04-05 09:00:00+09'),
('김호준', 'YB', 'jobs', '[신입] [SK이노베이션] R&D 산학장학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=523

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=523', '2010-04-05 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] [(주)아벨리노] 연구원 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=522

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=522', '2010-03-31 09:00:00+09'),
('김호준', 'YB', 'jobs', '[신입] (수정) [LG전자] 채용안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=519

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=519', '2010-03-14 09:00:00+09'),
('장화선', 'YB', 'jobs', '[신입] [삼성전자 태양전지사업부] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=518

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=518', '2010-03-12 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [Corporate Directions, Inc] アジア人留学生を対象とした採用セミナー・適性試験お知らせ', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=516

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=516', '2010-03-03 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼양사] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=514

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=514', '2010-02-28 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LG전자] 채용안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=513

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=513', '2010-02-28 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [東京大学外国人留学生のためのジョブ・フェア]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=512

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=512', '2010-02-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [Google Japan] Associate Product Manager Intern & Product Ma…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=511

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=511', '2010-02-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [KB금융그룹] 해외 우수인재 채용안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=510

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=510', '2010-02-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [SB리모티브_삼성SDI&BOSCH 합작기업] 박사 및 경력인원 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=509

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=509', '2010-02-16 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자] 생산기술연구소 채용안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=508

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=508', '2010-02-15 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성코닝정밀소재] 박사인력 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=506

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=506', '2010-02-10 09:00:00+09'),
('이우진', 'YB', 'jobs', '[신입] [삼성물산 건설부문] 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=501

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=501', '2010-01-31 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [서울반도체 일본법인] 한일/일한 번역자 구인공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=500

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=500', '2010-01-26 09:00:00+09'),
('푸딩', 'YB', 'jobs', '[신입] [SK이노베이션] 연구인력 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=499

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=499', '2010-01-10 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [ソロモン投資証券]採用案内', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=498

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=498', '2010-01-10 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [LS엠트론] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=497

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=497', '2010-01-10 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [효성그룹] 전문연구요원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=496

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=496', '2010-01-02 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성BP화학] 화공공학 박사 모집 공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=493

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=493', '2009-12-16 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성전기] 취업설명회 안내 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=487

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=487', '2009-12-01 09:00:00+09'),
('장화선', 'YB', 'jobs', '[경력] [삼성전자 반도체사업부] 경력사원', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=486

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=486', '2009-11-25 09:00:00+09'),
('최기현', 'YB', 'jobs', '[설명회] [삼성전기 기판사업부] 채용설명회 12/8(수)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=481

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=481', '2009-11-17 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [ソニー株式会社（ＳＯＮＹ）] 会社説明会 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=480

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=480', '2009-11-17 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [LG히다찌] 채용설명회 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=479

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=479', '2009-11-17 09:00:00+09'),
('최기현', 'YB', 'jobs', '[신입] [삼성전기] 해외 박사 인력 채용 (수정완료)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=478

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=478', '2009-11-10 09:00:00+09'),
('최기현', 'YB', 'jobs', '[신입] [산업기술연구회] 기술연구직 모집 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=477

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=477', '2009-11-08 09:00:00+09'),
('푸딩', 'YB', 'jobs', '[신입] [삼성 LED] 인재 채용 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=475

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=475', '2009-11-03 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼성모바일디스플레이] 일본박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=473

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=473', '2009-10-28 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [삼성모바일디스플레이] 취업설명회(장소공지) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=472

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=472', '2009-10-28 09:00:00+09'),
('최기현', 'YB', 'jobs', '[신입] [일본계 정밀화학기업] R&D Engineer 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=470

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=470', '2009-10-20 09:00:00+09'),
('김현수', 'YB', 'jobs', '[인턴] [한국무역협회] 해외유학생 인턴쉽참가자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=469

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=469', '2009-10-20 09:00:00+09'),
('xefri', 'YB', 'jobs', '[설명회] [취업박람회] Daijob', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=468

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=468', '2009-10-13 09:00:00+09'),
('최기현', 'YB', 'jobs', '[신입] [국방과학연구소] 정규직 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=467

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=467', '2009-10-12 09:00:00+09'),
('김현수', 'YB', 'jobs', '[설명회] 서울반도체/서울옵토디바이스 채용 면담 & 기업설명회 (2010.10.15) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=464

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=464', '2009-10-06 09:00:00+09'),
('푸딩', 'YB', 'jobs', '[신입] 삼성석유화학 10년 하반기 인재채용 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=462

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=462', '2009-10-05 09:00:00+09'),
('횬코', 'YB', 'jobs', '[신입] CJ제일제당 10년 하반기 R&D 석사신입사원모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=457

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=457', '2009-09-27 09:00:00+09'),
('최기현', 'YB', 'jobs', '[신입] LG Display 채용상담 10월13일(수) (장소공지) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=455

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=455', '2009-09-27 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [LG CNS] 채용상담 (장소공지) 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=451

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=451', '2009-09-27 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [국방과학연구소] 채용공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=448

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=448', '2009-09-21 09:00:00+09'),
('austen', 'YB', 'jobs', '[신입] [LS 전선㈜] 중앙 연구소 기반기술연구센터 금속연구그룹', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=447

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=447', '2009-09-13 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] [아모레 퍼시픽] 석・박사 수시채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=446

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=446', '2009-09-11 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] ”TOP CAREER 2012” 소개～고학력 외국인유학생 취업지원서비스～', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=445

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=445', '2009-09-03 09:00:00+09'),
('김호준', 'YB', 'jobs', '[신입] [한양대학교]신임교원 특별채용공고 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=440

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=440', '2009-08-30 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] [삼성코닝정밀소재] 박사급 연구원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=439

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=439', '2009-08-30 09:00:00+09'),
('최기현', 'YB', 'jobs', '[신입] [삼성전기] 2010년 하반기 3급 공채', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=437

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=437', '2009-08-29 09:00:00+09'),
('최기현', 'YB', 'jobs', '[신입] [도레이첨단소재] 2010년도 도레이첨단소재 해외 인재 초빙 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=429

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=429', '2009-08-26 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼성전자반도체메모리]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=428

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=428', '2009-08-07 09:00:00+09'),
('최기현', 'YB', 'jobs', '[설명회] [LG화학] 7/30 17:30, 산죠회관 001 취업 설명회 및 입사 지원 안내 (학/석사 대상) 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=419

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=419', '2009-07-20 09:00:00+09'),
('김호준', 'YB', 'jobs', '[신입] [삼성전기] 일본공대 박사채용 공고 (~7/31)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=418

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=418', '2009-07-20 09:00:00+09'),
('김호준', 'YB', 'jobs', '[신입] [CDI] 아시아 인재 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=417

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=417', '2009-07-20 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [삼성전기기판사업부]채용설명회공고 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=415

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=415', '2009-07-16 09:00:00+09'),
('김민규', 'YB', 'jobs', '[경력] [삼성토탈]연구개발 경력채용안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=412

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=412', '2009-07-12 09:00:00+09'),
('김민규', 'YB', 'jobs', '[인턴] [インターブランドジャパン/インターンシップ]인턴쉽모집 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=405

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=405', '2009-07-02 09:00:00+09'),
('xefri', 'YB', 'jobs', '[설명회] [동부그룹]채용 설명회(장소공지) 댓글 10 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=395

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=395', '2009-06-29 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [LG전자]병역특례자채용모집(2010년입사가능자) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=393

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=393', '2009-06-28 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [하이닉스반도체]채용공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=380

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=380', '2009-06-21 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [재공지] [삼성종기원] 채용설명회 댓글 100 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=279

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=279', '2009-06-10 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [LG화학]채용공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=273

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=273', '2009-06-02 09:00:00+09'),
('김호준', 'YB', 'jobs', '[설명회] [하이닉스반도체] 채용설명회공고 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=266

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=266', '2009-05-30 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼성전자영상디스플레이사업부] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=265

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=265', '2009-05-26 09:00:00+09'),
('최기현', 'YB', 'jobs', '[설명회] [LG화학기술연구원] 기업 및 채용 설명회 (산죠회관 203 6/17 14:00~) 댓글 12 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=257

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=257', '2009-05-20 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼성테크윈]채용면담_장소,시간공지', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=256

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=256', '2009-05-07 09:00:00+09'),
('xefri', 'YB', 'jobs', '[신입] [삼성전기] 박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=255

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=255', '2009-05-07 09:00:00+09'),
('푸딩', 'YB', 'jobs', '[신입] [삼성전기] 일본 석사 장학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=254

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=254', '2009-05-07 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼성테크윈]채용면담_장소추후공지 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=249

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=249', '2009-05-04 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [삼성테크윈]채용설명회 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=248

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=248', '2009-05-01 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼성전자생산기술연구소]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=247

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=247', '2009-04-27 09:00:00+09'),
('장화선', 'YB', 'jobs', '[경력] [유럽계 화장품회사] 한국인 인재 채용 (경력직)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=246

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=246', '2009-04-22 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [동부제철] 해외 우수 석·박사 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=245

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=245', '2009-04-16 09:00:00+09'),
('최기현', 'YB', 'jobs', '[신입] [삼성SDI] R&D 박사 채용 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=244

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=244', '2009-04-13 09:00:00+09'),
('김호준', 'YB', 'jobs', '[설명회] [LG이노텍] 동경대학 Recruiting 설명회 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=239

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=239', '2009-04-08 09:00:00+09'),
('푸딩', 'YB', 'jobs', '[신입] [LG 생산성연구원] 일본 우수 인재 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=237

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=237', '2009-04-06 09:00:00+09'),
('김현수', 'YB', 'jobs', '[신입] [최종 공지 HR Bridge] Career Path Consulting세미나 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=235

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=235', '2009-04-05 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [LG전자_시간,장소재공지]취업설명회 및 일본 우수 인재 채용 안내 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=232

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=232', '2009-03-31 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [헤드헌트코리아] 화학분야 기획업무 담당 채용안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=231

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=231', '2009-03-29 09:00:00+09'),
('xefri', 'YB', 'jobs', '[신입] [삼성코닝정밀] 박사급 채용안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=228

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=228', '2009-03-25 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼성전자영상디스플레이사업부] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=227

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=227', '2009-03-23 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼양그룹] 일본우수연구인력채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=226

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=226', '2009-03-19 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자] DMC연구소 채용안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=225

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=225', '2009-03-17 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [SB LiMotive] 박사 및 경력사원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=223

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=223', '2009-03-13 09:00:00+09'),
('김민규', 'YB', 'jobs', '[경력] [HR Bridge] 진로 및 경력관리 간담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=222

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=222', '2009-03-11 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성석유화학] 2010 인재채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=221

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=221', '2009-02-26 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성중공업] 건축 토목부문', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=220

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=220', '2009-02-19 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [수정 삼성코닝정밀유리]기술인터뷰및취업설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=218

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=218', '2009-02-09 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [동경대] 외국인 학생 잡페어', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=217

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=217', '2009-02-09 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [신한은행] 신입지원', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=215

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=215', '2009-02-02 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [동경대] 동경대학교 개최 외국인 학생 취업설명회 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=214

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=214', '2009-01-27 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [신한은행] 취업설명회 장소 공지 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=212

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=212', '2009-01-21 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성코닝정밀유리] 동경대 취업설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=206

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=206', '2009-01-16 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [신한은행] 본교 취업설명회 참가신청 댓글 13 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=193

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=193', '2009-01-05 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [LG전자] HA 본부 신입.경력 사원모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=190

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=190', '2008-12-23 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [신한은행] 취업설명회 참가자 사전조사 댓글 15 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=175

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=175', '2008-12-12 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [LS엠트론] 취업설명회 재공지 댓글 14 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=152

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=152', '2008-11-26 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [일본기업 입사]TOP CAREER 외국인 일본기업 취업 박람회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=148

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=148', '2008-11-23 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [LS엠트론] 취업설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=147

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=147', '2008-11-20 09:00:00+09'),
('임화진', 'YB', 'jobs', '[설명회] [MIDAS IT] 취업설명회 안내 댓글 10 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=145

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=145', '2008-11-18 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [LS엠트론] 중앙연구소 해외우수인력채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=144

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=144', '2008-11-10 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자종합기술원] 생명과학, 단백질 합성분야 댓글 7 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=135

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=135', '2008-10-26 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [삼성전자반도체연구소] 해외우수인력채용공고 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=131

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=131', '2008-10-13 09:00:00+09'),
('손석의', 'YB', 'jobs', '[신입] [삼성중공업] 동경대학 석박사 채용공고‏', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=130

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=130', '2008-10-12 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성테크윈] 일본 현지 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=128

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=128', '2008-10-06 09:00:00+09'),
('세아상역', 'YB', 'jobs', '[신입] [세아상역] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=127

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=127', '2008-10-01 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성토탈] 연구원 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=104

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=104', '2008-09-27 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [서울대학교] 박사후연구원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=77

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=77', '2008-09-23 09:00:00+09'),
('인사', 'YB', 'jobs', '[신입] [포스코] 해외채용 안내 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=76

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=76', '2008-09-23 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [삼성LED] 취업설명회(9월 24일(목), 산죠회관, 17:30~ 19:00) 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=60

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=60', '2008-09-17 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자종합기술원] 전공자/연구원 간담회 댓글 17 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=59

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=59', '2008-09-17 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [LG Display] 취업설명회(9월 30일, 산죠회관 203, 오전 10:30~ 오후 5:00) 댓글 16 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=58

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=58', '2008-09-14 09:00:00+09'),
('정욱', 'YB', 'jobs', '[설명회] [삼성전기] 취업설명회 (9월 28일, 산죠회관 203, 17:30~, USB 16G) 댓글 21 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=56

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=56', '2008-09-10 09:00:00+09'),
('xefri', 'YB', 'jobs', '[신입] [NHN] NHN / Business Platform 정기채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=55

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=55', '2008-09-09 09:00:00+09'),
('xefri', 'YB', 'jobs', '[신입] [stx] 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=54

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=54', '2008-09-09 09:00:00+09'),
('xefri', 'YB', 'jobs', '[신입] [삼성그룹] 3급 신입채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=53

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=53', '2008-09-08 09:00:00+09'),
('김민규', 'YB', 'jobs', '[설명회] [LG Display] 취업설명회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=52

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=52', '2008-09-07 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [LS전선]채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=49

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=49', '2008-09-04 09:00:00+09'),
('김민규', 'YB', 'jobs', '[신입] [현대제철]제철제강부문 채용공고 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=48

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=48', '2008-09-04 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [GS칼텍스] 인재 풀을 작성 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=45

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=45', '2008-08-29 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [협조요청] LG전자 Techno-Conference 참가희망자 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=42

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=42', '2008-08-20 09:00:00+09'),
('정욱', 'YB', 'jobs', '[신입] [채용 공고] 삼성전자 반도체 연구소 구매팀', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=41

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=41', '2008-08-19 09:00:00+09'),
('정욱', 'YB', 'jobs', '[신입] [채용정보] LG DISPLAY연구소, 이력서및 연구소개서', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=40

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=40', '2008-08-19 09:00:00+09'),
('정욱', 'YB', 'jobs', '[신입] [시간수정 18시] 삼성전자 시스템 LSI사업부, (8/25 (화), 18:00~ 신오오쿠보 고려),', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=39

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=39', '2008-08-19 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성중공업] 비공식 취업설명회 댓글 15 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=18

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=18', '2008-08-14 09:00:00+09'),
('정욱', 'YB', 'jobs', '[설명회] [취업 설명회] 삼성전자 시스템 LSI사업부, (8/25 (화), 17:00~ 신오오쿠보 고려) 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=17

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=17', '2008-08-14 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [(주)대상] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=13

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=13', '2008-08-11 09:00:00+09'),
('정욱', 'YB', 'jobs', '[신입] [채용 공고] LG전자 CTO Display 연구소 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=12

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=12', '2008-08-11 09:00:00+09'),
('임화진', 'YB', 'jobs', '[신입] [삼성중공업] 채용공고 (수정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=11

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=11', '2008-08-05 09:00:00+09'),
('정욱', 'YB', 'jobs', '[신입] LG전자 CAE 연구원 모집의 件', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=10

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=10', '2008-08-05 09:00:00+09'),
('KSA', 'YB', 'jobs', '[경력] [삼성에버랜드] 건축설계 경력자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=9

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=9', '2008-08-01 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성중공업] 채용공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=8

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=8', '2008-07-29 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자]DS부문(본사) 반도체사업부 특별채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=7

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=7', '2008-07-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성SDI]해외우수인재채용(박사급연구원)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=6

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=6', '2008-07-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성전자]반도체 부문 해외 우수인재채용(박사급연구원)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=5

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=5', '2008-07-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[신입] [삼성중공업] 채용공고 (박사과정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=4

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=4', '2008-07-22 09:00:00+09'),
('KSA', 'YB', 'jobs', '[설명회] [삼성테크윈]채용설명회 방명카드, 이력서, 연구기술서제출에 관해서', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=3

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_04&wr_id=3', '2008-07-22 09:00:00+09'),
('TheWelcome', 'YB', 'parttime', '[번역·통역] [현지 수출상담회] SW고성장클럽 소속 기업 통역 및 운영요원 모집, 10/28(수)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1526

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1526', '2026-07-30 09:00:00+09'),
('박정근', 'YB', 'parttime', '[번역·통역] 도교 하수공사 전시회 통역 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1525

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1525', '2026-07-29 09:00:00+09'),
('신정훈', 'YB', 'parttime', '[번역·통역] [급구/일자별 지원 가능] 7월 22·23·24일 도쿄지역 한일 및 일한 통역 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1524

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1524', '2026-07-16 09:00:00+09'),
('박성진', 'YB', 'parttime', '[장기] 동경대학 캠퍼스 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1523

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1523', '2026-07-07 09:00:00+09'),
('정혜윤', 'YB', 'parttime', '[번역·통역] 국회미래연구원[7/10] 오후 도쿄 한일 통역 [긴급] 급구', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1522

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1522', '2026-06-29 09:00:00+09'),
('전유리', 'YB', 'parttime', '[장기] [합천영재교육원] 도쿄대학 캠퍼스투어 도와주실 수 있는 분 찾습니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1520

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1520', '2026-06-15 09:00:00+09'),
('Jason', 'YB', 'parttime', '[번역·통역] Tokyo Game Show 2026 통역 및 현장 지원 인력 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1517

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1517', '2026-05-26 09:00:00+09'),
('홍영주', 'YB', 'parttime', '[번역·통역] 도쿄 박람회 견학 통역해주실분 구합니다 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1512

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1512', '2026-05-21 09:00:00+09'),
('jm', 'YB', 'parttime', '[번역·통역] [5월 13일 ~5월 14일] _ (도쿄 현지 )한국어- 영어 통역사 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1511

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1511', '2026-05-06 09:00:00+09'),
('kim', 'YB', 'parttime', '[장기] 도쿄대학교 캠퍼스투어해주실 학생, 졸업생분을 찾고있어요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1510

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1510', '2026-05-05 09:00:00+09'),
('이재희', 'YB', 'parttime', '[번역·통역] 일본 도쿄 게임쇼 2026ㅣ부스 통역사 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1509

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1509', '2026-04-30 09:00:00+09'),
('하마사', 'YB', 'parttime', '[번역·통역] 뷰티 통역 상담 아르바이트 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1507

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1507', '2026-04-28 09:00:00+09'),
('윤민준', 'YB', 'parttime', '[번역·통역] 5월 18일 (월) 도쿄 뷰티월드 통역사 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1506

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1506', '2026-04-26 09:00:00+09'),
('로지브라더스', 'YB', 'parttime', '[번역·통역] [로지브라더스] EDIX 도쿄 일/한 통역 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1505

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1505', '2026-04-20 09:00:00+09'),
('TAKAHASHI TOMOK…', 'YB', 'parttime', '[번역·통역] 건설 관련 전시회 통역 6/18', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1504

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1504', '2026-04-13 09:00:00+09'),
('kuge', 'YB', 'parttime', '[장기] 【翻訳アルバイト】YouTube漫画動画の翻訳依頼【「BLサンドいかがですか？」】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1500

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1500', '2026-03-28 09:00:00+09'),
('송준수', 'YB', 'parttime', '[번역·통역] 도쿄 빅사이트 통역원 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1499

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1499', '2026-03-11 09:00:00+09'),
('김가영', 'YB', 'parttime', '[번역·통역] 박람회 통역 구인 (도쿄 빅사이트)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1498

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1498', '2026-03-03 09:00:00+09'),
('오정섭', 'YB', 'parttime', '[장기] 2026 일본 도쿄 교육 종합 전시회(EDIX) 전시 스태프 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1497

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1497', '2026-03-02 09:00:00+09'),
('채금란', 'YB', 'parttime', '[장기] ●수학여행단-안전요원 아르바이트 모집 (인원 4명)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1496

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1496', '2026-02-27 09:00:00+09'),
('배성우', 'YB', 'parttime', '[번역·통역] 일본어 한국어 번역 및 역번역 등', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1495

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1495', '2026-01-24 09:00:00+09'),
('서수민', 'YB', 'parttime', '[장기] 1월15,16,17일중 2시간정도 학교 투어 해주실분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1493

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1493', '2026-01-12 09:00:00+09'),
('고동연', 'YB', 'parttime', '[번역·통역] [KBS 스페셜 다큐] 도쿄 촬영 통역 아르바이트 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1492

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1492', '2026-01-02 09:00:00+09'),
('채금란', 'YB', 'parttime', '[장기] 동경대(혼고) 캠퍼스 투어 아르바이트 모집 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1489

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1489', '2025-12-24 09:00:00+09'),
('서수민', 'YB', 'parttime', '[장기] 안녕하세요 1월 15,16일 반나절 도쿄대 투어 해주실 학생분!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1488

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1488', '2025-12-15 09:00:00+09'),
('남수현', 'YB', 'parttime', '[장기] [지원 마감] SG EXPO 2026 도쿄 전시 스태프 모집 (3/17 ~ 3/19, 도쿄 빅사이트)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1487

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1487', '2025-12-12 09:00:00+09'),
('김승영', 'YB', 'parttime', '[장기] 캠퍼스 투어 안내하실분 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1486

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1486', '2025-12-11 09:00:00+09'),
('이정아', 'YB', 'parttime', '[장기] 도쿄대학 투어가이드해주실 도쿄대학생분 찾습니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1485

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1485', '2025-11-08 09:00:00+09'),
('김동필', 'YB', 'parttime', '[번역·통역] iREX 2025 DAEJEON K-Robot Pavilion참가기업 지원할 통역원 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1484

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1484', '2025-11-07 09:00:00+09'),
('김희재', 'YB', 'parttime', '[번역·통역] 2025년 11월, 2026년 1월 중 도쿄 가이드 및 간단한 통역 알바 가능하신가요?', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1483

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1483', '2025-11-07 09:00:00+09'),
('위혜정', 'YB', 'parttime', '[번역·통역] [급구] 11.01-02 도쿄 한-일 통역사 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1482

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1482', '2025-10-30 09:00:00+09'),
('김승현', 'YB', 'parttime', '[번역·통역] [통역]박람회 통역알바 구함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1480

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1480', '2025-10-17 09:00:00+09'),
('jm', 'YB', 'parttime', '[번역·통역] [통역사 모집] Japan IT Week Autumn (도쿄) 10월 22일 ~ 24일', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1478

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1478', '2025-10-04 09:00:00+09'),
('ABNkr', 'YB', 'parttime', '[번역·통역] [구인완료] 10/16-29일 기간 센다이, 도쿄, 오사카 각 도시에서 일과중 통역 및 수행 알바', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1477

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1477', '2025-09-30 09:00:00+09'),
('TheWelcome', 'YB', 'parttime', '[번역·통역] [Japan IT Week 2025] NIPA관 전시 통역 및 운영요원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1476

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1476', '2025-09-22 09:00:00+09'),
('김민지', 'YB', 'parttime', '[번역·통역] [통역원 모집] H.C.R 2025 한국 전시회 홍보 지원 (10/9, 도쿄 빅사이트)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1475

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1475', '2025-09-05 09:00:00+09'),
('송영주', 'YB', 'parttime', '[단기] [9월/1달 단기 알바]도쿄 내 한식당 점주 및 매니저 대상 설문조사 조사원 모집 (식당 방문 및 전화)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1473

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1473', '2025-08-27 09:00:00+09'),
('변해원', 'YB', 'parttime', '[번역·통역] [급구] 8/7(목) 13시(약 2시간), 8/8(금) 10시(약 2시간) 통역 알바 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1470

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1470', '2025-07-27 09:00:00+09'),
('박윤진', 'YB', 'parttime', '[번역·통역] [급구] 7/13(월) 오전 11시 (약2시간) 통역 알바 - 시급 많음 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1465

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1465', '2025-07-11 09:00:00+09'),
('김건후', 'YB', 'parttime', '[장기] 6월 말 도쿄 지역 유치원 견학', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1462

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1462', '2025-06-09 09:00:00+09'),
('jm', 'YB', 'parttime', '[번역·통역] [구인] 6월 4일-5일 박람회 한영통역사 님을 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1461

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1461', '2025-05-26 09:00:00+09'),
('worldwise', 'YB', 'parttime', '[번역·통역] 도쿄에서 통역사님 찾습니다. (장기 근무 가능)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1460

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1460', '2025-05-24 09:00:00+09'),
('정영식', 'YB', 'parttime', '[번역·통역] 수행 통역 의뢰', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1458

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1458', '2025-05-03 09:00:00+09'),
('김수홍', 'YB', 'parttime', '[번역·통역] [정우전기(주)] M-Tech Tokyo 전시회 통역 아르바이트 구인 (5/23 까지 구인)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1457

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1457', '2025-05-01 09:00:00+09'),
('etranspia', 'YB', 'parttime', '[번역·통역] 믿고 맡길 수 있는 통역 번역 가능합니다 :)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1456

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1456', '2025-04-24 09:00:00+09'),
('Hanghwa', 'YB', 'parttime', '[단기] K패션 브랜드 마켓리서치 어시스턴트 업무(단기 인턴 구인)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1455

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1455', '2025-03-18 09:00:00+09'),
('구본주', 'YB', 'parttime', '[장기] [전자/전기/컴퓨터공학 우대]AI 반도체 기업 부스 스태프 모집 Japan IT Week Spring 202…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1453

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1453', '2025-03-04 09:00:00+09'),
('박형주', 'YB', 'parttime', '[번역·통역] 2.26~3.2(일부 가능) 도쿄 일한 통역 아르바이트 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1452

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1452', '2025-02-20 09:00:00+09'),
('Pitter Petter', 'YB', 'parttime', '[번역·통역] [TOKYO BIG SIGHT] Tokyo Interpet(반려동물) 통역 및 운영 인원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1448

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1448', '2025-02-12 09:00:00+09'),
('worldwise', 'YB', 'parttime', '[번역·통역] 일본에서 활동하시는 [통·번역사 / 가이드] 를 찾습니다!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1446

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1446', '2025-02-08 09:00:00+09'),
('Kim', 'YB', 'parttime', '[장기] 저희는 Youtube 홍보 영상 프로젝트를 위한 한국 남성을 찾고 있습니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1445

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1445', '2025-02-05 09:00:00+09'),
('Kim', 'YB', 'parttime', '[장기] Korean guys for a Youtube Promotion Video Project', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1444

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1444', '2025-02-05 09:00:00+09'),
('콘진원', 'YB', 'parttime', '[장기] 한국콘텐츠진흥원 도쿄비즈니스센터 아르바이트 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1443

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1443', '2025-01-22 09:00:00+09'),
('조민수', 'YB', 'parttime', '[번역·통역] 25.01.16 당일 한일 번역 아르바이트 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1442

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1442', '2024-12-27 09:00:00+09'),
('이아란', 'YB', 'parttime', '[장기] Blender, 간단한 디지털 컨텐츠 제작업무', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1441

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1441', '2024-12-19 09:00:00+09'),
('DoublejHoldings', 'YB', 'parttime', '[번역·통역] TOKYO COSME Week 2025 부스 운영 통역사님 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1440

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1440', '2024-12-10 09:00:00+09'),
('김태웅', 'YB', 'parttime', '[단기] 단기 일본어 (여)선생님 구함 (1달)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1439

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1439', '2024-12-02 09:00:00+09'),
('김태호', 'YB', 'parttime', '[번역·통역] 건축관련 통역 단기 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1438

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1438', '2024-11-11 09:00:00+09'),
('김소영', 'YB', 'parttime', '[단기] 오가노이드사이언스사 일본사무소 단기 인턴 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1437

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1437', '2024-10-29 09:00:00+09'),
('이민화', 'YB', 'parttime', '[장기] 어린이 놀이 선생님을 구합니다. 코마바 주변', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1436

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1436', '2024-10-11 09:00:00+09'),
('김세진', 'YB', 'parttime', '[장기] 도쿄대 혼고 캠퍼스 안내 학생 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1435

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1435', '2024-10-10 09:00:00+09'),
('김찬욱', 'YB', 'parttime', '[번역·통역] "2024 일본 패션월드도쿄 전시회 한국관" 전시부스 통역 담당하실 분 모집 (10/15~10/17)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1434

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1434', '2024-10-08 09:00:00+09'),
('이수진', 'YB', 'parttime', '[장기] K-Girls’ Day(행사명)에서 도쿄대학교를 안내해 주실 이공계열 대학생을 찾습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1433

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1433', '2024-10-01 09:00:00+09'),
('이수민', 'YB', 'parttime', '[번역·통역] 10월 17~18 / 2024 ad:tech Tokyo 전시회 통역원을 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1432

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1432', '2024-09-27 09:00:00+09'),
('신경미', 'YB', 'parttime', '[번역·통역] 일본 현지 복지 관련 취재 한일 순차통역사 모집(장소: 9/9 도쿄, 9/10-13 오사카)＞(~9/5일(목…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1430

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1430', '2024-09-04 09:00:00+09'),
('채금란', 'YB', 'parttime', '[장기] Re: 수학여행-야간 안전 요원 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1429

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1429', '2024-08-30 09:00:00+09'),
('안민영', 'YB', 'parttime', '[번역·통역] [통역알바구함] 10/17(목)-10/19(토) 빅사이트-우주항공전', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1428

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1428', '2024-08-29 09:00:00+09'),
('채금란', 'YB', 'parttime', '[장기] 수학여행-야간 안전 요원 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1427

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1427', '2024-08-28 09:00:00+09'),
('Hong Jeanpyou', 'YB', 'parttime', '[장기] 아르바이트 구함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1426

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1426', '2024-08-25 09:00:00+09'),
('채금란', 'YB', 'parttime', '[장기] Re: 도쿄대학교 혼고캠퍼스 안내해 주실 학생분-완료되었습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1423

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1423', '2024-08-23 09:00:00+09'),
('채금란', 'YB', 'parttime', '[장기] 도쿄대학교 혼고캠퍼스 안내해 주실 학생분 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1422

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1422', '2024-08-22 09:00:00+09'),
('에이든랩', 'YB', 'parttime', '[장기] 도쿄 하라주쿠 인플루언서&팝업스토어 행사 아르바이트 모집!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1421

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1421', '2024-08-20 09:00:00+09'),
('지상미', 'YB', 'parttime', '[단기] [단기 알바] 도쿄 기프트쇼 2024 파트타임 모집공고 (9/4-6)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1419

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1419', '2024-08-19 09:00:00+09'),
('langskim', 'YB', 'parttime', '[번역·통역] 8월 말 도쿄에서 일본어, 한국어 통역 가능한 통역사님 모십니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1418

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1418', '2024-08-09 09:00:00+09'),
('langskim', 'YB', 'parttime', '[번역·통역] 8월 말 도쿄에서 일본어, 한국어 통역 가능한 통역사님 모십니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1416

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1416', '2024-08-01 09:00:00+09'),
('박미희', 'YB', 'parttime', '[장기] 도쿄대학교 혼고캠퍼스 투어 안내해 주실 분 찾습니다^^(완료)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1414

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1414', '2024-07-25 09:00:00+09'),
('langskim', 'YB', 'parttime', '[번역·통역] 도쿄에서 활동 가능한 프리랜서 통번역사를 모십니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1413

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1413', '2024-07-23 09:00:00+09'),
('박선규', 'YB', 'parttime', '[장기] 도쿄 내 운수(택시)업체 인터뷰', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1409

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1409', '2024-07-22 09:00:00+09'),
('주재식', 'YB', 'parttime', '[장기] 도쿄대 혼고 캠퍼스 투어 및 조별 라운드테이블', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1405

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1405', '2024-07-18 09:00:00+09'),
('김종일', 'YB', 'parttime', '[번역·통역] 도쿄 통역 요청 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1403

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1403', '2024-07-13 09:00:00+09'),
('김지혜', 'YB', 'parttime', '[장기] [완료] 도쿄대 혼고캠퍼스 안내자 1명 모집 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1401

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1401', '2024-06-06 09:00:00+09'),
('박현정', 'YB', 'parttime', '[장기] 도쿄 일대 촬영 현장 알바 채용 (운전 가능자 및 촬영보조)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1399

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1399', '2024-05-24 09:00:00+09'),
('김승환', 'YB', 'parttime', '[번역·통역] 도쿄 빅사이트 건강식품 관람 관련 통역알바 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1398

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1398', '2024-05-13 09:00:00+09'),
('김승환', 'YB', 'parttime', '[번역·통역] 빅사이트 건강식품관련 관람 통역알바 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1397

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1397', '2024-05-10 09:00:00+09'),
('김영신', 'YB', 'parttime', '[번역·통역] [급구] 5/17 3시간 일한 통역 해주실 분을 구합니다. (1명)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1394

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1394', '2024-05-02 09:00:00+09'),
('노상민', 'YB', 'parttime', '[번역·통역] Tokyo Edix 교육 전시회 (5/9-10 2일) 통역 알바를 모집합니다!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1393

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1393', '2024-04-24 09:00:00+09'),
('김승영', 'YB', 'parttime', '[장기] 동경대 캠퍼스 투어 안내자 모집 3명 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1391

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1391', '2024-02-28 09:00:00+09'),
('박세영', 'YB', 'parttime', '[번역·통역] [TOKYO BIG SIGHT : 4월 5-7일] Tokyo Interpet(반려동물) 통역 및 운영 인원 …', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1389

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1389', '2024-02-16 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 영한통역(동시/순차) 모집(2/27, 2/28)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1388

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1388', '2024-01-26 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 일한 통역 모집(1/17(수), 1/18(목))', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1387

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1387', '2024-01-02 09:00:00+09'),
('권형준', 'YB', 'parttime', '[장기] 유학생 온라인 플랫폼 멘토 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1385

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1385', '2023-12-07 09:00:00+09'),
('Glass Lewis', 'YB', 'parttime', '[장기] [재택근무] 2024 Korea Season Research Associate 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1384

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1384', '2023-10-25 09:00:00+09'),
('이민석', 'YB', 'parttime', '[장기] (11.3~5)시부야에서 행사운영을 도와줄 스탭을 구하고 있습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1383

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1383', '2023-10-19 09:00:00+09'),
('이형훈', 'YB', 'parttime', '[번역·통역] 10월15일26일동경통역구함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1382

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1382', '2023-10-19 09:00:00+09'),
('Princess yamana…', 'YB', 'parttime', '[번역·통역] 통역, 비서직', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1381

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1381', '2023-10-12 09:00:00+09'),
('TheWelcome', 'YB', 'parttime', '[번역·통역] XR Fair Tokyo 전시 통역 및 운영 요원 모집 (수정 공고)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1380

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1380', '2023-10-12 09:00:00+09'),
('이재희', 'YB', 'parttime', '[번역·통역] 장기 통역 도외주분 찾습니다 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1377

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1377', '2023-09-29 09:00:00+09'),
('권회찬', 'YB', 'parttime', '[번역·통역] 제안서 번역 및 현장 통역까지 해주실분 연락주세요.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1376

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1376', '2023-09-14 09:00:00+09'),
('이재희', 'YB', 'parttime', '[번역·통역] 10월 마쿠하리 멧세 전시회 통역 도움주실 분 찾습니다(한-영-일)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1375

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1375', '2023-09-12 09:00:00+09'),
('이명섭', 'YB', 'parttime', '[번역·통역] 도쿄 게임쇼 응대 및 통역 아르바이트 구인합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1374

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1374', '2023-09-04 09:00:00+09'),
('이재희', 'YB', 'parttime', '[번역·통역] 10/4-6 도쿄 마쿠하리 메세 전시회 통역 도움주실 분을 찾습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1373

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1373', '2023-08-29 09:00:00+09'),
('권형준', 'YB', 'parttime', '[장기] 유학생 온라인 플랫폼 멘토 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1371

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1371', '2023-08-08 09:00:00+09'),
('이재희', 'YB', 'parttime', '[번역·통역] 10/11-13 요코하마 전시회 통역에 도움주실 분을 찾습니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1369

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1369', '2023-07-30 09:00:00+09'),
('권형준', 'YB', 'parttime', '[장기] 유학생 온라인 플랫폼 멘토 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1368

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1368', '2023-07-24 09:00:00+09'),
('조은경', 'YB', 'parttime', '[장기] [9/21 ~ 9/24] 도쿄 게임쇼에서 게임 시연 진행 및 굿즈 지급 업무를 도와주실 아르바이트분을 모집합… 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1366

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1366', '2023-07-19 09:00:00+09'),
('이재희', 'YB', 'parttime', '[번역·통역] 9/6-9/8 도쿄 전시회통역 도움주실분을 찾습니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1364

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1364', '2023-07-18 09:00:00+09'),
('박정란', 'YB', 'parttime', '[번역·통역] 통역구함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1362

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1362', '2023-07-09 09:00:00+09'),
('서제교', 'YB', 'parttime', '[번역·통역] [동아사이언스] 급구: 도쿄 현지 내 영어-한국어 동시통역 가능자 구합니다.(7/8)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1361

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1361', '2023-07-03 09:00:00+09'),
('권형준', 'YB', 'parttime', '[장기] 온라인 유학생 플랫폼에서 멘토를 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1360

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1360', '2023-06-28 09:00:00+09'),
('etranspia', 'YB', 'parttime', '[번역·통역] 일본 도교 가장 믿을 수 있는 통역 번역 서비스', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1359

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1359', '2023-06-10 09:00:00+09'),
('제일레스텍', 'YB', 'parttime', '[번역·통역] 6월 14일~18일 도쿄 빅사이트 소방안전 박람회 일본어-한국어 통역 업무', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1357

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1357', '2023-05-09 09:00:00+09'),
('김주동', 'YB', 'parttime', '[번역·통역] 5월 8일~11일 일본 출장 관련 통역/가이드 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1355

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1355', '2023-04-19 09:00:00+09'),
('이재희', 'YB', 'parttime', '[번역·통역] 5/17~19 도쿄 빅사이트 전시회 통역 구인의 건', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1354

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1354', '2023-04-18 09:00:00+09'),
('이재희', 'YB', 'parttime', '[번역·통역] [긴급] 4/5-7 전시회 통역 모집의 건', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1353

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1353', '2023-03-28 09:00:00+09'),
('최용전', 'YB', 'parttime', '[번역·통역] 2월 3일 12시 이후 도교대학 인근에서 2-4시간 대화면담 통역', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1350

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1350', '2023-02-02 09:00:00+09'),
('김동윤', 'YB', 'parttime', '[번역·통역] 1.11~1.13 도쿄 빅사이트 전시회 통역 알바 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1348

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1348', '2022-12-22 09:00:00+09'),
('김민석', 'YB', 'parttime', '[번역·통역] 팝업스토어 전기업체 미팅을 위한 번역 아르바이트생 구인(전문용어 없음)) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1346

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1346', '2022-10-14 09:00:00+09'),
('장영두', 'YB', 'parttime', '[번역·통역] 전시회 통역 구합니다. 10.26(수)10.28(금)일본 (도쿄 치바현 치바시 )', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1345

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1345', '2022-09-11 09:00:00+09'),
('김영근', 'YB', 'parttime', '[장기] [일본 의약품 프로젝트 관련 파트타임/프리랜서 모집건 ]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1343

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1343', '2022-06-30 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 영어 네이티브 번역자 모집합니다(한영 MTPE)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1342

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1342', '2022-06-29 09:00:00+09'),
('김나래', 'YB', 'parttime', '[장기] 리서치애널리스트/컨설턴트 (Analyst/Consultant)_해외 재택근무자 채용', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1341

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1341', '2022-04-01 09:00:00+09'),
('손혜정', 'YB', 'parttime', '[장기] [재택근무] 보고서 작성을 위한 공개자료 정보수집 (한국어-영어)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1340

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1340', '2021-10-11 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 【AI프로덕트 마케팅 장기인턴쉽】【일본어 필요×】【유급 인턴쉽】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1339

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1339', '2021-03-22 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] AWS/PHP 기술을 성장시킬 수 있는 인턴쉽에 지원해주세요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1338

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1338', '2021-03-08 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급 인턴쉽][프로그래밍][자택근무][일본어 요구되지않음]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1337

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1337', '2021-03-01 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [장기 인턴쉽/제품관리]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1336

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1336', '2021-02-24 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] AWS/PHP 기술을 성장시킬 수 있는 인턴쉽에 지원해주세요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1335

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1335', '2021-02-17 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급 인턴쉽][프로그래밍][자택근무][일본어 요구되지않음]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1334

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1334', '2021-01-13 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 마케팅에 관심있으신가요? 일본에서의 첫 인턴쉽을 Doorkel에서 해보세요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1333

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1333', '2021-01-13 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 【시급 ¥1,050~¥1,500】【유급 인턴십】【재택근무 가능】 글로벌한 경험을 일본국내에있으면서 인턴…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1306

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1306', '2020-07-15 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 【유급 인턴십】【디자이너】 Babel에서 당신의 창의력을 발산해보세요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1305

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1305', '2020-07-13 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] AWS/PHP 기술을 성장시킬 수 있는 인턴쉽에 지원해주세요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1304

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1304', '2020-07-04 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 2 days to go before the Internship Counseling Session!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1303

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1303', '2020-07-01 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [메르카리, DMM등의 수준의 CTO와 함께 일을 할 수 있는 장기 유급 인턴십!!]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1302

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1302', '2020-06-24 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급인턴쉽] [마케팅] 마케팅에 관심있으신가요? 일본에서의 첫 인턴쉽을 Doorkel에서 해보세요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1301

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1301', '2020-06-13 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [의료업계 인턴쉽] [시급 1,300엔 ~ 1,800엔] [재택근무] [JLPT 3급 이상]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1300

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1300', '2020-06-10 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급인턴쉽] [마케팅]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1299

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1299', '2020-05-23 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [의료업계 인턴쉽] [시급 1,300엔 ~ 1,800엔] [재택근무] [JLPT 3급 이상]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1298

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1298', '2020-05-21 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 【시급 ¥1,050~¥1,500】【유급 인턴십】【재택근무 가능】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1297

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1297', '2020-05-16 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급인턴쉽] [마케팅]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1296

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1296', '2020-05-13 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 【시급 ¥1,050~¥1,500】【유급 인턴십】【재택근무 가능】', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1295

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1295', '2020-04-25 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [장기유급 인턴쉽] [컨텐츠라이터] 일본에서 가장 성공하고있는 고객성공 스타트업중 하나인 ZOYI Cor…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1273

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1273', '2020-04-20 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급 장기 인턴쉽] [자택근무 가능!] [포브스 아시아 U30!]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1265

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1265', '2020-04-17 09:00:00+09'),
('황성수', 'YB', 'parttime', '[장기] 지역별무료채팅 지역만남 실시간베스트!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1264

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1264', '2020-04-14 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급인턴쉽] [마케팅]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1263

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1263', '2020-04-06 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [아세안 유학생 한정] [시급 1500엔] [컨설팅]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1262

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1262', '2020-04-06 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [인플루언서 해외진출을 담당할 유급장기인턴쉽]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1261

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1261', '2020-04-06 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [장기유급 인턴쉽] [고객성공] [한국어]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1260

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1260', '2020-04-06 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [장기유급 인턴쉽] [컨텐츠라이터]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1259

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1259', '2020-04-06 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급 인턴쉽], [자택근무], [컨텐츠 라이터], [일본어 필요 X]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1258

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1258', '2020-03-10 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[장기] 오다이바 오피스에서의 간단한 컴퓨터 작업자 모집(2/14~다음주 초까지 편하신 시간&희망요금)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1257

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1257', '2020-02-14 09:00:00+09'),
('트렉스', 'YB', 'parttime', '[번역·통역] [트렉스] 도쿄에서 통역이 가능한 현지 인재를 찾고 있습니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1256

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1256', '2020-02-08 09:00:00+09'),
('김동철', 'YB', 'parttime', '[번역·통역] [구인완료](내용수정) 도쿄 전시회 참관 일본 현지 통역 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1255

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1255', '2020-02-04 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급 인턴십] [컨설팅, 마케팅, 금융]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1254

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1254', '2020-01-04 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [급성장 테크 스타트업] [유급 장기 인턴쉽]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1253

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1253', '2019-12-28 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급 인턴], [마케팅], [일본어 - 임의사항]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1250

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1250', '2019-12-21 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [재택알바]페이스북 그룹 홍보 알바 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1249

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1249', '2019-12-17 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 메르카리, DMM등의 수준의 CTO와 함께 일을 할 수 있는 장기 유급 인턴십!!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1248

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1248', '2019-12-14 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [벤처캐피탈 CyberAgent사에서 인턴십 모집중!!] [벤처캐피탈 혹은 창업에 관심있는 학생 집중!!]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1247

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1247', '2019-12-14 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] [유급 인턴십] [컨설팅, 마케팅, 금융]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1246

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1246', '2019-12-14 09:00:00+09'),
('Jin Park', 'YB', 'parttime', '[장기] 유급 인턴쉽 구합니다!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1245

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1245', '2019-12-10 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 이공계 분야 일한 통역자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=665

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=665', '2019-11-18 09:00:00+09'),
('송광호', 'YB', 'parttime', '[번역·통역] 도쿄 통역 아르바이트 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=654

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=654', '2019-10-20 09:00:00+09'),
('김민우', 'YB', 'parttime', '[번역·통역] 도쿄 통역 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=653

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=653', '2019-10-17 09:00:00+09'),
('mathacademy', 'YB', 'parttime', '[번역·통역] 고교 수학 교재 한 →일 번역 (1천만원) 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=648

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=648', '2019-10-03 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] <일한 통역자분 모집>(9월 15일 전후~10월말까지 가능하신 날@요코하마현 사가미하라시)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=646

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=646', '2019-08-09 09:00:00+09'),
('조병욱', 'YB', 'parttime', '[번역·통역] [Boston Consulting Group] 통역 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=645

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=645', '2019-07-10 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[장기] 재택으로 자문주실 의사 선생님을 모집합니다( 소화기, 정형외과, 내과, 순환기계)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=643

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=643', '2019-07-03 09:00:00+09'),
('하정일', 'YB', 'parttime', '[장기] 연구조사 작문 아르바이트를 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=642

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=642', '2019-06-04 09:00:00+09'),
('최양현', 'YB', 'parttime', '[번역·통역] 입시설명회 참가 통역을 해줄 분을 찾습니다^^ (완료되었습니다)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=641

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=641', '2019-05-31 09:00:00+09'),
('정재연', 'YB', 'parttime', '[번역·통역] 현지 미팅 통역 구인(건축/미술 관련)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=640

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=640', '2019-05-20 09:00:00+09'),
('박은옥', 'YB', 'parttime', '[번역·통역] 반나절 통역 아르바이트 구합니다. 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=635

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=635', '2019-05-14 09:00:00+09'),
('강민호', 'YB', 'parttime', '[장기] [광고회사 DDB KOREA] 일본 현지 트렌드 조사 통신원 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=634

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=634', '2019-05-13 09:00:00+09'),
('손수정', 'YB', 'parttime', '[번역·통역] 통역구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=633

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=633', '2019-05-07 09:00:00+09'),
('김도형', 'YB', 'parttime', '[번역·통역] 통역아르바이트 구해요~', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=632

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=632', '2019-05-07 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 통역 모집 4/16(화) 요코하마 세관', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=631

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=631', '2019-04-12 09:00:00+09'),
('gemco', 'YB', 'parttime', '[번역·통역] 캠퍼스투어 통역아르바이트 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=630

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=630', '2019-04-08 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 【모집 완료】번역앱 체험자 모집(남성1명)(3/4~3/12일 사이 3일간, 도쿄근교 4시간씩)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=624

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=624', '2019-02-18 09:00:00+09'),
('오경헌', 'YB', 'parttime', '[번역·통역] 번역 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=621

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=621', '2019-02-05 09:00:00+09'),
('최태영', 'YB', 'parttime', '[번역·통역] [급구] 통역알바 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=620

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=620', '2019-01-23 09:00:00+09'),
('윤주성', 'YB', 'parttime', '[번역·통역] 통역 알바 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=619

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=619', '2019-01-18 09:00:00+09'),
('박혜주', 'YB', 'parttime', '[장기] 타이핑 문서작성 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=618

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=618', '2019-01-15 09:00:00+09'),
('이지영', 'YB', 'parttime', '[장기] 도쿄 스마트폰 매장 ''미스터리 쇼퍼'' 아르바이트 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=617

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=617', '2018-12-04 09:00:00+09'),
('최지영', 'YB', 'parttime', '[장기] [재택가능] 앱으로 가볍게 수학문제 풀고 용돈 벌어가세요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=616

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=616', '2018-12-03 09:00:00+09'),
('정명성', 'YB', 'parttime', '[번역·통역] 도쿄 현지 통역 의뢰', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=615

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=615', '2018-11-21 09:00:00+09'),
('Mary', 'YB', 'parttime', '[장기] 원어민 강사와 함께하는 영어수업', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=614

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=614', '2018-11-14 09:00:00+09'),
('이인숙', 'YB', 'parttime', '[번역·통역] 11/16-17 도쿄통역구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=613

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=613', '2018-11-01 09:00:00+09'),
('정하나', 'YB', 'parttime', '[번역·통역] [11/2] 도쿄 통역 알바 구합니다 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=611

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=611', '2018-11-01 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 【모집완료되었습니다】일한통역 모집(10.23(화) 13:00~16:00. 가스미가세키. 1만엔)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=610

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=610', '2018-10-17 09:00:00+09'),
('윤재원', 'YB', 'parttime', '[번역·통역] [일한] 현지 미팅 통역 구합니다 !', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=608

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=608', '2018-10-12 09:00:00+09'),
('이해인', 'YB', 'parttime', '[장기] 동경대학교 캠퍼스 안내해주실 재학생분 구합니다 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=606

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=606', '2018-10-10 09:00:00+09'),
('김경희', 'YB', 'parttime', '[장기] 2018년 글로벌리포터 추가모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=602

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=602', '2018-09-20 09:00:00+09'),
('정우진', 'YB', 'parttime', '[번역·통역] [통역 급구 7.27-28 (일급 3만엔) ] 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=601

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=601', '2018-07-23 09:00:00+09'),
('도쿄대학 한국인 학생회', 'YB', 'parttime', '[장기] [MIDAS IT JAPAN] 아르바이트 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=600

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=600', '2018-05-10 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 일한통역자 모집<5/11(금) 16:00부터 6.5시간> 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=598

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=598', '2018-05-08 09:00:00+09'),
('한수만', 'YB', 'parttime', '[장기] 우에노 한국어 가정 교사를 찾습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=597

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=597', '2018-04-24 09:00:00+09'),
('연평우', 'YB', 'parttime', '[번역·통역] 통역 아르바이트 (3월 29일 목요일 1시~6시, 3월 30일 금요일 1시~5시)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=596

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=596', '2018-03-26 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 일한통역 여성1명 모집(2/13-2/16. 희망요금) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=594

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=594', '2018-01-27 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] ■수시모집■ 일한 동시통역자분/일한&한일 번역자분/영한&한영 번역자분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=593

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=593', '2018-01-16 09:00:00+09'),
('조영일', 'YB', 'parttime', '[번역·통역] 단기 통역 알바 모집 3/9, 3/10(양일 혹은 하루 가능)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=592

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=592', '2018-01-08 09:00:00+09'),
('이혜리', 'YB', 'parttime', '[장기] 간단한 타이핑알바 하실분 (재택근무)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=591

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=591', '2017-11-21 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 12/6(수) 일한통역 경력자(여성) 모집 (요코하마시, 2시간 통역, 보수 2만엔)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=590

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=590', '2017-11-17 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 11/29-12/1(마쿠하리 멧세) 일영/영일 통역자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=589

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=589', '2017-11-17 09:00:00+09'),
('국제협력팀', 'YB', 'parttime', '[장기] 2018 건강보험 해외통신원 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=588

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=588', '2017-11-06 09:00:00+09'),
('신요한', 'YB', 'parttime', '[장기] [아르바이트모집] 라벨 부착 작업', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=585

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=585', '2017-04-12 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[장기] 나레이션 경험자 남성 3명 모집(3/14(화), 3/15(수) 도쿄도내 작업)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=583

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=583', '2017-02-23 09:00:00+09'),
('조영일', 'YB', 'parttime', '[번역·통역] [인테이크] 2/17~2/18 단기 통역 알바 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=582

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=582', '2017-02-01 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] [모집완료]자동차부품 전시회 관련 통역자 모집(2명) 2/14(화)@도치기시(금일(1/26) 오후5시까지 연…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=581

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=581', '2017-01-26 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] [모집 종료]1/24(화), 1/25(수) 일한통역자 모집(도쿄 도내, 대기오염 관련 내용)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=580

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=580', '2017-01-17 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] ■방송국내(도쿄) 영상 통번역/한국내 주요 뉴스 리서치 작업하실 분 모집합니다(수시)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=579

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=579', '2016-12-08 09:00:00+09'),
('박종선', 'YB', 'parttime', '[번역·통역] [모집종료]통역 구합니다. [12월6일~12월9일]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=578

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=578', '2016-11-22 09:00:00+09'),
('국제협력팀', 'YB', 'parttime', '[장기] 2017년도 건강보험 해외통신원 모집 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=576

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=576', '2016-11-10 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[장기] 【모집 완료되었습니다】스마트폰용 축구 게임 일한 체커 모집_11/11(금), 11/14(월), 11/16(수… 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=574

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=574', '2016-11-08 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 기술분야(매뉴얼) 영한번역자 및 DTP 레이아웃 편집자 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=573

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=573', '2016-10-19 09:00:00+09'),
('박기태', 'YB', 'parttime', '[번역·통역] 통역(한->일, 일->한) 1인 구함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=572

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=572', '2016-09-14 09:00:00+09'),
('이범주', 'YB', 'parttime', '[단기] 세피로트 인터네셔널 단기 및 중장기 아르바이트 (재택근무 가능) 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=571

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=571', '2016-09-04 09:00:00+09'),
('한국행정연구원', 'YB', 'parttime', '[장기] 2016년 한국행정연구원 규제동향지 해외통신원 충원', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=570

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=570', '2016-08-10 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 【모집종료합니다】일한통역 모집(2017년 2월2일~2월4일. 후쿠오카, 나가사키) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=567

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=567', '2016-07-31 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] 【모집종료합니다】일한통역 모집(8/29-9/1. 이와테현 기타카미시) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=566

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=566', '2016-07-31 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[번역·통역] (모집 종료합니다. 감사합니다.) 7월28일(목) 일한 통역자 모집합니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=564

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=564', '2016-07-25 09:00:00+09'),
('K핸드메이드', 'YB', 'parttime', '[번역·통역] [급구]7월23일 14시~15시 도쿄 일본어 통역 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=563

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=563', '2016-07-21 09:00:00+09'),
('정기훈', 'YB', 'parttime', '[번역·통역] 7월 21일 목요일 도쿄 현지 통역 아르바이트 급구', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=562

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=562', '2016-07-17 09:00:00+09'),
('바이두케이', 'YB', 'parttime', '[장기] 외국 생활 하다보면 한국에서만 구매 할 수 있는 상품이 꼭 있습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=561

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=561', '2016-07-14 09:00:00+09'),
('남범우', 'YB', 'parttime', '[번역·통역] 7월14일, 15일 동경 통역 아르바이트 구합니다.[마감되었습니다. 감사합니다.]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=559

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=559', '2016-07-07 09:00:00+09'),
('박종선', 'YB', 'parttime', '[번역·통역] [통역] 통역 알바 모집합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=557

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=557', '2016-05-04 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[장기] 【모집종료합니다】비만관련 웹사이트 조사자 모집(재택, 3/13(일)밤까지. 20,000엔)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=556

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=556', '2016-03-10 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[장기] 【모집종료합니다】나레이터 모집(3/15or3/16@도쿄. 2시간 2만엔)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=555

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=555', '2016-03-08 09:00:00+09'),
('김태환', 'YB', 'parttime', '[장기] [통계조사 아르바이트 모집]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=554

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=554', '2016-03-01 09:00:00+09'),
('조영일', 'YB', 'parttime', '[번역·통역] <구인완료>[인테이크푸즈] 3/11~3/12 단기 통역 알바', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=552

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=552', '2016-02-15 09:00:00+09'),
('이승욱', 'YB', 'parttime', '[번역·통역] 도쿄 통역 하실분 구합니다. 1월 26일 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=548

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=548', '2016-01-07 09:00:00+09'),
('주하나', 'YB', 'parttime', '[장기] 도쿄 라이드 해주실분 계신가요...??', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=547

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=547', '2016-01-07 09:00:00+09'),
('장혜정', 'YB', 'parttime', '[장기] [미래창조과학부 혁신프로젝트] 박사과정 또는 석사과정 연구하실 분 연락 바랍니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=543

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=543', '2015-12-22 09:00:00+09'),
('Yaee Bin Kim', 'YB', 'parttime', '[장기] 15년 12월 21, 22일 도서관에서 책 찾아주실분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=541

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=541', '2015-12-16 09:00:00+09'),
('차지연', 'YB', 'parttime', '[번역·통역] 코스메도쿄 전시회 단기 통역 알바 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=540

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=540', '2015-12-11 09:00:00+09'),
('신승혜', 'YB', 'parttime', '[장기] [마감] - [자동차회사] 업무보조 아르바이트, 중/장기 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=539

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=539', '2015-12-10 09:00:00+09'),
('최병현', 'YB', 'parttime', '[번역·통역] JR 오츠카역 근처 회사 24일 하루 통역 가능하신분 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=536

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=536', '2015-11-17 09:00:00+09'),
('변시연', 'YB', 'parttime', '[장기] 다큐멘터리 제작을 도와주실 코디분을 찾고 있습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=535

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=535', '2015-11-12 09:00:00+09'),
('김재걸', 'YB', 'parttime', '[번역·통역] 11월 19일이나 20일 통역아르바이트 하실 분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=533

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=533', '2015-10-30 09:00:00+09'),
('simple', 'YB', 'parttime', '[번역·통역] 통역 하실분 찿습니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=532

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=532', '2015-10-21 09:00:00+09'),
('해외시장정보팀', 'YB', 'parttime', '[장기] <한국해양수산개발원 해외 상품 크리에이터 모집 공고>', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=529

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=529', '2015-10-06 09:00:00+09'),
('김경민', 'YB', 'parttime', '[번역·통역] SCAJ(Specialty Coffee Association of Japan) 2015 통역알바모집합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=528

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=528', '2015-09-23 09:00:00+09'),
('김태우', 'YB', 'parttime', '[번역·통역] [완료] 10/6일 단기 통역 아르바이트 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=525

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=525', '2015-09-04 09:00:00+09'),
('박희원', 'YB', 'parttime', '[장기] 9월2일,16일 학교 안내 아르바이트 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=522

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=522', '2015-08-18 09:00:00+09'),
('정지훈', 'YB', 'parttime', '[번역·통역] 신주쿠 지역에서 동시통역 하실(여)분 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=521

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=521', '2015-08-01 09:00:00+09'),
('황재홍', 'YB', 'parttime', '[장기] [학교안내 아르바이트]2015년7월17일 오후', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=519

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=519', '2015-07-10 09:00:00+09'),
('박려섭', 'YB', 'parttime', '[단기] [단기알바]현지마켓조사 및 인터뷰 아르바이트 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=518

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=518', '2015-06-30 09:00:00+09'),
('이승의', 'YB', 'parttime', '[과외] EJU 시험관련 과외 선생님 구합니다...', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=516

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=516', '2015-06-18 09:00:00+09'),
('김인제', 'YB', 'parttime', '[번역·통역] 2015년 7월 8일~10일 동경 문구 사무용품박람회 통역 필요합니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=515

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=515', '2015-06-17 09:00:00+09'),
('지병덕', 'YB', 'parttime', '[번역·통역] 6월19일 일본 삿포로 동시통역사 필요합니다. 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=511

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=511', '2015-06-16 09:00:00+09'),
('성경민', 'YB', 'parttime', '[번역·통역] [모집중]2015년 7월 1~4일 통역아르바이트 모집! 많은 관심 부탁드려요!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=509

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=509', '2015-06-05 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[장기] (★모집종료되었습니다)간단한 앙케이트 응답자 모집(온라인 앙케이트/10분 정도/아마존 할인권 또는 Paypa…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=508

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=508', '2015-05-19 09:00:00+09'),
('라영', 'YB', 'parttime', '[번역·통역] [단기통역] 오사카, 교토, 고베 지역 : 커뮤니티 디자인 답사 (5/15~18)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=507

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=507', '2015-05-12 09:00:00+09'),
('장은', 'YB', 'parttime', '[장기] [재택근무] 미국 IT기업의 Korean Data Entry Specialist 채용 공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=506

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=506', '2015-05-12 09:00:00+09'),
('최진', 'YB', 'parttime', '[장기] 온라인 레슨 카페토크 에서 강사 모집합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=505

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=505', '2015-05-11 09:00:00+09'),
('김혜성', 'YB', 'parttime', '[단기] [Bain & Company] 일본어 리서치 단기 아르바이트 급구', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=504

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=504', '2015-03-23 09:00:00+09'),
('이서기', 'YB', 'parttime', '[장기] 글로벌 마케팅 누구나 참여가능', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=503

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=503', '2015-03-20 09:00:00+09'),
('신요한', 'YB', 'parttime', '[장기] [완료][TA모집] 日韓遠隔交換講義', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=502

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=502', '2015-03-15 09:00:00+09'),
('신요한', 'YB', 'parttime', '[번역·통역] [완료][번역아르바이트] 동경대학 웹사이트 번역 / 영->한', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=500

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=500', '2015-02-24 09:00:00+09'),
('송혜현', 'YB', 'parttime', '[번역·통역] 단기 통역 아르바이트 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=499

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=499', '2015-01-16 09:00:00+09'),
('김혜성', 'YB', 'parttime', '[장기] [Bain&Company] ASAP 일어리서치업무 Temp모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=498

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=498', '2014-12-04 09:00:00+09'),
('마인범', 'YB', 'parttime', '[번역·통역] 1/14~16일 동경 조명 기술 전시회 통역 아르바이트 구함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=497

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=497', '2014-12-04 09:00:00+09'),
('국제협력팀', 'YB', 'parttime', '[장기] 2015년 건강보험 해외통신원 모집공고', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=496

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=496', '2014-11-24 09:00:00+09'),
('박예완', 'YB', 'parttime', '[번역·통역] 일본 출장에서 하루 통역 아르바이트 해주실 분 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=490

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=490', '2014-10-16 09:00:00+09'),
('김동선', 'YB', 'parttime', '[번역·통역] 단기 통역 아르바이트 해주실분 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=488

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=488', '2014-09-24 09:00:00+09'),
('진상욱', 'YB', 'parttime', '[번역·통역] 동경 실버 박람회 전시회 참관 관련 통역 아르바이트 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=487

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=487', '2014-09-24 09:00:00+09'),
('차진혁', 'YB', 'parttime', '[번역·통역] 통역 모집합니다!!(15명)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=486

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=486', '2014-09-02 09:00:00+09'),
('김정일', 'YB', 'parttime', '[장기] 건축전공 아르바이트 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=484

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=484', '2014-08-28 09:00:00+09'),
('choihodu', 'YB', 'parttime', '[장기] 스마트폰 어플 / 웹개발 아르바이트 모집합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=482

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=482', '2014-08-19 09:00:00+09'),
('구지회', 'YB', 'parttime', '[장기] 한국어 교사 아르바이트 모십니다 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=480

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=480', '2014-08-12 09:00:00+09'),
('김혜성', 'YB', 'parttime', '[단기] [Bain & Company] 일본어 가능 단기인력 채용 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=478

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=478', '2014-08-07 09:00:00+09'),
('박지선', 'YB', 'parttime', '[장기] 한국 고교생 동경대 방문 프로그램 어시스트 모집 (5명)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=477

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=477', '2014-08-06 09:00:00+09'),
('정의석', 'YB', 'parttime', '[번역·통역] 일본어 단기통역 아르바이트 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=476

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=476', '2014-07-15 09:00:00+09'),
('김종율', 'YB', 'parttime', '[번역·통역] 텍스트앳을 개발한 스캐터랩에서 일본어 통역 해주실 분을 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=475

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=475', '2014-07-03 09:00:00+09'),
('김홍기', 'YB', 'parttime', '[장기] <모집 종료됐습니다>음성수록. 20대 남성1명. 3-4.5시간 3만엔', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=473

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=473', '2014-06-30 09:00:00+09'),
('김용준', 'YB', 'parttime', '[번역·통역] 캠핑카쇼 7월6일 통역 해주실분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=472

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=472', '2014-06-29 09:00:00+09'),
('지선', 'YB', 'parttime', '[단기] 단기 가이드 아르바이트 구합니다. 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=467

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=467', '2014-06-05 09:00:00+09'),
('최용식', 'YB', 'parttime', '[번역·통역] 통역 아르바이트 구합니다 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=465

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=465', '2014-06-02 09:00:00+09'),
('김희중', 'YB', 'parttime', '[번역·통역] 도쿄 통역 아르바이트를 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=464

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=464', '2014-05-27 09:00:00+09'),
('김기배', 'YB', 'parttime', '[번역·통역] 단기 통역알바 해주실 분 찾습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=463

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=463', '2014-05-27 09:00:00+09'),
('김국호', 'YB', 'parttime', '[번역·통역] 단기 전시회 통역 아르바이트를 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=462

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=462', '2014-05-14 09:00:00+09'),
('이준희', 'YB', 'parttime', '[번역·통역] 단기 통역 아르바이트를 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=461

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=461', '2014-05-13 09:00:00+09'),
('박은기', 'YB', 'parttime', '[번역·통역] 단기통역아르바이트가능하신분찾습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=460

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=460', '2014-05-12 09:00:00+09'),
('정성욱', 'YB', 'parttime', '[번역·통역] 통역 또는 정직원 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=459

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=459', '2014-05-04 09:00:00+09'),
('베리타스', 'YB', 'parttime', '[번역·통역] 동경 현지 통역 인력 구인 (4월 28~29일) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=457

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=457', '2014-04-09 09:00:00+09'),
('편설란', 'YB', 'parttime', '[번역·통역] 도쿄국립박물관 2~3시간 통역 알바구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=455

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=455', '2014-04-03 09:00:00+09'),
('변익주', 'YB', 'parttime', '[번역·통역] [영어통역] 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=452

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=452', '2014-03-24 09:00:00+09'),
('임지윤', 'YB', 'parttime', '[번역·통역] 4/13 일요일 일일통역(2만엔) 하실분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=451

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=451', '2014-03-24 09:00:00+09'),
('김현서', 'YB', 'parttime', '[번역·통역] 일본어 통역 및 번역 관련 아르바이트 구합니다!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=448

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=448', '2014-03-11 09:00:00+09'),
('이상곤', 'YB', 'parttime', '[번역·통역] 일본어 통역 해주실 분 구합니다.. 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=444

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=444', '2014-03-04 09:00:00+09'),
('김보람', 'YB', 'parttime', '[번역·통역] 급] 박람회 통역알바 해주실 분 찾습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=443

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=443', '2014-03-04 09:00:00+09'),
('유선희', 'YB', 'parttime', '[번역·통역] [아르바이트 구합] 일본현지 단기 통역', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=442

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=442', '2014-02-26 09:00:00+09'),
('이상곤', 'YB', 'parttime', '[번역·통역] 일본어 통역 해주실 분을 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=440

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=440', '2014-02-26 09:00:00+09'),
('최기경', 'YB', 'parttime', '[번역·통역] 도쿄 단기통역 구합니다. 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=437

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=437', '2014-02-17 09:00:00+09'),
('tokoy2', 'YB', 'parttime', '[번역·통역] 도쿄 현지 통역하실분 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=436

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=436', '2014-01-03 09:00:00+09'),
('한국환경정책평가연구원', 'YB', 'parttime', '[장기] [한국환경정책·평가연구원] 해외통신원 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=435

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=435', '2014-01-03 09:00:00+09'),
('MBC시사교양', 'YB', 'parttime', '[단기] MBC 교양제작국/핸드폰동영상촬영/하루 아르바이트 급구 [구인완료]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=434

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=434', '2013-12-30 09:00:00+09'),
('돼지', 'YB', 'parttime', '[번역·통역] 동경 현지 통역사 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=433

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=433', '2013-12-10 09:00:00+09'),
('김민성', 'YB', 'parttime', '[장기] 벤쳐기업 아르바이트 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=432

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=432', '2013-12-10 09:00:00+09'),
('도쿄대학교 한국인학생회', 'YB', 'parttime', '[장기] 교내 아르바이트 정보', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=431

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=431', '2013-12-03 09:00:00+09'),
('베리타스', 'YB', 'parttime', '[번역·통역] [12월 6~8일 단기 통역 아르바이트 구함]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=430

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=430', '2013-11-19 09:00:00+09'),
('MBC시사교양', 'YB', 'parttime', '[단기] [급구] MBC에서 일본 현지 취재(인터뷰촬영) 도와주실 분 구합니다 (구인완료 감사합니다)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=429

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=429', '2013-11-18 09:00:00+09'),
('happyssol', 'YB', 'parttime', '[번역·통역] 한국-일본 비즈니스 미팅(3시간 통역)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=428

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=428', '2013-11-13 09:00:00+09'),
('베리타스', 'YB', 'parttime', '[번역·통역] [일본 동경 거주 단기 통역 해 주실 분 구합니다. (10월 23~24일)]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=426

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=426', '2013-10-16 09:00:00+09'),
('거머리', 'YB', 'parttime', '[장기] shock wave impact pilot test 자료 수집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=425

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=425', '2013-10-16 09:00:00+09'),
('Ellie7', 'YB', 'parttime', '[단기] [단기 알바] 일본 지역 김치 조사하실 분 구합니다 ^^', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=424

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=424', '2013-10-14 09:00:00+09'),
('Minjilee', 'YB', 'parttime', '[번역·통역] Bio Japan (요코하마) 한-일 통역가능하신 분 모집합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=423

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=423', '2013-10-02 09:00:00+09'),
('경이', 'YB', 'parttime', '[장기] NHK국제국 한국어아나운서 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=414

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=414', '2013-09-06 09:00:00+09'),
('karon', 'YB', 'parttime', '[장기] 13년 2학기 TA를 모집합니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=412

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=412', '2013-09-05 09:00:00+09'),
('KSA', 'YB', 'parttime', '[단기] [LG화학] 단기 아르바이트건', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=411

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=411', '2013-08-28 09:00:00+09'),
('작은악마', 'YB', 'parttime', '[번역·통역] 2013년 9월 3 - 5일 중 통역을 해주실분. 완료 되었습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=410

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=410', '2013-08-27 09:00:00+09'),
('daeppo', 'YB', 'parttime', '[번역·통역] 동경 현지 통역하실 분 구합니다. 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=407

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=407', '2013-08-12 09:00:00+09'),
('자누스1', 'YB', 'parttime', '[번역·통역] 우에노에서 통역 알바 구해요..... 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=405

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=405', '2013-08-07 09:00:00+09'),
('리엘바이이유정', 'YB', 'parttime', '[번역·통역] Tokyo Big Sight 에서 개최되는 JFW-IFF 통역 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=402

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=402', '2013-07-11 09:00:00+09'),
('멘토시스1', 'YB', 'parttime', '[과외] [유학생 과외 : 멘토시스]선생님을 모십니다^^', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=401

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=401', '2013-07-10 09:00:00+09'),
('마라나', 'YB', 'parttime', '[장기] 캠퍼스 투어를 해 주실 재학생분 (1명) - 완료 되었습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=400

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=400', '2013-07-03 09:00:00+09'),
('saroot', 'YB', 'parttime', '[번역·통역] 병원 약국 통역 해주실 남자분 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=399

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=399', '2013-06-27 09:00:00+09'),
('수여닝', 'YB', 'parttime', '[장기] 가이드 의뢰합니다.[서울 동국대학교]', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=398

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=398', '2013-06-23 09:00:00+09'),
('KJFF0706', 'YB', 'parttime', '[장기] 「日韓フレンドシップフェスティバル」アルバイトstaff募集', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=397

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=397', '2013-06-21 09:00:00+09'),
('vitali', 'YB', 'parttime', '[장기] 스마트폰 앱 및 홈페이지 제작 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=393

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=393', '2013-06-20 09:00:00+09'),
('얼큰', 'YB', 'parttime', '[번역·통역] [급]식품 박람회 견학 시 통역 해주시분 찾습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=391

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=391', '2013-06-05 09:00:00+09'),
('GBCC', 'YB', 'parttime', '[번역·통역] [GBCC2013] 6월 26-30일 일본유방암학술대회(하마마쯔) 홍보(통역) 도우미', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=390

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=390', '2013-05-28 09:00:00+09'),
('배성윤', 'YB', 'parttime', '[장기] 일본 현지조사원 채용_문화재 관련', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=389

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=389', '2013-05-23 09:00:00+09'),
('베스트케이제이', 'YB', 'parttime', '[번역·통역] IT통역 아르바이트 구합니다 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=386

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=386', '2013-05-14 09:00:00+09'),
('이수영', 'YB', 'parttime', '[장기] 논문 설문조사 아르바이트 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=383

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=383', '2013-05-01 09:00:00+09'),
('KJJIN', 'YB', 'parttime', '[단기] [급구] 수학 강사님을 모십니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=381

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=381', '2013-04-24 09:00:00+09'),
('변지민', 'YB', 'parttime', '[번역·통역] 23일(화), 긴자에서 통역을 해 주실 분을 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=380

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=380', '2013-04-17 09:00:00+09'),
('차진혁', 'YB', 'parttime', '[번역·통역] [약간급함]통역 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=377

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=377', '2013-04-11 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[번역·통역] 마감! 단, 가능하신 분은 이력서 보내주십시오.--><긴급 모집> 후지TV 방송국내 영상번역(4월10일부터 …', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=376

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=376', '2013-04-09 09:00:00+09'),
('KSA', 'YB', 'parttime', '[번역·통역] [통역] 급하게 구합니다. 2013년 4월 10일 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=369

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=369', '2013-04-08 09:00:00+09'),
('재료이창준', 'YB', 'parttime', '[장기] 동경대학 국제심포지움 도우미 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=368

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=368', '2013-03-11 09:00:00+09'),
('구인', 'YB', 'parttime', '[번역·통역] 통역 및 방문기관 컨텍해 주실분 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=366

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=366', '2013-03-07 09:00:00+09'),
('고구맘이사', 'YB', 'parttime', '[번역·통역] [고구맘에서 통역알바 모집] 2월 19일부터 21일까지 일본현지 통역알바', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=362

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=362', '2013-02-09 09:00:00+09'),
('hiro', 'YB', 'parttime', '[장기] ウェブサイトの翻訳をしてくれる方募集 (HTMLの知識は不要です。)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=361

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=361', '2013-02-05 09:00:00+09'),
('얼큰', 'YB', 'parttime', '[번역·통역] 통역알바 구함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=360

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=360', '2013-01-31 09:00:00+09'),
('현서', 'YB', 'parttime', '[장기] 한국어교사', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=359

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=359', '2013-01-28 09:00:00+09'),
('촌놈', 'YB', 'parttime', '[장기] 정보 검색 프리랜서', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=358

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=358', '2012-12-08 09:00:00+09'),
('키워즈', 'YB', 'parttime', '[번역·통역] [아르바이트] 게임 번역하실 프리랜스 번역가 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=357

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=357', '2012-11-20 09:00:00+09'),
('청광', 'YB', 'parttime', '[번역·통역] 일본어 통역 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=355

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=355', '2012-11-08 09:00:00+09'),
('wklee', 'YB', 'parttime', '[장기] 「日本留学説明会（韓国）」で通訳者募集 Staff wanted for Japan Educational Semin…', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=354

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=354', '2012-11-06 09:00:00+09'),
('SKim', 'YB', 'parttime', '[번역·통역] [닐슨컴퍼니] 마케팅 리서치 회사 일본 출장 통역 급구 (11/8~11/10)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=353

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=353', '2012-11-02 09:00:00+09'),
('루나', 'YB', 'parttime', '[번역·통역] 통역아르바이트 구합니다. (11/6, 약 3시간) - 마감하였습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=352

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=352', '2012-10-29 09:00:00+09'),
('젠틀맨', 'YB', 'parttime', '[장기] 동경 아자부 사무실 아르바이트 근무가능하신분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=350

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=350', '2012-10-21 09:00:00+09'),
('바이오동익', 'YB', 'parttime', '[장기] 한국어 클래스 강사님 모집 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=348

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=348', '2012-10-15 09:00:00+09'),
('polo811', 'YB', 'parttime', '[번역·통역] [구했습니다^^] 통역 아르바이트 구함', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=347

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=347', '2012-10-11 09:00:00+09'),
('주재문', 'YB', 'parttime', '[번역·통역] 사이타마현 통역(3만엔/1일) 아르바이트 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=346

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=346', '2012-10-11 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[번역·통역] 10월1일 10:00~17:00 일한통역 하실분 모집하네요.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=345

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=345', '2012-09-30 09:00:00+09'),
('스마일러', 'YB', 'parttime', '[장기] 일본에서도 가능한 인터넷 재택근무!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=344

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=344', '2012-09-29 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[장기] 한국어 교재 작성(자택 근무). 관심있으신 분은 연락해 보십시오!', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=343

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=343', '2012-09-27 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[단기] [급구]나레이션 경험자(여성) 모집(3문장 나레이션 녹음/5000엔)(21일(금)까지 연락 바랍니다)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=342

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=342', '2012-09-21 09:00:00+09'),
('전성호', 'YB', 'parttime', '[단기] 한일교육원 홍보를 위한 단기 학생 아르바이트 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=341

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=341', '2012-09-13 09:00:00+09'),
('fidelity74', 'YB', 'parttime', '[장기] 동경 도보 가이드 구함(10/12~10/14)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=339

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=339', '2012-08-24 09:00:00+09'),
('홍성준', 'YB', 'parttime', '[장기] 사무보조 아르바이트 (인턴수료증 발급) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=337

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=337', '2012-08-17 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[번역·통역] 8월23일(목) 9:00-14:00(신주쿠) 영한통역 급구 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=332

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=332', '2012-07-25 09:00:00+09'),
('바이오동익', 'YB', 'parttime', '[장기] [7/11-12]강연회 도움 아르바이트 안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=329

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=329', '2012-07-05 09:00:00+09'),
('양승하', 'YB', 'parttime', '[과외] 미국 대입 준비 : 에세이 과외하실 분 찾습니다. (대학원 이상)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=327

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=327', '2012-06-30 09:00:00+09'),
('양승하', 'YB', 'parttime', '[과외] 한국어 과외 하실분 (대학원 이상) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=326

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=326', '2012-06-30 09:00:00+09'),
('바이오동익', 'YB', 'parttime', '[장기] [TA모집] 한국문화 강의 수업 TA모집안내', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=325

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=325', '2012-06-24 09:00:00+09'),
('송아지', 'YB', 'parttime', '[번역·통역] 통역아르바이트 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=324

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=324', '2012-06-22 09:00:00+09'),
('호리커', 'YB', 'parttime', '[번역·통역] 박람회 통역 알바 (6월 27~29)- 마감 되었습니다. 감사합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=320

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=320', '2012-06-09 09:00:00+09'),
('야호호호', 'YB', 'parttime', '[장기] 이학계 전공자 안내 구함 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=318

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=318', '2012-06-03 09:00:00+09'),
('키워즈', 'YB', 'parttime', '[장기] 게임 테스터 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=316

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=316', '2012-05-28 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[번역·통역] 영한 통역 모집(6월12일, 13일) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=312

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=312', '2012-05-17 09:00:00+09'),
('김지은56', 'YB', 'parttime', '[장기] 간단한 문서작성 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=311

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=311', '2012-05-16 09:00:00+09'),
('esabe', 'YB', 'parttime', '[번역·통역] 동경 통역 알바 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=306

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=306', '2012-05-07 09:00:00+09'),
('장승규', 'YB', 'parttime', '[번역·통역] 도쿄 취재 통역 아르바이트 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=303

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=303', '2012-04-27 09:00:00+09'),
('wklee', 'YB', 'parttime', '[장기] SAT경험있으시거나 공부해보신적이 있으신분 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=301

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=301', '2012-04-26 09:00:00+09'),
('sadcar', 'YB', 'parttime', '[번역·통역] 박람회가이드 통역알바 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=296

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=296', '2012-03-21 09:00:00+09'),
('karon', 'YB', 'parttime', '[장기] (수정)시스템창성학전공 TA를 모집하고 있습니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=295

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=295', '2012-03-16 09:00:00+09'),
('파랑꿈', 'YB', 'parttime', '[번역·통역] 드럭스토어 쇼, 건강박람회 통역 아르바이트 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=292

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=292', '2012-03-10 09:00:00+09'),
('재택근무사승현', 'YB', 'parttime', '[장기] 재택근무사 모집! 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=290

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=290', '2012-03-09 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[장기] 마감되었습니다-->여수 엑스포 관련 덴츠에서 아르바이트 하실 분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=287

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=287', '2012-02-15 09:00:00+09'),
('stowaway', 'YB', 'parttime', '[번역·통역] 일본 도쿄 빅사이트 전시회 통역 아르바이트 모집 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=284

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=284', '2012-02-12 09:00:00+09'),
('MJCHOI', 'YB', 'parttime', '[장기] 2012 PV EXPO (태양광전시) 진행요원 모집 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=282

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=282', '2012-02-10 09:00:00+09'),
('가가', 'YB', 'parttime', '[번역·통역] IJT 동경 국제 보석박람회 전문 통역', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=273

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=273', '2012-01-05 09:00:00+09'),
('엑스코', 'YB', 'parttime', '[번역·통역] 제4회 LED/OLED Lighting Technology Expo 전시회 통역', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=272

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=272', '2011-12-27 09:00:00+09'),
('재료이창준', 'YB', 'parttime', '[과외] 토플 과외 하실 수 있는분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=268

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=268', '2011-12-22 09:00:00+09'),
('글쎄요', 'YB', 'parttime', '[번역·통역] 동경 농업유통분야 통역 및 가이드해 주실분 찾습니다(1월 16일~1월19일) 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=266

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=266', '2011-12-21 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[번역·통역] 김정일 사망 관련 방송국내 영상번역&통역 구함(12월21일-24일 사이)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=264

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=264', '2011-12-21 09:00:00+09'),
('권혜진', 'YB', 'parttime', '[번역·통역] 동경 농업유통분야 통역 알바 (2012.1. 16-19)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=263

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=263', '2011-12-07 09:00:00+09'),
('애교잉', 'YB', 'parttime', '[장기] 재택알바생구함 !', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=262

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=262', '2011-12-06 09:00:00+09'),
('민짱', 'YB', 'parttime', '[과외] 영어 여자 과외 선생님 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=261

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=261', '2011-11-26 09:00:00+09'),
('austen', 'YB', 'parttime', '[단기] [급구] 지재강좌 평가학생역할 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=260

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=260', '2011-11-18 09:00:00+09'),
('에스포유', 'YB', 'parttime', '[번역·통역] 11/9-11 일본 전시회 지원 한일통역자 모집(11/4 마감)>', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=256

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=256', '2011-11-01 09:00:00+09'),
('youngyoung', 'YB', 'parttime', '[번역·통역] 통역 아르바이트생 댓글 8 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=247

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=247', '2011-10-04 09:00:00+09'),
('김율리', 'YB', 'parttime', '[장기] 한국어 강사 하실분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=246

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=246', '2011-10-03 09:00:00+09'),
('Joseph', 'YB', 'parttime', '[장기] 도쿄 빅사이트 비즈니스 매칭 상담회', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=245

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=245', '2011-09-27 09:00:00+09'),
('슈퍼기타', 'YB', 'parttime', '[과외] 중학생 수학 과외 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=242

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=242', '2011-09-27 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[장기] 한국어 강사 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=238

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=238', '2011-09-21 09:00:00+09'),
('Jackson', 'YB', 'parttime', '[장기] 전시회 제품 설명 도우미 2인 구합니다(여성분) 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=237

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=237', '2011-09-19 09:00:00+09'),
('재료이창준', 'YB', 'parttime', '[장기] 국제심포 준비를 도와줄 대학원생스탭 모집 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=233

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=233', '2011-09-09 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[번역·통역] 번역관련 일 하실 분(8월31일 오후5시까지 연락요망) 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=231

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=231', '2011-08-31 09:00:00+09'),
('김은영', 'YB', 'parttime', '[번역·통역] [급] 통역하실분 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=224

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=224', '2011-08-26 09:00:00+09'),
('이충현', 'YB', 'parttime', '[장기] 메일 드렸습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=221

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=221', '2011-08-06 09:00:00+09'),
('문제회1219', 'YB', 'parttime', '[과외] 中2 영어과외 하실분.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=220

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=220', '2011-08-06 09:00:00+09'),
('김호준', 'YB', 'parttime', '[장기] TOP CAREER 모니터링 알바 모집합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=217

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=217', '2011-07-05 09:00:00+09'),
('광주만삭이', 'YB', 'parttime', '[번역·통역] 간단한 통역및 안내하실분 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=216

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=216', '2011-07-04 09:00:00+09'),
('재료이창준', 'YB', 'parttime', '[장기] 동경시내 운전 가이드 아르바이트(7월8일~10일) 댓글 5 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=209

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=209', '2011-06-29 09:00:00+09'),
('녹차벌레', 'YB', 'parttime', '[장기] IT관련 아르바이트모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=207

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=207', '2011-06-08 09:00:00+09'),
('JECASTING', 'YB', 'parttime', '[장기] 2011년 JYP 일본 에이전트 모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=205

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=205', '2011-05-31 09:00:00+09'),
('동경지부장', 'YB', 'parttime', '[장기] (아르바이트 관련) 재일한국인 대상, 생명보험에 관한 퍼스널 인터뷰-1만엔/1시간', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=204

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=204', '2011-05-30 09:00:00+09'),
('연구원', 'YB', 'parttime', '[장기] “해외감정평가 총람” 연구과제 “현지전문가” 선정', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=198

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=198', '2011-05-18 09:00:00+09'),
('MinZzang', 'YB', 'parttime', '[과외] 과외선생님(미국에서 유학 경험(SAT 경험)) 구합니다.(내용일부수정)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=195

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=195', '2011-04-12 09:00:00+09'),
('jazzpian', 'YB', 'parttime', '[장기] 모집 마감되었습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=194

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=194', '2011-04-11 09:00:00+09'),
('jazzpian', 'YB', 'parttime', '[장기] 한국어 회화 선생님 구해요. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=191

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=191', '2011-04-11 09:00:00+09'),
('서울대학교자연대', 'YB', 'parttime', '[장기] 모집 마감하였습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=187

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=187', '2011-02-07 09:00:00+09'),
('무명', 'YB', 'parttime', '[장기] 2/21월 15:30~17:00(1시간30분) 유학생분의 홍고캠퍼스 안내(한국어) 아르바이트를 부탁드립니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=183

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=183', '2011-02-01 09:00:00+09'),
('서울대학교자연대', 'YB', 'parttime', '[번역·통역] 통역 아르바이트 하실 분 찾습니다. 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=179

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=179', '2011-01-26 09:00:00+09'),
('유유캬', 'YB', 'parttime', '[과외] 초등학생 과외 선생님 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=178

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=178', '2011-01-15 09:00:00+09'),
('kimmy', 'YB', 'parttime', '[장기] 동경에계신 한국대학생 남/여 모델을 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=175

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=175', '2011-01-12 09:00:00+09'),
('희정', 'YB', 'parttime', '[과외] 과외 선생님 구합니다. 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=173

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=173', '2011-01-11 09:00:00+09'),
('pacino', 'YB', 'parttime', '[장기] 아르바이트구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=171

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=171', '2010-12-14 09:00:00+09'),
('KPRman', 'YB', 'parttime', '[번역·통역] 통역 구합니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=170

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=170', '2010-12-13 09:00:00+09'),
('마크로밀코리아', 'YB', 'parttime', '[장기] 마감되었습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=166

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=166', '2010-11-19 09:00:00+09'),
('녹차벌레', 'YB', 'parttime', '[번역·통역] 가이드 및 수행통역하실분을 구합니다. 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=162

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=162', '2010-11-18 09:00:00+09'),
('마크로밀코리아', 'YB', 'parttime', '[번역·통역] 글로벌 세미나 통역 아르바이트 구합니다. 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=158

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=158', '2010-11-17 09:00:00+09'),
('임화진', 'YB', 'parttime', '[장기] 리스트 작성 알바 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=157

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=157', '2010-11-16 09:00:00+09'),
('xefri', 'YB', 'parttime', '[번역·통역] 번역 알바', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=149

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=149', '2010-11-11 09:00:00+09'),
('leopapa', 'YB', 'parttime', '[번역·통역] 통역 알바 구함 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=148

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=148', '2010-11-10 09:00:00+09'),
('June79', 'YB', 'parttime', '[장기] 종료되었습니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=147

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=147', '2010-10-28 09:00:00+09'),
('June79', 'YB', 'parttime', '[번역·통역] (급) 10월 29일 금요일 오전 통역하실분 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=145

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=145', '2010-10-28 09:00:00+09'),
('KIRKOS', 'YB', 'parttime', '[장기] 밑의 내용 수정입니다. 일어 상관없어요.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=144

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=144', '2010-10-25 09:00:00+09'),
('KIRKOS', 'YB', 'parttime', '[과외] 小手指나 근처에 사시는 분 중 영어과외 하실분 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=141

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=141', '2010-10-19 09:00:00+09'),
('무기', 'YB', 'parttime', '[장기] 모집 종료', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=140

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=140', '2010-10-16 09:00:00+09'),
('무기', 'YB', 'parttime', '[과외] 과외선생님 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=136

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=136', '2010-10-02 09:00:00+09'),
('정신보따리', 'YB', 'parttime', '[장기] 실험 피험자 아르바이트 구합니다. 시간당 1000엔(도서카드, 쿠오카드) 댓글 9 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=123

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=123', '2010-09-26 09:00:00+09'),
('최기현', 'YB', 'parttime', '[번역·통역] 통역알바 모집 댓글 7 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=118

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=118', '2010-09-24 09:00:00+09'),
('후구오까상', 'YB', 'parttime', '[과외] 한국어 과외 알바 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=112

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=112', '2010-09-22 09:00:00+09'),
('xefri', 'YB', 'parttime', '[장기] 한국어 선생', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=111

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=111', '2010-09-16 09:00:00+09'),
('winterfall', 'YB', 'parttime', '[장기] 라쿠텐 가을인턴쉽 안내(대학원생용)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=110

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=110', '2010-09-15 09:00:00+09'),
('재료이창준', 'YB', 'parttime', '[과외] 국어(언어영역) 그룹 과외하실 분을 구합니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=108

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=108', '2010-09-08 09:00:00+09'),
('오쨩', 'YB', 'parttime', '[번역·통역] 중소기업 비지니스박람회 통역알바 10월 13~15일(3일간)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=106

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=106', '2010-08-30 09:00:00+09'),
('김민선', 'YB', 'parttime', '[번역·통역] 국제학술대회 통역모집 (마감: 8월 20일) 댓글 4 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=98

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=98', '2010-08-04 09:00:00+09'),
('정신보따리', 'YB', 'parttime', '[장기] 아르바이트 시뮬레이션 실험 피험자 모집(1500엔) 댓글 15 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=83

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=83', '2010-07-29 09:00:00+09'),
('김연아', 'YB', 'parttime', '[번역·통역] 일본어->한국어 논문,슬라이드 번역 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=79

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=79', '2010-07-25 09:00:00+09'),
('장화선', 'YB', 'parttime', '[과외] 과외하실분~~ 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=77

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=77', '2010-06-23 09:00:00+09'),
('FlyingUknow', 'YB', 'parttime', '[번역·통역] 통역하실 학생 구합니다. 댓글 3 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=71

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=71', '2010-06-09 09:00:00+09'),
('에스포유', 'YB', 'parttime', '[번역·통역] 5/25(화) 도쿄 비즈니스상담회 한일통역자 모집 댓글 7 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=61

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=61', '2010-05-12 09:00:00+09'),
('현지가이드구함', 'YB', 'parttime', '[단기] 일본현지가이드구합니다(일정변경)8일날하루만요^^도와주실분', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=60

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=60', '2010-05-04 09:00:00+09'),
('현지가이드구함', 'YB', 'parttime', '[장기] 일본도쿄현지가이드구합니다 댓글 2 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=57

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=57', '2010-05-02 09:00:00+09'),
('규언짱', 'YB', 'parttime', '[번역·통역] 동경 전자상가 통역 1일 급하게 요청드립니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=56

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=56', '2010-04-14 09:00:00+09'),
('규언짱', 'YB', 'parttime', '[번역·통역] 동경 전자상가 통역 1일 급하게 요청드립니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=54

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=54', '2010-04-12 09:00:00+09'),
('yusungkim', 'YB', 'parttime', '[번역·통역] 번역 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=50

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=50', '2010-03-17 09:00:00+09'),
('민짱', 'YB', 'parttime', '[번역·통역] 통역아르바이트 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=43

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=43', '2010-03-11 09:00:00+09'),
('정욱', 'YB', 'parttime', '[장기] 피아노선생을 구합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=42

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=42', '2010-03-08 09:00:00+09'),
('environ', 'YB', 'parttime', '[번역·통역] - 모집종료 - 하천사업에 관한 한국어자료의 일본어번역을 하실수 있는 분을 모집합니다. 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=40

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=40', '2010-03-01 09:00:00+09'),
('environ', 'YB', 'parttime', '[단기] - 모집 종료- 단기 사무실 아르바이트 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=38

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=38', '2010-03-01 09:00:00+09'),
('VLSI', 'YB', 'parttime', '[장기] 토플강사모집', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=36

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=36', '2010-01-29 09:00:00+09'),
('KSA', 'YB', 'parttime', '[장기] JASSO EJU 모니터조사 아르바이트', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=33

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=33', '2009-12-09 09:00:00+09'),
('녹차벌레', 'YB', 'parttime', '[번역·통역] 통역 및 가이드건에 대한 대선배님의 의견입니다. 앞으로 좋은 참고가 되었으면 합니다. 댓글 6 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=26

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=26', '2009-11-19 09:00:00+09'),
('통구리', 'YB', 'parttime', '[번역·통역] 통역사 모집합니다.', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=25

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=25', '2009-11-17 09:00:00+09'),
('동철', 'YB', 'parttime', '[번역·통역] 의학 약학 분야 번역 아르바이트 하실 분 모집합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=24

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=24', '2009-11-16 09:00:00+09'),
('교수신문', 'YB', 'parttime', '[장기] [교수신문] 2010 교수임용 가이드 발행…나눠 드립니다 댓글 1 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=22

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=22', '2009-11-03 09:00:00+09'),
('정신보따리', 'YB', 'parttime', '[장기] 피험자 모집 댓글 7 개', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=13

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=13', '2009-10-27 09:00:00+09'),
('여짱', 'YB', 'parttime', '[번역·통역] 통역원 아르바이트를 모집합니다. (일본현지)', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=9

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=9', '2009-10-16 09:00:00+09'),
('쵸콜릿', 'YB', 'parttime', '[번역·통역] 통역-토목,건축,건설,기계', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=7

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=7', '2009-08-12 09:00:00+09'),
('토토로', 'YB', 'parttime', '[번역·통역] 통역 구합니다', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=6

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=6', '2009-08-11 09:00:00+09'),
('KSA', 'YB', 'parttime', '[장기] 교내 아르바이트-홍정국 교수님', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=4

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=4', '2009-07-23 09:00:00+09'),
('한규채', 'YB', 'parttime', '[번역·통역] [아르바이트 구인 ] 도쿄게임쇼 2026 일본어 & 영어 통역 및 부스 운영 아르바이트 구인', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1528

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1528', '2015-01-01 09:00:00+09'),
('etranspia', 'YB', 'parttime', '[번역·통역] 일본어 전문 통역 번역 도와드립니다 : )', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1527

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'public', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_05&wr_id=1527', '2015-01-01 09:00:00+09'),
('이병철', 'YB', 'market', '[구합니다] MrCt3F', '도쿄대학 한국인 학생회 (구)홈페이지에서 옮겨온 글입니다.
원문 보기 : https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_06&wr_id=1046

※ 본문은 (구)홈페이지 회원 전용이라 제목·작성자·날짜만 옮겼습니다.', 'members', 'legacy', 'https://www.tokyoksa.com/bbs/board.php?bo_table=sub03_06&wr_id=1046', '2026-07-14 09:00:00+09');

-- 확인용
-- select category, count(*) from public.posts where org='YB' group by 1;
