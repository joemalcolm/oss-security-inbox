X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/01/5
Message-ID: <CACn5sdRW0+xP0HLAHJynJJjvTBt49=Vd8uNmJO2B9NN7FEEKrw@mail.gmail.com>
Date: Sun, 1 May 2016 22:10:11 +0200
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: Jansson: stack exhaustion parsing a JSON file
Content-Type: text/plain; charset=utf-8

Hi,

A crash caused by stack exhaustion parsing a JSON was found. It affects, at
least version 2.5 as well as the last git revision. Technical details and a
reproducer are available here:

https://github.com/akheron/jansson/issues/282

This crash was found by QuickFuzz working with Radamsa (again caused the
extreme mutation). It was manually minimized later.

Regards,
Gustavo.

