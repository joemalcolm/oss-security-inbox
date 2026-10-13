X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/5
Message-Id: <E1xGbcZ-0000000F8jX-2Ydd@xenbits.xenproject.org>
Date: Tue, 13 Oct 2026 12:28:43 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 516 v2 (CVE-2026-79609) - x86: XPTI may break on huge-memory systems
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-79609 / XSA-516
                               version 2

              x86: XPTI may break on huge-memory systems

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

XPTI (Xen Page Table Isolation) was introduced to mitigate Meltdown
(CVE-2017-5754, one aspect of XSA-254).  This involves copying 64-bit PV
guest page table entries from guest-chosen root page tables to the Xen-
chosen one which is in actual use by hardware.  To read the guest root
page table, the directmap is used.  PV guests, however, have a directmap
which may not cover all memory; in particular this is the case if any
memory extends beyond the 5 TiB (CONFIG_BIGMEM=y: 3.5 TiB) address
boundary.

IMPACT
======

A 64-bit PV guest may be able to elevate its privilege to that of the
host.  It is also possible for them to observe information pertaining to
other guests, or to cause Denial of Service (DoS) affecting the entire
host.

VULNERABLE SYSTEMS
==================

All versions of Xen with the XPTI work backported to are affected.  In
upstream these are Xen 4.7.5 and onwards, Xen 4.8.3 and onwards, Xen 4.9.2
and onwards, Xen 4.10.1 and onwards, and all major releases from 4.11
onwards.

Only 64-bit PV guests can leverage the vulnerability.  HVM and PVH guests
cannot leverage the vulnerability.  32-bit PV guests haven't been security
supported anymore.

Only x86 systems are affected.  Arm systems are not affected.

Only systems with RAM above the 5 TiB (CONFIG_BIGMEM=y: 3.5 TiB) boundary
are affected.  Systems with no RAM above the 5 TiB (CONFIG_BIGMEM=y: 3.5
TiB) boundary are not affected.

MITIGATION
==========

Not running 64-bit PV guests will avoid the vulnerability.

The "mem=" hypervisor command line option may be used to limit the amount
of memory Xen is going to use.  That would be "mem=5T" for the
CONFIG_BIGMEM=n case and "mem=3584G" for the CONFIG_BIGMEM=y one.

CREDITS
=======

This issue was discovered by George Dunlap.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa516.patch           xen-unstable - Xen 4.19.x
xsa516-4.18.patch      Xen 4.18.x
xsa516-4.17.patch      Xen 4.17.x

$ sha256sum xsa516*
aff590335eed173a2f67375829a25682983cacf14ff170d25e636533552ecaa8  xsa516.patch
06b818ca56dff7ccc1f4842e9977a0eee283c516959980c85cf9d54d1c0abdb0  xsa516-4.17.patch
09d87137da9d5065227c808a1150cdbb878ae05785d6929de0754184313546fa  xsa516-4.18.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrOIjwMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ0LoH/Ap814NnaDiHkPGqPWg0/N8gEJmPgUvSXXsjI8gb
t+aLjuG3tI6j12jWtohBj67RiDAYWc3mAaqr7c9tb1Bi24IyenZIf8gAvkS72sUi
Hl4WPCMcmgp0xM8s9b1peep5XTSVH1s+xDLGmBx21jXhoop1IJ5Na9VV2PcX50MJ
assI8h4VE9xAYnMzMbd14IzbGXWylAZLdJYLGBoI06X7eZvPNPUvkktJaMqmSJgS
IeJuUKK8pb5AFlefSxzcu007olRLhXxQrbkKXbwnyS+ZXI9r02hh8njPUTy8p/PG
sLS5NNIHalXlxIOtQ20H+Hbi0n80nKn2T3ctjsKkmBGUioU=
=KASN
-----END PGP SIGNATURE-----

Download attachment "xsa516.patch" of type "application/octet-stream" (10715 bytes)

Download attachment "xsa516-4.17.patch" of type "application/octet-stream" (8148 bytes)

Download attachment "xsa516-4.18.patch" of type "application/octet-stream" (8157 bytes)
