-- ═══════════════════════════════════════════════════════════
-- 「좋아요」 — 게시판 글과 갤러리 사진에 마음을 남깁니다
--   · 한 사람이 같은 글·사진에 한 번만 누를 수 있습니다 (다시 누르면 취소).
--   · 누른 수만 보이고, 누가 눌렀는지는 본인 것만 압니다.
--   · 승인된 회원만 누를 수 있고, 세는 것은 로그인한 회원 모두 봅니다.
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 자리 만들기 ──
--   kind : 'post'(게시판 글) 또는 'photo'(갤러리 사진)
--   ref  : 글 번호 또는 사진 번호 (글자로 담아 양쪽을 함께 씁니다)
create table if not exists public.likes (
  kind    text        not null check (kind in ('post', 'photo')),
  ref     text        not null,
  user_id uuid        not null references auth.users(id) on delete cascade,
  at      timestamptz not null default now(),
  primary key (kind, ref, user_id)
);

create index if not exists likes_kind_ref_idx on public.likes (kind, ref);

alter table public.likes enable row level security;

-- ── 2) 누가 무엇을 할 수 있는지 ──
drop policy if exists "read likes" on public.likes;
create policy "read likes" on public.likes
  for select using (public.is_approved());

drop policy if exists "add my like" on public.likes;
create policy "add my like" on public.likes
  for insert with check (user_id = auth.uid() and public.is_approved());

drop policy if exists "drop my like" on public.likes;
create policy "drop my like" on public.likes
  for delete using (user_id = auth.uid());

revoke all on public.likes from anon;
grant select, insert, delete on public.likes to authenticated;

-- ── 3) 몇 사람이 눌렀는지 세어 보는 창구 ──
drop view if exists public.like_counts;
create view public.like_counts as
select kind, ref, count(*) as n
  from public.likes
 group by kind, ref;

revoke all on public.like_counts from anon;
grant select on public.like_counts to authenticated;

-- ── 4) 확인 ──
select '좋아요 준비가 되었습니다.' as "확인";
