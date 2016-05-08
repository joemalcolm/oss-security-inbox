X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/08/3
Message-ID: <CABEk9YyTYLpTE0Q5wtvqdHirJd6-2sdJ6Y2YE_kty+wi3DB4jw@mail.gmail.com>
Date: Sun, 8 May 2016 18:16:50 -0400
From: Kangjie Lu <kangjielu@...il.com>
To: oss-security@...ts.openwall.com, Chengyu Song <csong84@...ech.edu>,  Insu Yun <insu@...ech.edu>, Taesoo Kim <taesoo@...ech.edu>
Subject: CVE Request: kernel information leak vulnerability in Linux sound module
Content-Type: text/plain; charset=utf-8

Hello,

In file sound/core/timer.c of the latest mainline Linux kernel, the stack
object “tread” has a total size of 32 bytes. It contains a 8-bytes padding,
which is not initialized but sent to user via copy_to_user, resulting a
kernel leak.

Fix info:
http://comments.gmane.org/gmane.linux.kernel/2214250


Please help assign a CVE to this vulnerability.


Thanks,
Kangjie Lu

