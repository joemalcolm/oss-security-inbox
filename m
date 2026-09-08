X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/10
Message-Id: <E1x3uVR-00Gl8b-0v@xenbits.xenproject.org>
Date: Tue, 08 Sep 2026 12:00:53 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 513 v3 (CVE-2026-79605,CVE-2026-79606) - Out-of-bounds accesses in Tapdisk
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

     Xen Security Advisory CVE-2026-79605,CVE-2026-79606 / XSA-513
                               version 3

                   Out-of-bounds accesses in Tapdisk

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

Tapdisk is a userspace xen-blkback implementation used by the XAPI
toolstack.  Several bounds checks have been found to be incorrect.

 * There is no upper bounds check for blkif->last_sect.  Passing a value
   larger than 7 will result in a read or write beyond the mapped grant.

   This is CVE-2026-79605.

 * The gcopy_segs[] object has incorrect bounds checks on it.  Passing
   nr_segments between 12 and 32 will corrupt adjacent memory.

   This is CVE-2026-79606.

IMPACT
======

A malicious guest can obtain code execution within the tapdisk process
running in dom0.  Tapdisk normally runs as root.

VULNERABLE SYSTEMS
==================

All versions of tapdisk are vulnerable.

MITIGATION
==========

There are no mitigations.

CREDITS
=======

Found by Jihwan Yoon of NAVER Cloud, and reported via XenServer.

RESOLUTION
==========

Applying the appropriate attached patchs resolves this issue.

xsa513-?.patch           blktap master

$ sha256sum xsa513*
41e5f1929a7acbe83820ee0b359f9558120222d32442ea4fb5a6eee0bf937bf1  xsa513-1.patch
a5af5a73d2ede5124735213e4974f1aeff7f8118dfbacd52fbb03168fe96c6af  xsa513-2.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmqf98kMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZiuMIAIaNhPYKG/UeGc1JV70GEcyqS4d6NNlNBY0qtuGl
qVQ8LRVBReqRk0aS0hNDI7txFRsZ18ENteBKG/JaXD4mj5rylpnKdl7y8suTFrGi
QuFk1EyYBrud5gtpwW8sq4GKQLf5hoAIIUDGX4qmEC+blRuHTagUIHNwehrkRB+d
38UxmWQR2ppgBSsCJlclMJKSm1nWo04Qx/Nm3Aoc0og0hv+/UkdkDShTGrP/nutb
/r4yywz6LaqdCl7Te1ULx6sRVl1MIxtDqcvsRajqKc9nV56RAgrj3moIJRXRusW9
YqZxuUw8HJkhpisOlj6A/N16f+G7bxZwb3FEZBKuNGvM6lQ=
=oXUQ
-----END PGP SIGNATURE-----

Download attachment "xsa513-1.patch" of type "application/octet-stream" (2440 bytes)

Download attachment "xsa513-2.patch" of type "application/octet-stream" (4573 bytes)
