-- ═══════════════════════════════════════════════════════════
-- 회원 등급 3단계  :  관리자 · 회원 · 준회원
--   admin  (관리자)  — 운영진. 모든 기능
--   member (회원)    — 동문 명단에서 확인된 분. 모든 게시판·갤러리
--   guest  (준회원)  — 동경대 동문이 아니지만 둘러보시는 분
--                      자유게시판과 갤러리는 보이지 않습니다
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- (여러 번 실행해도 안전합니다)
-- ═══════════════════════════════════════════════════════════

-- ── 1) 등급 칸 ──
alter table public.profiles add column if not exists grade text;
update public.profiles set grade = 'guest' where grade is null;
alter table public.profiles alter column grade set default 'guest';

alter table public.profiles drop constraint if exists profiles_grade_check;
alter table public.profiles add  constraint profiles_grade_check
  check (grade in ('admin','member','guest'));

-- 운영진으로 지정된 분은 등급도 관리자로
update public.profiles set grade = 'admin' where is_admin = true and grade <> 'admin';

-- ── 2) 등급을 판별하는 함수들 ──
--     (게시판·갤러리 열람 권한에서 씁니다)
create or replace function public.my_grade()
returns text language sql security definer set search_path = public as
$$ select coalesce((select grade from public.profiles where id = auth.uid()), 'guest') $$;

-- 회원 이상(회원·관리자)인지
create or replace function public.is_member()
returns boolean language sql security definer set search_path = public as
$$ select coalesce((select approved and grade in ('member','admin')
                      from public.profiles where id = auth.uid()), false) $$;

-- ── 3) 자유게시판은 회원 이상만 ──
drop policy if exists "read posts" on public.posts;
create policy "read posts" on public.posts for select
  using (
    visibility = 'public'
    or (public.is_approved() and (
         category <> 'free'          -- 자유게시판 말고는 승인 회원 모두
         or public.is_member()       -- 자유게시판은 회원 이상만
       ))
  );

-- ── 4) 갤러리는 회원 이상만 ──
drop policy if exists "read gallery photos" on public.gallery_photos;
create policy "read gallery photos" on public.gallery_photos for select
  using (public.is_member());

drop policy if exists "read gallery albums" on public.gallery_albums;
create policy "read gallery albums" on public.gallery_albums for select
  using (public.is_member());

-- ── 확인용 ──
select grade as 등급, count(*) as 인원
  from public.profiles group by grade order by grade;
