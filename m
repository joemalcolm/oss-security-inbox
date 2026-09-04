X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/04/5
Message-ID: <87ecf8gbr7.fsf@gentoo.org>
Date: Fri, 04 Sep 2026 18:35:56 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Vulnerabilities fixed in libxml2-2.15.4
Content-Type: text/plain; charset=utf-8

From libxml2-2.15.4:

+v2.15.4: Sep 01 2026
+
+### Security
+
+- xmlregexp: Prevent out-of-bounds read in NXT macro
+- fix: add missing overflow checks in dict.c, uri.c, and valid.c
+- xmlregexp: Calc string length after null checking
+- xpointer: Check overflow in xmlXPtrEvalXPtrPart
+- xmlIO: Check for int overflow before calling writecallback
+- fix(xinclude): propagate parseFlags in xmlXIncludeProcess and xmlXIncludeProcessTree
+
+ [...]

I possess no further details.

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
