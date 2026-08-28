// ─── 게시판 글보기 화면 (총동문회 OB · 학생회 YB 공용 엔진) ────────
// 화면 파일은 OB/ · YB/ 폴더에 따로 두고, 동작은 이 파일 하나를 함께 씁니다.
import { sb, currentUser, myProfile, noteActivity, fixEnter } from "/YB/auth/auth.js";
import { loadLikes, toggleLike, heart } from "/YB/auth/likes.js";
import { applyNav } from "/YB/board/nav.js?v=10";

/** 글자를 화면에 안전하게 넣기 위한 다듬기 */
function esc(t) {
  return String(t == null ? "" : t)
    .replace(/[&<>"]/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;" }[c]));
}

/** 붙인 파일이 사진인지 (열어보지 않아도 이름·종류로 알 수 있습니다) */
function isImageFile(f) {
  if (!f) return false;
  if (typeof f.type === "string" && f.type.indexOf("image/") === 0) return true;
  return /\.(jpe?g|png|gif|webp|bmp|avif|heic|heif)$/i.test(f.name || f.path || "");
}

/** 붙인 사진은 내려받지 않아도 글 밑에서 바로 보이게 한다 */
function attachedImages(list) {
  if (!Array.isArray(list)) return "";
  const imgs = list.filter(isImageFile);
  if (!imgs.length) return "";
  const cells = imgs.map(f => {
    const { data } = sb.storage.from("board").getPublicUrl(f.path);
    return `<a href="${data.publicUrl}" target="_blank" rel="noopener">` +
           `<img src="${data.publicUrl}" alt="${esc(f.name)}" loading="lazy"></a>`;
  }).join("");
  return `<div class="pgal">${cells}</div>`;
}

/** 붙인 파일이 PDF 문서인지 */
function isPdfFile(f) {
  if (!f) return false;
  if (typeof f.type === "string" && f.type.indexOf("application/pdf") === 0) return true;
  return /\.pdf$/i.test(f.name || f.path || "");
}

/** 붙인 PDF 도 사진처럼 글 밑에서 바로 넘겨볼 수 있게 자리를 만든다.
 *  (실제 그림으로 바꾸는 일은 아래 showPdfs 에서 합니다) */
function attachedPdfs(list) {
  if (!Array.isArray(list)) return "";
  const pdfs = list.filter(isPdfFile);
  if (!pdfs.length) return "";
  return pdfs.map(f => {
    const { data } = sb.storage.from("board").getPublicUrl(f.path);
    return `<div class="ppdf" data-pdf="${esc(data.publicUrl)}">` +
           `<div class="ppdf-t"><span>📄</span>${esc(f.name)}` +
           `<a href="${esc(data.publicUrl)}" target="_blank" rel="noopener">새 창에서 보기 →</a></div>` +
           `<div class="ppdf-pages"><div class="ppdf-msg">문서를 여는 중…</div></div></div>`;
  }).join("");
}

/** 자리에 놓인 PDF 를 한 쪽씩 그림으로 그려 넣는다 */
export async function showPdfs() {
  const boxes = Array.prototype.slice.call(document.querySelectorAll(".ppdf"));
  if (!boxes.length) return;
  const MAX_PAGES = 30;              // 아주 긴 문서는 앞쪽까지만
  const V = "4.7.76";

  const asLink = (b, why) => {
    const url = b.dataset.pdf;
    b.querySelector(".ppdf-pages").innerHTML =
      `<div class="ppdf-msg">${why}<br><a href="${url}" target="_blank" rel="noopener">문서 열어보기 →</a></div>`;
  };

  // 브라우저는 화면에 보이지 않는 탭에서 그리기를 멈춥니다.
  // 그래서 「보이게 됐을 때」 · 「그 자리까지 내려왔을 때」를 기다렸다가 그립니다.
  const whenVisible = () => document.visibilityState === "visible" ? Promise.resolve()
    : new Promise(done => {
        const h = () => {
          if (document.visibilityState !== "visible") return;
          document.removeEventListener("visibilitychange", h);
          done();
        };
        document.addEventListener("visibilitychange", h);
      });
  const whenInView = (el) => new Promise(done => {
    if (typeof IntersectionObserver !== "function") return done();
    const io = new IntersectionObserver(es => {
      if (!es.some(e => e.isIntersecting)) return;
      io.disconnect(); done();
    }, { rootMargin: "600px" });
    io.observe(el);
  });

  let pdfjs;
  try {
    pdfjs = await import(`https://cdn.jsdelivr.net/npm/pdfjs-dist@${V}/build/pdf.min.mjs`);
    pdfjs.GlobalWorkerOptions.workerSrc = `https://cdn.jsdelivr.net/npm/pdfjs-dist@${V}/build/pdf.worker.min.mjs`;
  } catch (e) {
    boxes.forEach(b => asLink(b, "문서 보기 도구를 불러오지 못했습니다."));
    return;
  }

  for (const b of boxes) {
    const holder = b.querySelector(".ppdf-pages");
    try {
      await whenInView(b);
      await whenVisible();
      const doc = await pdfjs.getDocument({ url: b.dataset.pdf }).promise;
      const total = doc.numPages;
      const n = Math.min(total, MAX_PAGES);
      holder.innerHTML = "";
      const wide = Math.min(holder.clientWidth || 820, 900);
      const dpr = Math.min(window.devicePixelRatio || 1, 2);
      for (let i = 1; i <= n; i++) {
        await whenVisible();
        const page = await doc.getPage(i);
        const base = page.getViewport({ scale: 1 });
        const vp = page.getViewport({ scale: (wide / base.width) * dpr });
        const cv = document.createElement("canvas");
        cv.width = Math.floor(vp.width);
        cv.height = Math.floor(vp.height);
        cv.className = "ppdf-pg";
        await page.render({ canvasContext: cv.getContext("2d"), viewport: vp }).promise;
        // 쪽을 누르면 원본 PDF 가 새 창에서 그 쪽부터 열립니다 (거기서 확대해 보실 수 있습니다)
        const lnk = document.createElement("a");
        lnk.className = "ppdf-lnk";
        lnk.href = b.dataset.pdf + "#page=" + i;
        lnk.target = "_blank";
        lnk.rel = "noopener";
        lnk.title = `${i}쪽 — 눌러서 원본 크게 보기`;
        lnk.appendChild(cv);
        holder.appendChild(lnk);
      }
      if (total > n) {
        const more = document.createElement("div");
        more.className = "ppdf-msg";
        more.innerHTML = `모두 ${total}쪽 가운데 ${n}쪽까지 보여드립니다. ` +
          `<a href="${b.dataset.pdf}" target="_blank" rel="noopener">나머지 보기 →</a>`;
        holder.appendChild(more);
      }
    } catch (e) {
      asLink(b, "문서를 그림으로 바꾸지 못했습니다.");
    }
  }
}

/** 붙어 있는 파일 목록 */
function fileBox(list) {
  if (!Array.isArray(list) || !list.length) return "";
  const size = (n) => n >= 1048576 ? (n / 1048576).toFixed(1) + "MB"
                    : n >= 1024 ? Math.round(n / 1024) + "KB" : (n || 0) + "B";
  const rows = list.map(f => {
    // 저장된 이름은 영문·숫자뿐이라, 내려받을 때 원래 이름으로 돌려준다
    const { data } = sb.storage.from("board").getPublicUrl(f.path, { download: f.name });
    return `<a class="pfile" href="${data.publicUrl}" download="${esc(f.name)}" target="_blank" rel="noopener">` +
           `<span class="pfi">📎</span><span class="pfn">${esc(f.name)}</span>` +
           `<span class="pfs">${size(f.size)}</span></a>`;
  }).join("");
  return `<div class="pfiles"><div class="pft">첨부파일 ${list.length}개</div>${rows}</div>`;
}

export async function initPost(ORG) {
  const HOME = ORG === "YB" ? "/YB" : "/OB";


  // 게시판 이름 — board-core.js 의 CAT_YB 와 같게 맞춰 둡니다 (한쪽만 어긋나지 않도록)
  const CAT = { notice:"공지사항", free:"자유게시판", qna:"Q&A", jobs:"취업정보",
                parttime:"아르바이트", market:"벼룩시장",
                club:"소모임", major:"전공별모임", event:"행사", history:"활동 이력",
                mentoring:"멘토멘티(OB/YB)", suggest:"학생회에 바란다",
                exam:"수험생 게시판", career:"진학/취업 후기", counsel:"진로상담",
                scholarship:"장학정보" };

  // ── 큰 제목 : 지금 보고 있는 글이 속한 게시판 이름으로 ──
  // 글을 열면 "게시판"으로만 나와서 어디에 있는지 알 수 없던 것을 고칩니다
  const baseTitle = ORG === "YB" ? " | 도쿄대학 한국인학생회" : " | 재한 도쿄대학 총동문회";
  function setBoardTitle(c) {
    const n = CAT[c] || "";
    const name = !n ? "게시판" : (/게시판$/.test(n) ? n : n + " 게시판");
    const h1 = document.querySelector(".banner h1");
    if (h1) h1.textContent = name;
    document.title = name + baseTitle;
  }
  const id = new URLSearchParams(location.search).get("id");
  const box = document.getElementById("postBox");
  const user = await currentUser();
  if (user) {
    const el = document.getElementById("authLinks");
    el.innerHTML = "";
    const st = document.createElement("span");
    st.textContent = "[로그인중]"; st.style.color = "#7fc48a"; st.style.fontWeight = "700";
    const my = document.createElement("a");
    my.href = "/YB/auth/mypage.html"; my.textContent = "내 정보";
    const out = document.createElement("a");
    out.href = "#"; out.textContent = "로그아웃";
    out.addEventListener("click", async (e) => { e.preventDefault(); await sb.auth.signOut(); location.reload(); });
    el.append(st, my, out);
    // 로그인한 회원에게 — 제 소속의 사용통계
    {
      const sa = document.createElement("a");
      sa.href = "/YB/stats.html";
      sa.textContent = "사용통계";
      el.append(sa);
    }
  }

    // ── 밴드·페이스북에 공유 ──
  function setupShare(p) {
    const box = document.getElementById("share");
    if (!box || !p) return;
    const url = location.origin + HOME + "/post.html?id=" + p.id;
    const plain = String(p.content || "")
      .replace(/<[^>]*>/g, " ").replace(/\s{2,}/g, " ").trim().slice(0, 300);
    const body = `${p.title}

${plain}${plain.length >= 300 ? "…" : ""}

${url}`;
    const msg = document.getElementById("shMsg");

    document.getElementById("shInsta").addEventListener("click", () => {
      // 인스타그램은 글을 미리 채워 보낼 수 없어, 내용을 복사해 드립니다
      navigator.clipboard && navigator.clipboard.writeText(body).catch(() => {});
      msg.textContent = "글 내용을 복사했습니다. 인스타그램에서 붙여넣기(Ctrl+V) 하세요.";
      window.open("https://www.instagram.com/", "instaShare", "noopener");
    });
    document.getElementById("shFb").addEventListener("click", () => {
      // 페이스북은 본문을 미리 채울 수 없어, 주소를 함께 복사해 드립니다
      navigator.clipboard && navigator.clipboard.writeText(body).catch(() => {});
      msg.textContent = "글 내용을 복사했습니다. 페이스북 창에서 붙여넣기(Ctrl+V) 하세요.";
      window.open("https://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(url),
                  "fbShare", "width=600,height=640");
    });
    document.getElementById("shCopy").addEventListener("click", () => {
      navigator.clipboard.writeText(url).then(
        () => { msg.textContent = "주소를 복사했습니다."; },
        () => { msg.textContent = "복사하지 못했습니다: " + url; });
    });
  }

function escapeHtml(s){ return (s||"").replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c])); }
/** 글 안의 주소를 눌러서 갈 수 있게 바꾼다.
 *  글자는 먼저 안전하게 감싼 뒤에 주소만 골라 잇는다. */
function linkify(s) {
  const t = escapeHtml(s || "");
  return t.replace(
    /(https?:\/\/[^\s<>"']+|www\.[^\s<>"']+|[\w.+-]+@[\w-]+\.[\w.-]+)/g,
    (m) => {
      // 문장 끝의 마침표·괄호는 주소에서 뺀다
      let tail = "";
      const cut = m.match(/[.,;:)\]}>]+$/);
      if (cut) { tail = cut[0]; m = m.slice(0, -tail.length); }
      if (!m) return tail;
      if (m.indexOf("@") > -1 && m.indexOf("/") === -1)
        return `<a href="mailto:${m}">${m}</a>` + tail;
      const href = m.startsWith("http") ? m : "https://" + m;
      return `<a href="${href}" target="_blank" rel="noopener">${m}</a>` + tail;
    });
}

  const { data: p, error } = await sb.from("posts").select("*").eq("id", id).single();
  if (p && typeof p.images === "string") { try { p.images = JSON.parse(p.images); } catch (e) { p.images = null; } }
  if (p && typeof p.files === "string") { try { p.files = JSON.parse(p.files); } catch (e) { p.files = null; } }
  // 학생회 글이면 화면을 학생회 것으로 (초록 화면에 총동문회 메뉴가 남지 않도록)
  applyNav(ORG, ORG === "YB" ? "게시글 | 도쿄대학 한국인학생회"
                               : "게시글 | 재한 도쿄대학 총동문회");
  if (p && p.category) setBoardTitle(p.category);   // applyNav 다음에 불러야 제목이 덮이지 않습니다
  // 제 쪽 회원만 — 다른 단체 회원께는 누구나 보는 글만 보여드립니다
  const meP = user ? await myProfile() : null;
  const mtype = (meP && meP.member_type) || "";
  const isGuest = mtype === "GUEST";                 // 도쿄대 출신이 아닌 준회원
  const GUEST_CATS = ["notice", "exam"];             // 준회원께 열어드리는 곳
  const side = mtype === "YB" ? "YB" : "OB";
  // 준회원은 공지사항·수험생 게시판만, 그 밖의 분은 제 단체 글만
  const otherOrg = !!(meP && !meP.is_admin &&
    (isGuest ? !GUEST_CATS.includes((p && p.category) || "") : side !== ORG));
  if (p && otherOrg && p.visibility !== "public") {
    box.innerHTML = '<div class="empty"><b>도쿄대학 한국인학생회</b> 회원 전용 글입니다.<br>' +
      '재한 도쿄대학 총동문회 회원께는 열려 있지 않습니다.<br><br>' +
      '<a class="btn dark" href="/OB/board.html">재한 도쿄대학 총동문회 게시판으로</a></div>';
    return;
  }
  if (error || !p) {
    box.innerHTML = '<div class="empty">글을 찾을 수 없거나 열람 권한이 없습니다.<br><br><a class="btn line" href="' + HOME + '/board.html">목록으로</a>' +
      (user ? "" : ' <a class="btn dark" href="/YB/auth/login.html">로그인</a>') + '</div>';
  } else {
    box.innerHTML = `
      <div>
        <span class="chip org-${p.org}">${p.org === "ALL" ? "공통" : p.org}</span>
        <span class="chip ${p.category}">${CAT[p.category] || p.category}</span>
      </div>
      <h2>${escapeHtml(p.title)}</h2>
      <div class="pmeta">${escapeHtml(p.author_name || "")} · ${p.created_at.slice(0,16).replace("T"," ")}</div>
      <div class="body">${linkify(p.content)}</div>
      ${(p.images && p.images.length)
          ? `<div class="pgal">${p.images.map(s => `<a href="${s}" target="_blank"><img src="${s}" alt=""></a>`).join("")}</div>`
          : (p.image_url ? `<div class="pgal"><a href="${p.image_url}" target="_blank"><img src="${p.image_url}" alt=""></a></div>` : "")}
      ${attachedImages(p.files)}
      ${attachedPdfs(p.files)}
      ${fileBox(p.files)}
      ${p.source_url ? `<div class="src"><a href="${p.source_url}" target="_blank" rel="noopener">원문 보기 →</a></div>` : ""}
      ${p.source === "facebook" ? '<div class="src">※ 페이스북 그룹에서 옮겨온 글입니다.</div>' :
        p.source === "band" ? '<div class="src">※ 네이버 밴드에서 옮겨온 글입니다.</div>' :
        p.source === "legacy" ? '<div class="src">※ (구)홈페이지 게시판에서 옮겨온 글입니다.</div>' : ""}
    `;
    showPdfs();                       // PDF 는 시간이 걸리므로 글을 먼저 보여주고 이어서 그린다
    setupShare(p);
    const meProfile = user ? await myProfile() : null;
    const canEdit = !!(user && (p.author_id === user.id || (meProfile && meProfile.is_admin)));
    if (canEdit) {
      document.getElementById("actions").style.display = "flex";
      // 운영진 : 이 글을 목록 맨 위 「알림」 으로 고정
      if (meProfile && meProfile.is_admin) {
        // 운영진 : 이 글을 다른 게시판으로 옮기기
        const mv = document.createElement("select");
        mv.className = "btn movecat";
        mv.title = "다른 게시판으로 옮기기";
        mv.innerHTML = '<option value="">↔ 이 글을 다른 게시판으로…</option>' +
          Object.entries(CAT).map(([k, v]) =>
            `<option value="${k}"${k === p.category ? " selected" : ""}>${v}</option>`).join("");
        mv.addEventListener("change", async () => {
          const to = mv.value;
          if (!to || to === p.category) return;
          if (!confirm(`이 글을 「${CAT[to]}」 게시판으로 옮길까요?`)) { mv.value = p.category; return; }
          mv.disabled = true;
          const { error } = await sb.from("posts").update({ category: to }).eq("id", p.id);
          mv.disabled = false;
          if (error) { alert("옮기지 못했습니다: " + error.message); mv.value = p.category; return; }
          location.href = "post.html?id=" + p.id;
        });
        document.getElementById("actions").appendChild(mv);

        const pin = document.createElement("button");
        pin.className = "btn pin" + (p.pinned ? " on" : "");
        pin.textContent = p.pinned ? "알림 고정 해제" : "알림으로 고정";
        pin.addEventListener("click", async () => {
          pin.disabled = true;
          const next = !p.pinned;
          const { error } = await sb.from("posts")
            .update({ pinned: next, pinned_at: next ? new Date().toISOString() : null })
            .eq("id", p.id);
          pin.disabled = false;
          if (error) {
            alert(/pinned/.test(error.message)
              ? "YB/board/sql/pinned_setup.sql 을 먼저 실행해주세요."
              : "바꾸지 못했습니다: " + error.message);
            return;
          }
          p.pinned = next;
          pin.textContent = next ? "알림 고정 해제" : "알림으로 고정";
          pin.classList.toggle("on", next);
        });
        document.getElementById("actions").appendChild(pin);
      }
      document.getElementById("editBtn").addEventListener("click", () => location.href = HOME + "/write.html?edit=" + p.id);
      document.getElementById("delBtn").addEventListener("click", async () => {
        if (!confirm("이 글을 삭제할까요?")) return;
        const { error: e } = await sb.from("posts").delete().eq("id", p.id);
        if (e) alert("삭제 실패: " + e.message); else location.href = HOME + "/board.html";
      });
    }

    // ─── 좋아요 ───
    {
      const bar = document.getElementById("share") || document.getElementById("actions");
      const btn = document.createElement("button");
      btn.className = "likebtn";
      btn.type = "button";
      let on = false, n = 0;
      const paint = () => {
        btn.innerHTML = heart(on) + "<span>좋아요</span>" +
                        (n ? `<span class="n">${n}</span>` : "");
        btn.classList.toggle("on", on);
      };
      paint();
      if (bar) bar.appendChild(btn);          // 공유 줄 오른쪽 끝에
      loadLikes("post", [p.id]).then(r => {
        n = r.n[String(p.id)] || 0;
        on = r.mine.has(String(p.id));
        paint();
      });
      btn.addEventListener("click", async () => {
        btn.disabled = true;
        const r = await toggleLike("post", p.id, on);
        btn.disabled = false;
        if (!r) return;
        on = r.on; n = r.n; paint();
      });
    }

    noteActivity("read", 1, p.id);      // 이 글을 읽은 것으로 (같은 글은 하루 한 번)

    // ─── 댓글 ───
    const wrap = document.getElementById("cmtWrap");
    const listEl = document.getElementById("cmtList");
    const formBox = document.getElementById("cmtFormBox");
    fixEnter(document.getElementById("cmtInput"));   // 한글 엔터 바로잡기
    wrap.style.display = "block";

    const profile = meProfile;
    const canWrite = !!(profile && profile.approved);

    if (!canWrite) {
      formBox.innerHTML = user
        ? '<div class="cmt-login">댓글 작성은 운영진 승인이 완료된 회원만 가능합니다. (현재: 승인 대기중)</div>'
        : '<div class="cmt-login">댓글을 작성하려면 로그인이 필요합니다. <a href="/YB/auth/login.html">로그인</a> · <a href="/YB/auth/signup.html">회원가입</a></div>';
    }

    async function loadComments() {
      const { data, error } = await sb.from("comments")
        .select("id,author_id,author_name,content,created_at")
        .eq("post_id", p.id).order("created_at", { ascending: true });
      if (error) {
        // 표가 아직 없으면 원인을 정확히 알려준다 (로그인 문제로 오해하지 않도록)
        const noTable = /schema cache|does not exist|relation .* does not exist/i.test(error.message || "");
        listEl.innerHTML = '<div class="cmt-empty">' + (noTable
          ? '댓글 기능이 아직 켜지지 않았습니다.<br>운영진이 <b>YB/board/sql/comments_setup.sql</b> 을 한 번 실행하면 바로 쓰실 수 있습니다.'
          : '댓글을 불러올 수 없습니다. 로그인 후 확인해주세요.') + '</div>';
        return;
      }
      document.getElementById("cmtCount").textContent = data.length;
      if (!data.length) { listEl.innerHTML = '<div class="cmt-empty">첫 댓글을 남겨보세요.</div>'; return; }
      const isMine  = (c) => !!(user && c.author_id === user.id);   // 수정은 본인 것만
      const canDrop = (c) => isMine(c) || !!(user && meProfile && meProfile.is_admin);
      listEl.innerHTML = data.map(c => `
        <div class="cmt" data-id="${c.id}">
          ${canDrop(c) ? `<button class="del" data-id="${c.id}">삭제</button>` : ""}
          ${isMine(c)  ? `<button class="edit" data-id="${c.id}">수정</button>` : ""}
          <div class="who">${escapeHtml(c.author_name || "회원")}<span class="when">${c.created_at.slice(0,16).replace("T"," ")}</span></div>
          <div class="body">${linkify(c.content)}</div>
        </div>`).join("");

      listEl.querySelectorAll(".del").forEach(b => b.addEventListener("click", async () => {
        if (!confirm("댓글을 삭제할까요?")) return;
        await sb.from("comments").delete().eq("id", b.dataset.id);
        loadComments();
      }));

      // 내가 쓴 댓글 고치기 — 그 자리에서 바로
      listEl.querySelectorAll(".edit").forEach(b => b.addEventListener("click", () => {
        const box = b.closest(".cmt");
        if (box.querySelector(".cmt-edit")) return;          // 이미 열려 있으면 그대로
        const c = data.find(x => String(x.id) === String(b.dataset.id));
        const body = box.querySelector(".body");
        body.style.display = "none";
        const wrapEd = document.createElement("div");
        wrapEd.className = "cmt-edit";
        const ta = document.createElement("textarea");
        ta.value = c.content;
        fixEnter(ta);
        const row = document.createElement("div");
        row.className = "cmt-edit-row";
        const save = document.createElement("button");
        save.className = "btn dark sm"; save.textContent = "저장";
        const cancel = document.createElement("button");
        cancel.className = "btn sm"; cancel.textContent = "취소";
        row.append(save, cancel);
        wrapEd.append(ta, row);
        body.after(wrapEd);
        ta.focus();

        const close = () => { wrapEd.remove(); body.style.display = ""; };
        cancel.addEventListener("click", close);
        save.addEventListener("click", async () => {
          const text = ta.value.trim();
          if (!text) { alert("내용을 입력해주세요."); return; }
          if (text === c.content) { close(); return; }
          save.disabled = true;
          const { error } = await sb.from("comments").update({ content: text }).eq("id", c.id);
          save.disabled = false;
          if (error) { alert("고치지 못했습니다: " + error.message); return; }
          loadComments();
        });
      }));
    }
    loadComments();

    if (canWrite) {
      document.getElementById("cmtSubmit").addEventListener("click", async () => {
        const input = document.getElementById("cmtInput");
        const msg = document.getElementById("cmtMsg");
        const text = input.value.trim();
        if (!text) return;
        const btn = document.getElementById("cmtSubmit");
        btn.disabled = true;
        const { error } = await sb.from("comments").insert({
          post_id: p.id, author_id: user.id, author_name: profile.name || "", content: text
        });
        btn.disabled = false;
        if (error) {
          msg.className = "msg err";
          msg.textContent = /schema cache|does not exist/i.test(error.message || "")
            ? "댓글 기능이 아직 켜지지 않았습니다 — 운영진이 YB/board/sql/comments_setup.sql 을 한 번 실행해주세요."
            : "등록 실패: " + error.message;
        }
        else { input.value = ""; msg.className = "msg"; msg.textContent = ""; noteActivity("comment", 1, p.id);
        loadComments(); }
      });
    }
  }
}
