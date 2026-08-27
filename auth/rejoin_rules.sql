-- ═══════════════════════════════════════════════════════════
-- 다시 가입 규칙
--   · 일반 회원을 명단에서 뺐다면 → 같은 메일로는 다시 가입할 수 없습니다.
--   · 운영진이었던 분을 뺐다면    → 같은 메일로 다시 가입할 수 있습니다.
--   · 운영진이 손으로 풀어주면 언제든 다시 가입할 수 있습니다.
--
--  ※ 먼저 auth/remove_member.sql 을 실행해두셔야 합니다.
-- 실행: Supabase 대시보드 → SQL Editor → 붙여넣기 → Run
--   ※ 여러 번 실행해도 안전합니다.
-- ═══════════════════════════════════════════════════════════

-- ── 1) 다시 가입을 막을 메일 목록 ──
create table if not exists public.blocked_emails (
  email      text primary key,
  name       text,
  was_admin  boolean     not null default false,
  removed_at timestamptz not null default now(),
  removed_by uuid
);

alter table public.blocked_emails enable row level security;

drop policy if exists "admin read blocked" on public.blocked_emails;
create policy "admin read blocked" on public.blocked_emails
  for select using (public.is_admin());

drop policy if exists "admin write blocked" on public.blocked_emails;
create policy "admin write blocked" on public.blocked_emails
  for all using (public.is_admin()) with check (public.is_admin());

-- ── 2) 명단에서 뺄 때, 일반 회원이면 메일을 막아둡니다 ──
create or replace function public.remove_member(p_id uuid)
returns text language plpgsql security definer set search_path = public, auth as
$$
declare who text; mail text; adm boolean;
begin
  if not public.is_admin() then
    return '운영진만 할 수 있습니다.';
  end if;
  if p_id = auth.uid() then
    return '자기 자신은 뺄 수 없습니다.';
  end if;

  select coalesce(name, email, '이름없음'), email, coalesce(is_admin, false)
    into who, mail, adm
    from public.profiles where id = p_id;

  if who is null then
    return '그런 회원이 없습니다.';
  end if;

  -- 운영진이었던 분은 막지 않습니다 (다시 가입하실 수 있게)
  if not adm and mail is not null and mail <> '' then
    insert into public.blocked_emails (email, name, was_admin, removed_by)
         values (lower(mail), who, false, auth.uid())
    on conflict (email) do update
       set name = excluded.name, removed_at = now(), removed_by = excluded.removed_by;
  else
    delete from public.blocked_emails where email = lower(coalesce(mail, ''));
  end if;

  delete from public.profiles where id = p_id;
  delete from auth.users   where id = p_id;

  return who || ' 님을 명단에서 뺐습니다.' ||
         case when adm then ' (운영진이셨으므로 같은 메일로 다시 가입하실 수 있습니다)'
              else ' (같은 메일로는 다시 가입할 수 없습니다)' end;
end;
$$;

grant execute on function public.remove_member(uuid) to authenticated;

-- ── 3) 가입할 때 막힌 메일인지 봅니다 ──
create or replace function public.handle_new_user()
returns trigger language plpgsql security definer set search_path = public
as $$
begin
  if exists (select 1 from public.blocked_emails
              where email = lower(coalesce(new.email, ''))) then
    raise exception '이 메일 주소는 다시 가입하실 수 없습니다. 운영진에게 문의해주세요.'
      using errcode = 'P0001';
  end if;

  insert into public.profiles (id, email, name, member_type, faculty, grad_year, company, job_title, phone)
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data->>'name', ''),
    nullif(new.raw_user_meta_data->>'member_type', ''),
    coalesce(new.raw_user_meta_data->>'faculty', ''),
    coalesce(new.raw_user_meta_data->>'grad_year', ''),
    coalesce(new.raw_user_meta_data->>'company', ''),
    coalesce(new.raw_user_meta_data->>'job_title', ''),
    coalesce(new.raw_user_meta_data->>'phone', '')
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- ── 4) 가입 화면에서 미리 알려주기 위한 창구 ──
create or replace function public.email_blocked(p_email text)
returns boolean language sql security definer stable set search_path = public as
$$ select exists (select 1 from public.blocked_emails
                   where email = lower(coalesce(p_email, ''))) $$;

grant execute on function public.email_blocked(text) to anon, authenticated;

-- ── 5) 운영진이 손으로 풀어주기 ──
create or replace function public.allow_email_again(p_email text)
returns text language plpgsql security definer set search_path = public as
$$
begin
  if not public.is_admin() then return '운영진만 할 수 있습니다.'; end if;
  delete from public.blocked_emails where email = lower(p_email);
  return p_email || ' — 다시 가입하실 수 있습니다.';
end;
$$;

grant execute on function public.allow_email_again(text) to authenticated;

-- ── 6) 확인 ──
select '다시 가입 규칙이 세워졌습니다.' as "확인";

-- 지금 막혀 있는 메일 보기
-- select email, name, removed_at from public.blocked_emails order by removed_at desc;

-- 하나 풀어주기
-- select public.allow_email_again('sky0ish@naver.com');
