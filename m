X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/7
Message-Id: <E1x3uVG-00GjtI-0E@xenbits.xenproject.org>
Date: Tue, 08 Sep 2026 12:00:42 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 510 v3 (CVE-2026-79602) - x86: improper handling of HVM emulation return codes
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-79602 / XSA-510
                               version 3

           x86: improper handling of HVM emulation return codes

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

A guest with a PCI device assigned that has at least a BAR on the IO port
space can trigger a BUG() in Xen.

IMPACT
======

Passing through a PCI device with at least one BAR in IO address space to
unprivileged HVM guests can result in a Denial of Service (DoS) affecting
the entire host.

VULNERABLE SYSTEMS
==================

Xen versions 4.6 and later are vulnerable.  This is known to be the case
with the fix for XSA-491, but it's possible the issue can also be
triggered from other, non-analyzed paths.

Only x86 systems are vulnerable.  Arm systems are not vulnerable.

Only HVM guests with a PCI device with IO BARs assigned can leverage the
vulnerability.

MITIGATION
==========

There is no mitigation available.

CREDITS
=======

This issue was discovered by Jiqian Chen of AMD and diagnosed as a
security issue by Roger Pau Monné of AMD.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa510.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa510*
915cca4f0e6af998683a3551e5913d2489b23a697d5eab11358d4d8ffe0a0e55  xsa510.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmqf98UMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ3GEIALHxkeOzpl3/ctf8o9R89LFTfayDXMY6xGbUTsRk
oiLIoKkYkZJPtiG6cY8YGRvzm/UYr+KpeMBsNtm0EcbZlPClGjkEc7JSSpMvcVps
XTzRkIUhyOTfpKklhDQJynIIpMu8NkJBLvyVYDcY8fpeZ7yDykMkQ4RyvXT5A56r
Vn18FJ401QqBO0+NTD0aCcasiLFpfrsh3AhPfKLIi7c3q0tIayyNBS8NBSNss+TF
OJew3jWX7bWnAUlPl4b8EMm4gwK/7o6YJYW+NMCTNMJ/UdfvOJkkq9T8l/41FIXq
ArtZrFpKWxsitNoXG7pJIyH/C5wBH2DFABzfqgNjkpzfqKw=
=sVA/
-----END PGP SIGNATURE-----

Download attachment "xsa510.patch" of type "application/octet-stream" (1243 bytes)
