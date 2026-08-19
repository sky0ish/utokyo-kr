-- ═══════════════════════════════════════════════════════════
-- 게시판 글에 파일 첨부
--
--   글 하나에 파일 여러 개를 붙일 수 있게 합니다.
--   총동문회·학생회 게시판 모두에 함께 적용됩니다.
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 첨부 목록을 담을 칸 ──
--    [{"name":"회칙.pdf","path":"OB/1712...-회칙.pdf","size":123456,"type":"application/pdf"}, …]
alter table public.posts add column if not exists files jsonb;

-- ── 2) 파일을 담아둘 곳 ──
insert into storage.buckets (id, name, public, file_size_limit)
values ('board', 'board', true, 26214400)          -- 한 개당 25MB 까지
on conflict (id) do update set public = true, file_size_limit = 26214400;

-- ── 3) 누가 무엇을 할 수 있나 ──
--   · 내려받기 : 누구나 (글 자체가 회원 전용이면 글이 안 보이므로 주소를 알 수 없습니다)
--   · 올리기   : 승인된 회원과 운영진
--   · 지우기   : 올린 본인과 운영진
drop policy if exists "board_files_read" on storage.objects;
create policy "board_files_read" on storage.objects
  for select using (bucket_id = 'board');

drop policy if exists "board_files_upload" on storage.objects;
create policy "board_files_upload" on storage.objects
  for insert with check (bucket_id = 'board' and (public.is_approved() or public.is_admin()));

drop policy if exists "board_files_update" on storage.objects;
create policy "board_files_update" on storage.objects
  for update using (bucket_id = 'board' and (owner = auth.uid() or public.is_admin()));

drop policy if exists "board_files_delete" on storage.objects;
create policy "board_files_delete" on storage.objects
  for delete using (bucket_id = 'board' and (owner = auth.uid() or public.is_admin()));

-- ── 확인 ──
select id, public, file_size_limit from storage.buckets where id = 'board';
select column_name from information_schema.columns
 where table_schema = 'public' and table_name = 'posts' and column_name = 'files';
