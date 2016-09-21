X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/21/5
Message-ID: <6c6e2d2c-2fc9-9538-88e8-ac2f309211c3@gmail.com>
Date: Wed, 21 Sep 2016 19:01:23 +0800
From: Puzzor <puzzorsj@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request - mujs Heap-Buffer-Overflow write and OOB Read
Content-Type: text/plain; charset=utf-8

Hello,

Two vulnerabilities were found in mujs latest version, and they have got
fixed.

1. mujs str Out-of-Bound read 1 byte in function chartorune.
http://bugs.ghostscript.com/show_bug.cgi?id=697136


2. mujs "char *s" Heap overflow in Fp_toString at jsfunction.c:72
http://bugs.ghostscript.com/show_bug.cgi?id=697137


Please assign CVE-IDs for them.
The vulnerabilities were found by Shi Ji(@Puzzor)

Best regards,
Shi Ji(@Puzzor)
