// ─── 게시판 글쓰기 화면 (총동문회 OB · 학생회 YB 공용 엔진) ────────
// 화면 파일은 OB/ · YB/ 폴더에 따로 두고, 동작은 이 파일 하나를 함께 씁니다.
import { sb, currentUser, myProfile } from "/auth/auth.js";
import { applyNav } from "/board/nav.js?v=5";

export async function initWrite(ORG) {
  const HOME = ORG === "YB" ? "/YB" : "/OB";


  const topMsg = document.getElementById("topMsg");
  const form = document.getElementById("postForm");
  const editId = new URLSearchParams(location.search).get("edit");
  const preOrg = new URLSearchParams(location.search).get("org");

  const user = await currentUser();
  if (!user) { location.href = "/auth/login.html"; }
  const profile = await myProfile();

  // 상단바: 로그인 상태 + 로그아웃
  {
    const el = document.getElementById("authLinks");
    el.innerHTML = "";
    const st = document.createElement("span");
    st.textContent = "[로그인중]"; st.style.color = "#7fc48a"; st.style.fontWeight = "700";
    const my = document.createElement("a");
    my.href = "/auth/mypage.html";
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
    const CATS_OB = { free:"자유게시판", club:"소모임", mentoring:"멘토멘티", forum:"단과대포럼", seminar:"세미나", promo:"홍보·채용", condolence:"경조사", notice:"공지사항" };
    const CATS_YB = { notice:"공지사항", free:"자유게시판", qna:"Q&A", jobs:"취업정보", parttime:"아르바이트", market:"벼룩시장",
                      mentoring:"멘토멘티" };
    const CATS = ORG === "YB" ? CATS_YB : CATS_OB;

    const TAGS_OB = {
      free: ["일상", "질문", "정보공유", "후기"],
      club: ["골프", "등산", "전공별", "친목", "기타"],
      mentoring: ["멘토 모집", "멘티 모집", "진로상담", "유학"],
      promo: ["저서", "논문·연구", "상품", "기업", "채용", "행사"],
      condolence: ["부고", "결혼", "출산", "축하"],
      notice: ["총회", "회비", "행사", "안내"],
      forum: ["건축학", "농학생명", "공학", "인문사회", "약학", "의학", "기타"],
      seminar: ["학술", "산업", "한일교류", "기타"]
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
    let category = "free", headTag = "";
    const catPick = document.getElementById("catPick");
    const tagPick = document.getElementById("tagPick");

    function renderTags() {
      const list = TAGS[category] || [];
      tagPick.classList.toggle("need", !headTag);   // 미선택 시 연초록 강조
      tagPick.innerHTML = list.map(t => `<a href="#" data-v="${t}"${t === headTag ? ' class="on"' : ''}>${t}</a>`).join("");
      tagPick.querySelectorAll("a").forEach(a => a.addEventListener("click", e => {
        e.preventDefault();
        headTag = (headTag === a.dataset.v) ? "" : a.dataset.v;   // 다시 누르면 해제
        renderTags();
      }));
    }
    const PUBLIC_CATS = ORG === "YB" ? ["notice", "jobs", "parttime"] : ["notice", "promo"];
    function setCat(v) {
      category = v;
      catPick.querySelectorAll("a").forEach(a => a.classList.toggle("on", a.dataset.v === v));
      if (!(TAGS[category] || []).includes(headTag)) headTag = "";
      renderTags();
      const vi = document.getElementById("visInfo");
      if (vi) vi.value = PUBLIC_CATS.includes(category) ? "전체 공개 (공지사항·홍보)" : "회원 전용";
    }
    catPick.querySelectorAll("a").forEach(a => a.addEventListener("click", e => { e.preventDefault(); setCat(a.dataset.v); }));

    const preCat = new URLSearchParams(location.search).get("cat");
    setCat(CATS[preCat] ? preCat : Object.keys(CATS)[0]);

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
      const rawTitle = document.getElementById("title").value.trim();
      const row = {
        title: (headTag ? `[${headTag}] ` : "") + rawTitle,
        org: org,
        category: category,
        visibility: PUBLIC_CATS.includes(category) ? "public" : "members",
        content: document.getElementById("content").value,
      };
      let res;
      if (editId) {
        res = await sb.from("posts").update({ ...row, updated_at: new Date().toISOString() }).eq("id", editId).select("id").single();
      } else {
        res = await sb.from("posts").insert({ ...row, author_id: user.id, author_name: profile.name || "" }).select("id").single();
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
