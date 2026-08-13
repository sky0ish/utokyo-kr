# 메일 발송 기능 설치 (send-mail)

회원 관리 페이지의 **✉ 지금 보내기** 버튼이 동작하려면 이 함수를 한 번 설치해야 합니다.
설치 전에도 **주소 복사** 방식은 그대로 쓸 수 있습니다.

---

## 1. 함수 만들기

1. Supabase 대시보드 → 왼쪽 **Edge Functions**
2. **Deploy a new function** → **Via Editor** 선택
3. 함수 이름에 **`send-mail`** 입력
4. 편집기의 내용을 모두 지우고, `supabase/functions/send-mail/index.ts` 파일 내용을 붙여넣기
5. **Deploy** 클릭

## 2. 비밀값(Secrets) 넣기

Edge Functions → **Secrets** (또는 Project Settings → Edge Functions → Secrets)

| 이름 | 값 |
|---|---|
| `RESEND_API_KEY` | Resend에서 발급받은 `re_...` 키 |
| `MAIL_FROM` | `재한 도쿄대학 총동문회 <no-reply@u-tokyo.kr>` |

> `SUPABASE_URL` 과 `SUPABASE_ANON_KEY` 는 Supabase가 자동으로 넣어주므로 따로 등록할 필요가 없습니다.

## 3. 확인

1. [회원 관리 페이지](https://u-tokyo.kr/admin/members.html) 접속
2. 보낼 대상을 **직접 고르기** 로 두고 본인 이름을 검색해 추가
3. **✉ 지금 보내기** → 메일이 오면 완료

---

## 안전장치

- **운영진(is_admin)만** 호출할 수 있습니다. 일반 회원이 주소를 알아내도 발송되지 않습니다.
- 한 번에 50명씩 나누어 **숨은참조(BCC)** 로 보냅니다. 받는 사람끼리 서로의 주소가 보이지 않습니다.
- 발송에 성공한 회원은 `profiles.welcome_sent_at` 에 시각이 기록되어,
  다음부터 **아직 안 보낸 회원** 목록에서 자동으로 빠집니다.

## 문제가 생기면

| 증상 | 원인 |
|---|---|
| `RESEND_API_KEY 가 설정되지 않았습니다` | 2번 Secrets 등록 안 됨 |
| `운영진만 보낼 수 있습니다` | 내 계정의 `is_admin` 이 false |
| `Function not found` | 함수 이름이 `send-mail` 이 아님 |
| 도메인 관련 오류 | Resend에서 `u-tokyo.kr` 이 Verified 상태인지 확인 |
