X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/21
Message-Id: <E1wogYl-003Dvz-2L@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:23 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 505 v2 (CVE-2026-62432) - evtchn: Race between FIFO expand and reset
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-62432 / XSA-505
                               version 2

              evtchn: Race between FIFO expand and reset

UPDATES IN VERSION 2
====================

Typo correction in description.

Public release.

ISSUE DESCRIPTION
=================

The EVTCHNOP_expand_array hypercall checks for whether FIFO event
channels are enabled, but without holding the correct lock.  It can race
with EVTCHNOP_reset, resulting in dereferencing a NULL pointer.

IMPACT
======

A malicious HVM guest (x86 HVM or PVH, and ARM) can crash Xen leading to
a denial of service.

A malicious x86 PV guest can most likely crash Xen leading to a denial
of service, but memory corruption or privilege escalation cannot be
ruled out.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.5 onwards are vulnerable.  Xen versions 4.4 and
earlier are not vulnerable.

MITIGATION
==========

There are no mitigations.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa505.patch           xen-unstable - Xen 4.17

$ sha256sum xsa505*
80619fdbb547dea191439ef1c9539fa0991e8f6c449b3970a086f3287fb9ce6e  xsa505.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomrsMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ5H8IAMKtDfTsBJaoOosFHEU0Gyv96fP98D89URo21RrD
V+Lpd9CTatYuTnz53gztlUa7s2/ARYl488bNURwPTdTjSEdJBbFQKrEyAZsryTyh
hiIJF7AhQf8LsY3qk2xuJ+/tKc720WK/zsUGVRz6Jhf9W90g5wBhIM1RAhfy7H2t
Zn74wXDi4dsMLQg6VivzRq+y+XJfZKR6qoKztiDHk0DBobmJzQFF2cfkiiWDRW9l
NuvLxKjsPyS4K+Jcm9k65RzmWfDprxmL/63VDAt0W8dSAe+u1zyDh/aT+OFK5R1g
c6CwdjquY4hhSYhwix4TW18LRlY0NA/pqn3FmhLQl3XZmfU=
=z4Qy
-----END PGP SIGNATURE-----

Download attachment "xsa505.patch" of type "application/octet-stream" (1359 bytes)
