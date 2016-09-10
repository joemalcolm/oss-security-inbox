X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/10/2
Message-ID: <6437795.J0nPW8acoZ@arcadia>
Date: Sat, 10 Sep 2016 17:03:53 +0200
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: autotrace: out-of-bounds write
Content-Type: text/plain; charset=utf-8

Hello,

with Address Sanitizer I found that each bmp you try to manage with autotrace 
causes an out-of-bounds write.

Details:
https://blogs.gentoo.org/ago/2016/09/10/autotrace-heap-based-buffer-overflow-in-pstoedit_suffix_table_init-output-pstoedit-c/


-- 
Agostino
