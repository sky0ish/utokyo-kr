# 메일 발송 기능 설치 (send-mail)

회원 관리 화면의 **✉ 지금 보내기** 단추가 동작하려면 이 함수를 **한 번** 설치해야 합니다.
설치 전에도 **주소 복사** · **메일 앱으로 열기** 방식은 그대로 쓸 수 있습니다.

이미 쓰고 계신 **지메일 앱 비밀번호**를 그대로 쓰면 됩니다. (Resend 같은 다른 서비스 가입 불필요)

---

## 1. 함수 만들기

1. Supabase 대시보드 → 왼쪽 **Edge Functions**
2. **Deploy a new function** → **Via Editor**
3. 함수 이름에 **`send-mail`** 입력
4. 편집기 내용을 모두 지우고 `supabase/functions/send-mail/index.ts` 내용을 붙여넣기
5. **Deploy**

## 2. 비밀값(Secrets) 세 개 넣기

Edge Functions → **Secrets** (또는 Project Settings → Edge Functions → Secrets)

| 이름 | 값 |
|---|---|
| `GMAIL_USER` | `utokyo2011@gmail.com` |
| `GMAIL_APP_PW` | 구글 앱 비밀번호 16자리 (띄어쓰기 있어도 됨) |
| `MAIL_FROM` | `도쿄대학 한국인 총동문회 <utokyo2011@gmail.com>` |

> `SUPABASE_URL` 과 `SUPABASE_ANON_KEY` 는 Supabase가 자동으로 넣어주므로 등록할 필요가 없습니다.
> 앱 비밀번호는 https://myaccount.google.com/apppasswords 에서 만듭니다.

## 3. 확인

회원 관리 → 메일 보내기 → 받는 사람을 **한 명만** 고르고 **✉ 지금 보내기**.
성공하면 `n명에게 보냈습니다` 라고 뜹니다.

---

## 잘 안 될 때

| 화면에 뜨는 말 | 뜻과 해결 |
|---|---|
| `보내는 계정이 설정되지 않았습니다` | 2번 비밀값을 아직 안 넣었습니다 |
| `Username and Password not accepted` | 앱 비밀번호가 틀렸습니다. 새로 만들어 다시 넣으세요 |
| `not found` / `404` | 함수 이름이 `send-mail` 이 맞는지 확인 |
| `운영진만 보낼 수 있습니다` | 로그인한 계정의 등급이 관리자인지 확인 |

지메일은 하루 500통까지 보낼 수 있습니다. 회원이 그보다 많아지면 전용 메일 서비스로 바꾸는 것이 좋습니다.

## Resend 를 쓰고 싶다면

`GMAIL_USER` 를 넣지 말고 `RESEND_API_KEY` 만 넣으면 그쪽으로 보냅니다.
