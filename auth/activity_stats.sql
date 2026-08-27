-- ═══════════════════════════════════════════════════════════
-- 회원 활동 기록 — 로그인 · 방문 · 글읽기 · 글쓰기 · 댓글 · 사진
--
--   무엇을 세는가
--     login   로그인 화면에서 실제로 로그인했을 때
--     visit   홈페이지를 열었을 때 (하루 한 번만)
--     read    게시글을 열어봤을 때 (같은 글은 하루 한 번)
--     post    글을 올렸을 때
--     comment 댓글을 달았을 때
--     photo   사진을 올렸을 때 (올린 장수만큼)
--
--   총점은 나중에 정하십니다.
--   activity_weights 표의 「weight」 값만 고치면 총점이 그대로 따라옵니다.
--   지금은 모두 1점이라 총점 = 활동을 모두 더한 수입니다.
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
--   (auth/login_stats.sql 을 이미 돌리셨다면 그 기록도 그대로 살립니다)
-- ═══════════════════════════════════════════════════════════

-- ── 1) 활동 한 건 한 건을 남길 표 ──
create table if not exists public.activity_events (
  id      bigserial primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  org     text,                       -- 그때의 소속 (OB · YB · GUEST)
  kind    text not null,              -- login · visit · read · post · comment · photo
  amount  int  not null default 1,    -- 사진처럼 여러 개를 한 번에 셀 때
  ref     text,                       -- 어느 글을 읽었는지 같은 표시 (겹침 막기용)
  at      timestamptz not null default now()
);
create index if not exists activity_at_idx   on public.activity_events (at desc);
create index if not exists activity_user_idx on public.activity_events (user_id, kind, at desc);

alter table public.activity_events enable row level security;

drop policy if exists "insert own activity" on public.activity_events;
create policy "insert own activity" on public.activity_events
  for insert with check (user_id = auth.uid());

drop policy if exists "read own activity" on public.activity_events;
create policy "read own activity" on public.activity_events
  for select using (user_id = auth.uid() or public.is_admin());

-- ── 2) 가중치 표 — 나중에 이 숫자만 고치면 총점이 바뀝니다 ──
create table if not exists public.activity_weights (
  kind   text primary key,
  label  text not null,
  weight numeric not null default 1,
  sort   int not null default 0
);

insert into public.activity_weights (kind, label, weight, sort) values
  ('login',   '로그인',      1, 1),
  ('visit',   '방문',        1, 2),
  ('read',    '글 읽기',     1, 3),
  ('comment', '댓글',        1, 4),
  ('post',    '글쓰기',      1, 5),
  ('photo',   '사진 올리기', 1, 6)
on conflict (kind) do nothing;

alter table public.activity_weights enable row level security;

drop policy if exists "read weights" on public.activity_weights;
create policy "read weights" on public.activity_weights for select using (true);

drop policy if exists "admin weights" on public.activity_weights;
create policy "admin weights" on public.activity_weights
  for all using (public.is_admin()) with check (public.is_admin());

-- ── 3) 홈페이지가 부르는 기록 함수 ──
--    같은 일을 짧은 사이에 여러 번 세지 않도록 걸러 줍니다.
--      visit  하루 한 번
--      read   같은 글은 하루 한 번
--      login  10분에 한 번
--      그 밖   그대로 셉니다 (글·댓글·사진은 한 일마다 세는 것이 맞습니다)
create or replace function public.note_activity(p_kind text, p_amount int default 1, p_ref text default null)
returns void
language plpgsql
security definer set search_path = public
as $$
declare
  uid  uuid := auth.uid();
  seen boolean;
begin
  if uid is null then return; end if;
  if p_kind not in ('login','visit','read','post','comment','photo') then return; end if;

  if p_kind = 'visit' then
    select exists(select 1 from public.activity_events
                   where user_id = uid and kind = 'visit' and at > now() - interval '1 day')
      into seen;
    if seen then return; end if;

  elsif p_kind = 'read' then
    select exists(select 1 from public.activity_events
                   where user_id = uid and kind = 'read'
                     and ref is not distinct from p_ref and at > now() - interval '1 day')
      into seen;
    if seen then return; end if;

  elsif p_kind = 'login' then
    select exists(select 1 from public.activity_events
                   where user_id = uid and kind = 'login' and at > now() - interval '10 minutes')
      into seen;
    if seen then return; end if;
  end if;

  insert into public.activity_events (user_id, org, kind, amount, ref)
  select uid, member_type, p_kind, greatest(coalesce(p_amount, 1), 1), p_ref
    from public.profiles where id = uid;

  -- 로그인은 회원 명단에도 그대로 적어둡니다 (예전 칸을 그대로 씁니다)
  if p_kind = 'login' then
    update public.profiles
       set login_count = coalesce(login_count, 0) + 1, last_login_at = now()
     where id = uid;
  end if;
end;
$$;

grant execute on function public.note_activity(text, int, text) to authenticated;

-- 예전 함수도 남겨 둡니다 (로그인 화면이 아직 이것을 부를 수 있어서)
create or replace function public.note_login()
returns void language plpgsql security definer set search_path = public as
$$ begin perform public.note_activity('login', 1, null); end; $$;
grant execute on function public.note_login() to authenticated;

-- ── 4) 예전 로그인 기록을 활동 기록으로 옮겨둡니다 ──
insert into public.activity_events (user_id, org, kind, amount, at)
select e.user_id, e.org, 'login', 1, e.at
  from public.login_events e
 where not exists (select 1 from public.activity_events a
                    where a.user_id = e.user_id and a.kind = 'login' and a.at = e.at);

-- ── 5) 사람마다 활동을 모아 보는 창구 (운영진만) ──
drop view if exists public.activity_score;
create view public.activity_score as
select e.user_id,
       max(e.org)                                              as org,
       sum(e.amount) filter (where e.kind = 'login')   as login_n,
       sum(e.amount) filter (where e.kind = 'visit')   as visit_n,
       sum(e.amount) filter (where e.kind = 'read')    as read_n,
       sum(e.amount) filter (where e.kind = 'post')    as post_n,
       sum(e.amount) filter (where e.kind = 'comment') as comment_n,
       sum(e.amount) filter (where e.kind = 'photo')   as photo_n,
       sum(e.amount * coalesce(w.weight, 1))           as score
  from public.activity_events e
  left join public.activity_weights w on w.kind = e.kind
 where public.is_admin() or e.user_id = auth.uid()
 group by e.user_id;

revoke all on public.activity_score from anon;
grant select on public.activity_score to authenticated;

-- ── 6) 확인 ──
select kind as "활동", label as "이름", weight as "가중치"
  from public.activity_weights order by sort;

select count(*) as "쌓인 활동 기록" from public.activity_events;
-- → 이제부터 회원이 홈페이지를 쓰실 때마다 하나씩 쌓입니다.
--   가중치를 바꾸시려면 회원 관리 화면 아래쪽 「활동 점수 기준」에서 고치시면 됩니다.

-- ═══════════════════════════════════════════════════════════
-- 회원이 보는 「사용통계」 창구
--   · 자기 소속 사람들만 보입니다 (OB 회원은 OB, YB 회원은 YB).
--   · 이름 · 활동 수 · 점수만 나갑니다. 이메일·전화번호는 담기지 않습니다.
--   · 운영진은 양쪽 모두 봅니다.
--   · 운영진 계정의 활동은 세지 않습니다 (관리하느라 드나든 것은 참여가 아니므로).
-- ═══════════════════════════════════════════════════════════

-- ── 사람별 순위 ──
drop view if exists public.activity_board;
create view public.activity_board as
select p.name                                           as name,
       p.member_type                                    as org,
       coalesce(sum(e.amount) filter (where e.kind='login'),   0) as login_n,
       coalesce(sum(e.amount) filter (where e.kind='visit'),   0) as visit_n,
       coalesce(sum(e.amount) filter (where e.kind='read'),    0) as read_n,
       coalesce(sum(e.amount) filter (where e.kind='comment'), 0) as comment_n,
       coalesce(sum(e.amount) filter (where e.kind='post'),    0) as post_n,
       coalesce(sum(e.amount) filter (where e.kind='photo'),   0) as photo_n,
       coalesce(sum(e.amount * coalesce(w.weight, 1)),         0) as score,
       (p.id = auth.uid())                              as is_me
  from public.profiles p
  join public.activity_events e on e.user_id = p.id
  left join public.activity_weights w on w.kind = e.kind
 where p.approved = true
   and coalesce(p.name, '') <> ''
   and p.is_admin = false                      -- 운영진 계정은 통계에서 뺍니다
   and public.is_approved()
   and (public.is_admin() or p.member_type = public.my_org())
 group by p.id, p.name, p.member_type;

-- ── 달별 흐름 ──
drop view if exists public.activity_month;
create view public.activity_month as
select to_char(date_trunc('month', e.at), 'YYYY-MM') as ym,
       p.member_type                                 as org,
       e.kind                                        as kind,
       sum(e.amount)                                 as n,
       count(distinct e.user_id)                     as people
  from public.activity_events e
  join public.profiles p on p.id = e.user_id
 where p.is_admin = false                     -- 운영진 계정은 통계에서 뺍니다
   and public.is_approved()
   and (public.is_admin() or p.member_type = public.my_org())
 group by 1, 2, 3;

revoke all on public.activity_board, public.activity_month from anon;
grant select on public.activity_board, public.activity_month to authenticated;

select '사용통계 창구까지 준비되었습니다.' as "확인";
