-- ═══════════════════════════════════════════════════════════
-- 게시판 설정 (회원 시스템 SQL을 먼저 실행한 뒤 실행하세요)
-- Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

-- 승인된 회원인지 확인하는 함수
create or replace function public.is_approved()
returns boolean language sql security definer set search_path = public as
$$ select coalesce((select approved from public.profiles where id = auth.uid()), false) $$;

-- 관리자인지 확인하는 함수
create or replace function public.is_admin()
returns boolean language sql security definer set search_path = public as
$$ select coalesce((select is_admin from public.profiles where id = auth.uid()), false) $$;

-- 게시글 테이블
create table if not exists public.posts (
  id uuid primary key default gen_random_uuid(),
  author_id uuid references auth.users(id) on delete set null,
  author_name text not null default '',
  org text not null default 'OB' check (org in ('YB','OB','ALL')),
  category text not null default 'free' check (category in ('notice','free','news','jobs','market','condolence')),
  title text not null,
  content text not null default '',
  visibility text not null default 'members' check (visibility in ('public','members')),
  source text not null default '' , -- 예: 'facebook' (이전해온 글 표시용)
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.posts enable row level security;

-- 읽기: 공개글은 누구나, 회원전용 글은 승인 회원만
drop policy if exists "read posts" on public.posts;
create policy "read posts" on public.posts for select
  using (visibility = 'public' or public.is_approved());

-- 쓰기: 승인 회원만, 작성자는 본인
drop policy if exists "insert posts" on public.posts;
create policy "insert posts" on public.posts for insert
  with check (public.is_approved() and author_id = auth.uid());

-- 수정/삭제: 본인 글 또는 관리자
drop policy if exists "update posts" on public.posts;
create policy "update posts" on public.posts for update
  using (author_id = auth.uid() or public.is_admin());

drop policy if exists "delete posts" on public.posts;
create policy "delete posts" on public.posts for delete
  using (author_id = auth.uid() or public.is_admin());
