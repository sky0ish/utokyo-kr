-- ═══════════════════════════════════════════════════════════
-- 게시판 「알림」 — 중요한 글을 목록 맨 위에 고정
--   · 운영진이 글 화면에서 [알림으로 고정] 을 누르면
--     그 게시판 목록 맨 앞에 「알림」 딱지와 함께 늘 보입니다.
--   · 총동문회(OB) · 학생회(YB) 게시판 모두 같습니다.
-- 실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--        (여러 번 실행해도 안전합니다)
-- ═══════════════════════════════════════════════════════════

alter table public.posts add column if not exists pinned boolean not null default false;
alter table public.posts add column if not exists pinned_at timestamptz;

create index if not exists posts_pinned_idx
  on public.posts (org, category, pinned, pinned_at desc);

-- 고정·해제는 운영진만 (기존 수정 권한 규칙에 이미 포함되어 있습니다)
-- 필요하면 아래로 확인하세요
--   select title, pinned, pinned_at from public.posts where pinned order by pinned_at desc;

-- ── 확인용 ──
select org as 소속, category as 분류, count(*) as 고정된글
  from public.posts
 where pinned
 group by org, category
 order by org, category;
