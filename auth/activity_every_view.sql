-- =========================================================
--  방문과 쪽 보기를 갈라 셉니다.
--
--   무엇이 문제였나
--     회원이 온종일 게시판을 눌러 보셔도 방문은 1로만 남았습니다.
--     홈페이지가 아니라 자료방 함수(note_activity)가 하루 한 번만
--     받아들이고 나머지는 조용히 버렸기 때문입니다.
--
--   어떻게 바뀌나
--     visit  다녀가신 한 차례        1점   (30분 안에 다시 오시면 같은 방문)
--     view   쪽을 하나 열어 보신 것  0.1점 (같은 쪽을 5초 안에 다시 여는 것만 거름)
--     read   같은 글은 30초에 한 번  1점
--     login  10분에 한 번            1점
--     글·댓글·사진은 예전 그대로 한 일마다 셉니다.
--
--   그러니
--     한 번 들르셔서 열 쪽을 보시면  1 + (0.1 x 10) = 2점
--     예전에는 무엇을 하시든 하루  1점이었습니다.
--
--   실행 : Supabase 대시보드 -> SQL Editor -> 붙여넣기 -> Run
--   ※ 여러 번 실행해도 안전합니다.
-- =========================================================


-- ── ① 「쪽 보기」를 새 활동으로 들입니다 ──
insert into public.activity_weights (kind, label, weight, sort) values
  ('view', '쪽 보기', 0.1, 3)
on conflict (kind) do update set label = excluded.label, sort = excluded.sort;

update public.activity_weights set weight = 0.1 where kind = 'view';
update public.activity_weights set weight = 1   where kind = 'visit';
update public.activity_weights set sort   = 4   where kind = 'read';
update public.activity_weights set sort   = 5   where kind = 'comment';
update public.activity_weights set sort   = 6   where kind = 'post';
update public.activity_weights set sort   = 7   where kind = 'photo';


-- ── ② 기록 함수 ──
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
  if p_kind not in ('login','visit','view','read','post','comment','photo') then return; end if;

  if p_kind = 'visit' then
    -- 다녀가신 한 차례. 30분 안에 다시 오시면 같은 방문으로 봅니다.
    select exists(select 1 from public.activity_events
                   where user_id = uid and kind = 'visit'
                     and at > now() - interval '30 minutes')
      into seen;
    if seen then return; end if;

  elsif p_kind = 'view' then
    -- 쪽마다 셉니다. 같은 쪽을 5초 안에 다시 여는 것만 거릅니다.
    select exists(select 1 from public.activity_events
                   where user_id = uid and kind = 'view'
                     and ref is not distinct from p_ref
                     and at > now() - interval '5 seconds')
      into seen;
    if seen then return; end if;

  elsif p_kind = 'read' then
    select exists(select 1 from public.activity_events
                   where user_id = uid and kind = 'read'
                     and ref is not distinct from p_ref
                     and at > now() - interval '30 seconds')
      into seen;
    if seen then return; end if;

  elsif p_kind = 'login' then
    select exists(select 1 from public.activity_events
                   where user_id = uid and kind = 'login'
                     and at > now() - interval '10 minutes')
      into seen;
    if seen then return; end if;
  end if;

  insert into public.activity_events (user_id, org, kind, amount, ref)
  select uid, member_type, p_kind, greatest(coalesce(p_amount, 1), 1), p_ref
    from public.profiles where id = uid;

  if p_kind = 'login' then
    update public.profiles
       set login_count = coalesce(login_count, 0) + 1, last_login_at = now()
     where id = uid;
  end if;
end;
$$;

grant execute on function public.note_activity(text, int, text) to authenticated;

-- ── ③ 창구에 「쪽 보기」 칸을 넣습니다 ──
drop view if exists public.activity_score;
create view public.activity_score as
select e.user_id,
       max(e.org)                                      as org,
       sum(e.amount) filter (where e.kind = 'login')   as login_n,
       sum(e.amount) filter (where e.kind = 'visit')   as visit_n,
       sum(e.amount) filter (where e.kind = 'view')    as view_n,
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

drop view if exists public.activity_board;
create view public.activity_board as
select p.name                                           as name,
       p.member_type                                    as org,
       coalesce(sum(e.amount) filter (where e.kind='login'),   0) as login_n,
       coalesce(sum(e.amount) filter (where e.kind='visit'),   0) as visit_n,
       coalesce(sum(e.amount) filter (where e.kind='view'),    0) as view_n,
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
   and (p.is_admin = false or p.id = auth.uid())
   and public.is_approved()
   and (public.is_admin() or p.member_type = public.my_org())
 group by p.id, p.name, p.member_type;

revoke all on public.activity_board from anon;
grant select on public.activity_board to authenticated;


-- ── ④ 오늘 다녀간 사람 ──
--   ※ 사람 수만 나갑니다. 이름도 이메일도 담기지 않습니다.
drop view if exists public.activity_today;
create view public.activity_today as
select p.member_type                                                     as org,
       count(distinct e.user_id) filter (
         where e.at >= date_trunc('day', now()))                         as today_people,
       count(*) filter (
         where e.at >= date_trunc('day', now()) and e.kind = 'view')     as today_views,
       count(distinct e.user_id) filter (
         where e.at >= date_trunc('day', now()) - interval '1 day'
           and e.at <  date_trunc('day', now()))                         as yesterday_people,
       count(distinct e.user_id) filter (
         where e.at >= now() - interval '7 days')                        as week_people,
       count(distinct e.user_id) filter (
         where e.at >= date_trunc('month', now()))                       as month_people
  from public.activity_events e
  join public.profiles p on p.id = e.user_id
 where public.is_approved()
   and (public.is_admin() or p.member_type = public.my_org())
 group by p.member_type;

revoke all on public.activity_today from anon;
grant select on public.activity_today to authenticated;


-- ── ⑤ 날짜별 다녀간 사람 (지난 기록 그대로 살립니다) ──
--   예전에도 「하루 한 번」은 남겨 두었으므로,
--   어느 날 몇 분이 다녀가셨는지는 지금까지 것을 그대로 셀 수 있습니다.
--   (다만 「그날 몇 쪽을 보셨는지」는 남기지 않았으므로 오늘부터 쌓입니다)
drop view if exists public.activity_daily;
create view public.activity_daily as
select (e.at at time zone 'Asia/Seoul')::date       as day,
       p.member_type                                as org,
       count(distinct e.user_id)                    as people,
       count(*) filter (where e.kind = 'view')      as views
  from public.activity_events e
  join public.profiles p on p.id = e.user_id
 where e.kind in ('visit', 'view', 'login')
   and p.is_admin = false
   and public.is_approved()
   and (public.is_admin() or p.member_type = public.my_org())
 group by 1, 2;

revoke all on public.activity_daily from anon;
grant select on public.activity_daily to authenticated;


-- ── ⑥ 확인 ──
select kind as "활동", label as "이름", weight as "가중치"
  from public.activity_weights order by sort;
select * from public.activity_today;
select day as "날짜", org as "소속", people as "다녀간 사람", views as "본 쪽"
  from public.activity_daily order by day desc limit 30;