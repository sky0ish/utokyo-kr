// ─── 게시판 화면의 상단 메뉴 (총동문회 OB · 학생회 YB 공용) ────
// 게시판·글보기·글쓰기 화면은 두 단체가 한 파일을 함께 씁니다.
// 예전에는 HTML 에 총동문회 메뉴를 적어 두고 학생회일 때만 바꿨는데,
// 그러면 잠깐 총동문회 메뉴가 스쳐 보이거나 그대로 남는 일이 있었습니다.
// 그래서 이제 어느 쪽이든 메뉴를 이 파일에서 새로 그립니다.

const NAV = {
  OB: `
      <div class="dd">
        <a href="/OB/index.html#greeting">동문회 소개</a>
        <div class="dd-menu">
          <a href="/OB/index.html#greeting">인사말</a>
          <a href="/OB/index.html#org">조직도</a>
          <a href="/OB/index.html#history">연혁</a>
          <a href="/OB/rules.html">정관</a>
        </div>
      </div>
      <div class="dd">
        <a href="/OB/board.html">게시판</a>
        <div class="dd-menu">
          <a href="/OB/board.html?cat=free">자유게시판</a>
          <a href="/OB/board.html?cat=promo">홍보·채용</a>
          <a href="/OB/board.html?cat=condolence">경조사</a>
          <a href="/OB/board.html?cat=notice">공지사항</a>
        </div>
      </div>
      <div class="dd">
        <a href="/OB/index.html#join">참여마당</a>
        <div class="dd-menu">
          <a href="/OB/index.html#news">동문회 총회</a>
          <a href="/OB/board.html?cat=club">소모임</a>
          <a href="/OB/board.html?cat=mentoring">멘토멘티</a>
          <a href="/OB/board.html?cat=forum">단과대포럼</a>
          <a href="/OB/board.html?cat=seminar">세미나</a>
        </div>
      </div>
      <div class="dd">
        <a href="/OB/gallery.html">갤러리</a>
        <div class="dd-menu">
          <a href="/OB/gallery.html?cat=assembly">총회</a>
          <a href="/OB/gallery.html?cat=club">소모임</a>
          <a href="/OB/gallery.html?cat=faculty">단과대모임</a>
          <a href="/OB/gallery.html?cat=forum">포럼·세미나</a>
          <a href="/OB/gallery.html?cat=old">옛날사진</a>
          <a href="/OB/gallery.html?cat=daily">일상</a>
          <a href="/OB/gallery.html?cat=etc">기타</a>
        </div>
      </div>
      <a href="/OB/map.html">MAP</a>
      <a href="/OB/index.html#sponsor">후원</a>`,

  YB: `
      <div class="dd">
        <a href="/YB/index.html#school">학교안내</a>
        <div class="dd-menu">
          <a href="/YB/index.html#intro">학교 소개</a>
          <a href="/YB/index.html#access">오시는 길</a>
          <a href="/YB/index.html#access">캠퍼스 안내</a>
          <a href="/YB/index.html#faq">FAQ</a>
        </div>
      </div>
      <div class="dd">
        <a href="/YB/index.html#council">학생회</a>
        <div class="dd-menu">
          <a href="/YB/index.html#greeting">인사말</a>
          <a href="/YB/index.html#officers">임원진</a>
          <a href="/YB/index.html#history">활동 이력</a>
          <a href="/YB/index.html#rules">회칙</a>
        </div>
      </div>
      <div class="dd">
        <a href="/YB/board.html">게시판</a>
        <div class="dd-menu">
          <a href="/YB/board.html?cat=notice">공지사항</a>
          <a href="/YB/board.html?cat=free">자유게시판</a>
          <a href="/YB/board.html?cat=qna">Q&amp;A</a>
          <a href="/YB/board.html?cat=jobs">취업정보</a>
          <a href="/YB/board.html?cat=parttime">아르바이트</a>
          <a href="/YB/board.html?cat=market">벼룩시장</a>
          <a href="/YB/board.html?cat=mentoring">멘토멘티</a>
        </div>
      </div>
      <div class="dd">
        <a href="/YB/gallery.html">갤러리</a>
        <div class="dd-menu">
          <a href="/YB/gallery.html?cat=all">전체</a>
          <a href="/YB/gallery.html?cat=assembly">총회</a>
          <a href="/YB/gallery.html?cat=event">행사·소모임</a>
          <a href="/YB/gallery.html?cat=jobs">인재채용</a>
          <a href="/YB/gallery.html?cat=daily">일상</a>
          <a href="/YB/gallery.html?cat=etc">기타</a>
        </div>
      </div>
      <a href="/YB/map.html">MAP</a>
      <a href="/YB/index.html#sponsor">후원</a>`,
};

const LOGO = {
  OB: { html: "재한 도쿄대학 총동문회<small>在韓東京大学総同門会 · EST. 2011</small>",
        href: "/OB/index.html", name: "재한 도쿄대학 총동문회" },
  YB: { html: "도쿄대학 한국인학생회<small>東京大学韓国人学生会 · UT-KSA</small>",
        href: "/YB/index.html", name: "도쿄대학 한국인학생회" },
};

const PILLS = {
  OB: '<a class="band" href="https://www.band.us/band/58105635/post" target="_blank" rel="noopener">네이버 밴드 →</a>' +
      '<a class="fb" href="https://www.facebook.com/groups/286637871392457" target="_blank" rel="noopener">페이스북 그룹</a>',
  YB: '<a class="band" href="https://www.tokyoksa.com/" target="_blank" rel="noopener">학생회 홈 →</a>' +
      '<a class="fb" href="https://www.facebook.com/tokyoksa" target="_blank" rel="noopener">페이스북</a>',
};

/**
 * 게시판 화면의 상단 메뉴를 그 단체 것으로 그린다.
 * @param {"OB"|"YB"} org
 * @param {string} [title] 브라우저 탭 제목
 */
export function applyNav(org, title) {
  const key = org === "YB" ? "YB" : "OB";
  document.body.classList.toggle("yb", key === "YB");
  if (title) document.title = title;

  const logo = document.querySelector(".mlogo");
  if (logo) {
    logo.innerHTML = LOGO[key].html;
    logo.setAttribute("href", LOGO[key].href);
  }
  const nav = document.querySelector(".mhead nav");
  if (nav) nav.innerHTML = NAV[key];

  const pills = document.querySelector(".mpills");
  if (pills) pills.innerHTML = PILLS[key];

  // 상단 얇은 줄의 마지막 링크를 그 단체 홈으로
  const links = document.querySelectorAll(".topbar .links:first-child a");
  const last = links[links.length - 1];
  if (last) {
    last.textContent = LOGO[key].name;
    last.setAttribute("href", LOGO[key].href);
  }
}

/** 예전 이름 (학생회 전용) — 남아 있는 호출을 위해 */
export const applyYB = (title) => applyNav("YB", title);
