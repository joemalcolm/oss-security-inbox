X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/29/11
Message-Id: <1285787650-sup-6868@stingray>
Date: Wed, 29 Sep 2010 21:20:10 +0200
From: Alex Legler <a3li@...too.org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE request: Horde Gollem <1.1.2 XSS in view.php
Content-Type: text/plain; charset=utf-8

Hi,

while there seem to be CVE IDs for most of the issues fixed in the
latest Horde packages, I cannot find one for this issue:

>From http://bugs.horde.org/ticket/9191:
"http://localhost/horde/gollem/view.php?actionID=view_file&type=txt&file=<script>alert("XSS")</script>&dir=../baddir/&driver=file
Vulnerable file : view.php (Line 32 - 46)"

Fixed in git (and released in 1.1.2):
http://lists.horde.org/archives/commits/2010-August/004747.html
http://lists.horde.org/archives/announce/2010/000565.html

Thanks,
Alex
-- 
Alex Legler <a3li@...too.org>
Gentoo Security/Ruby

Download attachment "signature.asc" of type "application/pgp-signature" (199 bytes)
