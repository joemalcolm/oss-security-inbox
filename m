X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/6
Message-Id: <E1xODBc-00000006KvR-33Pr@xenbits.xenproject.org>
Date: Tue, 03 Nov 2026 12:00:20 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 523 v2 (CVE-2026-102703,CVE-2026-102704) - arbitrary read/write via grant copy
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

   Xen Security Advisory CVE-2026-102703,CVE-2026-102704 / XSA-523
                              version 2

                    arbitrary read/write via grant copy

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

A common access pattern is a batch of Grant Copy operations acting on
adjacent address ranges in the same source or destination page.  For
performance reasons, Xen caches details internally to reuse already
validated data.  The conditions on when to re-validate the internal data
were not correct in some cases:

 - Frame numbers and grant references could wrongly be mixed up.  This
   is CVE-2026-102703.

 - Copying by frame number (rather than grant reference) is permitted
   only when operating on the caller's own memory.  The check to enforce
   this restriction was misplaced.  This is CVE-2026-102704.

IMPACT
======

A malicious guest can read and write arbitrary memory, belonging to
other domains, including Dom0.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.6 onwards are vulnerable.  Xen versions 4.5 and
earlier are not vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Anthropic using Claude, then validated by
Stephan Lipp of Ada Logics.

It was then independently reported by the CodeAnt AI Security Research
Team.

RESOLUTION
==========

Applying the appropriate set of attached patches resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa523-?.patch           xen-unstable - Xen 4.19.x
xsa523-4.18-?.patch      Xen 4.18.x - Xen 4.17.x

$ sha256sum xsa523*
87562e68c584dcc6b568348e7ba6cfde592798cb89f372364792afda65aa6895  xsa523-1.patch
9cd4e76fa3587f491f5bb0f895f375fcf24df8bd9bdf602c343081e7411b92f0  xsa523-2.patch
c1accb1fa55176cb6191e091d93198068630acbc6529966738669a43d5c2e38e  xsa523-4.18-1.patch
efc16fe8830066276fb50f01f24a358194a752507077fdb61a60f891dc1a7019  xsa523-4.18-2.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrpzHcMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZYTAIALOhpiCcbIvbmpr8/yLSFfLXJ30HIq+rihtrrwHi
IYuUujGKDMMfZ+peGDzjUvWdSpeccHVqzxYyQbeqKN+bxeiRHyPaquaKGgMJgPgg
aI8/Ee5zeCBESEsAAI6Z6REXPT/ViL1MY4+gI8cGjD3CIfoBoBhHqDBxtDlkNtH6
bFH4E6CsLGPe1PELDBjEaqwFPiY03DItRBywXi9ygfATn47EnViQOlGSZm4cMIaX
wdT5dJKydXjvscrglijQSKUzhqC8qaTPwxF7pNPZWjw06QNBQUvLQi68iWgA1Hp/
ACiQV+gJuY+qEH93+UbQkxl7k0DBXfZLo6CxdrKupI3MVB4=
=SYnT
-----END PGP SIGNATURE-----

Download attachment "xsa523-1.patch" of type "application/octet-stream" (1261 bytes)

Download attachment "xsa523-2.patch" of type "application/octet-stream" (2321 bytes)

Download attachment "xsa523-4.18-1.patch" of type "application/octet-stream" (1328 bytes)

Download attachment "xsa523-4.18-2.patch" of type "application/octet-stream" (2323 bytes)
