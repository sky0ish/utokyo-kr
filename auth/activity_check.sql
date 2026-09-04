-- =========================================================
--  기록이 쌓이고 있는지 확인합니다. (읽기만 하므로 아무것도 바뀌지 않습니다)
--  Supabase 대시보드 -> SQL Editor -> 붙여넣기 -> Run
-- =========================================================

-- ① 활동별로 몇 건이나 쌓였나 · 마지막이 언제인가
select kind as "활동", count(*) as "건수", max(at) as "마지막"
  from public.activity_events
 group by 1 order by 2 desc;
--   view 줄이 없거나 「마지막」이 옛날이면 쪽 보기가 안 쌓이는 것입니다.


-- ② 오늘 무슨 일이 있었나 (최근 30건)
select e.at as "때", p.name as "이름", p.is_admin as "운영진",
       e.kind as "활동", e.ref as "어디"
  from public.activity_events e
  left join public.profiles p on p.id = e.user_id
 order by e.at desc limit 30;


-- ③ 가중치가 제대로 들어갔나
select kind as "활동", label as "이름", weight as "가중치", sort as "차례"
  from public.activity_weights order by sort;


-- ④ 순위표에 실제로 무엇이 담기나 (운영진 계정은 순위에서 빠집니다)
select * from public.activity_board order by score desc limit 10;
