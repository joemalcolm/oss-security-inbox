X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/02/2
Message-ID: <CAOSkqBWUb9ri_NaQqRfKi=Gz-rDRB28K7LcGincXgR6hHji+mw@mail.gmail.com>
Date: Sun, 3 Jan 2016 06:08:35 +0800
From: Guanxing Wen <wengx522@...il.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Cc: "cve-assign@...re.org" <cve-assign@...re.org>
Subject: CVE Request: PCRE Library Heap Overflow Vulnerability
Content-Type: text/plain; charset=utf-8

Hello MITRE,

PCRE is a regular expression C library inspired by the regular expression
capabilities in the Perl programming language. The PCRE library is
incorporated into a number of prominent programs, such as Adobe Flash,
Apache, Nginx, PHP, KDE/Konqueror.

PCRE library is prone to a vulnerability which leads to Heap Overflow.
During the compilation of a malformed regular expression, more data is
written on the malloced block than the expected size output by
compile_regex. Carefully crafted my lead to code execution in the context
of affected applications.

Reference:
https://bugs.exim.org/show_bug.cgi?id=1767

Please allocate a CVE-ID for this.

Wen Guanxing from Venustech ADLAB

