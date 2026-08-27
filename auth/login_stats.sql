-- ═══════════════════════════════════════════════════════════
-- 로그인 기록 남기기 · 월별/연별 통계
--
--   · profiles 에 「로그인 횟수」와 「마지막 로그인」을 적어둡니다.
--   · login_events 에 한 번 한 번을 남겨 월별·연별 그래프를 그립니다.
--   · 기록은 본인 계정으로만 남길 수 있고, 남의 기록은 운영진만 봅니다.
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 회원마다 세어둘 칸 ──
alter table public.profiles add column if not exists login_count  int not null default 0;
alter table public.profiles add column if not exists last_login_at timestamptz;

-- ── 2) 로그인 한 번 한 번을 남길 표 ──
create table if not exists public.login_events (
  id      bigserial primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  org     text,                                  -- 그때의 소속 (OB · YB · GUEST)
  at      timestamptz not null default now()
);
create index if not exists login_events_at_idx   on public.login_events (at desc);
create index if not exists login_events_user_idx on public.login_events (user_id, at desc);

alter table public.login_events enable row level security;

drop policy if exists "insert own login" on public.login_events;
create policy "insert own login" on public.login_events
  for insert with check (user_id = auth.uid());

drop policy if exists "read own login" on public.login_events;
create policy "read own login" on public.login_events
  for select using (user_id = auth.uid() or public.is_admin());

-- ── 3) 로그인할 때 홈페이지가 부르는 기록 함수 ──
--    같은 사람이 10분 안에 여러 번 들어와도 한 번으로 봅니다.
create or replace function public.note_login()
returns void
language plpgsql
security definer set search_path = public
as $$
declare
  uid  uuid := auth.uid();
  last timestamptz;
begin
  if uid is null then return; end if;

  select last_login_at into last from public.profiles where id = uid;
  if last is not null and last > now() - interval '10 minutes' then
    return;                                       -- 방금 세었으니 건너뜁니다
  end if;

  update public.profiles
     set login_count   = coalesce(login_count, 0) + 1,
         last_login_at = now()
   where id = uid;

  insert into public.login_events (user_id, org)
  select uid, member_type from public.profiles where id = uid;
end;
$$;

grant execute on function public.note_login() to authenticated;

-- ── 4) 월별 · 연별 통계 (운영진만 읽습니다) ──
drop view if exists public.login_stats_month;
create view public.login_stats_month as
select to_char(date_trunc('month', at), 'YYYY-MM') as ym,
       coalesce(org, '(없음)')                     as org,
       count(*)                                    as cnt,
       count(distinct user_id)                     as people
  from public.login_events
 where public.is_admin()
 group by 1, 2;

drop view if exists public.login_stats_year;
create view public.login_stats_year as
select to_char(date_trunc('year', at), 'YYYY') as y,
       coalesce(org, '(없음)')                 as org,
       count(*)                                as cnt,
       count(distinct user_id)                 as people
  from public.login_events
 where public.is_admin()
 group by 1, 2;

revoke all on public.login_stats_month, public.login_stats_year from anon;
grant select on public.login_stats_month, public.login_stats_year to authenticated;

-- ── 5) 확인 ──
select count(*) as "지금까지 쌓인 로그인 기록" from public.login_events;
-- → 0 이 나옵니다. 이제부터 로그인하실 때마다 하나씩 쌓입니다.
