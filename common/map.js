// ─── 캠퍼스 지도 (총동문회 OB · 학생회 YB 공용) ────────────────
// 화면 파일은 OB/map.html · YB/map.html 로 따로 두고,
// 지도 내용은 이 파일 하나를 함께 씁니다. 고칠 때 한 곳만 고치면 됩니다.

export const CAMPUS = [
  { k: "hongo", n: "혼고 캠퍼스 (本郷)", tag: "본부",
    addr: "일본 도쿄도 분쿄구 혼고 7-3-1",
    jp: "〒113-8654 東京都文京区本郷7-3-1",
    lat: 35.7128, lng: 139.7620,
    ways: ["도쿄메트로 남북선 <b>도다이마에(東大前)역</b> 도보 1분",
           "도쿄메트로 마루노우치선·도에이 오에도선 <b>혼고산초메(本郷三丁目)역</b> 도보 8분",
           "도쿄메트로 지요다선 <b>네즈(根津)역</b> 도보 8분",
           "아카몬(赤門) · 야스다강당 · 산시로연못이 이 캠퍼스에 있습니다"] },
  { k: "komaba", n: "고마바 캠퍼스 (駒場)", tag: "교양학부",
    addr: "일본 도쿄도 메구로구 고마바 3-8-1",
    jp: "〒153-8902 東京都目黒区駒場3-8-1",
    lat: 35.6595, lng: 139.6849,
    ways: ["게이오 이노카시라선 <b>고마바토다이마에(駒場東大前)역</b> 바로 앞",
           "시부야역에서 이노카시라선으로 2정거장 (약 4분)",
           "1·2학년 전 학생이 다니는 교양학부 캠퍼스입니다"] },
  { k: "kashiwa", n: "가시와 캠퍼스 (柏)", tag: "대학원·연구",
    addr: "일본 지바현 가시와시 가시와노하 5-1-5",
    jp: "〒277-8561 千葉県柏市柏の葉5-1-5",
    lat: 35.8988, lng: 139.9436,
    ways: ["쓰쿠바 익스프레스 <b>가시와노하캠퍼스역</b> 하차 후 버스 약 10분",
           "JR 조반선 <b>가시와(柏)역</b> 서쪽 출구에서 버스 약 25분",
           "신령역 연구·대학원 중심 캠퍼스입니다"] },
];

const SECTION = `
  <div class="mapwrap">
    <div class="maphead">
      <h3>도쿄대학 캠퍼스 지도</h3>
      <div class="mtabs" id="mtabs"></div>
    </div>
    <div class="mapbox"><div id="cmap"></div></div>
    <div class="mapinfo">
      <div class="mi-left">
        <div class="mname" id="mName"></div>
        <div class="maddr" id="mAddr"></div>
        <div class="mjp" id="mAddrJp"></div>
        <a class="mlink" id="mLink" href="#" target="_blank" rel="noopener">구글 지도에서 길찾기 →</a>
      </div>
      <ul class="mways" id="mWays"></ul>
    </div>
    <div class="maptip">지도를 <b>끌어서 이동</b>, <b>마우스 휠 또는 + / −</b> 로 확대·축소할 수 있습니다.
      지도 위 표시를 누르면 캠퍼스가 바뀝니다.</div>
  </div>`;

/** 지도를 그린다. @param {string} mountId 지도를 넣을 칸의 id */
export function initMap(mountId = "mapapp") {
  const mount = document.getElementById(mountId);
  if (!mount) return;
  mount.innerHTML = SECTION;

  const tabs = document.getElementById("mtabs");
  tabs.innerHTML = CAMPUS.map((c, i) =>
    `<a href="#" data-i="${i}"${i === 0 ? ' class="on"' : ""}>${c.n.split(" ")[0]}<small>${c.tag}</small></a>`).join("");

  const map = L.map("cmap", { scrollWheelZoom: true, zoomControl: true })
               .setView([CAMPUS[0].lat, CAMPUS[0].lng], 15);
  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    maxZoom: 19,
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
  }).addTo(map);

  CAMPUS.forEach((c, i) => {
    L.marker([c.lat, c.lng], {
      icon: L.divIcon({ className: "", iconSize: [0, 0],
        html: `<div class="cmark" data-i="${i}"><i></i><b>${c.n.split(" ")[0]}</b></div>` }),
    }).addTo(map).on("click", () => show(i));
  });

  function show(i, fly = true) {
    const c = CAMPUS[i];
    tabs.querySelectorAll("a").forEach((a, j) => a.classList.toggle("on", i === j));
    document.querySelectorAll("#cmap .cmark").forEach(el => el.classList.toggle("on", +el.dataset.i === i));
    document.getElementById("mName").textContent = c.n;
    document.getElementById("mAddr").textContent = c.addr;
    document.getElementById("mAddrJp").textContent = c.jp;
    document.getElementById("mWays").innerHTML = c.ways.map(w => `<li>${w}</li>`).join("");
    document.getElementById("mLink").href =
      `https://www.google.com/maps/search/?api=1&query=${c.lat},${c.lng}`;
    if (fly) map.flyTo([c.lat, c.lng], 16, { duration: .8 });
  }
  tabs.querySelectorAll("a").forEach(a =>
    a.addEventListener("click", (e) => { e.preventDefault(); show(+a.dataset.i); }));
  show(0, false);

  setTimeout(() => map.invalidateSize(), 200);   // 화면 폭이 늦게 잡히는 경우 대비
}
