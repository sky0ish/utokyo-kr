-- ═══════════════════════════════════════════════════════════
-- 운영진 지정하기
--
--   ① 아래 세 분을 바로 운영진으로 올립니다
--   ② 앞으로는 회원관리 화면에서 단추 하나로 지정·해제할 수 있게 합니다
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
-- ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── ① 먼저 누구를 올릴지 눈으로 확인 ──
select id, name, email, member_type, is_admin
  from public.profiles
 where name in ('김현지', '이지원', '한국인유학생회 회장')
 order by name;

-- ── ② 운영진으로 올리기 ──
update public.profiles
   set is_admin = true,
       approved = true,
       grade    = 'admin'
 where name in ('김현지', '이지원', '한국인유학생회 회장');

-- ── ③ 결과 확인 ──
select name, email, member_type, is_admin, grade
  from public.profiles
 where is_admin = true
 order by name;

-- ═══════════════════════════════════════════════════════════
-- ④ 앞으로는 화면에서 단추로 — 운영진만 부를 수 있는 함수
-- ═══════════════════════════════════════════════════════════
create or replace function public.set_admin(p_id uuid, p_on boolean)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  if not public.is_admin() then
    raise exception '운영진만 지정할 수 있습니다';
  end if;
  if p_id = auth.uid() and p_on = false then
    raise exception '자기 자신은 내릴 수 없습니다';   -- 운영진이 하나도 없어지는 일을 막습니다
  end if;

  update public.profiles
     set is_admin = p_on,
         approved = case when p_on then true else approved end,
         grade    = case when p_on then 'admin'
                         when grade = 'admin' then 'member'
                         else grade end
   where id = p_id;
end $$;

revoke all on function public.set_admin(uuid, boolean) from anon;
grant execute on function public.set_admin(uuid, boolean) to authenticated;
