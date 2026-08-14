// ─── 게시판 글보기 화면 (총동문회 OB · 학생회 YB 공용 엔진) ────────
// 화면 파일은 OB/ · YB/ 폴더에 따로 두고, 동작은 이 파일 하나를 함께 씁니다.
import { sb, currentUser, myProfile } from "/auth/auth.js";
import { applyNav } from "/board/nav.js?v=2";

export async function initPost(ORG) {
  const HOME = ORG === "YB" ? "/YB" : "/OB";


  const CAT = { notice:"공지사항", free:"자유게시판", club:"소모임", jobs:"취업정보", mentoring:"멘토멘티", promo:"홍보·채용", condolence:"경조사",
                forum:"단과대포럼", seminar:"세미나",
                qna:"Q&A", parttime:"아르바이트", faculty:"단과대별", news:"동문소식", market:"벼룩시장" };
  const id = new URLSearchParams(location.search).get("id");
  const box = document.getElementById("postBox");
  const user = await currentUser();
  if (user) {
    const el = document.getElementById("authLinks");
    el.innerHTML = "";
    const st = document.createElement("span");
    st.textContent = "[로그인중]"; st.style.color = "#7fc48a"; st.style.fontWeight = "700";
    const my = document.createElement("a");
    my.href = "/auth/mypage.html"; my.textContent = "내 정보";
    const out = document.createElement("a");
    out.href = "#"; out.textContent = "로그아웃";
    out.addEventListener("click", async (e) => { e.preventDefault(); await sb.auth.signOut(); location.reload(); });
    el.append(st, my, out);
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

    document.getElementById("shBand").addEventListener("click", () => {
      window.open("https://band.us/plugin/share?body=" + encodeURIComponent(body)
                  + "&route=" + encodeURIComponent(url),
                  "bandShare", "width=500,height=640");
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

  const { data: p, error } = await sb.from("posts").select("*").eq("id", id).single();
  if (p && typeof p.images === "string") { try { p.images = JSON.parse(p.images); } catch (e) { p.images = null; } }
  // 학생회 글이면 화면을 학생회 것으로 (초록 화면에 총동문회 메뉴가 남지 않도록)
  applyNav(ORG, ORG === "YB" ? "게시글 | 도쿄대학 한국인학생회"
                               : "게시글 | 재한 도쿄대학 총동문회");
  if (error || !p) {
    box.innerHTML = '<div class="empty">글을 찾을 수 없거나 열람 권한이 없습니다.<br><br><a class="btn line" href="' + HOME + '/board.html">목록으로</a>' +
      (user ? "" : ' <a class="btn dark" href="/auth/login.html">로그인</a>') + '</div>';
  } else {
    box.innerHTML = `
      <div>
        <span class="chip org-${p.org}">${p.org === "ALL" ? "공통" : p.org}</span>
        <span class="chip ${p.category}">${CAT[p.category] || p.category}</span>
      </div>
      <h2>${escapeHtml(p.title)}</h2>
      <div class="pmeta">${escapeHtml(p.author_name || "")} · ${p.created_at.slice(0,16).replace("T"," ")}</div>
      <div class="body">${escapeHtml(p.content)}</div>
      ${(p.images && p.images.length)
          ? `<div class="pgal">${p.images.map(s => `<a href="${s}" target="_blank"><img src="${s}" alt=""></a>`).join("")}</div>`
          : (p.image_url ? `<div class="pgal"><a href="${p.image_url}" target="_blank"><img src="${p.image_url}" alt=""></a></div>` : "")}
      ${p.source_url ? `<div class="src"><a href="${p.source_url}" target="_blank" rel="noopener">원문 보기 →</a></div>` : ""}
      ${p.source === "facebook" ? '<div class="src">※ 페이스북 그룹에서 옮겨온 글입니다.</div>' :
        p.source === "band" ? '<div class="src">※ 네이버 밴드에서 옮겨온 글입니다.</div>' :
        p.source === "legacy" ? '<div class="src">※ (구)홈페이지 게시판에서 옮겨온 글입니다.</div>' : ""}
    `;
    setupShare(p);
    const meProfile = user ? await myProfile() : null;
    const canEdit = !!(user && (p.author_id === user.id || (meProfile && meProfile.is_admin)));
    if (canEdit) {
      document.getElementById("actions").style.display = "flex";
      document.getElementById("editBtn").addEventListener("click", () => location.href = HOME + "/write.html?edit=" + p.id);
      document.getElementById("delBtn").addEventListener("click", async () => {
        if (!confirm("이 글을 삭제할까요?")) return;
        const { error: e } = await sb.from("posts").delete().eq("id", p.id);
        if (e) alert("삭제 실패: " + e.message); else location.href = HOME + "/board.html";
      });
    }

    // ─── 댓글 ───
    const wrap = document.getElementById("cmtWrap");
    const listEl = document.getElementById("cmtList");
    const formBox = document.getElementById("cmtFormBox");
    wrap.style.display = "block";

    const profile = meProfile;
    const canWrite = !!(profile && profile.approved);

    if (!canWrite) {
      formBox.innerHTML = user
        ? '<div class="cmt-login">댓글 작성은 운영진 승인이 완료된 회원만 가능합니다. (현재: 승인 대기중)</div>'
        : '<div class="cmt-login">댓글을 작성하려면 로그인이 필요합니다. <a href="/auth/login.html">로그인</a> · <a href="/auth/signup.html">회원가입</a></div>';
    }

    async function loadComments() {
      const { data, error } = await sb.from("comments")
        .select("id,author_id,author_name,content,created_at")
        .eq("post_id", p.id).order("created_at", { ascending: true });
      if (error) {
        // 표가 아직 없으면 원인을 정확히 알려준다 (로그인 문제로 오해하지 않도록)
        const noTable = /schema cache|does not exist|relation .* does not exist/i.test(error.message || "");
        listEl.innerHTML = '<div class="cmt-empty">' + (noTable
          ? '댓글 기능이 아직 켜지지 않았습니다.<br>운영진이 <b>board/comments_setup.sql</b> 을 한 번 실행하면 바로 쓰실 수 있습니다.'
          : '댓글을 불러올 수 없습니다. 로그인 후 확인해주세요.') + '</div>';
        return;
      }
      document.getElementById("cmtCount").textContent = data.length;
      if (!data.length) { listEl.innerHTML = '<div class="cmt-empty">첫 댓글을 남겨보세요.</div>'; return; }
      listEl.innerHTML = data.map(c => `
        <div class="cmt">
          ${user && (c.author_id === user.id || (meProfile && meProfile.is_admin)) ? `<button class="del" data-id="${c.id}">삭제</button>` : ""}
          <div class="who">${escapeHtml(c.author_name || "회원")}<span class="when">${c.created_at.slice(0,16).replace("T"," ")}</span></div>
          <div class="body">${escapeHtml(c.content)}</div>
        </div>`).join("");
      listEl.querySelectorAll(".del").forEach(b => b.addEventListener("click", async () => {
        if (!confirm("댓글을 삭제할까요?")) return;
        await sb.from("comments").delete().eq("id", b.dataset.id);
        loadComments();
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
            ? "댓글 기능이 아직 켜지지 않았습니다 — 운영진이 board/comments_setup.sql 을 한 번 실행해주세요."
            : "등록 실패: " + error.message;
        }
        else { input.value = ""; msg.className = "msg"; msg.textContent = ""; loadComments(); }
      });
    }
  }
}
