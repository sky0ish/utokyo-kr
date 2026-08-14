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
  { k: "voyager", n: "부드러운 컬러", sub: "CARTO Voyager",
    url: "https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png",
    att: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> &copy; <a href="https://carto.com/attributions">CARTO</a>' },
  { k: "positron", n: "밝은 회색", sub: "CARTO Positron",
    url: "https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png",
    att: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> &copy; <a href="https://carto.com/attributions">CARTO</a>' },
  { k: "osm", n: "기본", sub: "OpenStreetMap",
    url: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
    att: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>' },
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

const esc = s => String(s == null ? "" : s)
  .replace(/[&<>"]/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;" }[c]));

const SHELL = `
  <div class="catdesc" id="catDesc"></div>
  <div class="mapwrap">
    <div class="maprow">
      <div class="mapbox"><div id="cmap"></div></div>
      <aside class="mapside">
        <div class="layers" id="mlayers">
          <span class="lytitle">선택가능</span>
          <span class="lyboxes" id="lyBoxes"></span>
          <button type="button" class="lyall" id="lyAll">전체 켜기 / 끄기</button>
          <span class="lytitle lybase">바탕지도</span>
          <select class="lysel" id="lyBase"></select>
        </div>
      </aside>
    </div>
    <div class="maptip">지도를 <b>끌어서 이동</b>, <b>마우스 휠 또는 + / −</b> 로 확대·축소.
      지도 위 <b>표시를 누르면</b> 그 장소 안내가 크게 열립니다.</div>
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
    </div>
    <div class="apfields">
      <input type="text" id="apNote" maxlength="200" placeholder="이곳의 특징 (예: 창가에서 아카몬이 보입니다)">
    </div>
    <div class="apfields">
      <textarea id="apMemo" maxlength="600" rows="2"
        placeholder="이곳에 얽힌 추억 (선택) — 언제, 누구와, 무엇을 하셨는지 편하게 적어주세요.&#10;예: 첫사랑을 만난 장소, 아르바이트하던 곳, 논문 쓰며 밤새우던 자리, 유학 첫날 밥 먹은 집"></textarea>
    </div>
    <div class="apfields">
      <label class="apdrop" id="apDrop">
        <b>사진</b>
        <span id="apImgMsg">여기에 <b>붙여넣기(Ctrl+V)</b> 하거나, 사진을 <b>끌어다 놓으세요</b>. 눌러서 고르셔도 됩니다.</span>
        <input type="file" id="apImg" accept="image/*" hidden>
        <img id="apPrev" alt="" style="display:none;">
      </label>
      <button class="apbtn" id="apGo">지도에 올리기</button>
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
        <div class="plab">추억</div>
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
  let saved = "voyager";
  try { saved = localStorage.getItem("utk-basemap") || "voyager"; } catch (e) {}
  baseSel.value = BASEMAPS.some(b => b.k === saved) ? saved : "voyager";
  baseSel.addEventListener("change", () => setBase(baseSel.value));
  setBase(baseSel.value);

  // ── 로그인 상태 ──
  const user = await currentUser();
  const me = user ? await myProfile() : null;
  const canAdd = !!(me && (me.approved || me.is_admin));
  const isAdmin = !!(me && me.is_admin);
  document.getElementById("addplace").classList.toggle("on", canAdd);

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
    const info = CAT_INFO[cur] || {};
    document.getElementById("catDesc").innerHTML =
      `<span class="cdmark c-${cur} ${info.shape || "dot"}"><i></i></span>` +
      `<span class="cdtx"><b class="cdname">${CAT_NAME[cur]}</b> — ${info.desc || ""}` +
      `<em>지도 위 ${info.mark || ""} 표시를 누르면 자세한 내용이 열립니다.</em></span>`;
    // 장소를 올릴 분류도 같은 자리에서 바로 고를 수 있게 (누르면 지도도 함께 바뀝니다)
    const pick = document.getElementById("apCats");
    pick.innerHTML = CATS.map(([k, v]) =>
      `<button type="button" class="apcat c-${k}${k === cur ? " on" : ""}" data-c="${k}">` +
      `<span class="apdot ${(CAT_INFO[k] || {}).shape || "dot"}"><i></i></span>${v}</button>`).join("");
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
      if (!pts.length) map.setView([35.6895, 139.7], 12);          // 장소가 아직 없으면 도쿄 전경
      else if (pts.length === 1) map.setView(pts[0], 16);
      else map.fitBounds(pts, { padding: [50, 50], maxZoom: 15 });
      setTimeout(() => map.invalidateSize(), 100);
    });
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

    async function look(q) {
      if (q.length < 2 || q === lastQ) return;
      lastQ = q;
      sug.innerHTML = '<div class="apsmsg">주소를 찾는 중…</div>';
      sug.classList.add("on");
      let list = [];
      try {
        const u = "https://nominatim.openstreetmap.org/search?format=json&limit=6"
                + "&addressdetails=1&accept-language=ko" + TOKYO + "&q=" + encodeURIComponent(q);
        list = await fetch(u, { headers: { Accept: "application/json" } }).then(r => r.json());
      } catch (e) { list = []; }
      if (!list || !list.length) {
        sug.innerHTML = '<div class="apsmsg">찾지 못했습니다. 주소를 직접 적어주세요.</div>';
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
        hide();
        msgSafe("주소를 넣었습니다. 특징과 추억도 적어주시면 좋습니다.");
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
      msg.textContent = "그 주소를 찾지 못했습니다. 우편번호를 빼거나 일본어 주소로 적어보세요.";
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
      msg.textContent = "올리기 실패: " + error.message +
        " — board/map_places.sql 을 실행하셨는지 확인해주세요.";
      return;
    }
    picked = null;
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

  tabHtml();
  draw();
}
