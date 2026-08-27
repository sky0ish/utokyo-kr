// ─── 게시판 글쓰기 화면 (총동문회 OB · 학생회 YB 공용 엔진) ────────
// 화면 파일은 OB/ · YB/ 폴더에 따로 두고, 동작은 이 파일 하나를 함께 씁니다.
import { sb, currentUser, myProfile, noteActivity, fixEnter } from "/OB/auth/auth.js";
import { applyNav } from "/OB/board/nav.js?v=10";
import { boardInfo, tagInfo } from "/OB/board/board-info.js?v=103";

export async function initWrite(ORG) {
  const HOME = ORG === "YB" ? "/YB" : "/OB";


  const topMsg = document.getElementById("topMsg");
  const form = document.getElementById("postForm");
  const editId = new URLSearchParams(location.search).get("edit");
  const preOrg = new URLSearchParams(location.search).get("org");

  const user = await currentUser();
  if (!user) { location.href = "/OB/auth/login.html"; }
  const profile = await myProfile();

  // 상단바: 로그인 상태 + 로그아웃
  {
    const el = document.getElementById("authLinks");
    el.innerHTML = "";
    const st = document.createElement("span");
    st.textContent = "[로그인중]"; st.style.color = "#7fc48a"; st.style.fontWeight = "700";
    const my = document.createElement("a");
    my.href = "/OB/auth/mypage.html";
    my.textContent = (profile && profile.name) ? profile.name + "님" : "내 정보";
    const out = document.createElement("a");
    out.href = "#"; out.textContent = "로그아웃";
    out.addEventListener("click", async (e) => { e.preventDefault(); await sb.auth.signOut(); location.href = HOME + "/board.html"; });
    el.append(st, my, out);
  }

  if (!profile || !profile.approved) {
    topMsg.className = "msg err";
    topMsg.textContent = "글쓰기는 운영진 승인이 완료된 회원만 가능합니다. (현재: 승인 대기중)";
  } else {
    form.style.display = "block";

    // OB/YB 탭 — 주소의 org 우선, 없으면 회원 소속
    let org = (preOrg === "YB" || preOrg === "OB") ? preOrg
            : (profile.member_type === "YB" ? "YB" : "OB");
    const orgTabs = document.querySelectorAll("#orgTabs a");
    function setOrg(v) {
      org = v;
      orgTabs.forEach(a => a.classList.toggle("on", a.dataset.org === v));
    }
    setOrg(org);
    orgTabs.forEach(a => a.addEventListener("click", (e) => { e.preventDefault(); setOrg(a.dataset.org); }));

    // 게시판 분류 · 말머리 선택 (조직별)
    const CATS_OB = { free:"자유게시판", club:"소모임", mentoring:"멘토멘티(OB/YB)", forum:"포럼·세미나", promo:"홍보·채용", condolence:"경조사", notice:"공지사항" };
    const CATS_YB = { notice:"공지사항", free:"자유게시판", qna:"Q&A", jobs:"취업정보", parttime:"아르바이트", market:"벼룩시장",
                      mentoring:"멘토멘티(OB/YB)" };
    const CATS = ORG === "YB" ? CATS_YB : CATS_OB;

    const TAGS_OB = {
      free: ["일상", "질문", "정보공유", "후기", "기타"],
      club: ["운영진", "골프", "등산", "전공별", "친목", "기타"],
      mentoring: ["멘토 모집", "멘티 모집", "진로상담", "취업후기", "구인",
                  "만남의 광장", "유학", "운영관리", "기타"],
      promo: ["저서", "논문·연구", "상품", "기업", "채용", "행사", "기타"],
      condolence: ["부고", "결혼", "출산", "축하", "기타"],
      notice: ["총회", "회비", "행사", "안내", "기타"],
      forum: ["건축학", "농학생명", "공학", "인문사회", "약학", "의학",
              "세미나", "학술", "산업", "한일교류", "기타"]
    };
    const TAGS_YB = {
      notice: ["학생회", "행사", "장학", "안내"],
      free: ["일상", "질문", "정보공유", "후기"],
      qna: ["입학", "비자·체류", "생활", "학업", "기타"],
      jobs: ["신입", "경력", "인턴", "설명회"],
      parttime: ["단기", "장기", "과외", "번역·통역"],
      market: ["삽니다", "팝니다", "나눔", "구합니다"],
      mentoring: ["멘토 모집", "멘티 모집", "진로상담", "유학"]
    };
    const TAGS = ORG === "YB" ? TAGS_YB : TAGS_OB;

    // 분류 버튼 다시 그리기
    document.getElementById("catPick").innerHTML =
      Object.entries(CATS).map(([k, v]) => `<a href="#" data-v="${k}">${v}</a>`).join("");
    applyNav(ORG, ORG === "YB" ? "글쓰기 | 도쿄대학 한국인학생회"
                              : "글쓰기 | 재한 도쿄대학 총동문회");
    fixEnter(document.getElementById("content"));   // 한글 엔터 바로잡기
    let category = "free", headTag = "";
    const catPick = document.getElementById("catPick");
    const tagPick = document.getElementById("tagPick");

    /** 이 게시판·말머리가 무엇을 받는 곳인지 알려준다 */
    function sayWhatFor() {
      const el = document.getElementById("whatFor");
      if (!el) return;
      const bd = boardInfo(category);
      const tg = headTag ? tagInfo(category, headTag) : "";
      el.innerHTML = (bd ? `<b>${CATS[category] || ""}</b> — ${bd}` : "") +
        (tg ? `<br><b>[${headTag}]</b> ${tg}` : "");
    }

    function renderTags() {
      const list = TAGS[category] || [];
      sayWhatFor();
      tagPick.classList.toggle("need", !headTag);   // 미선택 시 연초록 강조
      tagPick.innerHTML = list.map(t => `<a href="#" data-v="${t}"${t === headTag ? ' class="on"' : ''}>${t}</a>`).join("");
      tagPick.querySelectorAll("a").forEach(a => a.addEventListener("click", e => {
        e.preventDefault();
        headTag = (headTag === a.dataset.v) ? "" : a.dataset.v;   // 다시 누르면 해제
        renderTags();
      }));
    }
    const PUBLIC_CATS = ORG === "YB" ? ["notice", "jobs", "parttime"] : ["notice", "promo", "condolence"];
    function setCat(v) {
      category = v;
      catPick.querySelectorAll("a").forEach(a => a.classList.toggle("on", a.dataset.v === v));
      if (!(TAGS[category] || []).includes(headTag)) headTag = "";
      renderTags();
      const vi = document.getElementById("visInfo");
      if (vi) vi.value = PUBLIC_CATS.includes(category) ? "전체 공개 (공지사항·홍보·경조사)" : "회원 전용";
    }
    catPick.querySelectorAll("a").forEach(a => a.addEventListener("click", e => { e.preventDefault(); setCat(a.dataset.v); }));

    const preCat = new URLSearchParams(location.search).get("cat");
    setCat(CATS[preCat] ? preCat : Object.keys(CATS)[0]);

    // ── 파일 첨부 ──
    let files = [];                              // 이미 올라간 것 {name,path,size,type}
    let picked = [];                             // 이번에 새로 고른 것 (File)
    const fdrop = document.getElementById("fdrop");
    const fInput = document.getElementById("files");
    const flist = document.getElementById("flist");
    const sizeText = (n) => n >= 1048576 ? (n / 1048576).toFixed(1) + "MB"
                          : n >= 1024 ? Math.round(n / 1024) + "KB" : n + "B";

    function drawFiles() {
      if (!flist) return;
      const rows = files.map((f, i) =>
        `<div class="fitem"><span class="fn">${f.name}</span>` +
        `<span class="fs">${sizeText(f.size || 0)}</span>` +
        `<button type="button" class="fx" data-k="old" data-i="${i}" title="빼기">✕</button></div>`)
        .concat(picked.map((f, i) =>
        `<div class="fitem"><span class="fn">${f.name}</span>` +
        `<span class="fs">${sizeText(f.size)}</span>` +
        `<button type="button" class="fx" data-k="new" data-i="${i}" title="빼기">✕</button></div>`));
      flist.innerHTML = rows.join("");
      flist.querySelectorAll(".fx").forEach(b => b.addEventListener("click", () => {
        const i = +b.dataset.i;
        if (b.dataset.k === "old") files.splice(i, 1); else picked.splice(i, 1);
        drawFiles();
      }));
    }
    function addFiles(list) {
      for (const f of list) {
        if (f.size > 26214400) { alert(`${f.name} 은 25MB 가 넘어 넣을 수 없습니다.`); continue; }
        if (!picked.some(x => x.name === f.name && x.size === f.size)) picked.push(f);
      }
      drawFiles();
    }
    if (fdrop) {
      fdrop.addEventListener("click", () => fInput.click());
      fInput.addEventListener("change", () => { addFiles(fInput.files); fInput.value = ""; });

      // 파일을 끌어오면 화면 어디에 놓아도 첨부되게 한다.
      // (창 전체에서 기본 동작을 막지 않으면, 조금만 빗나가도 브라우저가 그 파일을 열어버립니다)
      const hasFile = (e) => {
        const t = e.dataTransfer && e.dataTransfer.types;
        return t && (Array.from(t).includes("Files"));
      };
      let over = 0;
      window.addEventListener("dragenter", (e) => {
        if (!hasFile(e)) return;
        e.preventDefault();
        if (++over === 1) fdrop.classList.add("on");
      });
      window.addEventListener("dragover", (e) => {
        if (!hasFile(e)) return;
        e.preventDefault();
        e.dataTransfer.dropEffect = "copy";
      });
      window.addEventListener("dragleave", (e) => {
        if (!hasFile(e)) return;
        if (--over <= 0) { over = 0; fdrop.classList.remove("on"); }
      });
      window.addEventListener("drop", (e) => {
        if (!hasFile(e)) return;
        e.preventDefault();
        over = 0; fdrop.classList.remove("on");
        addFiles(e.dataTransfer.files);
        fdrop.scrollIntoView({ behavior: "smooth", block: "center" });
      });

      // 화면을 캡처해서 붙여넣기(Ctrl+V) 해도 사진으로 첨부되게 한다.
      // 캡처한 그림은 이름이 없어서, 붙여넣은 날짜·시각으로 이름을 지어줍니다.
      window.addEventListener("paste", (e) => {
        const dt = e.clipboardData;
        if (!dt) return;
        const shots = Array.from(dt.files || [])
          .filter(f => f.type && f.type.indexOf("image/") === 0);
        if (!shots.length) return;
        e.preventDefault();
        const d = new Date();
        const two = (n) => String(n).padStart(2, "0");
        const stamp = `${d.getFullYear()}${two(d.getMonth() + 1)}${two(d.getDate())}-` +
                      `${two(d.getHours())}${two(d.getMinutes())}${two(d.getSeconds())}`;
        addFiles(shots.map((f, i) => {
          const ext = (f.type.split("/")[1] || "png").replace(/[^a-z0-9]/gi, "") || "png";
          const named = `캡처-${stamp}${shots.length > 1 ? "-" + (i + 1) : ""}.${ext}`;
          try { return new File([f], named, { type: f.type }); }
          catch (err) { return f; }          // 옛 브라우저에서는 원래 이름 그대로
        }));
        fdrop.scrollIntoView({ behavior: "smooth", block: "center" });
      });
    }

    /** 고른 파일을 올리고 첨부 목록을 돌려준다 */
    async function uploadPicked(msg) {
      const out = files.slice();
      for (let i = 0; i < picked.length; i++) {
        const f = picked[i];
        if (msg) msg.textContent = `파일 올리는 중… (${i + 1}/${picked.length}) ${f.name}`;
        // 저장공간은 파일 이름에 영문·숫자만 받습니다. 한글 이름은 여기서만 바꾸고,
        // 화면에 보이는 이름(f.name)은 원래 그대로 남겨둡니다.
        const ext = (f.name.match(/\.([A-Za-z0-9]{1,8})$/) || [, "dat"])[1].toLowerCase();
        const path = `${org}/${Date.now()}-${Math.random().toString(36).slice(2, 10)}.${ext}`;
        const up = await sb.storage.from("board").upload(path, f, { cacheControl: "3600" });
        if (up.error) throw new Error(`${f.name} — ${up.error.message}`);
        out.push({ name: f.name, path, size: f.size, type: f.type || "" });
      }
      picked = [];
      return out;
    }

    // 수정 모드
    if (editId) {
      document.getElementById("pageTitle").textContent = "글 수정";
      const { data: p } = await sb.from("posts").select("*").eq("id", editId).single();
      if (p) {
        const m = (p.title || "").match(/^\s*\[([^\]]{1,12})\]\s*/);
        document.getElementById("title").value = m ? p.title.replace(m[0], "") : p.title;
        setOrg(p.org === "YB" ? "YB" : "OB");
        setCat(p.category);
        if (m && (TAGS[p.category] || []).includes(m[1].trim())) { headTag = m[1].trim(); renderTags(); }
        document.getElementById("content").value = p.content;
        let fs = p.files;
        if (typeof fs === "string") { try { fs = JSON.parse(fs); } catch (e) { fs = null; } }
        files = Array.isArray(fs) ? fs : [];
        drawFiles();
      }
    }

    form.addEventListener("submit", async (e) => {
      e.preventDefault();
      const btn = document.getElementById("submitBtn");
      const msg = document.getElementById("msg");
      if (!headTag) {
        msg.className = "msg err";
        msg.textContent = "말머리를 선택해주세요.";
        document.getElementById("tagPick").scrollIntoView({ behavior: "smooth", block: "center" });
        return;
      }
      btn.disabled = true;
      msg.className = "msg";
      let attached;
      try {
        attached = await uploadPicked(msg);
      } catch (err) {
        btn.disabled = false;
        msg.className = "msg err";
        msg.textContent = "파일을 올리지 못했습니다: " + err.message +
          " — OB/board/sql/post_files.sql 을 실행하셨는지 확인해주세요.";
        return;
      }
      msg.textContent = "";
      const rawTitle = document.getElementById("title").value.trim();
      const row = {
        title: (headTag ? `[${headTag}] ` : "") + rawTitle,
        org: org,
        category: category,
        visibility: PUBLIC_CATS.includes(category) ? "public" : "members",
        content: document.getElementById("content").value,
        files: attached.length ? attached : null,
      };
      let res;
      if (editId) {
        res = await sb.from("posts").update({ ...row, updated_at: new Date().toISOString() }).eq("id", editId).select("id").single();
      } else {
        res = await sb.from("posts").insert({ ...row, author_id: user.id, author_name: profile.name || "" }).select("id").single();
        if (!res.error) noteActivity("post", 1, res.data && res.data.id);
      }
      btn.disabled = false;
      if (res.error) {
        msg.className = "msg err"; msg.textContent = "등록 실패: " + res.error.message;
      } else {
        location.href = HOME + "/post.html?id=" + res.data.id;
      }
    });
  }
}
