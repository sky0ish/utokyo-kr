-- ═══════════════════════════════════════════════════════════
-- 동기화 설정 : 중복 방지 + 관리자 등록 권한
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ═══════════════════════════════════════════════════════════

-- 1) 같은 원문(밴드/페이스북 글)이 두 번 들어오지 않도록
create unique index if not exists posts_source_url_uidx
  on public.posts (source_url) where source_url is not null;

-- 2) 관리자는 어떤 작성자 명의로도 글을 넣을 수 있어야 함 (외부 글 이전용)
drop policy if exists "insert posts" on public.posts;
create policy "insert posts" on public.posts for insert
  with check (
    (public.is_approved() and author_id = auth.uid())   -- 일반 회원: 본인 명의
    or public.is_admin()                                -- 관리자: 외부 글 이전 허용
  );
