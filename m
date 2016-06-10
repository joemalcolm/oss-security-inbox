X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/11/2
Message-ID: <CAGoFzNdHoz9cBOoHsN28m6oT+ig=Dt1LRtkYw_+A2-4RpMqe+Q@mail.gmail.com>
Date: Fri, 10 Jun 2016 17:02:58 -0400
From: Insu Yun <wuninsu@...il.com>
To: oss-security@...ts.openwall.com, Yeongjin Jang <Yeongjin.jang@...ech.edu>
Subject: CVE-Request: heap overflow in Python
Content-Type: text/plain; charset=utf-8

Hello.
In zipimport module,
if compress != 0, then bytes_size = data_size + 1
data_size is not sanitized, so if data_size = -1,
then it overflows and becomes 0.
In that case bytes_size becomes 1 and python allocates small heap,
but after that in fread, it overflows heap.

Fix info
https://bugs.python.org/issue26171

Please help assign a CVE to this vulnerability.

Thank you.

-- 
Regards
Insu Yun

