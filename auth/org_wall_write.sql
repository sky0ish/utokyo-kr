-- ═══════════════════════════════════════════════════════════
--  소속 담장 ② — 「제 쪽 글만 고칠 수 있게」
--
--  auth/org_wall.sql 은 **읽기**에만 담장을 세웠습니다.
--  고치고 지우는 쪽은 이렇게 열려 있었습니다.
--
--      create policy "update posts" on public.posts for update
--        using (author_id = auth.uid() or public.is_admin());
--
--  is_admin() 은 소속을 가리지 않습니다.
--  그래서 **학생회(YB) 운영진이 총동문회(OB) 글을 고치거나 지울 수 있었습니다.**
--  게다가 with check 가 없어 글의 소속(org)까지 바꿀 수 있었습니다.
--
--  이 파일은 그 문을 닫습니다.
--    · 제 글은 누구나 제가 고칩니다 (지금과 같음)
--    · 운영진은 **제 쪽 글만** 고치고 지웁니다
--    · 주인(is_owner)만 양쪽을 모두 봅니다
--
--  실행 : Supabase → whlove@gmail.com 계정 → 동문회 프로젝트 → SQL Editor
--  여러 번 실행해도 안전합니다. 한 덩이라 중간에 어긋나면 되돌아갑니다.
-- ═══════════════════════════════════════════════════════════

begin;

-- ───────────────────────────────────────────────────────────
--  ① 주인 표시 — 양쪽을 모두 맡는 분
--     이 칸이 없으면 담장을 세운 뒤 아무도 남의 쪽을 못 고칩니다.
--
--     이 홈페이지를 만들고 전체를 맡는 사람은 남지현 —
--       whlove@gmail.com · skyish76@gmail.com
--     이 둘만 양쪽(OB·YB)을 넘나듭니다.
--     다른 운영진은 아무리 is_admin 이어도 제 쪽 글만 만집니다.
-- ───────────────────────────────────────────────────────────
alter table public.profiles
  add column if not exists is_owner boolean not null default false;

comment on column public.profiles.is_owner is
  '양쪽(OB·YB) 모두를 맡는 주인 — 남지현. 소속 담장을 넘을 수 있는 유일한 사람입니다';

-- 주인만 켭니다 (혹시 잘못 켜져 있던 분이 있으면 함께 끕니다)
update public.profiles
   set is_owner = (lower(email) in ('whlove@gmail.com', 'skyish76@gmail.com'))
 where is_owner is distinct from (lower(email) in ('whlove@gmail.com', 'skyish76@gmail.com'));

create or replace function public.is_owner()
returns boolean language sql stable security definer set search_path = public as
$$ select coalesce((select is_owner from public.profiles where id = auth.uid()), false) $$;

grant execute on function public.is_owner() to authenticated;


-- ───────────────────────────────────────────────────────────
--  ② 글의 소속을 한 낱말로 (org_wall.sql 의 my_side() 와 짝입니다)
-- ───────────────────────────────────────────────────────────
create or replace function public.post_side(p_org text)
returns text language sql immutable as
$$ select case when coalesce(p_org, 'OB') = 'YB' then 'YB' else 'OB' end $$;

grant execute on function public.post_side(text) to anon, authenticated;


-- ───────────────────────────────────────────────────────────
--  ③ 고치기·지우기 — 제 쪽만
--
--  with check 를 using 과 똑같이 두는 까닭 :
--    using  은 「이 글에 손댈 수 있는가」
--    with check 는 「고친 뒤의 모습이 옳은가」 를 봅니다.
--    with check 가 없으면 학생회 운영진이 제 쪽 글의 org 를 'OB' 로 바꿔
--    담장 너머로 옮겨 놓을 수 있습니다.
-- ───────────────────────────────────────────────────────────
drop policy if exists "update posts" on public.posts;
create policy "update posts" on public.posts for update
  using (
    author_id = auth.uid()
    or public.is_owner()
    or (public.is_admin() and public.post_side(posts.org) = public.my_side())
  )
  with check (
    author_id = auth.uid()
    or public.is_owner()
    or (public.is_admin() and public.post_side(posts.org) = public.my_side())
  );

drop policy if exists "delete posts" on public.posts;
create policy "delete posts" on public.posts for delete
  using (
    author_id = auth.uid()
    or public.is_owner()
    or (public.is_admin() and public.post_side(posts.org) = public.my_side())
  );


-- ───────────────────────────────────────────────────────────
--  ④ 새 글도 제 쪽으로만
--     운영진이 아닌 회원이 남의 쪽 글을 만들지 못하게 합니다.
--     (운영진과 주인은 글쓰기 화면의 OB/YB 단추를 그대로 쓸 수 있습니다)
-- ───────────────────────────────────────────────────────────
drop policy if exists "insert posts" on public.posts;
create policy "insert posts" on public.posts for insert
  with check (
    public.is_approved()
    and author_id = auth.uid()
    and (
      public.is_owner()
      or public.is_admin()
      or public.post_side(org) = public.my_side()
    )
  );


-- ───────────────────────────────────────────────────────────
--  ⑤ 누가 고쳤는지 남기기
--     지금은 글이 바뀌어도 누가 바꿨는지 자취가 없습니다.
--     앞으로는 남습니다. (이미 지나간 일은 알 수 없습니다)
-- ───────────────────────────────────────────────────────────
alter table public.posts
  add column if not exists updated_by uuid references auth.users(id);

create or replace function public.posts_stamp_editor()
returns trigger language plpgsql security definer set search_path = public as $$
begin
  new.updated_by := auth.uid();
  new.updated_at := now();
  return new;
end $$;

drop trigger if exists posts_stamp_editor on public.posts;
create trigger posts_stamp_editor
  before update on public.posts
  for each row execute function public.posts_stamp_editor();

commit;


-- ═══════════════════════════════════════════════════════════
--  ⑥ 확인
-- ═══════════════════════════════════════════════════════════

-- 주인으로 표시된 분
select name, email, member_type, is_admin, is_owner
  from public.profiles
 where is_owner or is_admin
 order by is_owner desc, member_type, name;

-- 규칙 넷
select cmd as "무엇을", policyname as "규칙 이름",
       qual as "손댈 수 있는 조건", with_check as "고친 뒤 조건"
  from pg_policies
 where schemaname = 'public' and tablename = 'posts'
 order by cmd, policyname;
