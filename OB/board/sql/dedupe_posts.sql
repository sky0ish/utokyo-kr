-- ═══════════════════════════════════════════════════════════
-- 게시판 중복 글 정리 — 제목과 내용이 같은 글은 하나만 남기고 삭제
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 먼저 아래 [확인] 부분만 실행해 무엇이 지워질지 보신 뒤,
--   [삭제] 부분을 실행하시길 권합니다. 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── [확인] 어떤 글이 몇 개씩 겹쳐 있는지 ──
-- 말머리([안내] 등)와 공백·기호를 무시하고 제목+내용으로 비교합니다.
select
  regexp_replace(regexp_replace(title, '^\s*\[[^\]]*\]\s*', ''), '[[:space:][:punct:]]', '', 'g') as 제목,
  org, category, count(*) as 개수
from public.posts
group by 1, 2, 3
having count(*) > 1
order by 개수 desc, 제목;


-- ── [삭제] 같은 글 중 가장 먼저 올라온 것 하나만 남기고 지우기 ──
with ranked as (
  select
    id,
    row_number() over (
      partition by
        org,
        category,
        regexp_replace(regexp_replace(title, '^\s*\[[^\]]*\]\s*', ''), '[[:space:][:punct:]]', '', 'g'),
        regexp_replace(coalesce(content, ''), '[[:space:][:punct:]]', '', 'g')
      order by created_at asc, id asc
    ) as rn
  from public.posts
)
delete from public.posts p
using ranked r
where p.id = r.id and r.rn > 1;


-- ── [확인] 정리 후 글 수 ──
-- select org, category, count(*) from public.posts group by 1,2 order by 1,2;
