# 가입 안내 메일 템플릿 (Supabase)

넣는 곳 : **Supabase 대시보드 → Authentication → Emails → Confirm signup**

1. **Subject** 칸에 아래 제목을 넣습니다.
2. **Body** 오른쪽 위의 **`Source`** 를 누릅니다. (Preview 상태에서는 입력이 되지 않습니다)
3. 기존 내용을 모두 지우고 아래 HTML을 붙여넣습니다.
4. 오른쪽 아래 **Save changes** 를 누릅니다.

> `{{ .ConfirmationURL }}` 은 Supabase가 회원마다 자동으로 채워 넣는 인증 주소입니다. 그대로 두세요.

---

## 1. 가입 인증 메일 (Confirm signup)

### Subject

```
[재한 도쿄대학 총동문회] 가입이 완료되었습니다
```

### Body (Source 에 붙여넣기)

```html
<div style="margin:0;padding:28px 16px;background:#f7f5ef;font-family:'Apple SD Gothic Neo','Malgun Gothic',sans-serif;">
  <div style="max-width:560px;margin:0 auto;background:#ffffff;border:1px solid #e6dfcb;border-radius:12px;overflow:hidden;">

    <div style="background:#101d33;padding:24px 28px;">
      <div style="color:#e8c876;font-size:12px;letter-spacing:.14em;">在韓東京大学総同門会 · EST. 2011</div>
      <div style="color:#ffffff;font-size:20px;font-weight:700;margin-top:6px;">재한 도쿄대학 총동문회</div>
    </div>

    <div style="padding:30px 28px;color:#2f2a1d;font-size:15px;line-height:1.8;">
      <p style="margin:0 0 18px;font-size:17px;font-weight:700;">가입을 환영합니다!</p>

      <p style="margin:0 0 8px;">재한 도쿄대학 총동문회에 가입완료되었습니다. 감사합니다~!</p>
      <p style="margin:0 0 22px;">앞으로 자주 활용해주세요^.^</p>

      <p style="margin:0 0 14px;">아래 버튼을 눌러 이메일 인증을 마쳐주세요.</p>

      <p style="margin:0 0 26px;">
        <a href="{{ .ConfirmationURL }}"
           style="display:inline-block;background:#c9a24b;color:#14203a;text-decoration:none;
                  font-weight:700;font-size:15px;padding:13px 30px;border-radius:8px;">
          이메일 인증하기
        </a>
      </p>

      <p style="margin:0 0 26px;font-size:12.5px;color:#9a947f;">
        버튼이 눌리지 않으면 아래 주소를 복사해 주소창에 붙여넣어 주세요.<br>
        <span style="color:#6f6a5c;word-break:break-all;">{{ .ConfirmationURL }}</span>
      </p>

      <div style="border-top:1px solid #efe9db;padding-top:20px;">
        <p style="margin:0 0 8px;font-size:14px;">
          홈페이지 : <a href="https://u-tokyo.kr" style="color:#8a6d2b;">u-tokyo.kr</a>
        </p>
        <p style="margin:0;font-size:13.5px;color:#6f6a5c;">
          게시판 · 갤러리 등 회원 전용 콘텐츠는 <b>운영진 승인 후</b> 이용하실 수 있습니다.<br>
          승인까지 하루 이틀 걸릴 수 있습니다.
        </p>
      </div>
    </div>

    <div style="background:#faf7ef;padding:16px 28px;font-size:11.5px;color:#a09a86;border-top:1px solid #efe9db;">
      재한 도쿄대학 총동문회 (在韓東京大学総同門会)<br>
      이 메일은 회원가입 시 자동으로 발송되었습니다.
    </div>

  </div>
</div>
```

---

## 2. 비밀번호 재설정 메일 (Reset password) — 선택

### Subject

```
[재한 도쿄대학 총동문회] 비밀번호 재설정 안내
```

### Body

```html
<div style="margin:0;padding:28px 16px;background:#f7f5ef;font-family:'Apple SD Gothic Neo','Malgun Gothic',sans-serif;">
  <div style="max-width:560px;margin:0 auto;background:#ffffff;border:1px solid #e6dfcb;border-radius:12px;overflow:hidden;">
    <div style="background:#101d33;padding:24px 28px;">
      <div style="color:#e8c876;font-size:12px;letter-spacing:.14em;">在韓東京大学総同門会 · EST. 2011</div>
      <div style="color:#ffffff;font-size:20px;font-weight:700;margin-top:6px;">재한 도쿄대학 총동문회</div>
    </div>
    <div style="padding:30px 28px;color:#2f2a1d;font-size:15px;line-height:1.8;">
      <p style="margin:0 0 18px;font-size:17px;font-weight:700;">비밀번호 재설정</p>
      <p style="margin:0 0 22px;">아래 버튼을 눌러 새 비밀번호를 설정해주세요.</p>
      <p style="margin:0 0 26px;">
        <a href="{{ .ConfirmationURL }}"
           style="display:inline-block;background:#c9a24b;color:#14203a;text-decoration:none;
                  font-weight:700;font-size:15px;padding:13px 30px;border-radius:8px;">
          비밀번호 재설정하기
        </a>
      </p>
      <p style="margin:0;font-size:12.5px;color:#9a947f;">
        본인이 요청하지 않으셨다면 이 메일은 무시하셔도 됩니다.
      </p>
    </div>
  </div>
</div>
```

---

## 참고 : 발송 한도

무료 플랜의 Supabase 기본 메일 발송은 **시간당 소량(수 건)** 으로 제한됩니다.
가입자가 몰리는 시기에 인증 메일이 늦게 도착한다면,
**Project Settings → Authentication → SMTP Settings** 에서 회장님의 메일 계정(지메일 등)이나
메일 발송 서비스를 연결하시면 제한이 풀립니다.
