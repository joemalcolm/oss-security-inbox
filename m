X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/19
Message-Id: <E1wogYf-003DpD-15@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:17 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 503 v2 (CVE-2026-62430) - x86: Out-of-bounds read in vRTC emulation
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-62430 / XSA-503
                               version 2

               x86: Out-of-bounds read in vRTC emulation

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Accesses to the CMOS memory contents are done using an indirect IO port
pair.  Therefore Xen needs to cache the guest chosen index, and one of
the usages of the index didn't take the necessary locking to avoid
concurrent changes.  As a result, a guest could change the index after
it being checked, causing a subsequent out-of-bound read access to the
contents of an array.

IMPACT
======

An attacker can read out-of-bounds, this is limited to Xen data, and not
data belonging to other guests.

VULNERABLE SYSTEMS
==================

All Xen versions from 3.2 onwards are vulnerable.  Xen versions 3.1 and
earlier are not vulnerable.

MITIGATION
==========

Running only PV or PVH guests will avoid the vulnerability.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa503.patch           xen-unstable - Xen 4.19.x
xsa503-4.18.patch      Xen 4.18.x - Xen 4.17.x

$ sha256sum xsa503*
86ffb287767aa410e2c6b970db5167d743ca3c788b43522d46d06f41caead929  xsa503.patch
3a09ea83f092ade72c8d107c91b480f44e5c865d7f36306db8490403db9aa7ed  xsa503-4.18.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomrgMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZMg8H/0FuxuDZLnfvFfa8uGtWBokPW93kxSjCoPG3obbR
pJ4IqULRNrdMQfo+3ssrppoH41/ADzatAkbB6seW7UWhVmXCFBE19ZELGXtkn1bh
GU68jjUq4u4BgQSIXsapcN2wNPahVOnD8+N5dayb+/zde8aBST10xhT3tmvNnR5k
dI4t1W3LOXqO4QPXKua7ipLGzTnnzkgHflssYbyclmL2qq82frDUCl5Kf8EDkzhC
I2YigSVjYsreQHIYUpeGADB7/Xpr/ARnqaWi2cB9O3FhlkvJDIWOAR3fUuIfZnim
ASzMZSPwRQ8Mo2TuzSSXjG2oIVkZy8+6thia9cZLuP18UzY=
=UuFk
-----END PGP SIGNATURE-----

Download attachment "xsa503.patch" of type "application/octet-stream" (1911 bytes)

Download attachment "xsa503-4.18.patch" of type "application/octet-stream" (2086 bytes)
