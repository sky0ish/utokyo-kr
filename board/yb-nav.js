// ─── 게시판 화면을 학생회(YB) 모습으로 바꾸는 공용 모듈 ───────
// 게시판·글보기·글쓰기 화면은 총동문회(OB)와 학생회(YB)가 함께 쓰기 때문에,
// org=YB 로 들어오면 상단 메뉴·로고·바깥 링크를 모두 학생회 것으로 바꿔준다.
// (그러지 않으면 초록색 학생회 화면에 총동문회 메뉴가 남는다)

const YB_NAV = `
      <div class="dd">
        <a href="../YB/index.html#school">학교안내</a>
        <div class="dd-menu">
          <a href="../YB/index.html#school">학교 소개</a>
          <a href="../YB/index.html#access">오시는 길</a>
          <a href="../YB/index.html#school">캠퍼스 안내</a>
          <a href="../YB/index.html#school">FAQ</a>
        </div>
      </div>
      <div class="dd">
        <a href="../YB/index.html#council">학생회</a>
        <div class="dd-menu">
          <a href="../YB/index.html#council">인사말</a>
          <a href="../YB/index.html#council">임원진</a>
          <a href="../YB/index.html#council">활동 이력</a>
          <a href="../YB/index.html#council">회칙</a>
        </div>
      </div>
      <div class="dd">
        <a href="index.html?org=YB">게시판</a>
        <div class="dd-menu">
          <a href="index.html?org=YB&cat=notice">공지사항</a>
          <a href="index.html?org=YB&cat=free">자유게시판</a>
          <a href="index.html?org=YB&cat=qna">Q&amp;A</a>
          <a href="index.html?org=YB&cat=jobs">취업정보</a>
          <a href="index.html?org=YB&cat=parttime">아르바이트</a>
          <a href="index.html?org=YB&cat=market">벼룩시장</a>
        </div>
      </div>
      <div class="dd">
        <a href="../YB/gallery.html">갤러리</a>
        <div class="dd-menu">
          <a href="../YB/gallery.html?cat=event2015">행사 사진 및 동영상 (2015~)</a>
          <a href="../YB/gallery.html?cat=event">행사 사진 및 동영상</a>
          <a href="../YB/gallery.html?cat=general">일반 사진 및 동영상</a>
        </div>
      </div>
      <a href="../YB/index.html#sponsor">후원</a>`;

/** org=YB 일 때 화면을 학생회 것으로 바꾼다 */
export function applyYB(title) {
  document.body.classList.add("yb");
  if (title) document.title = title;

  const logo = document.querySelector(".mlogo");
  if (logo) {
    logo.innerHTML = "도쿄대학 한국인학생회<small>東京大学韓国人学生会 · UT-KSA</small>";
    logo.setAttribute("href", "../YB/index.html");
  }
  const nav = document.querySelector(".mhead nav");
  if (nav) nav.innerHTML = YB_NAV;

  const pills = document.querySelector(".mpills");
  if (pills) pills.innerHTML =
    '<a class="band" href="https://www.tokyoksa.com/" target="_blank" rel="noopener">학생회 홈 →</a>';

  // 상단 얇은 줄의 마지막 링크(총동문회) → 학생회
  const links = document.querySelectorAll(".topbar .links:first-child a");
  const last = links[links.length - 1];
  if (last) { last.textContent = "도쿄대학 한국인학생회"; last.setAttribute("href", "../YB/index.html"); }
}
