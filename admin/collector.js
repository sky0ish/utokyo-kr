/* ══════════════════════════════════════════════════════════
   동문회 게시판 수집기 (북마클릿용)
   네이버 밴드 / 페이스북 그룹 페이지에서 실행하면
   자동으로 스크롤하며 글·사진을 모아 JSON 파일로 저장합니다.
   ══════════════════════════════════════════════════════════ */
(function () {
  if (window.__utkCollector) { alert("이미 수집이 진행 중입니다."); return; }
  window.__utkCollector = true;

  var host = location.hostname;
  var SITE = /band\.us/.test(host) ? "band" : (/facebook\.com/.test(host) ? "facebook" : null);
  if (!SITE) { alert("네이버 밴드 또는 페이스북 그룹 페이지에서 실행해주세요."); window.__utkCollector = false; return; }

  // ── 화면 표시 ──
  var box = document.createElement("div");
  box.style.cssText = "position:fixed;right:18px;bottom:18px;z-index:2147483647;background:#101d33;color:#fff;" +
    "padding:16px 20px;border-radius:10px;font:14px/1.6 'Malgun Gothic',sans-serif;box-shadow:0 10px 40px rgba(0,0,0,.4);min-width:260px";
  box.innerHTML = '<div style="font-weight:700;margin-bottom:6px">재한 도쿄대학 총동문회 수집기</div>' +
    '<div id="utkMsg">준비 중…</div>' +
    '<div style="margin-top:10px"><button id="utkStop" style="background:#c9a24b;border:0;color:#14203a;padding:7px 14px;border-radius:5px;font-weight:700;cursor:pointer">지금 저장하고 종료</button></div>';
  document.body.appendChild(box);
  var msg = box.querySelector("#utkMsg");
  var stopped = false;
  box.querySelector("#utkStop").onclick = function () { stopped = true; };

  var data = {};

  function harvestBand() {
    var vh = innerHeight;
    document.querySelectorAll(".cCard").forEach(function (c) {
      var r = c.getBoundingClientRect();
      if (r.bottom < -800 || r.top > vh + 800) return;
      var a = c.querySelector('a[href*="/post/"]'); if (!a) return;
      var id = (a.getAttribute("href") || "").split("/post/")[1]; if (!id) return;
      var te = c.querySelector(".txtBody, .postText");
      var txt = te ? (te.innerText || "").trim() : "";
      var prev = data[id] || {};
      if (!txt && prev.text) return;
      var tm = c.querySelector(".time, .date");
      var nm = c.querySelector('[class*="uName"], .name');
      var imgs = [].map.call(c.querySelectorAll("img"), function (i) { return i.src; })
        .filter(function (s) { return s.indexOf("pstatic.net") > -1 && s.indexOf("profile") < 0; })
        .map(function (s) { return s.split("?")[0]; });
      data[id] = {
        id: id, site: "band",
        author: (nm ? (nm.innerText || "").trim() : "") || prev.author || "",
        time: (tm ? (tm.innerText || "").trim() : "") || prev.time || "",
        text: txt.length > (prev.text || "").length ? txt : (prev.text || ""),
        imgs: imgs.length ? imgs : (prev.imgs || []),
        url: "https://band.us/band/" + (location.pathname.split("/")[2] || "") + "/post/" + id
      };
    });
  }

  function harvestFb() {
    var vh = innerHeight;
    document.querySelectorAll('[role="article"]').forEach(function (a) {
      var r = a.getBoundingClientRect();
      if (r.bottom < -1200 || r.top > vh + 1200) return;
      var txt = (a.innerText || "").trim();
      if (txt.length < 25) return;
      var href = [].map.call(a.querySelectorAll('a[href*="/posts/"], a[href*="/permalink/"]'),
        function (x) { return x.getAttribute("href") || ""; })
        .filter(function (h) { return /\/(posts|permalink)\/\d+/.test(h); })[0];
      if (!href) return;
      var id = (href.match(/\/(?:posts|permalink)\/(\d+)/) || [])[1];
      if (!id) return;
      var imgs = [].map.call(a.querySelectorAll("img"), function (i) { return i.src; })
        .filter(function (s) { return /scontent|fbcdn/.test(s) && !/s32x32|s48x48|p32x32|p50x50|s60x60/.test(s); });
      var prev = data[id] || {};
      data[id] = {
        id: id, site: "facebook",
        raw: txt.length > (prev.raw || "").length ? txt : prev.raw,
        imgs: imgs.length ? imgs.filter(function (v, i, s) { return s.indexOf(v) === i; }) : (prev.imgs || []),
        url: location.origin + href.split("?")[0]
      };
    });
  }

  function clickMore() {
    var vh = innerHeight;
    var sel = SITE === "band" ? "button._btnMore, span.seeMore" : 'div[role="button"], span[role="button"]';
    document.querySelectorAll(sel).forEach(function (b) {
      var t = (b.innerText || "").trim();
      if (SITE === "facebook" && t !== "더 보기" && t !== "더보기") return;
      var r = b.getBoundingClientRect();
      if (r.top > -300 && r.top < vh + 300) { try { b.click(); } catch (e) {} }
    });
  }

  function save() {
    var arr = Object.keys(data).map(function (k) { return data[k]; });
    var blob = new Blob([JSON.stringify(arr)], { type: "application/json" });
    var a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = SITE + "_collected.json";
    document.body.appendChild(a); a.click(); a.remove();
    msg.innerHTML = "<b>" + arr.length + "건</b> 저장 완료!<br>u-tokyo.kr/admin/ 에서<br>이 파일을 올려주세요.";
    setTimeout(function () { box.remove(); window.__utkCollector = false; }, 12000);
  }

  var idle = 0, lastCount = 0, lastY = -1;
  function step() {
    if (stopped) { save(); return; }
    clickMore();
    (SITE === "band" ? harvestBand : harvestFb)();
    var n = Object.keys(data).length;
    msg.textContent = "수집 중… " + n + "건 (스크롤 " + Math.round(scrollY / 1000) + "k)";
    scrollBy(0, SITE === "band" ? 900 : 700);
    if (n === lastCount && Math.abs(scrollY - lastY) < 30) idle++; else idle = 0;
    lastCount = n; lastY = scrollY;
    if (idle > 25) { save(); return; }   // 더 이상 새 글이 없으면 종료
    setTimeout(step, SITE === "band" ? 350 : 700);
  }
  msg.textContent = (SITE === "band" ? "네이버 밴드" : "페이스북") + " 수집을 시작합니다…";
  setTimeout(step, 800);
})();
