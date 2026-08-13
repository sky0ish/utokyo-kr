// ─── 학생회 갤러리 공용 모듈 ──────────────────────────────────
// 분류 구성은 도쿄대학 한국인 학생회 홈페이지(tokyoksa.com) 갤러리 메뉴를 따랐고,
// 앨범·업로드 방식은 재한 도쿄대학 총동문회 갤러리와 동일합니다.
import { sb } from "../auth/auth.js";

export const CATS = [
  ["event2015", "행사 사진 및 동영상 (2015~)"],
  ["event",     "행사 사진 및 동영상"],
  ["general",   "일반 사진 및 동영상"],
];
export const CAT_NAME = Object.fromEntries(CATS);
const ALBUM_NAME = {
  event2015: "{y}년 행사", event: "{y}년 행사", general: "{y}년 사진",
};

const iso = (d) => (d || "").replace(/\./g, "-").slice(0, 10);

/** 회원이 올린 사진으로 연도별 앨범을 구성한다. */
export async function loadGallery() {
  let photos = [], custom = [], albumInfo = {}, ok = true;

  try {
    const [ph, al] = await Promise.all([
      sb.from("gallery_photos").select("*").eq("org", "YB"),
      sb.from("gallery_albums").select("*").eq("org", "YB"),
    ]);
    (ph.data || []).forEach(r => photos.push({
      key: `db:${r.id}`, kind: "db", id: r.id, cat: r.category,
      date: iso(r.taken_at), cap: r.caption || "", sort: r.sort || 0,
      album: r.album_key || null, owner: r.created_by,
      thumb: r.image_url, full: r.image_url, storage_path: r.storage_path,
    }));
    (al.data || []).forEach(a => {
      albumInfo[a.album_key] = a;
      if (String(a.album_key || "").startsWith("custom:")) custom.push(a);
    });
    if (ph.error || al.error) ok = false;
  } catch (e) {
    ok = false;
  }

  const map = new Map();
  for (const a of custom) {
    map.set(a.album_key, {
      key: a.album_key, cat: a.category || "general",
      year: (iso(a.event_date) || "").slice(0, 4) || "",
      title: a.title || "사진첩", custom: true, owner: a.created_by,
      ownerName: a.owner_name || "",
      sort: a.sort != null ? a.sort : 0,      // 순서는 행사 날짜로 정한다(위로 띄우지 않음)
      photos: [],
    });
  }
  for (const p of photos) {
    if (p.album && map.has(p.album)) { map.get(p.album).photos.push(p); continue; }
    const y = (p.date || "").slice(0, 4) || "기타";
    const key = `${p.cat}|${y}`;
    if (!map.has(key)) {
      const ov = albumInfo[key] || {};
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
    // 올린 순서가 아니라 사진에 적힌 날짜를 기준으로 늘어놓는다
    a.photos.sort((x, y) => (y.date || "").localeCompare(x.date || "")
                         || (x.sort - y.sort)
                         || (x.key || "").localeCompare(y.key || ""));
    const newest = a.photos.reduce((m, p) => (p.date > m ? p.date : m), "");
    a.date = a.custom ? (iso((albumInfo[a.key] || {}).event_date) || newest) : newest;
    if (!a.year) a.year = (a.date || "").slice(0, 4);
  });
  // 앨범도 행사 날짜순(최신이 위). 날짜가 같을 때만 수동 배치순서를 따른다
  albums.sort((a, b) => (b.date || "").localeCompare(a.date || "")
                     || (a.sort - b.sort)
                     || (a.key || "").localeCompare(b.key || ""));

  const byCat = {};
  CATS.forEach(([c]) => byCat[c] = []);
  albums.forEach(a => (byCat[a.cat] = byCat[a.cat] || []).push(a));
  return { albums, byCat, photos, ok };
}
