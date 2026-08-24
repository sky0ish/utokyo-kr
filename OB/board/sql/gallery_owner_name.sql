-- ═══════════════════════════════════════════════════════════
-- 사진첩·사진에 「공유자(이름)」 · 「관리자」 표시하기
--   · 올린 사람 이름과, 운영진이 올린 것인지를 함께 저장합니다.
--   · 회원 명부(profiles)는 본인 것만 읽을 수 있어서, 다른 회원의 이름을
--     화면에서 바로 불러올 수 없습니다. 그래서 올릴 때 이름을 함께
--     적어 두는 방식으로 했습니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- (여러 번 실행해도 안전합니다)
-- ═══════════════════════════════════════════════════════════

alter table public.gallery_albums add column if not exists owner_name  text;
alter table public.gallery_albums add column if not exists owner_admin boolean not null default false;
alter table public.gallery_photos add column if not exists owner_name  text;
alter table public.gallery_photos add column if not exists owner_admin boolean not null default false;

-- 이미 만들어져 있는 사진첩 — 운영진이 만든 것은 '관리자', 회원이면 이름
update public.gallery_albums a
   set owner_name  = case when p.is_admin then '' else coalesce(p.name, '') end,
       owner_admin = p.is_admin
  from public.profiles p
 where a.created_by = p.id
   and coalesce(a.owner_name, '') = ''
   and a.owner_admin = false;

-- 이미 올라와 있는 사진도 같은 방식으로
update public.gallery_photos g
   set owner_name  = case when p.is_admin then '' else coalesce(p.name, '') end,
       owner_admin = p.is_admin
  from public.profiles p
 where g.created_by = p.id
   and coalesce(g.owner_name, '') = ''
   and g.owner_admin = false;

-- ── 확인용 ──
select album_key as 앨범, title as 제목,
       case when owner_admin then '관리자'
            when coalesce(owner_name, '') <> '' then '공유자(' || owner_name || ')'
            else '' end as 표시
  from public.gallery_albums
 order by event_date desc nulls last
 limit 100;
