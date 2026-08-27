-- ═══════════════════════════════════════════════════════════
-- 회원을 명단에서 아예 빼기 (운영진 전용)
--   승인 취소는 「대기」로 남지만, 이것은 계정 자체를 지웁니다.
--   · 회원 정보(profiles) 를 지우고
--   · 로그인 계정(auth.users) 도 함께 지웁니다 → 같은 메일로 다시 가입할 수 있습니다.
--   · 그 사람이 쓴 글·사진은 남습니다 (지우려면 따로 지워주세요).
--   · 자기 자신은 지울 수 없습니다.
--
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 운영진은 회원 정보를 지울 수 있게 ──
drop policy if exists "admin delete profiles" on public.profiles;
create policy "admin delete profiles" on public.profiles
  for delete using (public.is_admin() and id <> auth.uid());

-- ── 2) 계정까지 한 번에 지우는 문 ──
create or replace function public.remove_member(p_id uuid)
returns text language plpgsql security definer set search_path = public, auth as
$$
declare who text;
begin
  if not public.is_admin() then
    return '운영진만 할 수 있습니다.';
  end if;
  if p_id = auth.uid() then
    return '자기 자신은 뺄 수 없습니다.';
  end if;

  select coalesce(name, email, '이름없음') into who from public.profiles where id = p_id;
  if who is null then
    return '그런 회원이 없습니다.';
  end if;

  delete from public.profiles where id = p_id;
  delete from auth.users   where id = p_id;   -- 로그인 계정까지
  return who || ' 님을 명단에서 뺐습니다.';
end;
$$;

grant execute on function public.remove_member(uuid) to authenticated;

-- ── 3) 확인 ──
select '명단에서 빼기 준비가 되었습니다.' as "확인";
