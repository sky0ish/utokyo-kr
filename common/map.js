// ─── MAP — 도쿄대학 · 도쿄맛집 · 도쿄까페 · 추억핫플 · 건축물 ────
// 화면 파일은 OB/map.html · YB/map.html 로 따로 두고,
// 지도 내용은 이 파일 하나를 함께 씁니다. 양쪽에 같은 장소가 보입니다.
import { sb, currentUser, myProfile } from "/auth/auth.js";

export const CATS = [
  ["utokyo", "도쿄대학"],
  ["food",   "도쿄맛집"],
  ["cafe",   "도쿄까페"],
  ["memory", "추억핫플"],
  ["arch",   "건축물"],
];
export const CAT_NAME = Object.fromEntries(CATS);

/** 분류별 지도 표시 모양과 안내 문구 */
export const CAT_INFO = {
  utokyo: { shape: "dot",  mark: "파란 동그라미",
    desc: "도쿄대학 <b>혼고 · 고마바 · 가시와</b> 세 캠퍼스입니다. 주소와 가는 길, 가까운 역을 확인하실 수 있습니다." },
  food:   { shape: "star", mark: "빨간 별",
    desc: "동문·재학생이 추천하는 <b>도쿄의 맛집</b>입니다. 표시를 누르면 주소와 그곳의 특징, 얽힌 추억이 열립니다." },
  cafe:   { shape: "star", mark: "노란 별",
    desc: "공부하기 좋은 곳, 이야기 나누기 좋은 곳 — <b>도쿄의 까페</b>를 모았습니다." },
  memory: { shape: "dot",  mark: "보라 동그라미",
    desc: "유학 시절 자주 찾던 곳, 잊지 못할 일이 있었던 곳 — <b>추억의 장소</b>입니다." },
  arch:   { shape: "dot",  mark: "짙은 초록 동그라미",
    desc: "<b>유명 건축가가 지은 멋진 장소</b>를 찾아가 보세요. 설계자와 특징을 함께 적어주시면 좋습니다." },
};

/** 도쿄대학 분류에 기본으로 들어 있는 세 캠퍼스 */
export const CAMPUS = [
  { k: "hongo", name: "혼고 캠퍼스 (本郷)", tag: "본부",
    address: "일본 도쿄도 분쿄구 혼고 7-3-1",
    jp: "〒113-8654 東京都文京区本郷7-3-1",
    lat: 35.7128, lng: 139.7620,
    ways: ["도쿄메트로 남북선 <b>도다이마에(東大前)역</b> 도보 1분",
           "도쿄메트로 마루노우치선·도에이 오에도선 <b>혼고산초메(本郷三丁目)역</b> 도보 8분",
           "도쿄메트로 지요다선 <b>네즈(根津)역</b> 도보 8분",
           "아카몬(赤門) · 야스다강당 · 산시로연못이 이 캠퍼스에 있습니다"] },
  { k: "komaba", name: "고마바 캠퍼스 (駒場)", tag: "교양학부",
    address: "일본 도쿄도 메구로구 고마바 3-8-1",
    jp: "〒153-8902 東京都目黒区駒場3-8-1",
    lat: 35.6595, lng: 139.6849,
    ways: ["게이오 이노카시라선 <b>고마바토다이마에(駒場東大前)역</b> 바로 앞",
           "시부야역에서 이노카시라선으로 2정거장 (약 4분)",
           "1·2학년 전 학생이 다니는 교양학부 캠퍼스입니다"] },
  { k: "kashiwa", name: "가시와 캠퍼스 (柏)", tag: "대학원·연구",
    address: "일본 지바현 가시와시 가시와노하 5-1-5",
    jp: "〒277-8561 千葉県柏市柏の葉5-1-5",
    lat: 35.8988, lng: 139.9436,
    ways: ["쓰쿠바 익스프레스 <b>가시와노하캠퍼스역</b> 하차 후 버스 약 10분",
           "JR 조반선 <b>가시와(柏)역</b> 서쪽 출구에서 버스 약 25분",
           "신령역 연구·대학원 중심 캠퍼스입니다"] },
];

/** 바탕지도 — 열쇠(API key) 없이 쓸 수 있는 것들 */
export const BASEMAPS = [
  { k: "osm", n: "기본", sub: "OpenStreetMap",
    url: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
    att: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>' },
  { k: "voyager", n: "부드러운 컬러", sub: "CARTO Voyager",
    url: "https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png",
    att: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> &copy; <a href="https://carto.com/attributions">CARTO</a>' },
  { k: "positron", n: "밝은 회색", sub: "CARTO Positron",
    url: "https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png",
    att: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> &copy; <a href="https://carto.com/attributions">CARTO</a>' },
  { k: "dark", n: "어두운", sub: "CARTO Dark",
    url: "https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png",
    att: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> &copy; <a href="https://carto.com/attributions">CARTO</a>' },
  { k: "topo", n: "지형", sub: "OpenTopoMap",
    url: "https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png", maxZoom: 17,
    att: '&copy; <a href="https://opentopomap.org">OpenTopoMap</a> (CC-BY-SA)' },
  { k: "sat", n: "위성사진", sub: "Esri World Imagery",
    url: "https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}",
    sd: false, att: 'Tiles &copy; Esri' },
];

/** OpenStreetMap 이 알려주는 장소 종류를 우리말 한 마디로 */
const KIND = {
  cafe:"카페", coffee_shop:"카페", restaurant:"음식점", fast_food:"간이음식점", bar:"바",
  pub:"펍", bakery:"빵집", confectionery:"과자점", ice_cream:"아이스크림", food_court:"푸드코트",
  museum:"박물관", gallery:"미술관", artwork:"예술작품", theatre:"극장", cinema:"영화관",
  library:"도서관", university:"대학", college:"단과대", school:"학교", research_institute:"연구소",
  park:"공원", garden:"정원", viewpoint:"전망대", attraction:"명소", memorial:"기념물",
  monument:"기념비", castle:"성", ruins:"유적", temple:"절", shrine:"신사", place_of_worship:"사찰·교회",
  station:"역", subway:"지하철역", bus_stop:"버스정류장", hotel:"호텔", hostel:"게스트하우스",
  department_store:"백화점", supermarket:"마트", convenience:"편의점", books:"서점",
  clothes:"옷가게", bank:"은행", hospital:"병원", pharmacy:"약국", sports_centre:"체육관",
  stadium:"경기장", zoo:"동물원", aquarium:"수족관", bridge:"다리", tower:"타워",
  apartments:"아파트", house:"주택", commercial:"상업건물", public:"공공건물",
};
const CUISINE = {
  ramen:"라멘", sushi:"스시", japanese:"일식", korean:"한식", chinese:"중식", italian:"이탈리안",
  french:"프렌치", curry:"카레", udon:"우동", soba:"소바", yakiniku:"야키니쿠", izakaya:"이자카야",
  tonkatsu:"돈카츠", coffee_shop:"커피", burger:"버거", pizza:"피자", thai:"태국식", indian:"인도식",
};

/** 주소 후보에서 「이곳의 특징」에 넣을 짧은 설명을 만든다 */
function kindOf(h) {
  const bits = [];
  const t = (h.type || "").toLowerCase();
  const c = (h.class || "").toLowerCase();
  if (KIND[t]) bits.push(KIND[t]);
  else if (KIND[c]) bits.push(KIND[c]);
  const ex = h.extratags || {};
  (ex.cuisine || "").split(";").forEach(x => {
    const k = CUISINE[x.trim().toLowerCase()];
    if (k && !bits.includes(k)) bits.push(k);
  });
  if (ex["brand"]) bits.push(ex["brand"]);
  const addr = h.address || {};
  const town = addr.suburb || addr.neighbourhood || addr.city_district || addr.town || addr.city;
  if (town && bits.length) bits.push(town);
  return bits.slice(0, 3).join(" · ");
}

/** 위키백과에서 「무엇을 하는 곳인지」 한 문장을 찾아온다 */
async function describeFromWiki(name) {
  if (!name) return "";
  const get = (host, path) => fetch(`https://${host}/api/rest_v1/page/summary/${encodeURIComponent(path)}`)
                                .then(r => r.ok ? r.json() : null).catch(() => null);
  const find = async (host) => {
    try {
      const sr = await fetch(`https://${host}/w/api.php?origin=*&format=json&action=query&list=search`
                           + `&srlimit=1&srsearch=${encodeURIComponent(name)}`)
                       .then(r => r.json());
      const hit = sr && sr.query && sr.query.search && sr.query.search[0];
      return hit ? hit.title : null;
    } catch (e) { return null; }
  };
  for (const host of ["ko.wikipedia.org", "ja.wikipedia.org"]) {
    const title = await find(host);
    if (!title) continue;
    const sum = await get(host, title);
    const tx = sum && (sum.extract || "");
    if (!tx) continue;
    // 첫 문장만, 괄호 안 설명은 덜어낸다
    let one = tx.split(/(?<=[.。])\s/)[0] || tx;
    one = one.replace(/\([^)]*\)/g, "").replace(/（[^）]*）/g, "").replace(/\s{2,}/g, " ").trim();
    if (one.length > 90) one = one.slice(0, 88).trim() + "…";
    if (one.length >= 8) return one;
  }
  return "";
}

const esc = s => String(s == null ? "" : s)
  .replace(/[&<>"]/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;" }[c]));

const SHELL = `
  <div class="mapwrap">
    <div class="maprow">
      <div class="mapbox"><div id="cmap"></div></div>
      <aside class="mapside">
        <div class="layers" id="mlayers">
          <span class="lytitle">바탕지도 선택</span>
          <select class="lysel" id="lyBase"></select>
          <span class="lytitle lylayer">레이어 선택</span>
          <span class="lyboxes" id="lyBoxes"></span>
          <button type="button" class="lyall" id="lyAll">전체 켜기 / 끄기</button>
        </div>
        <div class="plist" id="plist"></div>
      </aside>
    </div>
    <div class="maptip">
      <span>지도를 <b>끌어서 이동</b>, <b>마우스 휠 또는 + / −</b> 로 확대·축소.
        지도 위 <b>표시를 누르면</b> 그 장소 안내가 크게 열립니다.</span>
      <a class="down" id="mapDown" href="#addplace">▼ 아래에서 내가 아는 곳을 올려보세요</a>
    </div>
  </div>

  <div class="addplace" id="addplace">
    <div class="apttl">＋ 이 분류에 장소 추가</div>
    <div class="apcats" id="apCats"></div>
    <div class="apfields aprow">
      <div class="apcell">
        <input type="text" id="apName" maxlength="60" autocomplete="off"
               placeholder="장소 이름 * (예: 아카몬 앞 커피집) — 상호를 적으면 아래에 주소 후보가 뜹니다">
        <div class="apsug" id="apSug"></div>
      </div>
      <input type="text" id="apAddr" maxlength="160" placeholder="주소 * (예: 東京都文京区本郷5-25-16)">
      <button type="button" class="appin" id="apPin">📍 지도에서 찍기</button>
    </div>
    <div class="apfields">
      <input type="text" id="apNote" maxlength="200"
             placeholder="이곳의 특징 — 주소를 고르면 자동으로 채워집니다 (고치셔도 됩니다)">
    </div>
    <div class="apfields">
      <textarea id="apMemo" maxlength="600" rows="2"
        placeholder="추천사유 및 추억공유&#10;예시) 첫사랑을 만난 장소 / 아르바이트하던 곳 / 논문 쓰며 밤새우던 자리 / 유학 첫날 밥 먹은 집  (안 적으셔도 됩니다)"></textarea>
    </div>
    <div class="apfields">
      <label class="apdrop" id="apDrop">
        <b>사진</b>
        <span id="apImgMsg">여기에 <b>붙여넣기(Ctrl+V)</b> 하거나, 사진을 <b>끌어다 놓으세요</b>. 눌러서 고르셔도 됩니다.</span>
        <input type="file" id="apImg" accept="image/*" hidden>
        <img id="apPrev" alt="" style="display:none;">
      </label>
      <button class="apbtn" id="apGo"><span id="apGoCat"></span>지도에 올리기</button>
    </div>
    <div class="apmsg" id="apMsg">주소를 적으면 위치를 찾아 지도 위에 표시로 올려드립니다.</div>
  </div>

  <div class="pmodal" id="pmodal">
    <div class="pbox">
      <button class="px" id="pClose">✕</button>
      <div class="pcat" id="pCat"></div>
      <h3 id="pName"></h3>
      <div class="paddr" id="pAddr"></div>
      <div class="pjp" id="pJp"></div>
      <img class="pimg" id="pImg" alt="" style="display:none;">
      <div class="pblock" id="pNoteBox" style="display:none;">
        <div class="plab">이곳의 특징</div>
        <div class="pnote" id="pNote"></div>
      </div>
      <div class="pblock" id="pMemoBox" style="display:none;">
        <div class="plab">추천사유 및 추억</div>
        <div class="pnote" id="pMemo"></div>
      </div>
      <ul class="mways" id="pWays"></ul>
      <div class="pfoot">
        <a class="pbtn" id="pMap" href="#" target="_blank" rel="noopener">구글 지도에서 길찾기 →</a>
        <a class="pbtn line" id="pPost" href="#" style="display:none;">관련 글 보기</a>
        <button class="pbtn del" id="pDel" style="display:none;">이 장소 지우기</button>
      </div>
      <div class="pwho" id="pWho"></div>
    </div>
  </div>`;

/**
 * MAP 화면을 그린다.
 * @param {string} org "OB" | "YB"  — 관련 글 링크가 그 단체 게시판으로 연결됩니다
 * @param {string} mountId 지도를 넣을 칸의 id
 */
export async function initMap(org = "OB", mountId = "mapapp") {
  const mount = document.getElementById(mountId);
  if (!mount) return;
  mount.innerHTML = SHELL;
  const HOME = org === "YB" ? "/YB" : "/OB";

  let cur = new URLSearchParams(location.search).get("cat");
  if (!CAT_NAME[cur]) cur = "utokyo";

  const map = L.map("cmap", { scrollWheelZoom: true, zoomControl: true })
               .setView([35.6895, 139.7], 12);
  // ── 바탕지도 고르기 ──
  let baseLayer = null;
  function setBase(k) {
    const b = BASEMAPS.find(x => x.k === k) || BASEMAPS[0];
    if (baseLayer) map.removeLayer(baseLayer);
    baseLayer = L.tileLayer(b.url, {
      maxZoom: b.maxZoom || 19,
      subdomains: b.sd === false ? [] : ["a", "b", "c"],
      attribution: b.att,
    }).addTo(map);
    baseLayer.bringToBack();
    try { localStorage.setItem("utk-basemap", b.k); } catch (e) {}
  }
  const baseSel = document.getElementById("lyBase");
  baseSel.innerHTML = BASEMAPS.map(b => `<option value="${b.k}">${b.n}</option>`).join("");
  let saved = "osm";
  try { saved = localStorage.getItem("utk-basemap") || "osm"; } catch (e) {}
  baseSel.value = BASEMAPS.some(b => b.k === saved) ? saved : "osm";
  baseSel.addEventListener("change", () => setBase(baseSel.value));
  setBase(baseSel.value);

  // ── 로그인 상태 ──
  const user = await currentUser();
  const me = user ? await myProfile() : null;
  const canAdd = !!(me && (me.approved || me.is_admin));
  const isAdmin = !!(me && me.is_admin);
  document.getElementById("addplace").classList.toggle("on", canAdd);
  const down = document.getElementById("mapDown");
  down.classList.toggle("on", canAdd);
  down.addEventListener("click", (e) => {
    e.preventDefault();
    document.getElementById("addplace").scrollIntoView({ behavior: "smooth", block: "start" });
    document.getElementById("apName").focus({ preventScroll: true });
  });

  let places = [];                          // 지도에 그려진 장소들
  const shown = new Set(CATS.map(([k]) => k));   // 지도에 보이는 분류 (처음엔 모두)
  let layer = L.layerGroup().addTo(map);

  // ── 레이어 체크박스 ──
  const boxes = document.getElementById("lyBoxes");
  boxes.innerHTML = CATS.map(([k, v]) =>
    `<label class="ly c-${k}"><input type="checkbox" data-c="${k}" checked>` +
    `<span class="lydot ${(CAT_INFO[k] || {}).shape || "dot"}"><i></i></span>${v}</label>`).join("");
  boxes.querySelectorAll("input").forEach(c => c.addEventListener("change", () => {
    c.checked ? shown.add(c.dataset.c) : shown.delete(c.dataset.c);
    c.closest(".ly").classList.toggle("off", !c.checked);
    draw();
  }));
  document.getElementById("lyAll").addEventListener("click", () => {
    const on = shown.size < CATS.length;                 // 하나라도 꺼져 있으면 전체 켜기
    boxes.querySelectorAll("input").forEach(c => {
      c.checked = on;
      c.closest(".ly").classList.toggle("off", !on);
      on ? shown.add(c.dataset.c) : shown.delete(c.dataset.c);
    });
    draw();
  });

  function tabHtml() {
    const pick = document.getElementById("apCats");
    pick.innerHTML = CATS.map(([k, v]) =>
      `<button type="button" class="apcat c-${k}${k === cur ? " on" : ""}" data-c="${k}">` +
      `<span class="apdot ${(CAT_INFO[k] || {}).shape || "dot"}"><i></i></span>${v}</button>`).join("");
    const goCat = document.getElementById("apGoCat");
    if (goCat) goCat.textContent = CAT_NAME[cur] + " · ";
    pick.querySelectorAll(".apcat").forEach(b => b.addEventListener("click", () => {
      cur = b.dataset.c;
      history.replaceState(null, "", "?cat=" + cur);
      tabHtml(); draw();
    }));
  }

  async function load() {
    const list = [...shown];
    const base = shown.has("utokyo")
      ? CAMPUS.map(c => ({ id: "campus-" + c.k, builtin: true, category: "utokyo",
          name: c.name, address: c.address, jp: c.jp, note: "", ways: c.ways,
          lat: c.lat, lng: c.lng }))
      : [];
    let rows = [];
    if (list.length) {
      try {
        const r = await sb.from("map_places").select("*").in("category", list)
                          .order("created_at", { ascending: false });
        rows = r.data || [];
      } catch (e) { rows = []; }
    }
    places = base.concat(rows);
  }

  function draw() {
    layer.clearLayers();
    load().then(() => {
      layer.clearLayers();
      const pts = [];
      places.forEach((p, i) => {
        pts.push([p.lat, p.lng]);
        L.marker([p.lat, p.lng], {
          icon: L.divIcon({ className: "", iconSize: [0, 0],
            html: `<div class="cmark c-${p.category} ${(CAT_INFO[p.category] || {}).shape || "dot"}" data-i="${i}">`
                + `<i></i><b>${esc(p.name.split(" (")[0])}</b></div>` }),
        }).addTo(layer).on("click", () => open(i));
      });
      drawList();
      if (!pts.length) map.setView([35.6895, 139.7], 12);          // 장소가 아직 없으면 도쿄 전경
      else if (pts.length === 1) map.setView(pts[0], 16);
      else map.fitBounds(pts, { padding: [50, 50], maxZoom: 15 });
      setTimeout(() => map.invalidateSize(), 100);
    });
  }

  /** 오른쪽 목록 — 분류별로 묶어서 보여준다 */
  function drawList() {
    const box = document.getElementById("plist");
    const total = places.length;
    if (!total) {
      box.innerHTML = '<div class="pltitle">등록된 장소 0곳</div>' +
        '<div class="plempty">아직 없습니다.<br>아래에서 올려주세요.</div>';
      return;
    }
    let html = '<div class="pltitle">등록된 장소 ' + total + '곳</div><div class="plbody">';
    for (const [k, v] of CATS) {
      const rows = places.map((p, i) => ({ p, i })).filter(x => x.p.category === k);
      if (!rows.length) continue;
      html += `<div class="plcat c-${k}">
        <span class="lydot ${(CAT_INFO[k] || {}).shape || "dot"} c-${k}"><i></i></span>
        ${v}<em>${rows.length}</em></div>`;
      html += rows.map(({ p, i }) => {
        const mine = !p.builtin && user && p.created_by === user.id;
        const can = mine || (isAdmin && !p.builtin);
        return `<div class="plrow">
          <span class="lydot ${(CAT_INFO[k] || {}).shape || "dot"} c-${k}"><i></i></span>
          <button class="plname" data-i="${i}" title="${esc(p.name)}">${esc(p.name)}</button>
          ${can ? `<button class="pldel" data-i="${i}" title="이 장소 지우기">✕</button>` : ""}
        </div>`;
      }).join("");
    }
    box.innerHTML = html + '</div><button type="button" class="plmore" id="plMore">▼ 길게 보기</button>';
    const more = document.getElementById("plMore");
    const row = document.querySelector(".maprow");
    const sync = () => { more.textContent = row.classList.contains("tall") ? "▲ 접기" : "▼ 길게 보기"; };
    sync();
    more.addEventListener("click", () => {
      row.classList.toggle("tall");
      sync();
      setTimeout(() => map.invalidateSize(), 150);
    });

    box.querySelectorAll(".plname").forEach(b => b.addEventListener("click", () => {
      const p = places[+b.dataset.i];
      map.setView([p.lat, p.lng], 16);
      open(+b.dataset.i);
    }));
    box.querySelectorAll(".pldel").forEach(b => b.addEventListener("click", async () => {
      const p = places[+b.dataset.i];
      if (!confirm(`「${p.name}」 을 지도에서 지울까요?`)) return;
      b.disabled = true;
      if (p.storage_path) await sb.storage.from("gallery").remove([p.storage_path]);
      const { error } = await sb.from("map_places").delete().eq("id", p.id);
      if (error) { alert("지우기 실패: " + error.message); b.disabled = false; return; }
      draw();
    }));
  }

  // ── 장소 안내 창 ──
  const modal = document.getElementById("pmodal");
  const close = () => modal.classList.remove("on");
  document.getElementById("pClose").addEventListener("click", close);
  document.addEventListener("keydown", (e) => { if (e.key === "Escape") close(); });

  function open(i) {
    const p = places[i];
    if (!p) return;
    document.getElementById("pCat").textContent = CAT_NAME[p.category] || "";
    document.getElementById("pName").textContent = p.name;
    document.getElementById("pAddr").textContent = p.address || "";
    document.getElementById("pJp").textContent = p.jp || "";
    const img = document.getElementById("pImg");
    if (p.image_url) { img.src = p.image_url; img.style.display = ""; } else img.style.display = "none";
    document.getElementById("pNote").textContent = p.note || "";
    document.getElementById("pNoteBox").style.display = p.note ? "" : "none";
    document.getElementById("pMemo").textContent = p.memory || "";
    document.getElementById("pMemoBox").style.display = p.memory ? "" : "none";
    document.getElementById("pWays").innerHTML =
      (p.ways || []).map(w => `<li>${w}</li>`).join("");
    document.getElementById("pMap").href =
      `https://www.google.com/maps/search/?api=1&query=${p.lat},${p.lng}`;
    const post = document.getElementById("pPost");
    if (p.post_id) { post.style.display = ""; post.href = `${HOME}/post.html?id=${p.post_id}`; }
    else post.style.display = "none";
    const who = document.getElementById("pWho");
    const when = p.created_at ? String(p.created_at).slice(0, 10).replace(/-/g, ".") : "";
    who.innerHTML = p.builtin ? ""
      : p.owner_admin ? `<b>관리자</b>${when ? " · " + when : ""} 가 올린 장소입니다`
      : p.owner_name ? `<b>공유자(${esc(p.owner_name)})</b>${when ? " · " + when : ""} 가 올린 장소입니다`
      : (when ? when + " 에 올라온 장소입니다" : "");
    const del = document.getElementById("pDel");
    const mine = !p.builtin && user && p.created_by === user.id;
    del.style.display = (mine || (isAdmin && !p.builtin)) ? "" : "none";
    del.onclick = async () => {
      if (!confirm(`「${p.name}」 을 지도에서 지울까요?`)) return;
      if (p.storage_path) await sb.storage.from("gallery").remove([p.storage_path]);
      const { error } = await sb.from("map_places").delete().eq("id", p.id);
      if (error) { alert("지우기 실패: " + error.message); return; }
      close(); draw();
    };
    modal.classList.add("on");
  }

  // ── 지도를 눌러 위치를 직접 찍기 ──
  //    주소 검색이 잘 안 될 때 지도를 확대해 원하는 자리를 찍으시면 됩니다.
  let pinMode = false, pin = null;
  {
    const btn = document.getElementById("apPin");
    const msgEl = () => document.getElementById("apMsg");
    const setMode = (on) => {
      pinMode = on;
      btn.classList.toggle("on", on);
      btn.textContent = on ? "📍 지도를 누르세요 (끄기)" : "📍 지도에서 찍기";
      document.getElementById("cmap").style.cursor = on ? "crosshair" : "";
      if (on) {
        msgEl().textContent = "지도를 확대해서 원하는 자리를 누르세요. 표시를 끌어 옮길 수도 있습니다.";
        document.querySelector(".mapbox").scrollIntoView({ behavior: "smooth", block: "center" });
      }
    };
    btn.addEventListener("click", () => setMode(!pinMode));

    async function reverse(lat, lng) {
      const addrEl = document.getElementById("apAddr");
      const noteEl = document.getElementById("apNote");
      addrEl.value = "위치를 확인하는 중…";
      try {
        const u = "https://nominatim.openstreetmap.org/reverse?format=json&zoom=18"
                + "&addressdetails=1&extratags=1&namedetails=1&accept-language=ko"
                + `&lat=${lat}&lon=${lng}`;
        const h = await fetch(u, { headers: { Accept: "application/json" } }).then(r => r.json());
        addrEl.value = (h && h.display_name) || `위도 ${lat.toFixed(5)}, 경도 ${lng.toFixed(5)}`;
        const kind = h ? kindOf(h) : "";
        if (kind && !noteEl.value.trim()) noteEl.value = kind;
      } catch (e) {
        addrEl.value = `위도 ${lat.toFixed(5)}, 경도 ${lng.toFixed(5)}`;
      }
      msgEl().textContent = "위치를 찍었습니다. 이름과 추천사유를 적고 ［지도에 올리기］ 를 눌러주세요.";
    }

    window.__utkSetPin = (ll) => {
      picked = { lat: ll.lat, lon: ll.lng };
      if (pin) pin.setLatLng(ll);
      else {
        pin = L.marker(ll, { draggable: true, zIndexOffset: 900,
          icon: L.divIcon({ className: "", iconSize: [0, 0],
            html: '<div class="cmark pinmark"><i></i><b>여기</b></div>' }) }).addTo(map);
        pin.on("dragend", () => {
          const p = pin.getLatLng();
          picked = { lat: p.lat, lon: p.lng };
          reverse(p.lat, p.lng);
        });
      }
      reverse(ll.lat, ll.lng);
    };
    window.__utkClearPin = () => {
      if (pin) { map.removeLayer(pin); pin = null; }
      setMode(false);
    };
    map.on("click", (e) => { if (pinMode) window.__utkSetPin(e.latlng); });
  }

  // ── 상호명을 적으면 주소 후보를 보여준다 ──
  let picked = null;                     // 후보에서 고른 위치 (있으면 다시 찾지 않습니다)
  {
    const nameEl = document.getElementById("apName");
    const addrEl = document.getElementById("apAddr");
    const sug = document.getElementById("apSug");
    const TOKYO = "&viewbox=138.90,36.25,140.55,35.15&bounded=1";
    let timer = null, lastQ = "";

    const hide = () => { sug.classList.remove("on"); sug.innerHTML = ""; };
    addrEl.addEventListener("input", () => { picked = null; });      // 직접 고치면 다시 찾습니다
    document.addEventListener("click", (e) => { if (!sug.contains(e.target) && e.target !== nameEl) hide(); });

    /** 한글 이름은 OpenStreetMap 에 거의 없다 → 위키백과로 일본어 이름을 찾아 다시 검색 */
    async function viaWiki(q) {
      const api = (host, p) => fetch(`https://${host}/w/api.php?origin=*&format=json&` + p)
                                 .then(r => r.json()).catch(() => null);
      const sr = await api("ko.wikipedia.org",
        "action=query&list=search&srlimit=3&srsearch=" + encodeURIComponent(q));
      const hits = (sr && sr.query && sr.query.search) || [];
      if (!hits.length) return [];
      const titles = hits.map(h => h.title);
      const info = await api("ko.wikipedia.org",
        "action=query&prop=coordinates|langlinks&lllang=ja&lllimit=1&titles="
        + encodeURIComponent(titles.join("|")));
      const pages = (info && info.query && info.query.pages) || {};
      const out = [];
      for (const key of Object.keys(pages)) {
        const p = pages[key];
        const ja = p.langlinks && p.langlinks[0] && p.langlinks[0]["*"];
        const co = p.coordinates && p.coordinates[0];
        out.push({ ko: p.title, ja, lat: co && co.lat, lon: co && co.lon });
      }
      return out.filter(x => x.ja || (x.lat && x.lon));
    }

    async function nomi(q) {
      const u = "https://nominatim.openstreetmap.org/search?format=json&limit=6"
              + "&addressdetails=1&extratags=1&namedetails=1&accept-language=ko"
              + TOKYO + "&q=" + encodeURIComponent(q);
      try { return await fetch(u, { headers: { Accept: "application/json" } }).then(r => r.json()); }
      catch (e) { return []; }
    }

    async function look(q) {
      if (q.length < 2 || q === lastQ) return;
      lastQ = q;
      sug.innerHTML = '<div class="apsmsg">주소를 찾는 중…</div>';
      sug.classList.add("on");
      let list = await nomi(q);
      // 한글로 적으셨는데 못 찾으면 위키백과로 일본어 이름을 찾아 다시 검색합니다
      if ((!list || !list.length) && /[가-힣]/.test(q)) {
        sug.innerHTML = '<div class="apsmsg">한국어 이름으로 다시 찾는 중…</div>';
        const wk = await viaWiki(q);
        for (const w of wk) {
          if (w.ja) {
            const r = await nomi(w.ja);
            if (r && r.length) { list = r; break; }
          }
        }
        // 그래도 없으면 위키백과 좌표로 주소를 되찾습니다
        if ((!list || !list.length) && wk.length) {
          const w = wk.find(x => x.lat && x.lon);
          if (w) {
            try {
              const ru = "https://nominatim.openstreetmap.org/reverse?format=json&zoom=18"
                       + "&addressdetails=1&extratags=1&accept-language=ko"
                       + `&lat=${w.lat}&lon=${w.lon}`;
              const rv = await fetch(ru, { headers: { Accept: "application/json" } }).then(r => r.json());
              if (rv && rv.display_name) {
                rv.name = w.ko;
                list = [rv];
              }
            } catch (e) {}
          }
        }
      }
      if (!list || !list.length) {
        sug.innerHTML = '<div class="apsmsg">찾지 못했습니다.<br>' +
          '일본어나 영어 이름으로 적어보시거나(예: teamLab Planets), 주소를 직접 적어주세요.</div>';
        return;
      }
      sug.innerHTML = list.map((h, i) => {
        const head = (h.name || h.display_name.split(",")[0]).trim();
        return `<button type="button" class="apsitem" data-i="${i}">` +
               `<b>${esc(head)}</b><span>${esc(h.display_name)}</span></button>`;
      }).join("");
      sug.querySelectorAll(".apsitem").forEach(b => b.addEventListener("click", () => {
        const h = list[+b.dataset.i];
        addrEl.value = h.display_name;
        picked = { lat: parseFloat(h.lat), lon: parseFloat(h.lon) };
        // 「이곳의 특징」을 채워드립니다 (고치셔도 됩니다)
        const noteEl = document.getElementById("apNote");
        const kind = kindOf(h);
        const already = noteEl.value.trim();
        const tags = h.extratags || {};
        const osmDesc = tags["description:ko"] || tags["description"] || "";
        if (!already) noteEl.value = osmDesc || kind;      // 우선 종류만이라도 넣어두고
        hide();
        msgSafe("주소를 넣었습니다. 어떤 곳인지 찾아보는 중…");
        if (!already && !osmDesc) {
          const nm = (h.namedetails && (h.namedetails["name:ko"] || h.namedetails.name))
                   || h.name || (h.display_name || "").split(",")[0];
          describeFromWiki(nm).then(d => {
            const now = noteEl.value.trim();
            if (d && (now === "" || now === kind)) {          // 손대지 않으셨을 때만 채웁니다
              noteEl.value = kind ? `${kind} — ${d}` : d;
            }
            msgSafe("특징을 채웠습니다. 맞지 않으면 고쳐주세요. 추억은 원하실 때만 적으시면 됩니다.");
          });
        } else {
          msgSafe("주소를 넣었습니다. 추억은 원하실 때만 적으시면 됩니다.");
        }
      }));
    }
    const msgSafe = (t) => { const m = document.getElementById("apMsg"); if (m) m.textContent = t; };
    nameEl.addEventListener("input", () => {
      clearTimeout(timer);
      const q = nameEl.value.trim();
      if (q.length < 2) { hide(); return; }
      timer = setTimeout(() => look(q), 550);        // 타이핑이 멈추면 찾습니다
    });
  }

  // ── 사진 붙여넣기 · 끌어놓기 ──
  {
    const zone = document.getElementById("apDrop");
    const input = document.getElementById("apImg");
    const prev = document.getElementById("apPrev");
    const note = document.getElementById("apImgMsg");
    const setFile = (file) => {
      if (!file || !/^image\//.test(file.type)) return false;
      const dt = new DataTransfer();
      dt.items.add(file);
      input.files = dt.files;
      prev.src = URL.createObjectURL(file);
      prev.style.display = "";
      note.innerHTML = "사진 1장이 준비됐습니다. <b>다시 붙여넣으면 바뀝니다.</b>";
      return true;
    };
    input.addEventListener("change", () => setFile(input.files[0]));
    // 끌어놓기
    ["dragenter", "dragover"].forEach(ev => zone.addEventListener(ev, (e) => {
      e.preventDefault(); e.stopPropagation(); zone.classList.add("on");
    }));
    ["dragleave", "drop"].forEach(ev => zone.addEventListener(ev, (e) => {
      e.preventDefault(); e.stopPropagation(); zone.classList.remove("on");
    }));
    zone.addEventListener("drop", (e) => setFile((e.dataTransfer?.files || [])[0]));
    // 붙여넣기 (화면 어디서 눌러도 이 칸에 들어갑니다)
    window.addEventListener("paste", (e) => {
      const items = [...(e.clipboardData?.items || [])];
      const it = items.find(x => x.kind === "file" && /^image\//.test(x.type));
      if (!it) return;
      const f = it.getAsFile();
      if (f && setFile(f)) {
        e.preventDefault();
        zone.scrollIntoView({ behavior: "smooth", block: "center" });
      }
    });
  }

  // ── 장소 추가 (주소 → 위치 찾기) ──
  const msg = document.getElementById("apMsg");
  document.getElementById("apGo").addEventListener("click", async () => {
    const name = document.getElementById("apName").value.trim();
    const addr = document.getElementById("apAddr").value.trim();
    const note = document.getElementById("apNote").value.trim();
    const memo = document.getElementById("apMemo").value.trim();
    const file = document.getElementById("apImg").files[0] || null;
    if (!name) { msg.textContent = "장소 이름을 적어주세요."; return; }
    if (!addr) { msg.textContent = "주소를 적어주세요."; return; }
    const btn = document.getElementById("apGo");
    btn.disabled = true;
    let hit = picked ? { lat: picked.lat, lon: picked.lon } : null;
    if (hit) msg.textContent = "올리는 중…";
    else try {
      msg.textContent = "주소로 위치를 찾는 중…";
      const u = "https://nominatim.openstreetmap.org/search?format=json&limit=1&accept-language=ko&q="
              + encodeURIComponent(addr);
      const r = await fetch(u, { headers: { "Accept": "application/json" } });
      const j = await r.json();
      hit = j && j[0];
    } catch (e) { hit = null; }
    if (!hit) {
      btn.disabled = false;
      msg.textContent = "그 주소를 찾지 못했습니다. 위 ［📍 지도에서 찍기］ 로 위치를 직접 눌러주세요.";
      return;
    }
    // 사진이 있으면 먼저 올린다
    let image_url = null, storage_path = null;
    if (file) {
      msg.textContent = "사진을 올리는 중…";
      const ext = (file.name.split(".").pop() || "jpg").toLowerCase().replace(/[^a-z0-9]/g, "") || "jpg";
      storage_path = `map/${cur}_${Math.random().toString(36).slice(2, 10)}.${ext}`;
      const up = await sb.storage.from("gallery").upload(storage_path, file, { cacheControl: "3600" });
      if (up.error) {
        btn.disabled = false; msg.textContent = "사진 올리기 실패: " + up.error.message;
        return;
      }
      image_url = sb.storage.from("gallery").getPublicUrl(storage_path).data.publicUrl;
    }
    const { error } = await sb.from("map_places").insert({
      category: cur, name, address: addr, note: note || null,
      memory: memo || null, image_url, storage_path,
      lat: parseFloat(hit.lat), lng: parseFloat(hit.lon),
      owner_name: (me && me.is_admin) ? "" : ((me && me.name) || ""),
      owner_admin: !!(me && me.is_admin),
      created_by: user.id,
    });
    btn.disabled = false;
    if (error) {
      const m = error.message || "";
      msg.textContent =
        /schema cache|does not exist/i.test(m)
          ? "지도 기능이 아직 켜지지 않았습니다 — 운영진이 board/map_places.sql 을 한 번 실행해주세요."
        : /row-level security|policy/i.test(m)
          ? "승인된 회원만 올릴 수 있습니다. 운영진 승인 후 다시 시도해주세요."
        : "올리기 실패: " + m;
      return;
    }
    picked = null;
    if (window.__utkClearPin) window.__utkClearPin();
    document.getElementById("apName").value = "";
    document.getElementById("apAddr").value = "";
    document.getElementById("apNote").value = "";
    document.getElementById("apMemo").value = "";
    document.getElementById("apImg").value = "";
    document.getElementById("apPrev").style.display = "none";
    document.getElementById("apImgMsg").innerHTML =
      "여기에 <b>붙여넣기(Ctrl+V)</b> 하거나, 사진을 <b>끌어다 놓으세요</b>. 눌러서 고르셔도 됩니다.";
    msg.textContent = `「${name}」 을 지도에 올렸습니다.`;
    if (!shown.has(cur)) {                       // 꺼둔 분류에 올렸으면 켜서 보여준다
      shown.add(cur);
      const c = boxes.querySelector(`input[data-c="${cur}"]`);
      if (c) { c.checked = true; c.closest(".ly").classList.remove("off"); }
    }
    draw();
  });

  window.addEventListener("resize", () => setTimeout(() => map.invalidateSize(), 120));
  tabHtml();
  draw();
}
