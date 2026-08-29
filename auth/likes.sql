-- ═══════════════════════════════════════════════════════════
-- 「좋아요」 — 게시판 글과 갤러리 사진에 마음을 남깁니다
--   · 한 사람이 같은 글·사진에 한 번만 누를 수 있습니다 (다시 누르면 취소).
--   · 누른 수만 보이고, 누가 눌렀는지는 본인 것만 압니다.
--   · 승인된 회원만 누를 수 있고, 세는 것은 로그인한 회원 모두 봅니다.
--   · 좋아요를 받으면 「글쓴이」의 활동 점수가 1 오릅니다 (취소하면 내려갑니다).
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

-- ── 4) 좋아요를 받으면 글쓴이의 활동 점수가 오릅니다 ──
--   누른 사람이 아니라 「글을 쓴 사람」의 점수가 1 오릅니다.
--   좋아요를 취소하면 그 점수도 함께 내려갑니다.
--   제 글에 스스로 누른 것은 세지 않습니다.

insert into public.activity_weights (kind, label, weight, sort)
select 'liked', '좋아요 받음', 1, 7
 where not exists (select 1 from public.activity_weights where kind = 'liked');

create or replace function public.like_activity()
returns trigger language plpgsql security definer set search_path = public as
$$
declare author uuid; author_org text; the_ref text; the_kind text; liker uuid;
begin
  if TG_OP = 'INSERT' then
    the_kind := NEW.kind; the_ref := NEW.ref; liker := NEW.user_id;
  else
    the_kind := OLD.kind; the_ref := OLD.ref; liker := OLD.user_id;
  end if;

  -- 지금은 게시판 글만 셉니다 (갤러리 사진은 뺍니다)
  if the_kind <> 'post' then
    return case when TG_OP = 'INSERT' then NEW else OLD end;
  end if;

  select p.author_id into author from public.posts p where p.id::text = the_ref;
  if author is null then
    return case when TG_OP = 'INSERT' then NEW else OLD end;   -- 옮겨온 옛 글은 글쓴이가 없습니다
  end if;

  if TG_OP = 'INSERT' then
    if author = liker then return NEW; end if;                 -- 제 글에 스스로 누른 것
    select member_type into author_org from public.profiles where id = author;
    insert into public.activity_events (user_id, org, kind, amount, ref)
    values (author, author_org, 'liked', 1, the_ref);
    return NEW;
  else
    delete from public.activity_events
     where ctid = (select ctid from public.activity_events
                    where user_id = author and kind = 'liked' and ref = the_ref
                    limit 1);
    return OLD;
  end if;
end;
$$;

drop trigger if exists likes_activity_ins on public.likes;
create trigger likes_activity_ins after insert on public.likes
  for each row execute procedure public.like_activity();

drop trigger if exists likes_activity_del on public.likes;
create trigger likes_activity_del after delete on public.likes
  for each row execute procedure public.like_activity();

-- ── 5) 활동 점수 창구에 「좋아요 받음」을 더합니다 ──
drop view if exists public.activity_score;
create view public.activity_score as
select e.user_id,
       max(e.org)                                      as org,
       sum(e.amount) filter (where e.kind = 'login')   as login_n,
       sum(e.amount) filter (where e.kind = 'visit')   as visit_n,
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

-- ── 6) 확인 ──
select kind as "활동", label as "이름", weight as "가중치"
  from public.activity_weights order by sort;

select '좋아요 준비가 되었습니다.' as "확인";
