-- ═══════════════════════════════════════════════════════════
--  방문을 「하루 한 번」이 아니라 「보신 만큼」 세도록 고칩니다.
--
--   무엇이 문제였나
--     회원이 온종일 게시판을 눌러 보셔도 방문은 1로만 남았습니다.
--     홈페이지가 아니라 자료방 함수(note_activity)가 하루 한 번만
--     받아들이고 나머지는 조용히 버렸기 때문입니다.
--
--   어떻게 바뀌나
--     visit  쪽(주소)마다 셉니다. 같은 쪽을 5초 안에 다시 열 때만 거릅니다.
--            (새로고침·한 쪽에서 두 번 부르는 것을 막기 위한 최소한입니다)
--     read   같은 글은 30초에 한 번  (예전에는 하루 한 번)
--     login  10분에 한 번            (그대로)
--     글·댓글·사진은 예전 그대로 한 일마다 셉니다.
--
--   ※ 방문 가중치는 1 그대로 둡니다.
--   ※ 「오늘 다녀간 사람」을 세는 창구도 함께 만듭니다.
--
--   실행 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

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
    -- 같은 쪽을 5초 안에 다시 여는 것만 거릅니다 (새로고침·중복 호출)
    select exists(select 1 from public.activity_events
                   where user_id = uid and kind = 'visit'
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

-- 방문 가중치는 1 그대로
update public.activity_weights set weight = 1 where kind = 'visit';


-- ── 오늘 다녀간 사람 ──
--   오늘 홈페이지를 열어 보신 회원이 몇 분인지 셉니다.
--   어제 · 이번 주 · 이번 달도 함께 봅니다.
--   ※ 사람 수만 나갑니다. 이름도 이메일도 담기지 않습니다.
drop view if exists public.activity_today;
create view public.activity_today as
select p.member_type                                                     as org,
       count(distinct e.user_id) filter (
         where e.at >= date_trunc('day', now()))                         as today_people,
       count(*) filter (
         where e.at >= date_trunc('day', now()))                         as today_views,
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


-- ── 확인 ──
select kind as "활동", label as "이름", weight as "가중치"
  from public.activity_weights order by sort;
select * from public.activity_today;
