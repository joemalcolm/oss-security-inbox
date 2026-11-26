X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/26/6
Message-Id: <E1xWc6r-00000007cGK-1LiG@xenbits.xenproject.org>
Date: Thu, 26 Nov 2026 16:14:09 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 535 v1 (CVE-2026-119781,CVE-2026-119782,CVE-2026-119783) - x86: Incorrect ordering of page-freeing and p2m flush
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

 Xen Security Advisory CVE-2026-119781,CVE-2026-119782,CVE-2026-119783 / XSA-535

         x86: Incorrect ordering of page-freeing and p2m flush

ISSUE DESCRIPTION
=================

For HVM and PVH guests using HAP, Xen defers the TLB flush that follows
a p2m change until the p2m lock is released, so that several changes
done under the same locked region issue a single flush.

Some paths that remove a page from the p2m however drop the last
reference to the page before that flush is done.  The page is then
freed, and can be reused, while stale TLB entries still allow the guest
to access it.

IMPACT
======

A guest can retain access to memory it no longer owns.  This can lead
to privilege escalation, Denial of Service (DoS) affecting the entire
host, and information leaks.

VULNERABLE SYSTEMS
==================

Xen versions 4.7 and onwards are vulnerable.  Xen versions 4.6 and
older are not vulnerable.

Only x86 systems are vulnerable.  Arm systems are not vulnerable.

On Intel hardware all vulnerable versions are affected.  On AMD
hardware only Xen versions 4.22 and onwards are affected.

Only HVM and PVH guests using HAP can leverage the vulnerability.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Roger Pau Monné of AMD.

RESOLUTION
==========

Applying the appropriate set of attached patches resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa535/xsa535-?.patch           xen-unstable - Xen 4.19.x
xsa535/xsa535-4.18-?.patch      Xen 4.18.x - Xen 4.17.x

$ sha256sum xsa535*/*
42083890ae0518a4aa8b786d291791bb449405044f47afdbd55a5fd2f1933dd4  xsa535/xsa535-1.patch
cc0adac0222471f599c88f79109fd84d75849daf69b9f106102e28d2eb38ad14  xsa535/xsa535-2.patch
9c1e52c6f4f3f97c081793bbf6d722ac94276195067265a3c415a7396a9b2714  xsa535/xsa535-3.patch
a9a2a89bd14a33fc5096cff3edd1a89817c68d42f4d715823c9ca700b86c80f5  xsa535/xsa535-4.18-1.patch
848a13e675915978b482f6023b7e063319f8ade582e3af7ae7f6eecca2794b44  xsa535/xsa535-4.18-2.patch
0677d16bccb92336792bea455a793063bc3753391e00b59897e444a9c2126770  xsa535/xsa535-4.18-3.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

While the Xen Security Team was working on a fix, a 3rd party posted
an incorrect fix for the same issue publicly.  That fix only changes
the removal of foreign mappings, and does not resolve this issue.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmsIWKMMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZglgH/3WrMR6rc+g1x5LGBiGB5xnLZqoezvtkqtASQsSE
7Lf3wfkcCoJRHu+4b63cnqe6M5EbniC2xuUPFRle/lz7j7zw0iS7yC+BxKpG+V7O
o76Alivp4JJB4gFSOvwTyU3ayrnPnsgP9K0jMm3dqHwUCDNSPZBZiY9tCNTvU39k
TeUB5mvrPdy8HLgX31ej12gX17ORITPU3UK6l9xL2fB54/0nR5jqNPG4h8o5QQzJ
do6HYM2LjS0YnHcoP5/dUhIzVs0hRaCjcnq4Xgbz5trHHB6FJhkeWk01Ny8whKBK
z+ubbHK8+mnQtklpOmC0ukB7zCz3vRNywrmST9jqysSctH8=
=FsFr
-----END PGP SIGNATURE-----

Download attachment "xsa535/xsa535-1.patch" of type "application/octet-stream" (2211 bytes)

Download attachment "xsa535/xsa535-2.patch" of type "application/octet-stream" (3517 bytes)

Download attachment "xsa535/xsa535-3.patch" of type "application/octet-stream" (3203 bytes)

Download attachment "xsa535/xsa535-4.18-1.patch" of type "application/octet-stream" (2211 bytes)

Download attachment "xsa535/xsa535-4.18-2.patch" of type "application/octet-stream" (3523 bytes)

Download attachment "xsa535/xsa535-4.18-3.patch" of type "application/octet-stream" (3277 bytes)
