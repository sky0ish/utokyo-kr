-- ═══════════════════════════════════════════════════════════
--  ① 먼저 이것만 돌려 보세요 — 아무것도 고치지 않습니다
--
--  Supabase → whlove@gmail.com 계정 → 동문회 프로젝트
--  (ojnukcciozchnsycxtfq) → SQL Editor
--
--  「승인 단추를 눌러도 대기로 남는」 까닭을 눈으로 확인하는 자리입니다.
--  결과를 저에게 보여 주시면 어디를 고칠지 정확히 맞춰 드립니다.
-- ═══════════════════════════════════════════════════════════


-- ── 1. profiles 에 걸린 규칙을 모두 봅니다 ──
--    update 쪽에 무엇이 있는지가 핵심입니다.
select cmd          as "무엇을",
       policyname   as "규칙 이름",
       permissive   as "허용형",
       qual         as "볼 수 있는 조건",
       with_check   as "쓸 수 있는 조건"
  from pg_policies
 where schemaname = 'public' and tablename = 'profiles'
 order by cmd, policyname;

--  보실 것 ──────────────────────────────────────────────
--   · update 쪽에 「admin update profiles」 같은 운영진용 규칙이 있습니까?
--     없다면 운영진이 남의 줄을 못 고칩니다. → 승인이 안 됩니다.
--   · 「쓸 수 있는 조건」 안에 다시 profiles 라는 말이 보입니까?
--     규칙 안에서 같은 표를 또 읽으면 제자리를 맴돌아(42P17)
--     profiles 를 고치는 **모든** 일이 막힙니다.


-- ── 2. 정말 맴도는지 시늉으로 눌러 봅니다 ──
--    아무 값도 바꾸지 않는 update 입니다. 자료는 그대로입니다.
--    · 「고친 줄 0」  → 규칙에 막혔습니다 (조용히 걸러진 것)
--    · 42P17 오류    → 규칙이 제자리를 맴돕니다
--    · 「고친 줄 1」  → 규칙은 멀쩡합니다. 그러면 화면 쪽 문제입니다.
do $$
declare n int;
begin
  update public.profiles set name = name
   where id = (select id from public.profiles order by created_at limit 1);
  get diagnostics n = row_count;
  raise notice '고친 줄 %', n;
exception when others then
  raise notice '오류 % — %', sqlstate, sqlerrm;
end $$;


-- ── 3. 도우미 함수가 제대로 security definer 인지 ──
--    security definer 여야 규칙 안에서 맴돌지 않습니다.
select p.proname            as "함수",
       p.prosecdef          as "definer 인가",
       pg_get_userbyid(p.proowner) as "주인"
  from pg_proc p
  join pg_namespace n on n.oid = p.pronamespace
 where n.nspname = 'public'
   and p.proname in ('is_admin', 'is_approved', 'set_admin', 'remove_member',
                     'roster_check', 'roster_autoset', 'keeps_own_rights')
 order by p.proname;


-- ── 4. 회원 수는 제대로 보이는지 (select 규칙 확인) ──
select count(*)                                  as "보이는 회원",
       count(*) filter (where approved)          as "승인",
       count(*) filter (where not approved)      as "대기",
       count(*) filter (where is_admin)          as "운영진"
  from public.profiles;
