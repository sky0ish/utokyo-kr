-- ═══════════════════════════════════════════════════════════
-- 「비동문 준회원」을 받아들이기
--
--   도쿄대학 출신이 아니어도 가입해 준회원으로 지낼 수 있게 합니다.
--   가입 화면의 구분에 「비동문 — 준회원」이 생겼고,
--   그 값(GUEST)을 자료방이 받아들이도록 규칙을 넓힙니다.
--
--   실행 방법 : Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   한 번만 하시면 되고, 두 번 눌러도 탈이 없습니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 구분에 GUEST 를 더한다 ──
alter table public.profiles drop constraint if exists profiles_member_type_check;
alter table public.profiles add constraint profiles_member_type_check
  check (member_type in ('YB', 'OB', 'GUEST'));

-- ── 2) 등급은 「준회원」으로 시작하게 ──
--    동문 명부에 이름이 없으니 회원여부 확인을 해도 준회원으로 남습니다.
--    운영진이 회원 관리 화면에서 손으로 올려주실 수 있습니다.
update public.profiles
   set grade = 'guest'
 where member_type = 'GUEST' and coalesce(grade, '') = '';

-- ── 3) 확인 ──
select coalesce(member_type, '(없음)') as "구분",
       count(*)                        as "인원",
       count(*) filter (where approved) as "승인"
  from public.profiles
 group by member_type
 order by count(*) desc;

-- → 이제 가입 화면에서 「비동문 — 준회원」을 골라 가입할 수 있습니다.
--   가입 뒤에는 여느 회원과 같이 운영진 승인을 거칩니다.
