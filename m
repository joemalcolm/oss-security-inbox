X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/10
Message-Id: <E1xGbct-0000000F9PF-18JY@xenbits.xenproject.org>
Date: Tue, 13 Oct 2026 12:29:03 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 521 v2 (CVE-2026-102701) - tapdisk: Out-of-bounds access in tap_ctl_connect_xenblkif()
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

           Xen Security Advisory CVE-2026-102701 / XSA-521
                              version 2

      tapdisk: Out-of-bounds access in tap_ctl_connect_xenblkif()

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Tapdisk is a userspace xen-blkback implementation used by the XAPI
toolstack.

During connection, multi-page rings may be negotiated between the
frontend and backend.  Tapdisk had no boundary check on the size
requested by the frontend, and assumed it did not exceed 8.

IMPACT
======

A buggy or malicious guest can cause a stack overflow in tapdisk,
potentially leading to code execution.  Tapdisk normally runs as root.

VULNERABLE SYSTEMS
==================

All versions of tapdisk are vulnerable.

MITIGATION
==========

There are no mitigations.

CREDITS
=======

This issue was discovered by Claude Opus and diagnosed as a security issue
by Teddy Astie of Vates.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa521.patch           blktap master

$ sha256sum xsa521*
72ece150e9d0836f217f3382c8dc76cd51bffbe4b7610c00f219b90e5600cbc5  xsa521.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrOIvgMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZgdgIAKXTyop/90HNxeBpRVbYP2vrPCm2YBMzoc3YtxdM
0wWdbFvUptHWnzypCWuUGJWq8ZFf4lInnkJrj0sJ9te+OSQDqcfwTMEQuDWzBM08
lQ27H0kcum3rble2V2CFCK4uOoLYwOYX/bA5vCeGiiPQcUU3m++6IoAMaRY7G2V7
RTNJmNCtbGiC7l3ExUX9KxnFCSaX9gL99YkygybBecSsjJhdlGZj7pzvJtomv1sC
fVSAFmXkivLGKX8TXQdj/48xmdqNSIQgYbdSdyZgGjmy7bxIgxB576FHwlN/fzf7
ZzpeEO8yZTFWeCJCKZavvjsq/7u2vxUtpoL3c81vSKWCOLc=
=w1aW
-----END PGP SIGNATURE-----

Download attachment "xsa521.patch" of type "application/octet-stream" (2560 bytes)
