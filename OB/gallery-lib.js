// ─── 갤러리 공용 모듈 ──────────────────────────────────────
// 기본 제공 사진(gallery-data.js) + 관리자가 올린 사진/수정 내역(Supabase)을 합쳐
// 연도별 앨범 목록을 만든다. gallery / album / admin 페이지가 함께 사용한다.
import { sb } from "../auth/auth.js";

export const CATS = [
  ["assembly", "총회"],
  ["club",     "소모임"],
  ["faculty",  "단과대모임"],
  ["forum",    "포럼·세미나"],
  ["old",      "옛날사진"],
  ["daily",    "일상"],
  ["etc",      "기타"],
];
export const CAT_NAME = Object.fromEntries(CATS);
const ALBUM_NAME = {
  assembly: "{y}년도 정기총회", club: "{y}년 소모임", faculty: "{y}년 단과대 모임",
  forum: "{y}년 포럼·세미나", old: "{y}년 동문회 행사", daily: "{y}년 동문회 활동",
  etc: "{y}년 행사 자료",
};
const BASE = "../images/gallery/";

const iso = (d) => (d || "").replace(/\./g, "-").slice(0, 10);

/** 기본 제공 사진을 평평한 목록으로 */
function staticPhotos() {
  const G = window.GALLERY || {};
  const out = [];
  for (const [cat, albums] of Object.entries(G)) {
    albums.forEach(alb => alb.p.forEach((p, i) => out.push({
      key: `${cat}/${p.k}`, kind: "static", cat,
      date: iso(p.d), cap: p.c || alb.t, sort: i,
      thumb: `${BASE}${cat}/${p.k}_t.jpg`, full: `${BASE}${cat}/${p.k}.jpg`,
    })));
  }
  return out;
}

/**
 * 합쳐진 앨범 목록을 돌려준다.
 * @returns {{albums: Array, byCat: Object, photos: Array, ok: boolean}}
 */
export async function loadGallery() {
  let photos = staticPhotos();
  let albumTitles = {}, custom = [], ok = true;

  try {
    const [ph, ov, al] = await Promise.all([
      sb.from("gallery_photos").select("*"),
      sb.from("gallery_overrides").select("*"),
      sb.from("gallery_albums").select("*"),
    ]);
    // 기본 사진 수정 내역 적용
    const ovMap = new Map((ov.data || []).map(o => [o.photo_key, o]));
    photos = photos.filter(p => {
      const o = ovMap.get(p.key);
      if (!o) return true;
      if (o.hidden) return false;
      if (o.category) p.cat = o.category;
      if (o.taken_at) p.date = iso(o.taken_at);
      if (o.caption != null) p.cap = o.caption;
      if (o.sort != null) p.sort = o.sort;
      return true;
    });
    // 회원이 올린 사진
    (ph.data || []).forEach(r => photos.push({
      key: `db:${r.id}`, kind: "db", id: r.id, cat: r.category,
      date: iso(r.taken_at), cap: r.caption || "", sort: r.sort || 0,
      album: r.album_key || null, owner: r.created_by,
      thumb: r.image_url, full: r.image_url, storage_path: r.storage_path,
    }));
    (al.data || []).forEach(a => {
      albumTitles[a.album_key] = a;
      if (String(a.album_key || "").startsWith("custom:")) custom.push(a);
    });
    if (ph.error || ov.error || al.error) ok = false;
  } catch (e) {
    ok = false;   // 접속 실패 시 기본 사진만 표시
  }

  const map = new Map();
  // 회원이 직접 만든 사진첩 (사진이 없어도 목록에 보이도록 먼저 등록)
  for (const a of custom) {
    map.set(a.album_key, {
      key: a.album_key, cat: a.category || "etc",
      year: (iso(a.event_date) || "").slice(0, 4) || "",
      title: a.title || "사진첩", custom: true, owner: a.created_by,
      sort: a.sort != null ? a.sort : -1,     // 직접 만든 사진첩을 위로
      photos: [],
    });
  }
  // 나머지는 분류 + 연도로 묶기
  for (const p of photos) {
    if (p.album && map.has(p.album)) { map.get(p.album).photos.push(p); continue; }
    const y = (p.date || "").slice(0, 4) || "기타";
    const key = `${p.cat}|${y}`;
    if (!map.has(key)) {
      const ov = albumTitles[key] || {};
      map.set(key, {
        key, cat: p.cat, year: y,
        title: ov.title || (ALBUM_NAME[p.cat] || "{y}년").replace("{y}", y),
        sort: ov.sort != null ? ov.sort : 0,
        photos: [],
      });
    }
    map.get(key).photos.push(p);
  }
  const albums = [...map.values()];
  albums.forEach(a => {
    a.photos.sort((x, y) => (x.sort - y.sort) || (y.date || "").localeCompare(x.date || ""));
    const newest = a.photos.reduce((m, p) => (p.date > m ? p.date : m), "");
    if (a.custom) {
      const ov = albumTitles[a.key] || {};
      a.date = iso(ov.event_date) || newest;
      a.year = a.year || (a.date || "").slice(0, 4);
    } else {
      a.date = newest;
    }
  });
  albums.sort((a, b) => (a.sort - b.sort) || (b.date || "").localeCompare(a.date || ""));

  const byCat = {};
  CATS.forEach(([c]) => byCat[c] = []);
  albums.forEach(a => (byCat[a.cat] = byCat[a.cat] || []).push(a));
  return { albums, byCat, photos, ok };
}
