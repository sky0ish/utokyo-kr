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
          <a href="/OB/index.html#roster">임원진 명단</a>
          <a href="/OB/index.html#history">연혁</a>
          <a href="/OB/rules.html">정관</a>
        </div>
      </div>
      <div class="dd">
        <a href="/OB/index.html#join">참여마당</a>
        <div class="dd-menu">
          <a href="/OB/index.html#news">동문회 총회</a>
          <a href="/OB/board.html?cat=club">소모임</a>
          <a href="/OB/board.html?cat=mentoring">멘토멘티(OB/YB)</a>
          <a href="/OB/board.html?cat=forum">포럼·세미나</a>
        </div>
      </div>
      <div class="dd">
        <a href="/OB/board.html">게시판</a>
        <div class="dd-menu">
          <a href="/OB/board.html?cat=notice">공지사항</a>
          <a href="/OB/board.html?cat=free">자유게시판</a>
          <a href="/OB/board.html?cat=promo">홍보·채용</a>
          <a href="/OB/board.html?cat=condolence">경조사</a>
          <a href="/OB/board.html?cat=research">단행본 및 연구소개</a>
          <a href="/OB/board.html?cat=suggest">동문회에 바란다</a>
        </div>
      </div>
      <div class="dd">
        <a href="/OB/gallery.html">갤러리</a>
        <div class="dd-menu">
          <a href="/OB/gallery.html?cat=assembly">총회</a>
          <a href="/OB/gallery.html?cat=staff">운영진</a>
          <a href="/OB/gallery.html?cat=club">소모임</a>
          <a href="/OB/gallery.html?cat=faculty">단과대모임</a>
          <a href="/OB/gallery.html?cat=forum">포럼·세미나</a>
          <a href="/OB/gallery.html?cat=old">옛날사진</a>
          <a href="/OB/gallery.html?cat=daily">일상</a>
        </div>
      </div>
      <a href="/OB/map.html">MAP</a>
      <a href="/OB/index.html#sponsor">후원</a>`,

  YB: `
      <div class="dd">
        <a href="/YB/index.html#school">학교안내</a>
        <div class="dd-menu">
          <a href="/YB/index.html#introtx">학교 소개</a>
          <a href="/YB/index.html#access">오시는 길 · 캠퍼스 안내</a>
          <a href="/YB/index.html#faq">FAQ</a>
          <a href="/YB/index.html#usage">홈페이지 이용안내</a>
        </div>
      </div>
      <div class="dd">
        <a href="/YB/index.html#council">학생회</a>
        <div class="dd-menu">
          <a href="/YB/index.html#greeting">인사말</a>
          <a href="/YB/index.html#officers">임원진</a>
          <a href="/YB/index.html#past">역대 회장 및 임원진</a>
          <a href="/YB/board.html?cat=history">활동 이력</a>
          <a href="/YB/rules.html">회칙</a>
        </div>
      </div>
      <div class="dd">
        <a href="/YB/board.html?cat=mentoring">참여마당</a>
        <div class="dd-menu">
          <a href="/YB/board.html?cat=mentoring">멘토멘티(OB/YB)</a>
          <a href="/YB/board.html?cat=event">행사</a>
          <a href="/YB/board.html?cat=club">소모임</a>
          <a href="/YB/board.html?cat=major">전공별모임</a>
          <a href="/YB/board.html?cat=suggest">학생회에 바란다</a>
        </div>
      </div>
      <div class="dd">
        <a href="/YB/board.html">게시판</a>
        <div class="dd-menu">
          <a href="/YB/board.html?cat=notice">공지사항</a>
          <a href="/YB/board.html?cat=free">자유게시판</a>
          <a href="/YB/board.html?cat=qna">Q&amp;A</a>
          <a href="/YB/board.html?cat=jobs">구인/채용</a>
          <a href="/YB/board.html?cat=scholarship">장학정보</a>
          <a href="/YB/board.html?cat=market">벼룩시장</a>
          <a href="/YB/board.html?cat=exam">수험생 게시판 (준회원)</a>
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
      <a href="/YB/index.html#sponsor">후원/협력요청</a>`,
};

const LOGO = {
  OB: { html: "재한 도쿄대학 총동문회<small>在韓東京大学総同門会 · EST. 2011</small>",
        href: "/OB/index.html", name: "재한 도쿄대학 총동문회" },
  YB: { html: "<span class=\"hmark\"></span><span class=\"hname\">도쿄대학 한국인학생회<span class=\"ksamark\" role=\"img\" aria-label=\"도쿄대학 한국인학생회 마크\"></span><small>東京大学韓国人学生会 · UT-KSA</small></span>",
        href: "/YB/index.html", name: "도쿄대학 한국인학생회" },
};

const PILLS = {
  OB: '<a class="band" href="https://www.band.us/band/58105635/post" target="_blank" rel="noopener">네이버 밴드 →</a>' +
      '<a class="fb" href="https://www.facebook.com/groups/286637871392457" target="_blank" rel="noopener">페이스북 그룹</a>',
  YB: '<a class="fb" href="https://www.facebook.com/tokyoksa" target="_blank" rel="noopener">Facebook</a>' +
      '<a class="ig" href="https://www.instagram.com/tokyoksa/" target="_blank" rel="noopener">Instagram</a>',
};

/**
 * 게시판 화면의 상단 메뉴를 그 단체 것으로 그린다.
 * @param {"OB"|"YB"} org
 * @param {string} [title] 브라우저 탭 제목
 */
/**
 * 상단 메뉴만 이 파일의 것으로 다시 그린다.
 * 첫 화면·갤러리·정관처럼 제 머리글을 따로 가진 화면에서 씁니다.
 * 메뉴 모양(css)은 그 화면 것을 그대로 쓰고 항목만 하나로 맞춥니다.
 * @param {"OB"|"YB"} org
 */
export function applyMenu(org) {
  const key = org === "YB" ? "YB" : "OB";
  const nav = document.querySelector(".mhead nav") ||
              document.querySelector("header nav") ||
              document.querySelector("nav");
  if (!nav) return;
  nav.innerHTML = NAV[key];
  // 지금 보고 있는 화면을 가리키는 링크는 새로 열지 말고 자리만 옮기도록
  const here = location.pathname.replace(/index\.html$/, "");
  nav.querySelectorAll("a[href*='#']").forEach(a => {
    const u = new URL(a.getAttribute("href"), location.href);
    if (u.hash && u.pathname.replace(/index\.html$/, "") === here) a.setAttribute("href", u.hash);
  });
}

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

  // (예전에는 여기서 윗줄 마지막 링크를 그 단체 홈으로 바꿔치기했습니다.
  //  그 탓에 「한국인학생회(기존)」 자리가 학생회 홈으로 바뀌어, 옛 홈페이지로 갈 수 없고
  //  같은 곳으로 가는 단추가 둘 생겼습니다. 이제 각 화면이 윗줄 네 개를 그대로 적습니다.)
}

/** 상단 얇은 줄의 로그인 자리를 지금 상태에 맞게 그린다.
 *  게시판·갤러리는 저마다 그리고 있고, 지도 화면처럼 그렇지 않은 곳에서 씁니다. */
export async function applyAuthLinks(org) {
  const el = document.getElementById("authLinks");
  if (!el) return;
  const { sb, currentUser, myProfile, noteVisit } = await import("/YB/auth/auth.js");
  noteVisit();                       // 오늘 처음 들르신 것이면 한 번 세어둔다
  let user = null, p = null;
  try {
    user = await currentUser();
    p = user ? await myProfile() : null;
  } catch (e) { return; }                 // 실패하면 원래 있던 로그인 링크를 그대로 둔다
  if (!user) return;

  el.innerHTML = "";
  const st = document.createElement("span");
  st.textContent = (p && p.name) ? `[${p.name}님 로그인중]` : "[로그인중]";
  st.style.color = "#7fc48a"; st.style.fontWeight = "700";
  const my = document.createElement("a");
  my.href = "/YB/auth/mypage.html";
  my.textContent = "내 정보";
  my.title = "내 정보 보기 · 고치기";
  const out = document.createElement("a");
  out.href = "#"; out.textContent = "로그아웃";
  out.addEventListener("click", async (e) => {
    e.preventDefault(); await sb.auth.signOut(); location.reload();
  });
  el.append(st, my, out);

  const mk = (href, text, gold) => {
    const a = document.createElement("a");
    a.href = href; a.textContent = text;
    a.style.color = gold ? "#e8c876" : "inherit";
    a.style.fontWeight = "600";
    return a;
  };
  // 승인된 회원이면 누구나 — 제 소속의 사용통계를 봅니다
  if (p && (p.approved || p.is_admin)) el.append(mk("/YB/stats.html", "사용통계"));

  if (p && p.is_admin) {
    el.append(mk("/YB/admin/members.html?org=" + org, "⚙ 회원관리", 1),
              mk("/YB/admin/gallery.html?org=" + org, "⚙ 갤러리 관리", 1),
              mk("/YB/admin/index.html", "⚙ 글 가져오기", 1));
  }
}

/** 예전 이름 (학생회 전용) — 남아 있는 호출을 위해 */
export const applyYB = (title) => applyNav("YB", title);
