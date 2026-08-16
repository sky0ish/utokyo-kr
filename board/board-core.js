import { sb, currentUser, myProfile } from "/auth/auth.js";
// ─── 게시판 목록 화면 (총동문회 OB · 학생회 YB 공용 엔진) ────────
// 화면 파일은 OB/ · YB/ 폴더에 따로 두고, 동작은 이 파일 하나를 함께 씁니다.
// 그래서 한쪽만 고쳐져 서로 어긋나는 일이 생기지 않습니다.
import { applyNav } from "/board/nav.js?v=4";

export async function initBoard(ORG) {
  const HOME = ORG === "YB" ? "/YB" : "/OB";


  // ── 조직별 게시판 구성 ──
  const CAT_OB = { notice:"공지", free:"자유", club:"소모임", mentoring:"멘토멘티", promo:"홍보·채용", condolence:"경조사",
                   forum:"단과대포럼", seminar:"세미나",
                   jobs:"구인", faculty:"단과대별", news:"소식", market:"장터" };
  const CAT_YB = { notice:"공지사항", free:"자유게시판", qna:"Q&A", jobs:"취업정보", parttime:"아르바이트", market:"벼룩시장",
                   mentoring:"멘토멘티" };
  const TABS_OB = ["free","promo","condolence","notice"];   // 소모임·멘토멘티는 참여마당에서 접근
  const TABS_YB = ["notice","free","qna","jobs","parttime","market","mentoring"];
  const CAT = ORG === "YB" ? CAT_YB : CAT_OB;
  // 총동문회와 학생회가 함께 쓰는 게시판 — 이 분류에서는 양쪽 글을 모두 보여준다
  const SHARED = ["mentoring"];
  const TABS = ORG === "YB" ? TABS_YB : TABS_OB;

  applyNav(ORG, ORG === "YB" ? "게시판 | 도쿄대학 한국인학생회"
                            : "게시판 | 재한 도쿄대학 총동문회");
  // 분류 탭 다시 그리기
  {
    const cur = new URLSearchParams(location.search).get("cat") || "";
    const tabs = (cur && !TABS.includes(cur) && CAT[cur]) ? TABS.concat([cur]) : TABS;   // 참여마당 등에서 들어온 분류도 탭에 표시
    document.getElementById("catTabs").innerHTML =
      '<a href="#" data-cat="">전체</a>' + tabs.map(c => `<a href="#" data-cat="${c}">${CAT[c]}</a>`).join("");
  }
  const SRC = {
    band: '<span class="src-tag band">네이버밴드</span>',
    facebook: '<span class="src-tag fb">페이스북</span>',
    legacy: '<span class="src-tag legacy">(구)게시판</span>'
  };
  const onlyMyOrg = (q) => SHARED.includes(cat) ? q : q.eq("org", ORG);
  const params = new URLSearchParams(location.search);
  const org = ORG;
  let cat = params.get("cat") || "";
  if (!CAT[cat]) cat = "";
  let kw = (params.get("q") || "").trim();          // 키워드 검색어

  /** 검색어를 PostgREST 조건문에 넣을 수 있는 형태로 다듬는다 */
  function likeOf(s) {
    return "%" + String(s).replace(/[,()%]/g, " ").trim() + "%";
  }
  function applySearch(q) {
    if (!kw) return q;
    const L = likeOf(kw);
    return q.or(`title.ilike.${L},content.ilike.${L},author_name.ilike.${L}`);
  }
  function showSearchState() {
    const box = document.getElementById("q");
    const clr = document.getElementById("qClr");
    const msg = document.getElementById("qMsg");
    if (box) box.value = kw;
    clr.classList.toggle("on", !!kw);
    msg.innerHTML = kw ? `<b>‘${kw}’</b> 로 찾은 글입니다.` : "";
  }
  function runSearch(word) {
    kw = (word || "").trim();
    showSearchState();
    if (typeof memberOnlyBlocked !== "undefined") memberOnlyBlocked = null;
    load();
  }
  document.getElementById("qGo").addEventListener("click",
    () => runSearch(document.getElementById("q").value));
  document.getElementById("qClr").addEventListener("click", () => runSearch(""));
  document.getElementById("q").addEventListener("keydown", (e) => {
    if (e.key === "Enter") { e.preventDefault(); runSearch(e.target.value); }
  });
  document.getElementById("q").addEventListener("search", (e) => {   // ✕ 눌러 비웠을 때
    if (!e.target.value.trim() && kw) runSearch("");
  });
  showSearchState();

  document.querySelectorAll("#catTabs a").forEach(a => {
    a.addEventListener("click", (e) => {
      e.preventDefault();
      cat = a.dataset.cat || "";
      if (typeof memberOnlyBlocked !== "undefined") memberOnlyBlocked = null;
      document.querySelectorAll("#catTabs a").forEach(x => x.classList.remove("on"));
      a.classList.add("on");
      load();
    });
  });
  (document.querySelector('#catTabs a[data-cat="' + cat + '"]') || document.querySelector('#catTabs a[data-cat=""]')).classList.add("on");

  // 로그인 상태 표시 + 비로그인 시 공개 게시판만 노출
  const PUBLIC_CATS = ORG === "YB" ? ["notice", "jobs", "parttime"] : ["notice"];
  let memberOnlyBlocked = null;
  const user = await currentUser();
  if (user) {
    const p = await myProfile();
    const el = document.getElementById("authLinks");
    el.innerHTML = "";
    const st = document.createElement("span");
    st.textContent = (p && p.name) ? `[${p.name}님 로그인중]` : "[로그인중]";
    st.style.color = "#7fc48a"; st.style.fontWeight = "700";
    const my = document.createElement("a");
    my.href = "/auth/mypage.html";
    my.textContent = "내 정보";
    my.title = "내 정보 보기 · 고치기";
    const out = document.createElement("a");
    out.href = "#"; out.textContent = "로그아웃";
    out.addEventListener("click", async (e) => { e.preventDefault(); await sb.auth.signOut(); location.reload(); });
    el.append(st, my, out);
    if (p && p.is_admin) {                      // 운영진 관리 메뉴
      const mk = (href, text) => { const a = document.createElement("a");
        a.href = href; a.textContent = text; a.style.color = "#e8c876"; a.style.fontWeight = "600"; return a; };
      el.append(mk("/admin/members.html", "⚙ 회원 승인"), mk("/admin/gallery.html", "⚙ 갤러리 관리"));
    }
  } else {
    document.getElementById("loginNotice").style.display = "block";
    document.getElementById("loginNotice").innerHTML =
      `<b>${PUBLIC_CATS.map(c => CAT[c]).join(" · ")}</b> 게시판은 누구나 보실 수 있습니다. ` +
      `그 밖의 게시판은 로그인 후 이용해주세요. ` +
      '<a href="/auth/login.html">로그인</a> · <a href="/auth/signup.html">회원가입</a>';
    // 회원 전용 탭 숨기기
    document.querySelectorAll("#catTabs a").forEach(a => {
      const c = a.dataset.cat || "";
      if (c && !PUBLIC_CATS.includes(c)) a.style.display = "none";
    });
    if (cat && !PUBLIC_CATS.includes(cat)) {   // 회원 전용 게시판으로 바로 들어온 경우
      memberOnlyBlocked = CAT[cat] || cat;
    }
  }

  document.getElementById("writeBtn").addEventListener("click", async () => {
    if (!user) { location.href = "/auth/login.html"; return; }
    const qs = [];
    if (cat) qs.push("cat=" + cat);
    location.href = HOME + "/write.html" + (qs.length ? "?" + qs.join("&") : "");
  });

  const PAGE = 100;
  const PAGED = ORG === "YB";   // 학생회 게시판은 「더 보기」 대신 쪽번호로 넘긴다
  let loaded = [];          // 지금까지 불러온 글
  let total = 0;            // 전체 건수
  let pageNo = 1;           // 지금 보고 있는 쪽
  const listEl = document.getElementById("list");
  const moreBox = document.getElementById("moreBox");
  const moreBtn = document.getElementById("moreBtn");
  const countInfo = document.getElementById("countInfo");

  moreBtn.addEventListener("click", () => load(true));

  async function load(append = false, keepTotal = false) {
    if (memberOnlyBlocked) {   // 비로그인 상태에서 회원 전용 게시판 요청
      listEl.innerHTML = `<div class="empty"><b>${memberOnlyBlocked}</b> 게시판은 회원 전용입니다.<br><br>` +
        '<a class="btn dark" href="/auth/login.html">로그인</a> ' +
        '<a class="btn line" href="/auth/signup.html">회원가입</a></div>';
      moreBox.style.display = "none";
      document.getElementById("statBox").innerHTML = "";
      return;
    }
    if (!append) { loaded = []; listEl.innerHTML = '<div class="empty">불러오는 중…</div>'; moreBox.style.display = "none"; }
    else { moreBtn.disabled = true; moreBtn.textContent = "불러오는 중…"; }

    // 전체 건수 (첫 로드 때만 · 쪽만 넘길 때는 그대로 둔다)
    if (!append && !keepTotal) {
      pageNo = 1;
      let cq = onlyMyOrg(sb.from("posts").select("id", { count: "exact", head: true }));
      if (cat) cq = cq.eq("category", cat);
      cq = applySearch(cq);
      const { count } = await cq;
      total = count || 0;
    }

    // 알림으로 고정된 글은 늘 맨 위에 (검색 중에는 빼고 결과만 보여준다)
    let pins = [];
    if (!append && !kw && (!PAGED || pageNo === 1)) {
      let pq = onlyMyOrg(sb.from("posts")
        .select("id,title,org,category,author_name,visibility,source,image_url,created_at,pinned")
        .eq("pinned", true))
        .order("pinned_at", { ascending: false });
      if (cat) pq = pq.eq("category", cat);
      const pr = await pq;
      pins = pr.data || [];          // 표에 pinned 칸이 없으면 조용히 넘어간다
    }

    let q = onlyMyOrg(sb.from("posts")
      .select("id,title,org,category,author_name,visibility,source,image_url,created_at,pinned"))
      .order("created_at", { ascending: false })
      .range(PAGED ? (pageNo - 1) * PAGE : loaded.length,
             (PAGED ? (pageNo - 1) * PAGE : loaded.length) + PAGE - 1);
    if (cat) q = q.eq("category", cat);
    q = applySearch(q);
    const { data, error } = await q;

    moreBtn.disabled = false;
    moreBtn.textContent = "더 보기";

    if (error) { listEl.innerHTML = '<div class="empty">게시판을 불러오지 못했습니다. (' + error.message + ')</div>'; drawStat([]); return; }
    if ((!data || data.length === 0) && !append) {
      listEl.innerHTML = kw
        ? `<div class="empty"><b>‘${kw}’</b> 에 해당하는 글이 없습니다.<br><br>` +
          '다른 낱말로 찾아보시거나, 위의 ✕ 검색 해제를 눌러주세요.</div>'
        : '<div class="empty">아직 게시글이 없습니다.</div>';
      drawStat([]); return;
    }

    loaded = PAGED ? (data || []) : loaded.concat(data || []);
    drawStat(loaded);
    const pinIds = new Set(pins.map(p => p.id));
    render(pins.concat(loaded.filter(p => !pinIds.has(p.id))));

    if (PAGED) { drawPager(); }
    else if (loaded.length < total) {
      moreBox.style.display = "block";
      moreBtn.style.display = "inline-block";
      countInfo.textContent = `${loaded.length} / ${total}건`;
    } else {
      moreBox.style.display = total > PAGE ? "block" : "none";
      moreBtn.style.display = "none";
      countInfo.textContent = `전체 ${total}건을 모두 불러왔습니다.`;
    }
  }

  /** 쪽번호 줄 그리기 (학생회 게시판) */
  function drawPager() {
    moreBtn.style.display = "none";
    const pages = Math.max(1, Math.ceil(total / PAGE));
    let box = document.getElementById("pager");
    if (!box) {
      box = document.createElement("div");
      box.id = "pager"; box.className = "pager";
      moreBox.insertBefore(box, countInfo);
    }
    if (pages <= 1) {
      box.innerHTML = "";
      moreBox.style.display = total ? "block" : "none";
      countInfo.textContent = total ? `전체 ${total}건` : "";
      return;
    }
    const WIN = 10;
    let a = Math.max(1, pageNo - Math.floor(WIN / 2));
    let b = Math.min(pages, a + WIN - 1);
    a = Math.max(1, b - WIN + 1);
    const link = (n, t, off) =>
      `<a href="#" data-p="${n}" class="${off ? "off" : ""}">${t}</a>`;
    let h = link(1, "« 처음", pageNo === 1) + link(Math.max(1, pageNo - 1), "‹ 이전", pageNo === 1);
    for (let i = a; i <= b; i++) h += `<a href="#" data-p="${i}" class="${i === pageNo ? "on" : ""}">${i}</a>`;
    h += link(Math.min(pages, pageNo + 1), "다음 ›", pageNo === pages) +
         link(pages, "끝 »", pageNo === pages);
    box.innerHTML = h;
    box.querySelectorAll("a").forEach(el => el.addEventListener("click", (e) => {
      e.preventDefault();
      const n = Number(el.dataset.p);
      if (!n || n === pageNo) return;
      pageNo = n;
      load(false, true);
      window.scrollTo({ top: 0, behavior: "smooth" });
    }));
    moreBox.style.display = "block";
    const from = (pageNo - 1) * PAGE + 1, to = Math.min(pageNo * PAGE, total);
    countInfo.textContent = `${from}–${to} / 전체 ${total}건 · ${pageNo} / ${pages} 쪽`;
  }

  function render(data) {
    listEl.innerHTML = data.map(p => `
      <a class="row${p.pinned ? " pinned" : ""}" href="${HOME}/post.html?id=${p.id}">
        <span class="chip ${p.pinned ? "notice-pin" : p.category}">${p.pinned ? "알림" : (CAT[p.category] || p.category)}</span>
        <span class="t">${escapeHtml(p.title)}${p.visibility === "members" ? '<span class="lock">회원전용</span>' : ""}</span>
        ${p.image_url ? `<img class="thumb" src="${p.image_url}" alt="">` : ""}
        <span class="meta">
          <span class="mrow">${SRC[p.source] || ""}<span class="who">${escapeHtml(p.author_name || "")}</span><span class="chip org-${p.org}">${p.org === "ALL" ? "공통" : p.org}</span></span>
          <span class="dt">${p.created_at.slice(0,10)}</span>
        </span>
      </a>`).join("");
  }

  function escapeHtml(s){ return (s||"").replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c])); }

  // ─── 말머리(분류 또는 [말머리]) 비율 파이차트 ───
  const PIE_COLORS = ["#c9a24b","#2e6a8f","#3f6a3a","#9a5a2b","#7a5494","#8a6d2b","#4a6a6a","#a05252","#556b8d","#7d8a5a"];
  function drawStat(rows) {
    const box = document.getElementById("statBox");
    if (!rows.length) { box.innerHTML = ""; return; }
    const counts = {};
    rows.forEach(p => {
      let key;
      if (cat) { // 특정 게시판: 제목 앞 [말머리] 기준
        const m = (p.title || "").match(/^\s*[\[【]([^\]】]{1,12})[\]】]/);
        key = m ? m[1].trim() : "일반";
      } else {  // 전체: 게시판 분류 기준
        key = CAT[p.category] || p.category;
      }
      counts[key] = (counts[key] || 0) + 1;
    });
    const items = Object.entries(counts).sort((a,b) => b[1]-a[1]).slice(0, 10);
    const total = items.reduce((s,[,v]) => s+v, 0);
    if (items.length < 2) { box.innerHTML = ""; return; }

    const R = 42, C = 50;
    let acc = 0;
    const paths = items.map(([k,v], i) => {
      const frac = v/total, a0 = acc*2*Math.PI - Math.PI/2;
      acc += frac;
      const a1 = acc*2*Math.PI - Math.PI/2;
      const x0 = C+R*Math.cos(a0), y0 = C+R*Math.sin(a0);
      const x1 = C+R*Math.cos(a1), y1 = C+R*Math.sin(a1);
      const large = frac > 0.5 ? 1 : 0;
      const d = frac >= 0.999
        ? `M ${C} ${C-R} A ${R} ${R} 0 1 1 ${C-0.01} ${C-R} Z`
        : `M ${C} ${C} L ${x0} ${y0} A ${R} ${R} 0 ${large} 1 ${x1} ${y1} Z`;
      return `<path d="${d}" fill="${PIE_COLORS[i % PIE_COLORS.length]}" stroke="#fff" stroke-width="1"/>`;
    }).join("");

    const legend = items.map(([k,v], i) =>
      `<span><i style="background:${PIE_COLORS[i % PIE_COLORS.length]}"></i>${escapeHtml(k)} <b>${Math.round(v/total*100)}%</b> <span style="color:#a8a291;">(${v})</span></span>`
    ).join("");

    box.innerHTML = `<div class="stat">
        <svg class="pie" width="100" height="100" viewBox="0 0 100 100">${paths}</svg>
        <div>
          <div class="stitle">${cat ? "말머리 비율" : "게시판 분류 비율"} · 총 ${total}건</div>
          <div class="legend">${legend}</div>
        </div>
      </div>`;
  }

  load();
}
