-- ═══════════════════════════════════════════════════════════
-- 소속 담장 — 제 쪽 게시판·갤러리만 보이게
--   · 학생회(YB) 회원은 총동문회(OB) 글을 회원 전용까지 볼 수 없습니다.
--     (누구나 볼 수 있는 글 = visibility 'public' 은 그대로 보입니다)
--   · 총동문회(OB) 회원도 학생회(YB) 글을 마찬가지로 볼 수 없습니다.
--   · 운영진은 지금처럼 양쪽 모두 봅니다.
--   · 비동문 준회원(GUEST)은 총동문회 쪽으로 봅니다.
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 내가 어느 쪽 사람인지 ──
--   member_type 이 'YB' 면 학생회, 그 밖(OB · GUEST · 빈칸)은 총동문회로 봅니다.
create or replace function public.my_side()
returns text language sql stable security definer set search_path = public as
$$ select case when coalesce((select member_type from public.profiles
                                where id = auth.uid()), 'OB') = 'YB'
                    then 'YB' else 'OB' end $$;

grant execute on function public.my_side() to anon, authenticated;

-- ── 2) 게시판 ──
--   누구나 보는 글(public) · 운영진 · 제 쪽 승인 회원, 이렇게 셋만 읽습니다.
drop policy if exists "read posts" on public.posts;
create policy "read posts" on public.posts for select
  using (
    visibility = 'public'
    or public.is_admin()
    or (
      public.is_approved()
      and case when coalesce(posts.org, 'OB') = 'YB' then 'YB' else 'OB' end
            = public.my_side()
      and (category <> 'free' or public.is_member())   -- 자유게시판은 회원 이상만
    )
  );

-- ── 3) 댓글 — 못 보는 글에는 댓글도 보이지 않게 ──
drop policy if exists "read comments" on public.comments;
create policy "read comments" on public.comments for select
  using (
    exists (select 1 from public.posts p where p.id = comments.post_id)
  );
--   ※ posts 자체에 담장이 서 있으므로, 못 보는 글이면 위 exists 가 거짓이 됩니다.

-- ── 4) 갤러리 ──
drop policy if exists "read gallery photos" on public.gallery_photos;
create policy "read gallery photos" on public.gallery_photos for select
  using (public.is_member()
         and (public.is_admin()
              or case when coalesce(gallery_photos.org, 'OB') = 'YB' then 'YB' else 'OB' end
                    = public.my_side()));

drop policy if exists "read gallery albums" on public.gallery_albums;
create policy "read gallery albums" on public.gallery_albums for select
  using (public.is_member()
         and (public.is_admin()
              or case when coalesce(gallery_albums.org, 'OB') = 'YB' then 'YB' else 'OB' end
                    = public.my_side()));

-- ── 5) 확인 ──
select '소속 담장이 세워졌습니다.' as "확인", public.my_side() as "내 쪽";

-- 되돌리려면 (양쪽 모두 서로 볼 수 있게)
-- drop policy if exists "read posts" on public.posts;
-- create policy "read posts" on public.posts for select
--   using (visibility = 'public'
--          or (public.is_approved()
--              and (category <> 'free' or public.is_member())));
