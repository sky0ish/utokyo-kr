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
  box.innerHTML = '<div style="font-weight:700;margin-bottom:6px">도쿄대학 한국인학생회 수집기</div>' +
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
  //   화면을 훑는 대신, 인스타그램이 제 화면을 그릴 때 쓰는 창구에서
  //   글 하나하나의 본문·사진·날짜를 그대로 받아옵니다.
  var IG_APP_ID = "936619743392459";

  function igGet(url) {
    return fetch(url, {
      credentials: "include",
      headers: { "x-ig-app-id": IG_APP_ID, "x-requested-with": "XMLHttpRequest" }
    }).then(function (r) { return r.ok ? r.json() : null; }).catch(function () { return null; });
  }

  /** 사진을 그 자리에서 내려받아 글 안에 담습니다 (긴 변 1600px 로 줄여서) */
  function igPack(url) {
    return fetch(url, { mode: "cors" })
      .then(function (r) { return r.ok ? r.blob() : null; })
      .then(function (b) {
        if (!b) return url;
        return createImageBitmap(b).then(function (im) {
          var s = Math.min(1, 1600 / Math.max(im.width, im.height));
          var c = document.createElement("canvas");
          c.width = Math.round(im.width * s); c.height = Math.round(im.height * s);
          c.getContext("2d").drawImage(im, 0, 0, c.width, c.height);
          return c.toDataURL("image/jpeg", 0.85);
        });
      })
      .catch(function () { return url; });     // 막히면 주소만이라도
  }

  function igPickImgs(item) {
    var out = [];
    var one = function (m) {
      var v = m && m.image_versions2 && m.image_versions2.candidates;
      if (v && v.length) out.push(v[0].url);
    };
    if (item.carousel_media && item.carousel_media.length) item.carousel_media.forEach(one);
    else one(item);
    return out.slice(0, 6);                    // 한 글에 여섯 장까지
  }

  async function igRun() {
    var who = (location.pathname.split("/")[1] || "").replace(/^@/, "");
    if (!who) { alert("인스타그램 계정 화면(예: instagram.com/tokyoksa)에서 눌러주세요."); save(); return; }

    msg.textContent = "계정을 확인하는 중…";
    var prof = await igGet("/api/v1/users/web_profile_info/?username=" + encodeURIComponent(who));
    var uid = prof && prof.data && prof.data.user && prof.data.user.id;
    if (!uid) {
      msg.innerHTML = "계정을 읽지 못했습니다.<br>인스타그램에 로그인한 창에서<br>계정 화면을 열고 다시 눌러주세요.";
      return;
    }

    var maxId = "", page = 0;
    while (!stopped && page < 40) {
      var url = "/api/v1/feed/user/" + uid + "/?count=12" + (maxId ? "&max_id=" + maxId : "");
      var res = await igGet(url);
      var items = (res && res.items) || [];
      if (!items.length) break;

      for (var i = 0; i < items.length; i++) {
        var it = items[i];
        var code = it.code || it.id;
        var cap = (it.caption && it.caption.text) || "";
        var when = it.taken_at ? new Date(it.taken_at * 1000).toISOString() : "";
        var srcs = igPickImgs(it);
        var imgs = [];
        for (var k = 0; k < srcs.length; k++) imgs.push(await igPack(srcs[k]));
        data[code] = {
          id: code, site: "instagram", author: who,
          time: when, text: cap, imgs: imgs,
          url: "https://www.instagram.com/p/" + code + "/"
        };
        msg.textContent = "글 " + Object.keys(data).length + "건 · 사진 " +
          Object.keys(data).reduce(function (n, k2) { return n + data[k2].imgs.length; }, 0) + "장 …";
      }

      if (!res.more_available) break;
      maxId = res.next_max_id || "";
      if (!maxId) break;
      page++;
      await new Promise(function (r) { setTimeout(r, 900); });   // 너무 서두르지 않도록
    }
    save();
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
    msg.innerHTML = "✅ <b>" + arr.length + "건</b> 수집 완료!" + "<br>파일이 내려받아졌습니다." + "<br><span style='color:#c9a24b'>게시글 가져오기</span> 화면에서" + "<br>그 파일을 올려주세요.";
    window.__utkData = arr;
    setTimeout(function () { box.remove(); window.__utkCollector = false; }, 20000);
  }

  var idle = 0, lastCount = 0, lastY = -1;
  var STEP = SITE === "band" ? 350 : 900;       // 페이스북은 불러오는 속도가 느리다
  var MAXIDLE = SITE === "band" ? 25 : 45;
  function step() {
    if (stopped) { save(); return; }
    clickMore();
    (SITE === "band" ? harvestBand : harvestFb)();
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
  if (SITE === "instagram") igRun();          // 글 하나하나를 열어 읽습니다
  else setTimeout(step, 800);
})();
