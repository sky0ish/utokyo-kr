/* ══════════════════════════════════════════════════════════
   동문회 게시판 수집기 (북마클릿 / 개발자도구 붙여넣기용)
   네이버 밴드 · 페이스북 그룹 페이지에서 실행하면
   자동으로 스크롤하며 글·사진을 모아 JSON 파일로 저장합니다.
   ※ 로그인은 회장님 브라우저에서 직접 하신 상태여야 합니다.
   ══════════════════════════════════════════════════════════ */
(function () {
  if (window.__utkCollector) { alert("이미 수집이 진행 중입니다."); return; }
  window.__utkCollector = true;

  var host = location.hostname;
  var SITE = /band\.us/.test(host) ? "band"
    : (/facebook\.com/.test(host) ? "facebook"
    : (/instagram\.com/.test(host) ? "instagram" : null));
  if (!SITE) { alert("네이버 밴드 · 페이스북 · 인스타그램 페이지에서 실행해주세요."); window.__utkCollector = false; return; }

  // ── 화면 표시 ──
  var box = document.createElement("div");
  box.style.cssText = "position:fixed;right:18px;bottom:18px;z-index:2147483647;background:#101d33;color:#fff;" +
    "padding:16px 20px;border-radius:10px;font:14px/1.6 'Malgun Gothic',sans-serif;box-shadow:0 10px 40px rgba(0,0,0,.4);min-width:280px";
  box.innerHTML = '<div style="font-weight:700;margin-bottom:6px">재한 도쿄대학 총동문회 수집기</div>' +
    '<div id="utkMsg">준비 중…</div>' +
    '<div style="margin-top:10px"><button id="utkStop" style="background:#c9a24b;border:0;color:#14203a;padding:7px 14px;border-radius:5px;font-weight:700;cursor:pointer">지금 저장하고 종료</button></div>';
  document.body.appendChild(box);
  var msg = box.querySelector("#utkMsg");
  var stopped = false;
  box.querySelector("#utkStop").onclick = function () { stopped = true; };

  var data = {};
  var text = function (el) { return el ? (el.innerText || "").trim() : ""; };
  var uniq = function (a) { return a.filter(function (v, i, s) { return s.indexOf(v) === i; }); };

  function harvestBand() {
    var vh = innerHeight;
    document.querySelectorAll(".cCard").forEach(function (c) {
      var r = c.getBoundingClientRect();
      if (r.bottom < -800 || r.top > vh + 800) return;
      var a = c.querySelector('a[href*="/post/"]'); if (!a) return;
      var id = (a.getAttribute("href") || "").split("/post/")[1]; if (!id) return;
      var txt = text(c.querySelector(".txtBody, .postText"));
      var prev = data[id] || {};
      if (!txt && prev.text) return;
      var imgs = [].map.call(c.querySelectorAll("img"), function (i) { return i.src; })
        .filter(function (s) { return s.indexOf("pstatic.net") > -1 && s.indexOf("profile") < 0; })
        .map(function (s) { return s.split("?")[0]; });
      data[id] = {
        id: id, site: "band",
        author: text(c.querySelector('[class*="uName"], .name')) || prev.author || "",
        time: text(c.querySelector(".time, .date")) || prev.time || "",
        text: txt.length > (prev.text || "").length ? txt : (prev.text || ""),
        imgs: imgs.length ? imgs : (prev.imgs || []),
        url: "https://band.us/band/" + (location.pathname.split("/")[2] || "") + "/post/" + id
      };
    });
  }


  // ── 인스타그램 ───────────────────────────────────────────
  //   프로필·피드 화면에서 글 주소(/p/…, /reel/…)와 사진을 모읍니다.
  //   글보기 화면(한 글만 열었을 때)이면 본문까지 함께 담습니다.
  function igCaption() {
    var h = document.querySelector("article h1");
    if (h) return text(h);
    var m = document.querySelector('article [data-testid="post-comment-root"] span');
    return m ? text(m) : "";
  }

  function harvestInsta() {
    var vh = innerHeight;
    var here = (location.pathname.match(/\/(?:p|reel)\/([\w-]+)/) || [])[1];
    var cap = here ? igCaption() : "";

    [].forEach.call(document.querySelectorAll('a[href*="/p/"], a[href*="/reel/"]'), function (a) {
      var r = a.getBoundingClientRect();
      if (r.bottom < -1200 || r.top > vh + 1200) return;
      var id = ((a.getAttribute("href") || "").match(/\/(?:p|reel)\/([\w-]+)/) || [])[1];
      if (!id) return;
      var img = a.querySelector("img");
      var prev = data[id] || {};
      var body = (img && (img.getAttribute("alt") || "")) || "";
      data[id] = {
        id: id, site: "instagram",
        author: (location.pathname.split("/")[1] || "").replace(/^@/, "") || prev.author || "",
        time: prev.time || "",
        text: body.length > (prev.text || "").length ? body : (prev.text || ""),
        imgs: uniq((prev.imgs || []).concat(img && img.src ? [img.src.split("?")[0]] : [])),
        url: "https://www.instagram.com/p/" + id + "/"
      };
    });

    // 한 글만 열어 두셨다면 그 글의 본문·사진을 더 담습니다
    if (here) {
      var prev = data[here] || {};
      var imgs = [].filter.call(document.querySelectorAll("article img"), function (i) {
        return (i.naturalWidth || i.width || 0) >= 240;
      }).map(function (i) { return i.src.split("?")[0]; });
      var t = document.querySelector("article time");
      data[here] = {
        id: here, site: "instagram",
        author: (prev.author || (location.pathname.split("/")[1] || "")),
        time: (t && (t.getAttribute("datetime") || text(t))) || prev.time || "",
        text: cap.length > (prev.text || "").length ? cap : (prev.text || ""),
        imgs: uniq((prev.imgs || []).concat(imgs)),
        url: "https://www.instagram.com/p/" + here + "/"
      };
    }
  }

  // ── 페이스북 ─────────────────────────────────────────────
  // 글 본문은 message 컨테이너에서 뽑고, 없으면 카드 전체 글에서
  // 작성자·반응·댓글 줄을 걷어낸 나머지를 본문으로 본다.
  var FB_NOISE = /^(좋아요|댓글|공유(하기)?|답글|모두 보기|더 보기|더보기|번역 보기|보내기|Like|Comment|Share|Reply|See more|가장 관련성 높은|\d+개의? (댓글|공유)|댓글 \d+개|공유 \d+회)/;

  function fbMessage(card) {
    var m = card.querySelector('[data-ad-preview="message"], [data-ad-comet-preview="message"], [data-testid="post_message"]');
    if (m) return text(m);
    var lines = text(card).split("\n").map(function (s) { return s.trim(); });
    var out = [];
    for (var i = 1; i < lines.length; i++) {           // 0번째 줄은 대개 작성자
      var L = lines[i];
      if (!L) continue;
      if (FB_NOISE.test(L)) break;                     // 반응/댓글 영역부터는 버린다
      if (/^\d+([만천]?)$/.test(L)) continue;
      out.push(L);
    }
    return out.join("\n").trim();
  }

  function fbTime(card) {
    var best = "";
    [].forEach.call(card.querySelectorAll('a[href*="/posts/"], a[href*="/permalink/"], a[role="link"]'), function (a) {
      var t = (a.getAttribute("aria-label") || "").trim() || text(a);
      if (/\d{4}년|\d+월 \d+일|\d{1,2}\/\d{1,2}\/\d{2,4}|\d+(시간|분|일|주)/.test(t) && t.length < 60 && !best) best = t;
    });
    return best;
  }

  function harvestFb() {
    var vh = innerHeight;
    document.querySelectorAll('[role="article"]').forEach(function (card) {
      if (card.closest('[role="article"]') !== card) {            // 댓글은 건너뛴다
        var p = card.parentElement && card.parentElement.closest('[role="article"]');
        if (p) return;
      }
      var r = card.getBoundingClientRect();
      if (r.bottom < -1600 || r.top > vh + 1600) return;
      var href = [].map.call(card.querySelectorAll('a[href*="/posts/"], a[href*="/permalink/"], a[href*="multi_permalinks"]'),
        function (x) { return x.getAttribute("href") || ""; })
        .filter(function (h) { return /\/(posts|permalink)\/\d+|multi_permalinks=\d+/.test(h); })[0];
      if (!href) return;
      var id = (href.match(/\/(?:posts|permalink)\/(\d+)/) || href.match(/multi_permalinks=(\d+)/) || [])[1];
      if (!id) return;

      var imgs = [].filter.call(card.querySelectorAll("img"), function (i) {
        if (!/scontent|fbcdn/.test(i.src || "")) return false;
        var w = i.naturalWidth || i.width || 0;
        return w >= 200 && !/s32x32|s48x48|p32x32|p50x50|s60x60|_s\.jpg/.test(i.src);
      }).map(function (i) { return i.src; });

      var prev = data[id] || {};
      var body = fbMessage(card);
      data[id] = {
        id: id, site: "facebook",
        author: text(card.querySelector('h3 a, h4 a, strong span, h2 strong')) || prev.author || "",
        time: fbTime(card) || prev.time || "",
        text: body.length > (prev.text || "").length ? body : (prev.text || ""),
        imgs: uniq((prev.imgs || []).concat(imgs)),
        url: location.origin + href.split("?")[0].split("&")[0]
      };
    });
  }

  function clickMore() {
    var vh = innerHeight;
    if (SITE === "band") {
      document.querySelectorAll("button._btnMore, span.seeMore").forEach(function (b) {
        var r = b.getBoundingClientRect();
        if (r.top > -300 && r.top < vh + 300) { try { b.click(); } catch (e) {} }
      });
      return;
    }
    document.querySelectorAll('div[role="button"], span[role="button"]').forEach(function (b) {
      var t = (b.innerText || "").trim();
      if (t !== "더 보기" && t !== "더보기" && t !== "See more" && t !== "…더 보기") return;
      var r = b.getBoundingClientRect();
      if (r.top > -300 && r.top < vh + 300) { try { b.click(); } catch (e) {} }
    });
  }

  function save() {
    var arr = Object.keys(data).map(function (k) { return data[k]; })
      .filter(function (d) { return (d.text || "").length > 5 || (d.imgs || []).length; });
    var blob = new Blob([JSON.stringify(arr, null, 1)], { type: "application/json" });
    var a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = SITE + "_collected.json";
    document.body.appendChild(a); a.click(); a.remove();
    msg.innerHTML = "<b>" + arr.length + "건</b> 저장 완료!<br>내려받은 파일을 채팅창에<br>올려주시면 게시판에 옮겨드립니다.";
    window.__utkData = arr;
    setTimeout(function () { box.remove(); window.__utkCollector = false; }, 20000);
  }

  var idle = 0, lastCount = 0, lastY = -1;
  var STEP = SITE === "band" ? 350 : 900;       // 페이스북은 불러오는 속도가 느리다
  var MAXIDLE = SITE === "band" ? 25 : 45;
  function step() {
    if (stopped) { save(); return; }
    clickMore();
    (SITE === "band" ? harvestBand : SITE === "instagram" ? harvestInsta : harvestFb)();
    var n = Object.keys(data).length;
    msg.textContent = "수집 중… " + n + "건 (스크롤 " + Math.round(scrollY / 1000) + "k)";
    scrollBy(0, SITE === "band" ? 900 : 800);
    if (n === lastCount && Math.abs(scrollY - lastY) < 30) idle++; else idle = 0;
    lastCount = n; lastY = scrollY;
    if (idle > MAXIDLE) { save(); return; }   // 더 이상 새 글이 없으면 종료
    setTimeout(step, STEP);
  }
  msg.textContent = (SITE === "band" ? "네이버 밴드"
    : SITE === "instagram" ? "인스타그램" : "페이스북") + " 수집을 시작합니다…";
  setTimeout(step, 800);
})();
