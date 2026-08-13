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

const esc = s => String(s == null ? "" : s)
  .replace(/[&<>"]/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;" }[c]));

const SHELL = `
  <div class="mtabs" id="mtabs"></div>
  <div class="mapwrap">
    <div class="mapbox"><div id="cmap"></div></div>
    <div class="maptip">지도를 <b>끌어서 이동</b>, <b>마우스 휠 또는 + / −</b> 로 확대·축소.
      지도 위 <b>표시를 누르면</b> 그 장소 안내가 크게 열립니다.</div>
  </div>

  <div class="addplace" id="addplace">
    <div class="apttl">＋ 이 분류에 장소 추가 <span id="apWhere"></span></div>
    <div class="apfields">
      <input type="text" id="apName" maxlength="60" placeholder="장소 이름 (예: 아카몬 라멘)">
      <input type="text" id="apAddr" maxlength="120" placeholder="주소 (예: 東京都文京区本郷5-25-16)">
      <input type="text" id="apNote" maxlength="200" placeholder="한 줄 소개 (선택)">
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
      <div class="pnote" id="pNote"></div>
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

  const tabs = document.getElementById("mtabs");
  const map = L.map("cmap", { scrollWheelZoom: true, zoomControl: true })
               .setView([35.6895, 139.7], 12);
  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    maxZoom: 19,
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
  }).addTo(map);

  // ── 로그인 상태 ──
  const user = await currentUser();
  const me = user ? await myProfile() : null;
  const canAdd = !!(me && (me.approved || me.is_admin));
  const isAdmin = !!(me && me.is_admin);
  document.getElementById("addplace").classList.toggle("on", canAdd);

  let places = [];        // 지금 분류의 장소들
  let layer = L.layerGroup().addTo(map);

  function tabHtml() {
    tabs.innerHTML = CATS.map(([k, v]) =>
      `<a href="?cat=${k}" data-c="${k}"${k === cur ? ' class="on"' : ""}>${v}</a>`).join("");
    tabs.querySelectorAll("a").forEach(a => a.addEventListener("click", (e) => {
      e.preventDefault();
      cur = a.dataset.c;
      history.replaceState(null, "", "?cat=" + cur);
      tabHtml(); draw();
    }));
    document.getElementById("apWhere").textContent = "— " + CAT_NAME[cur];
  }

  async function load() {
    const base = cur === "utokyo"
      ? CAMPUS.map((c, i) => ({ id: "campus-" + c.k, builtin: true, category: "utokyo",
          name: c.name, address: c.address, jp: c.jp, note: "", ways: c.ways,
          lat: c.lat, lng: c.lng }))
      : [];
    let rows = [];
    try {
      const r = await sb.from("map_places").select("*").eq("category", cur)
                        .order("created_at", { ascending: false });
      rows = r.data || [];
    } catch (e) { rows = []; }
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
            html: `<div class="cmark" data-i="${i}"><i></i><b>${esc(p.name.split(" (")[0])}</b></div>` }),
        }).addTo(layer).on("click", () => open(i));
      });
      if (pts.length === 1) map.setView(pts[0], 16);
      else if (pts.length) map.fitBounds(pts, { padding: [50, 50], maxZoom: 15 });
      setTimeout(() => map.invalidateSize(), 100);
    });
  }

  // ── 장소 안내 창 ──
  const modal = document.getElementById("pmodal");
  const close = () => modal.classList.remove("on");
  document.getElementById("pClose").addEventListener("click", close);
  modal.addEventListener("click", (e) => { if (e.target === modal) close(); });
  document.addEventListener("keydown", (e) => { if (e.key === "Escape") close(); });

  function open(i) {
    const p = places[i];
    if (!p) return;
    document.getElementById("pCat").textContent = CAT_NAME[p.category] || "";
    document.getElementById("pName").textContent = p.name;
    document.getElementById("pAddr").textContent = p.address || "";
    document.getElementById("pJp").textContent = p.jp || "";
    document.getElementById("pNote").textContent = p.note || "";
    document.getElementById("pWays").innerHTML =
      (p.ways || []).map(w => `<li>${w}</li>`).join("");
    document.getElementById("pMap").href =
      `https://www.google.com/maps/search/?api=1&query=${p.lat},${p.lng}`;
    const post = document.getElementById("pPost");
    if (p.post_id) { post.style.display = ""; post.href = `${HOME}/post.html?id=${p.post_id}`; }
    else post.style.display = "none";
    const who = document.getElementById("pWho");
    who.textContent = p.builtin ? ""
      : p.owner_admin ? "관리자가 올린 장소"
      : p.owner_name ? `공유자(${p.owner_name})` : "";
    const del = document.getElementById("pDel");
    const mine = !p.builtin && user && p.created_by === user.id;
    del.style.display = (mine || (isAdmin && !p.builtin)) ? "" : "none";
    del.onclick = async () => {
      if (!confirm(`「${p.name}」 을 지도에서 지울까요?`)) return;
      const { error } = await sb.from("map_places").delete().eq("id", p.id);
      if (error) { alert("지우기 실패: " + error.message); return; }
      close(); draw();
    };
    modal.classList.add("on");
  }

  // ── 장소 추가 (주소 → 위치 찾기) ──
  const msg = document.getElementById("apMsg");
  document.getElementById("apGo").addEventListener("click", async () => {
    const name = document.getElementById("apName").value.trim();
    const addr = document.getElementById("apAddr").value.trim();
    const note = document.getElementById("apNote").value.trim();
    if (!name) { msg.textContent = "장소 이름을 적어주세요."; return; }
    if (!addr) { msg.textContent = "주소를 적어주세요."; return; }
    const btn = document.getElementById("apGo");
    btn.disabled = true; msg.textContent = "주소로 위치를 찾는 중…";
    let hit = null;
    try {
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
    const { error } = await sb.from("map_places").insert({
      category: cur, name, address: addr, note: note || null,
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
    document.getElementById("apName").value = "";
    document.getElementById("apAddr").value = "";
    document.getElementById("apNote").value = "";
    msg.textContent = `「${name}」 을 지도에 올렸습니다.`;
    draw();
  });

  tabHtml();
  draw();
}
