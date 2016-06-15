X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/15/15
Message-ID: <CAGoFzNedN+OD6JymsdZxO7UrLqctV0dbzAu-HkMqZFsKAEcsOg@mail.gmail.com>
Date: Wed, 15 Jun 2016 10:28:02 -0400
From: Insu Yun <wuninsu@...il.com>
To: oss-security@...ts.openwall.com, Yeongjin Jang <Yeongjin.jang@...ech.edu>
Subject: CVE Request: heap overflow in Python zipimport module
Content-Type: text/plain; charset=utf-8

Hello.
In Python zipimport module,
if compress != 0, then bytes_size = data_size + 1
data_size is not sanitized, so if data_size = -1,
then it overflows and becomes 0.

In that case, python allocates small heap, but after that in freed, it
overflows heap.
Fix info https://bugs.python.org/issue26171
Please help assign a CVE to this vulnerability.
Thank you.

-- 
Regards
Insu Yun

