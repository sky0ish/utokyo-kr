# -*- coding: utf-8 -*-
# collector.js → bookmarklet.txt
#
# 페이스북은 바깥 스크립트를 불러오는 것을 막기 때문에, 수집기 코드를
# 북마클릿 안에 통째로 담아야 합니다. collector.js 를 고친 뒤
#     python admin/make_bookmarklet.py
# 를 돌리면 북마클릿이 최신 코드로 다시 만들어집니다.
import io, os, re, urllib.parse

HERE = os.path.dirname(os.path.abspath(__file__))
src = io.open(os.path.join(HERE, "collector.js"), encoding="utf-8").read()

# 맨 위 설명 덩어리만 덜어낸다 (안쪽 주석은 건드리지 않는다)
src = re.sub(r"\A\s*/\*.*?\*/\s*", "", src, count=1, flags=re.S)

# 줄 끝 주석은 북마클릿에서 위험하지 않지만, 길이를 줄이려 앞뒤 여백만 정리한다
lines = [l.rstrip() for l in src.split("\n")]
body = "\n".join(l for l in lines if l.strip())

bm = "javascript:" + urllib.parse.quote(body, safe="")
out = os.path.join(HERE, "bookmarklet.txt")
io.open(out, "w", encoding="utf-8", newline="\n").write(bm + "\n")

print("bookmarklet.txt: %d chars (source %d chars)" % (len(bm), len(body)))
