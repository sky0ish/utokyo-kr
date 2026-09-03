-- ═══════════════════════════════════════════════════════════
--  글 바뀜 기록 — 「누가 · 언제 · 무엇을 · 무엇으로부터」
--
--  Supabase → whlove@gmail.com 계정 → 동문회 프로젝트 → SQL Editor
--
--  왜 필요한가
--    지금까지 posts 표에는 누가 고쳤는지 남는 칸이 없었습니다.
--    그래서 남지현 님이 고친 것과 학생회(YB) 운영진이 고친 것을
--    나중에 가릴 길이 없었습니다.
--
--    이제 글이 바뀌거나 지워질 때마다 **바뀌기 전 모습을 통째로** 남깁니다.
--    잘못 바뀐 글은 한 줄로 되돌릴 수 있습니다.
--
--        select public.posts_restore(123);      -- 123 은 기록 번호
--
--  ※ 지나간 일은 되살릴 수 없습니다. 오늘부터 쌓입니다.
--  ※ auth/org_wall_write.sql 을 먼저 돌려 주세요 (is_owner · updated_by 를 씁니다).
--  여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

begin;

-- ───────────────────────────────────────────────────────────
--  ① 기록표
--     old_row 에 바뀌기 전 줄을 통째로(jsonb) 담습니다 —
--     칸이 나중에 늘어도 기록이 새지 않습니다.
-- ───────────────────────────────────────────────────────────
create table if not exists public.posts_audit (
  id         bigserial primary key,
  post_id    uuid        not null,
  at         timestamptz not null default now(),
  action     text        not null check (action in ('update', 'delete')),

  -- 손댄 사람 — 그때 모습 그대로 박아 둡니다 (나중에 프로필이 바뀌어도 남게)
  by_id      uuid,
  by_email   text,
  by_name    text,
  by_side    text,                     -- 'OB' · 'YB'
  by_admin   boolean,
  by_owner   boolean,

  -- 무엇이 바뀌었는지 한눈에
  old_org      text,
  old_category text,
  old_title    text,
  new_org      text,
  new_category text,
  new_title    text,

  old_row    jsonb not null            -- 되돌릴 때 쓰는 원본
);

comment on table public.posts_audit is
  '글이 바뀌거나 지워지기 전 모습. posts_restore(기록번호) 로 되돌립니다';

create index if not exists posts_audit_post_idx on public.posts_audit (post_id, at desc);
create index if not exists posts_audit_at_idx   on public.posts_audit (at desc);
create index if not exists posts_audit_by_idx   on public.posts_audit (by_id, at desc);


-- ───────────────────────────────────────────────────────────
--  ② 남기는 손 — 글이 바뀌거나 지워질 때마다
-- ───────────────────────────────────────────────────────────
create or replace function public.posts_write_audit()
returns trigger language plpgsql security definer set search_path = public as $$
declare
  me public.profiles%rowtype;
begin
  select * into me from public.profiles where id = auth.uid();

  insert into public.posts_audit (
    post_id, action,
    by_id, by_email, by_name, by_side, by_admin, by_owner,
    old_org, old_category, old_title,
    new_org, new_category, new_title,
    old_row)
  values (
    old.id,
    lower(tg_op),
    auth.uid(), me.email, me.name,
    case when coalesce(me.member_type, 'OB') = 'YB' then 'YB' else 'OB' end,
    coalesce(me.is_admin, false),
    coalesce(me.is_owner, false),
    old.org, old.category, old.title,
    case when tg_op = 'UPDATE' then new.org      end,
    case when tg_op = 'UPDATE' then new.category end,
    case when tg_op = 'UPDATE' then new.title    end,
    to_jsonb(old));

  return null;                          -- after 트리거라 돌려줄 것이 없습니다
end $$;

drop trigger if exists posts_audit_update on public.posts;
create trigger posts_audit_update
  after update on public.posts
  for each row
  when (old.* is distinct from new.*)    -- 정말 바뀐 것만 남깁니다
  execute function public.posts_write_audit();

drop trigger if exists posts_audit_delete on public.posts;
create trigger posts_audit_delete
  after delete on public.posts
  for each row execute function public.posts_write_audit();


-- ───────────────────────────────────────────────────────────
--  ③ 되돌리기 — 주인만
--     글이 아직 있으면 옛 모습으로 되돌리고,
--     지워졌으면 되살립니다.
-- ───────────────────────────────────────────────────────────
create or replace function public.posts_restore(p_audit_id bigint)
returns text language plpgsql security definer set search_path = public as $$
declare
  a public.posts_audit%rowtype;
  n int;
begin
  if not public.is_owner() then
    raise exception '주인(남지현)만 되돌릴 수 있습니다.';
  end if;

  select * into a from public.posts_audit where id = p_audit_id;
  if not found then
    raise exception '그런 기록이 없습니다 — 번호 %', p_audit_id;
  end if;

  /* 글의 알맹이를 모두 되돌립니다 — 사진·붙임까지.
     누가 언제 썼는지(author_id·created_at)와 고침 자취(updated_*)는 건드리지 않습니다. */
  update public.posts p
     set org        = r.org,
         category   = r.category,
         title      = r.title,
         content    = r.content,
         visibility = r.visibility,
         image_url  = r.image_url,
         images     = r.images,
         files      = r.files,
         source_url = r.source_url
    from jsonb_populate_record(null::public.posts, a.old_row) r
   where p.id = a.post_id;
  get diagnostics n = row_count;

  if n > 0 then
    return '되돌렸습니다 — [' || coalesce(a.old_category, '') || '] ' ||
           coalesce(a.old_title, '');
  end if;

  -- 글이 없으면 지워진 것입니다. 통째로 되살립니다.
  insert into public.posts
  select * from jsonb_populate_record(null::public.posts, a.old_row);
  return '지워졌던 글을 되살렸습니다 — [' || coalesce(a.old_category, '') || '] ' ||
         coalesce(a.old_title, '');
end $$;

revoke all on function public.posts_restore(bigint) from public;
grant execute on function public.posts_restore(bigint) to authenticated;


-- ───────────────────────────────────────────────────────────
--  ④ 기록은 운영진만 봅니다. 아무도 손으로 못 씁니다.
--     (남기는 것은 위 트리거가 definer 권한으로 합니다)
-- ───────────────────────────────────────────────────────────
alter table public.posts_audit enable row level security;

drop policy if exists "read posts audit" on public.posts_audit;
create policy "read posts audit" on public.posts_audit for select
  using (
    public.is_owner()
    or (public.is_admin()
        and public.post_side(posts_audit.old_org) = public.my_side())
  );
--   insert · update · delete 규칙은 두지 않습니다 → 아무도 직접 못 건드립니다.

commit;


-- ═══════════════════════════════════════════════════════════
--  ⑤ 쓰는 법
-- ═══════════════════════════════════════════════════════════

-- ▸ 요즘 바뀐 글 (누가 손댔는지까지)
--     select * from public.posts_recent_changes limit 50;
create or replace view public.posts_recent_changes as
select a.id                                   as "기록번호",
       a.at                                   as "언제",
       a.action                               as "무엇을",
       coalesce(a.by_name, '(모름)')          as "누가",
       a.by_email                             as "이메일",
       a.by_side                              as "소속",
       case when a.by_owner then '주인'
            when a.by_admin then '운영진'
            else '회원' end                   as "자격",
       a.old_org                              as "글 소속",
       a.old_category || ' → ' || coalesce(a.new_category, '(지움)') as "게시판",
       left(coalesce(a.old_title, ''), 50)    as "고치기 전 제목",
       left(coalesce(a.new_title, ''), 50)    as "고친 뒤 제목"
  from public.posts_audit a
 order by a.at desc;

-- ▸ 주인이 아닌 사람이 OB 글을 건드린 것만
--     select * from public.posts_recent_changes
--      where "글 소속" = 'OB' and "자격" <> '주인';

-- ▸ 되돌리기 (기록번호를 넣습니다)
--     select public.posts_restore(123);

-- ▸ 지금 걸린 것 확인
select tgname as "트리거"
  from pg_trigger
 where tgrelid = 'public.posts'::regclass and not tgisinternal
 order by tgname;
