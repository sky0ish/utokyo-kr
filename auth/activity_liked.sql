-- =========================================================
--  창구에 「좋아요 받음」 칸을 되살립니다.
--
--   activity_every_view.sql 이 창구(activity_score · activity_board)를
--   다시 만들면서 좋아요 칸이 빠졌습니다. 기록 자체는 그대로 있으므로
--   창구만 고쳐 주면 숫자가 바로 돌아옵니다.
--   차례(sort)도 화면과 같게 맞춥니다.
--
--   실행 : Supabase 대시보드 -> SQL Editor -> 붙여넣기 -> Run
--   ※ 여러 번 실행해도 안전합니다.
-- =========================================================

-- ── ① 보이는 차례 ──
update public.activity_weights set sort = 1 where kind = 'login';
update public.activity_weights set sort = 2 where kind = 'visit';
update public.activity_weights set sort = 3 where kind = 'view';
update public.activity_weights set sort = 4 where kind = 'read';
update public.activity_weights set sort = 5 where kind = 'comment';
update public.activity_weights set sort = 6 where kind = 'post';
update public.activity_weights set sort = 7 where kind = 'photo';
update public.activity_weights set sort = 8 where kind = 'liked';


-- ── ② 내 활동 창구 ──
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
       sum(e.amount) filter (where e.kind = 'liked')   as liked_n,
       sum(e.amount * coalesce(w.weight, 1))           as score
  from public.activity_events e
  left join public.activity_weights w on w.kind = e.kind
 where public.is_admin() or e.user_id = auth.uid()
 group by e.user_id;

revoke all on public.activity_score from anon;
grant select on public.activity_score to authenticated;


-- ── ③ 순위 창구 ──
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
       coalesce(sum(e.amount) filter (where e.kind='liked'),   0) as liked_n,
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


-- ── ④ 확인 ──
select kind as "활동", label as "이름", weight as "가중치", sort as "차례"
  from public.activity_weights order by sort;
