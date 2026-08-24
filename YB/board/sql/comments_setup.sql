-- ═══════════════════════════════════════════════════════════
-- 댓글 기능 설정 (board_setup.sql 실행 후 실행하세요)
-- Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

create table if not exists public.comments (
  id uuid primary key default gen_random_uuid(),
  post_id uuid not null references public.posts(id) on delete cascade,
  author_id uuid references auth.users(id) on delete set null,
  author_name text not null default '',
  content text not null,
  created_at timestamptz not null default now()
);

create index if not exists comments_post_idx on public.comments(post_id, created_at);

alter table public.comments enable row level security;

-- 읽기: 승인된 회원만 (게시글이 회원전용이므로 댓글도 동일 기준)
drop policy if exists "read comments" on public.comments;
create policy "read comments" on public.comments for select
  using (public.is_approved());

-- 작성: 승인된 회원 본인 명의로만
drop policy if exists "insert comments" on public.comments;
create policy "insert comments" on public.comments for insert
  with check (public.is_approved() and author_id = auth.uid());

-- 수정/삭제: 본인 또는 관리자
drop policy if exists "update comments" on public.comments;
create policy "update comments" on public.comments for update
  using (author_id = auth.uid() or public.is_admin());

drop policy if exists "delete comments" on public.comments;
create policy "delete comments" on public.comments for delete
  using (author_id = auth.uid() or public.is_admin());
