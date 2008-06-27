X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/06/27/1
Message-Id: <200806271147.13056.steffen.joeris@skolelinux.de>
Date: Fri, 27 Jun 2008 11:47:11 +0200
From: Steffen Joeris <steffen.joeris@...lelinux.de>
To: oss-security@...ts.openwall.com
Subject: CVE id request: checkinstall
Content-Type: text/plain; charset=utf-8

Hi

Checkinstall (and installwatch) create temporary directories manually
instead of using mktemp, which creates a race condition.

patch:
http://lists.alioth.debian.org/pipermail/secure-testing-team/2008-June/001672.html

Could I please get a CVE id for this issue?

Cheers
Steffen

Download attachment "signature.asc " of type "application/pgp-signature" (198 bytes)
