X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/9
Message-Id: <E1xGbcp-0000000F9FM-3n4i@xenbits.xenproject.org>
Date: Tue, 13 Oct 2026 12:28:59 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 520 v2 (CVE-2026-102700) - gnttab: cache-flush handling may cause page reference leak
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

           Xen Security Advisory CVE-2026-102700 / XSA-520
                              version 2

      gnttab: cache-flush handling may cause page reference leak

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

With its original introduction, GNTTAB_cache_flush was made available
uniformly.  XSA-232 (CVE-2017-14318) then covered an omitted NULL
pointer check, yet the addition of that check failed to adjust the
subsequent error path.  That error path fails to drop a page reference in
case the specified page is owned by a special system domain (DOM_IO and
DOM_COW are system domains which can have memory pages assigned to them.)

IMPACT
======

The most likely outcome is Denial of Service (DoS) of either Domain 0
(then likely affecting the entire host) or of another domain.

VULNERABLE SYSTEMS
==================

Xen versions 4.5 through 4.20 are affected.  Xen versions 4.21 and
newer as well as 4.4 and older are not affected.

Only x86 systems are vulnerable.  Arm systems are not vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered independently by Andrew Cooper of Citrix and
Yehyeong Lee.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa520.patch           Xen 4.20.x - Xen 4.17.x

$ sha256sum xsa520*
e6814fe4a77d38f83c7bf3b92e8d24a0d95508572b845c622985e7021338cca9  xsa520.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches and/or mitigations described above (or
others which are substantially similar) is permitted during the
embargo, even on public-facing systems with untrusted guest users and
administrators.

But: Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, please contact the Xen Project Security
Team.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrOItgMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZw3AIALH4pnPt5g51TX1HIUUjtyqxK9j6IyFtYgHqptRA
XTaZAD+NlU9R97SKGG8/YkMwdIDOQ43HE0sjJpARScQbCXcoq781yf4U1xbuy56z
prClo+bFT61BnbJnzpQuhmZ1kfPYhqqeYSEsm9TUj6g1Z3j2oq45aISrgyDJgsRJ
/t8Reelp/kFhQHql7Bt7uRy0xYTHcYuN56dGDAJJ1MsExsbEdLW4hgIcTjBkD04A
29MSv3j1WlCpWSCIEs27dzJv3i5mrcp1hSXfDo84NYMzxEY9FRcSGPNaGiG0/5pG
gRe67qr5htHW8rYiTjJRc2b/Sp6D1f7+QThqcq010NwdrzE=
=v0su
-----END PGP SIGNATURE-----

Download attachment "xsa520.patch" of type "application/octet-stream" (790 bytes)
