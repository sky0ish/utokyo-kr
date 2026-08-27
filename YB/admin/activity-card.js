// ─── 활동 통계 칸 ────────────────────────────────────────────
// 회원 관리 화면에 있는 그 칸을, 사용통계 화면 아래쪽에도 그대로 보여주기 위한 조각.
// 운영진만 씁니다 (활동 기록 원본을 읽어야 하므로).
import { sb } from "/YB/auth/auth.js";

const CSS = `  /* 로그인 통계 */
  .actcard{margin-top:14px;background:#fff;border:1px solid #dfe9e1;border-radius:10px;padding:22px 24px;}
  .actcard .sh{display:flex;align-items:center;gap:12px;flex-wrap:wrap;margin-bottom:6px;}
  .actcard .sh h2{font-size:16px;font-weight:500;color:#1e5230;}
  .actcard .seg{display:inline-flex;border:1px solid #ddd6c4;border-radius:8px;overflow:hidden;}
  .actcard .seg a{padding:6px 14px;font-size:12.5px;font-weight:600;color:#6b6350;cursor:pointer;
    border-right:1px solid #ddd6c4;background:#fff;}
  .actcard .seg a:last-child{border-right:none;}
  .actcard .seg a.on{background:#4f9d5d;color:#2b2410;}
  .actcard .cap{font-size:12.5px;color:#6f7d73;margin-left:auto;}
  .actcard .chart{margin-top:10px;overflow-x:auto;}
  .actcard svg{display:block;}
  .actcard .legend{display:flex;gap:16px;flex-wrap:wrap;margin-top:8px;font-size:12.5px;color:#6f7d73;}
  .actcard .legend i{display:inline-block;width:11px;height:11px;border-radius:2px;
    margin-right:6px;vertical-align:-1px;}
  .actcard .none{padding:26px 0;text-align:center;color:#a8a291;font-size:13.5px;}

  /* 활동 점수 가중치 */
  .actcard .ac-wbox{margin-top:18px;padding-top:16px;border-top:1px solid #f0ebe0;}
  .actcard .ac-wbox h3{font-size:14px;font-weight:500;color:#1e5230;margin-bottom:2px;}
  .actcard .ac-wbox p{font-size:12.5px;color:#6f7d73;margin-bottom:10px;}
  .actcard .ac-wrow{display:flex;gap:10px;flex-wrap:wrap;align-items:center;}
  .actcard .ac-wrow label{display:flex;align-items:center;gap:6px;font-size:13px;color:#1e5230;
    background:#fff;border:1px solid #cfe3d4;border-radius:8px;padding:6px 10px;}
  .actcard .ac-wrow input{width:56px;padding:5px 7px;border:1px solid #cfe3d4;border-radius:6px;
    font-family:inherit;font-size:13px;text-align:right;}
  .actcard .ac-wrow .save{padding:7px 16px;border-radius:8px;font-size:13px;font-weight:600;cursor:pointer;
    font-family:inherit;border:1px solid #4f9d5d;background:#4f9d5d;color:#2b2410;}
  .actcard .ac-wrow .save:disabled{opacity:.5;cursor:default;}
  .act{white-space:nowrap;font-size:12px;line-height:1.6;}
  .act b{font-size:14px;color:#1e5230;}
  .act span{color:#a8a291;}

  /* 그래프 옆 Top 10 */
  .actcard .ac-row{display:flex;gap:22px;align-items:flex-start;flex-wrap:wrap;}
  .actcard .ac-row .chart{flex:1;min-width:320px;}
  .actcard .ac-top{flex:0 0 250px;max-width:250px;}
  .actcard .ac-top h4{font-size:13px;font-weight:600;color:#1e5230;margin-bottom:8px;}
  .actcard .ac-top ol{list-style:none;counter-reset:t;}
  .actcard .ac-top li{counter-increment:t;display:flex;align-items:center;gap:8px;
    padding:6px 8px;border-radius:6px;font-size:13px;color:#1e5230;}
  .actcard .ac-top li:nth-child(odd){background:#eef6f0;}
  .actcard .ac-top li::before{content:counter(t);flex:none;width:18px;text-align:right;
    color:#6f7d73;font-size:11.5px;font-variant-numeric:tabular-nums;}
  .actcard .ac-top li .nm{flex:1;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}
  .actcard .ac-top li .n{flex:none;font-weight:700;font-variant-numeric:tabular-nums;}
  .actcard .ac-top li .bar{flex:0 0 44px;height:5px;border-radius:3px;background:#e6efe9;overflow:hidden;}
  .actcard .ac-top li .bar i{display:block;height:100%;background:#4f9d5d;}
  .actcard .ac-top .none{font-size:12.5px;color:#a8a291;padding:10px 2px;}
  @media(max-width:820px){ .actcard .ac-top{flex:1 1 auto;max-width:none;} }

  .actcard .ac-top h4 .clr{margin-left:6px;border:none;background:none;cursor:pointer;
    color:#b0a98f;font-family:inherit;font-size:12px;}
  .actcard .ac-top h4 .clr:hover{color:#1e5230;}

  /* 연도 고르기 — 월별/연별과 다른 빛깔 */
  .actcard .ac-seg-year{border-color:#b6cfc0;}
  .actcard .ac-seg-year a{color:#4a5f52;border-right-color:#b6cfc0;}
  .actcard .ac-seg-year a:hover{background:#eef6f0;color:#123524;}
  .actcard .ac-seg-year a.on{background:#123524;color:#fff;}

  .actcard .ac-seg-org{border-color:#b6cfc0;}
  .actcard .ac-seg-org a{color:#4a5f52;border-right-color:#b6cfc0;}
  .actcard .ac-seg-org a:hover{background:#eef6f0;color:#123524;}
  .actcard .ac-seg-org a.on{background:#123524;color:#fff;}`;

const HTML = `    <div class="actcard">
      <div class="sh">
        <h2>활동 통계</h2>
        <span class="seg ac-seg-mode">
          <a data-m="month" class="on">월별</a><a data-m="year">연별</a>
        </span>
        <span class="seg ac-seg-org"></span>
        <span class="seg ac-seg-year" style="display:none;"></span>
        <span class="cap ac-cap"></span>
      </div>
      <span class="seg ac-seg-kind" style="margin-top:6px;"></span>
      <div class="ac-row">
        <div class="chart ac-chart"><div class="none">불러오는 중…</div></div>
        <div class="ac-top"></div>
      </div>
      <div class="legend ac-legend"></div>
      <div class="ac-wbox">
        <h3>활동 점수 가중치</h3>
        <p>활동마다 몇 점으로 셀지 정합니다. 고치시면 위의 총점과 그래프가 바로 따라옵니다.</p>
        <div class="ac-wrow"><span style="color:#a8a291;font-size:13px;">불러오는 중…</span></div>
      </div>
    </div>`;

const esc = (s) => String(s == null ? "" : s).replace(/[&<>"]/g,
  c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;" }[c]));

/**
 * 활동 통계 칸을 그린다.
 * @param {HTMLElement} host  칸이 들어갈 자리
 * @param {object} opt   { org, members, onWeights }
 *   org       처음에 보여줄 소속 ("OB" | "YB")
 *   members   회원 명단 [{ id, name, is_admin, member_type }]
 *   onWeights 가중치를 저장했을 때 부를 것 (없어도 됩니다)
 */
export function mountActivity(host, opt) {
  if (!host) return;
  const HOME = (opt && opt.org) === "YB" ? "YB" : "OB";
  const rows = (opt && opt.members) || [];
  const onWeights = (opt && opt.onWeights) || function () {};

  if (!document.getElementById("actcard-css")) {
    const st = document.createElement("style");
    st.id = "actcard-css";
    st.textContent = CSS;
    document.head.appendChild(st);
  }
  host.innerHTML = HTML;
  const q  = (sel) => host.querySelector(sel);
  const qa = (sel) => host.querySelectorAll(sel);

  // ── 활동 기록 (로그인 · 방문 · 글읽기 · 글쓰기 · 댓글 · 사진) ──
  //   activity_events 를 읽어 사람마다 세고, activity_weights 로 총점을 냅니다.
  //   가중치는 나중에 정하실 수 있게 표로 빼두었습니다.
  let ACT = new Map();       // user_id → {login, visit, read, post, comment, photo}
  let WEIGHT = [];           // [{kind,label,weight,sort}]
  let EVENTS = null;         // 원본 기록 (그래프용)

  // 활동 갈래 빛깔 — 색맹 구분까지 검증한 여섯 자리
  const KCOLOR = { login: "#2a78d6", visit: "#eb6834", read: "#1baf7a",
                   comment: "#eda100", post: "#e87ba4", photo: "#008300" };
  const KORDER = ["login", "visit", "read", "comment", "post", "photo"];

  const KIND_NAME = { login: "로그인", visit: "방문", read: "글읽기",
                      comment: "댓글", post: "글쓰기", photo: "사진" };

  const scoreOf = (a) => WEIGHT.reduce((n, w) => n + (a && a[w.kind] || 0) * (+w.weight || 0), 0);

  async function loadActivity() {
    const w = await sb.from("activity_weights").select("kind,label,weight,sort").order("sort");
    WEIGHT = w.error ? [] : (w.data || []);

    const r = await sb.from("activity_events").select("user_id,kind,amount,at").order("at");
    if (r.error) { EVENTS = null; return r.error; }
    EVENTS = r.data || [];
    ACT = new Map();
    EVENTS.forEach(e => {
      if (!ACT.has(e.user_id)) ACT.set(e.user_id, {});
      const a = ACT.get(e.user_id);
      a[e.kind] = (a[e.kind] || 0) + (e.amount || 1);
    });
    return null;
  }

  function actCell(id) {
    const a = ACT.get(id);
    if (!a) return '<span style="color:#c3bca8;">-</span>';
    const parts = WEIGHT.filter(w => a[w.kind])
      .map(w => `${KIND_NAME[w.kind] || w.label} ${a[w.kind]}`);
    return `<div class="act"><b>${Math.round(scoreOf(a))}점</b><br>` +
           `<span>${parts.join(" · ") || "-"}</span></div>`;
  }

  function drawWeights() {
    const box = q(".ac-wrow");
    if (!box) return;
    if (!WEIGHT.length) {
      box.innerHTML = '<span style="color:#b3453b;font-size:13px;">' +
        '아직 준비 전입니다 — <b>auth/activity_stats.sql</b> 을 한 번 실행해주세요.</span>';
      return;
    }
    box.innerHTML = WEIGHT.map(w =>
      `<label>${KIND_NAME[w.kind] || w.label}
         <input type="number" step="0.5" min="0" data-k="${w.kind}" value="${w.weight}"></label>`).join("") +
      '<button class="save ac-save">가중치 저장</button>';

    q(".ac-save").addEventListener("click", async () => {
      const btn = q(".ac-save");
      btn.disabled = true; btn.textContent = "저장 중…";
      const rows = [...box.querySelectorAll("input[data-k]")].map(i => ({
        kind: i.dataset.k, weight: +i.value || 0,
      }));
      let err = null;
      for (const r of rows) {
        const u = await sb.from("activity_weights").update({ weight: r.weight }).eq("kind", r.kind);
        if (u.error) { err = u.error; break; }
      }
      btn.disabled = false; btn.textContent = err ? "저장 실패" : "저장됨 ✓";
      if (err) { alert("가중치를 저장하지 못했습니다: " + err.message); return; }
      rows.forEach(r => { const w = WEIGHT.find(x => x.kind === r.kind); if (w) w.weight = r.weight; });
      onWeights(); drawStat();
      setTimeout(() => { btn.textContent = "가중치 저장"; }, 1500);
    });
  }

  // ── 로그인 통계 그래프 ──
  //   login_events 를 월/연으로 묶어 막대그래프로 그립니다. (그림 파일 없이 SVG 로 그립니다)
  {
    let mode = "month", kind = "all", pick = "";
    let year = String(new Date().getFullYear());   // 월별에서 보고 있는 해   // pick : 눌러서 고른 달·해
    const chart = q(".ac-chart");
    const cap = q(".ac-cap");
    const legend = q(".ac-legend");
    let EV = null;                 // 활동 기록 (바깥 rows 는 회원 명단입니다)
    let statOrg = HOME;            // 점수는 OB · YB 따로 셉니다

    // 어떤 활동을 볼지 고르는 줄
    {
      const box = q(".ac-seg-kind");
      const kinds = [["all", "전체(쌓기)"], ["each", "분야별"]].concat(
        KORDER.map(k => [k, KIND_NAME[k]]));
      box.innerHTML = kinds.map(([k, t]) =>
        `<a data-k="${k}"${k === "all" ? ' class="on"' : ""}>${t}</a>`).join("");
      box.querySelectorAll("a").forEach(a => a.addEventListener("click", () => {
        kind = a.dataset.k;
        box.querySelectorAll("a").forEach(x => x.classList.toggle("on", x === a));
        drawStat();
      }));
    }

    qa(".ac-seg-mode a").forEach(a => a.addEventListener("click", () => {
      mode = a.dataset.m;
      pick = "";
      qa(".ac-seg-mode a").forEach(x => x.classList.toggle("on", x === a));
      drawYears();
      drawStat();
    }));

    async function loadStat() {
      const err = await loadActivity();
      if (err) {
        chart.innerHTML = '<div class="none">' +
          (/activity_events|schema cache/i.test(err.message || "")
            ? "아직 준비 전입니다 — <b>auth/activity_stats.sql</b> 을 한 번 실행해주세요."
            : "통계를 불러오지 못했습니다: " + esc(err.message)) + "</div>";
        return null;
      }
      drawWeights();
      return EVENTS;
    }

    /** 고른 소속의 일반 회원 기록만 — 운영진 계정과 다른 소속은 뺍니다 */
    function useEv() {
      const who = new Map(rows.map(r => [r.id, r]));
      return (EV || []).filter(e => {
        const p = who.get(e.user_id);
        return p && !p.is_admin && (p.member_type || "") === statOrg;
      });
    }

    function bucket(list) {
      const m = new Map();
      list.forEach(e => {
        const k = mode === "month" ? String(e.at).slice(0, 7) : String(e.at).slice(0, 4);
        if (!m.has(k)) m.set(k, { n: 0, who: new Set(), by: {} });
        const b = m.get(k);
        b.by[e.kind] = (b.by[e.kind] || 0) + (e.amount || 1);
        if (kind === "all" || kind === "each" || e.kind === kind) {
          b.n += (e.amount || 1); b.who.add(e.user_id || e.at);
        }
      });
      return [...m.entries()].sort((a, b) => a[0].localeCompare(b[0]))
        .map(([k, v]) => ({ k, n: v.n, p: v.who.size, by: v.by }));
    }

    /** 지금 보고 있는 기간·활동으로 많이 하신 분 열 분 */
    function drawTop() {
      const el = q(".ac-top");
      if (!el || !EVENTS) return;
      const name = new Map(rows.map(r => [r.id, r.name || "이름없음"]));
      const keyOf = (e) => mode === "month" ? String(e.at).slice(0, 7) : String(e.at).slice(0, 4);
      const one = kind !== "all" && kind !== "each" ? kind : "";

      // 사람마다 활동을 모은다 (고른 소속 · 고른 기간 · 고른 활동만)
      const sum = new Map();
      useEv().forEach(e => {
        if (one && e.kind !== one) return;
        if (pick && keyOf(e) !== pick) return;
        if (!sum.has(e.user_id)) sum.set(e.user_id, {});
        const a = sum.get(e.user_id);
        a[e.kind] = (a[e.kind] || 0) + (e.amount || 1);
      });

      const list = [...sum.entries()]
        .map(([id, a]) => ({ nm: name.get(id), n: one ? (a[one] || 0) : Math.round(scoreOf(a)) }))
        .filter(x => x.n > 0)
        .sort((x, y) => y.n - x.n)
        .slice(0, 10);

      const label = one ? (KIND_NAME[one] || "") : "총점";
      const when = pick
        ? (mode === "month" ? pick.replace("-", ".") : pick + "년")
        : (mode === "month" ? year + "년" : "해마다");
      const top = list.length ? list[0].n : 1;
      el.innerHTML = `<h4>${statOrg} · ${when} · ${label} Top 10` +
        (pick ? ' <button class="clr ac-clr" title="기간 풀기">✕</button>' : "") + "</h4>" +
        (list.length
          ? "<ol>" + list.map(x => `<li><span class="nm">${esc(x.nm)}</span>` +
              `<span class="bar"><i style="width:${Math.round(x.n / top * 100)}%;"></i></span>` +
              `<span class="n">${x.n}</span></li>`).join("") + "</ol>"
          : `<div class="none">이 기간에는 ${statOrg} 일반 회원의 기록이 없습니다.` +
            "<br><small>운영진 계정의 활동은 세지 않습니다.</small></div>");

      const clr = q(".ac-clr");
      if (clr) clr.addEventListener("click", () => { pick = ""; drawStat(); });
    }

    /** 월별은 고른 해의 1월~12월 열두 칸, 연별은 첫 해부터 올해까지 */
    function fillGaps(arr) {
      const now = new Date();
      const have = new Map(arr.map(d => [d.k, d]));
      const blank = (k) => ({ k, n: 0, p: 0, by: {} });
      const out = [];
      if (mode === "month") {
        for (let m = 1; m <= 12; m++) {
          const k = year + "-" + String(m).padStart(2, "0");
          out.push(have.get(k) || blank(k));
        }
      } else {
        const first = arr.length ? +arr[0].k.slice(0, 4) : now.getFullYear();
        for (let y = first; y <= now.getFullYear(); y++) {
          const k = String(y);
          out.push(have.get(k) || blank(k));
        }
      }
      return out;
    }

    /** 기록이 있는 해들 — 월별에서 고를 수 있게 */
    function drawYears() {
      const box = q(".ac-seg-year");
      if (!box) return;
      box.style.display = mode === "month" ? "inline-flex" : "none";
      if (mode !== "month") return;
      const now = new Date().getFullYear();
      const use = useEv();
      const first = use.length
        ? Math.min(...use.map(e => +String(e.at).slice(0, 4))) : now;
      const ys = [];
      for (let y = first; y <= now; y++) ys.push(String(y));
      box.innerHTML = ys.map(y =>
        `<a data-y="${y}"${y === year ? ' class="on"' : ""}>${y}년</a>`).join("");
      box.querySelectorAll("a").forEach(a => a.addEventListener("click", () => {
        year = a.dataset.y; pick = ""; drawYears(); drawStat();
      }));
    }

    function drawStat() {
      if (!EV) { drawTop(); return; }
      const use = useEv();
      if (!use.length) {
        chart.innerHTML = `<div class="none">아직 ${statOrg} 일반 회원의 활동 기록이 없습니다.` +
          "<br>회원이 홈페이지를 쓰실 때마다 하나씩 쌓입니다." +
          "<br><small>운영진 계정의 활동은 세지 않습니다.</small></div>";
        cap.textContent = "";
        legend.innerHTML = "";
        drawTop();
        return;
      }

      const wide = kind === "all" || kind === "each";     // 여섯 갈래를 한 그림에
      const data = fillGaps(bucket(use)).slice(mode === "month" ? -24 : -12);
      const W = Math.max(560, data.length * (mode === "month" ? (kind === "each" ? 62 : 44) : 78));
      const H = 230, PAD = 38, BOT = 34, TOP = 14;
      const step = (W - PAD * 2) / data.length;
      const zero = H - BOT;

      // 높이를 재는 값 : 띠는 합계, 나란히는 가장 큰 하나, 하나만 볼 때는 그 갈래
      const heightOf = (d) =>
        kind === "all"  ? KORDER.reduce((n, k) => n + (d.by[k] || 0), 0)
      : kind === "each" ? Math.max(...KORDER.map(k => d.by[k] || 0), 0)
      :                   Math.max(d.n, d.p);
      const top = Math.max(1, ...data.map(heightOf));
      const y = (v) => zero - (v / top) * (zero - TOP);

      const grid = [0, 0.5, 1].map(f => {
        const v = Math.round(top * f), yy = y(v);
        return `<line x1="${PAD}" y1="${yy}" x2="${W - PAD}" y2="${yy}" stroke="#efe9db"/>` +
               `<text x="${PAD - 8}" y="${yy + 4}" text-anchor="end" font-size="10"
                  fill="#7d7768">${v}</text>`;
      }).join("");

      /** 데이터가 끝나는 쪽만 둥글게, 바닥은 각지게 */
      const bar = (x, w, v, fill, title, dim) => {
        if (!v) return "";
        const h = zero - y(v), r = Math.min(4, w / 2, h);
        const yy = y(v);
        return `<path d="M${x} ${zero} L${x} ${yy + r} Q${x} ${yy} ${x + r} ${yy}` +
               ` L${x + w - r} ${yy} Q${x + w} ${yy} ${x + w} ${yy + r} L${x + w} ${zero} Z"` +
               ` fill="${fill}" opacity="${dim ? .4 : 1}"><title>${title}</title></path>`;
      };

      const bars = data.map((d, i) => {
        const x0 = PAD + step * i;
        const label = mode === "month" ? d.k.slice(2).replace("-", ".") : d.k;
        const dim = pick && pick !== d.k;
        let body = "";

        if (kind === "all") {
          // ── 띠 : 여섯 갈래를 한 막대에 쌓는다 (사이는 2px 띄운다) ──
          const bw = Math.min(30, step * 0.5);
          const x = x0 + (step - bw) / 2;
          let acc = 0;
          body = KORDER.map(k => {
            const v = d.by[k] || 0;
            if (!v) return "";
            const yTop = y(acc + v), yBot = y(acc);
            acc += v;
            const h = Math.max(1, yBot - yTop - 2);
            return `<rect x="${x}" y="${yTop}" width="${bw}" height="${h}" rx="2"
                      fill="${KCOLOR[k]}" opacity="${dim ? .4 : 1}">
                      <title>${d.k} · ${KIND_NAME[k]} ${v}</title></rect>`;
          }).join("");

        } else if (kind === "each") {
          // ── 나란히 : 여섯 갈래를 옆으로 세운다 ──
          const gap = 2;
          const bw = Math.max(3, (step * 0.86 - gap * 5) / 6);
          const x = x0 + (step - (bw * 6 + gap * 5)) / 2;
          body = KORDER.map((k, n) =>
            bar(x + n * (bw + gap), bw, d.by[k] || 0,
                KCOLOR[k], `${d.k} · ${KIND_NAME[k]} ${d.by[k] || 0}`, dim)).join("");

        } else {
          // ── 갈래 하나 : 활동 수와 사람 수 ──
          const bw = Math.min(24, step * 0.36);
          const cx = x0 + step / 2;
          body = bar(cx - bw - 1, bw, d.n, KCOLOR[kind] || "#2a78d6",
                     `${d.k} · ${KIND_NAME[kind] || ""} ${d.n}`, dim) +
                 bar(cx + 1, bw, d.p, "#9aa3ad", `${d.k} · ${d.p}명`, dim);
        }

        return `<rect class="pickbar" data-k="${d.k}" x="${x0}" y="0" width="${step}"
                  height="${zero}" fill="${pick === d.k ? "rgba(0,0,0,.045)" : "transparent"}"/>` +
               body +
               `<text x="${x0 + step / 2}" y="${zero + 15}" text-anchor="middle"
                  font-size="10.5" fill="#7d7768">${label}</text>`;
      }).join("");

      chart.innerHTML = `<svg width="${W}" height="${H}" viewBox="0 0 ${W} ${H}" role="img"
        aria-label="${mode === "month" ? "월별" : "연별"} 활동 통계 막대그래프">${grid}
        <line x1="${PAD}" y1="${zero}" x2="${W - PAD}" y2="${zero}" stroke="#efe9db"/>
        ${bars}</svg>`;

      // 이름표 — 여러 갈래를 함께 볼 때는 여섯 개, 하나만 볼 때는 둘
      legend.innerHTML = wide
        ? KORDER.map(k =>
            `<span><i style="background:${KCOLOR[k]};"></i>${KIND_NAME[k]}</span>`).join("")
        : `<span><i style="background:${KCOLOR[kind] || "#2a78d6"};"></i>${KIND_NAME[kind] || ""} 수</span>` +
          '<span><i style="background:#9aa3ad;"></i>사람 수</span>';

      chart.querySelectorAll(".pickbar").forEach(r => {
        r.style.cursor = "pointer";
        r.addEventListener("click", () => {
          pick = (pick === r.dataset.k) ? "" : r.dataset.k;
          drawStat();
        });
      });

      drawTop();

      const all = bucket(use);
      cap.textContent = `${statOrg} 모두 ${use.length}건 · ` +
        (mode === "month" ? year + "년 1월~12월" : "해마다 쌓은 것") +
        ` (기록 시작 ${all[0].k})`;
    }

    // 소속 고르기 — 점수는 OB · YB 따로 셉니다
    {
      const box = q(".ac-seg-org");
      box.innerHTML = [HOME, HOME === "OB" ? "YB" : "OB"].map(o =>
        `<a data-o="${o}"${o === statOrg ? ' class="on"' : ""}>${o}</a>`).join("");
      box.querySelectorAll("a").forEach(a => a.addEventListener("click", () => {
        statOrg = a.dataset.o; pick = "";
        box.querySelectorAll("a").forEach(x => x.classList.toggle("on", x === a));
        drawYears(); drawStat();
      }));
    }

    loadStat().then(d => { EV = d; if (EV) { drawYears(); drawStat(); } });
  }
}
