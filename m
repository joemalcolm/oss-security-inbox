X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/28/8
Message-ID: <CACn5sdSZwhbpDr9_QLe=ZRMT54+Ee-iN6qcOFdPbYHKn0iLJOA@mail.gmail.com>
Date: Sun, 28 Feb 2016 15:38:00 -0300
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: tidy-html5: read out-of-bounds in TextEndsWithNewline
Content-Type: text/plain; charset=utf-8

A read-out-of-bounds was discovered in tidy-html5 (git revision 03a643f)
using afl. Technical details are available here:

https://github.com/htacg/tidy-html5/issues/379
<https://github.com/htacg/tidy-html5/issues/341>

Regards,
Gus

