X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/01/8
Message-ID: <CAPC3xaq-ZcxbBdibGOz84r8inV3FiEpbvjoeKboHf_5a7Bxjbg@mail.gmail.com>
Date: Sun, 1 Feb 2015 11:22:54 -0800
From: Paul Pluzhnikov <ppluzhnikov@...il.com>
To: oss-security@...ts.openwall.com
Cc: Joseph Myers <jsm28@....gnu.org>
Subject: CVE request: heap buffer overflow in glibc swscanf
Content-Type: text/plain; charset=utf-8

Greetings,

https://sourceware.org/bugzilla/show_bug.cgi?id=16618
is almost 1 year old, and still not fixed in glibc trunk.

I have verified that the test case from it fails with libc6
2.19-0ubuntu6.5 and current trunk glibc.

Don't know if it's exploitable, but it seems like it could easily be.

(I'll see if I can fix it in the mean time.)

Thanks,
-- 
Paul Pluzhnikov
