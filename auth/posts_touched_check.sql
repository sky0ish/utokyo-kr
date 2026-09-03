-- ═══════════════════════════════════════════════════════════
--  「누가 총동문회(OB) 글을 건드렸나」 — 읽기만 합니다
--
--  Supabase → whlove@gmail.com 계정 → 동문회 프로젝트 → SQL Editor
--
--  ※ 미리 말씀드립니다 —
--    posts 표에는 지금까지 **누가 고쳤는지 남는 칸이 없었습니다.**
--    그래서 지나간 일은 「누가」 를 알 수 없고, 「언제 손댔나」 만 볼 수 있습니다.
--    auth/org_wall_write.sql 을 돌리시면 그 뒤부터는 updated_by 에 남습니다.
-- ═══════════════════════════════════════════════════════════


-- ── 1. 쓴 뒤에 고쳐진 OB 글 — 요즘 것부터 ──
--    created_at 과 updated_at 이 1분 넘게 벌어지면 나중에 손댄 글입니다.
select id,
       category                                   as "게시판",
       substring(title from '^\[([^\]]+)\]')      as "말머리",
       left(title, 60)                            as "제목",
       author_name                                as "쓴 사람",
       created_at::date                           as "쓴 날",
       updated_at                                 as "고쳐진 때"
  from public.posts
 where org = 'OB'
   and updated_at > created_at + interval '1 minute'
 order by updated_at desc
 limit 100;


-- ── 2. 고쳐진 날짜별로 몇 건인지 ──
--    특정 날에 우르르 몰려 있으면 그날 무언가(SQL·도구)가 훑고 지나간 것입니다.
select updated_at::date            as "고쳐진 날",
       count(*)                    as "건수",
       count(distinct category)    as "게시판 수",
       string_agg(distinct category, ', ' order by category) as "게시판"
  from public.posts
 where org = 'OB'
   and updated_at > created_at + interval '1 minute'
 group by 1
 order by 1 desc;


-- ── 3. 옛 「전공별」 글이 어디로 갔는지 ──
--    OB/board/sql/forum_import.sql 이 소모임(club) → 포럼(forum) 으로 옮기고
--    제목의 [전공별] 을 [기타] · [건축학] · [농학생명] · [공학] 으로 바꿨습니다.
select category                               as "게시판",
       substring(title from '^\[([^\]]+)\]')  as "말머리",
       count(*)                               as "건수"
  from public.posts
 where org = 'OB' and category in ('club', 'forum')
 group by 1, 2
 order by 1, 3 desc;


-- ── 4. 그 옮김에 걸렸을 만한 글들 (제목으로 되짚기) ──
--    forum_import.sql 이 골라냈던 낱말 그대로입니다.
select category                               as "게시판",
       substring(title from '^\[([^\]]+)\]')  as "말머리",
       left(title, 70)                        as "제목",
       created_at::date                       as "쓴 날"
  from public.posts
 where org = 'OB'
   and (title ~ '(단과대|전공별 ?(모임|포럼)|구조계|농학생명|응용화학|화학공학|도시공학|건축학 ?(동문|포럼)|학과별 ?모임)'
        or title ~ '(계열|학부|대학원) ?(동문 ?)?(모임|포럼)')
 order by created_at desc;


-- ── 5. 학생회(YB) 운영진이 누구인지 ──
--    이분들이 지금까지 OB 글을 고칠 수 있었습니다 (담장이 읽기에만 있었으므로).
select name, email, member_type, is_admin, created_at::date as "가입일"
  from public.profiles
 where is_admin
 order by member_type, name;
