X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/16
Message-Id: <E1wogYV-003DkN-2W@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:07 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 500 v2 (CVE-2026-62428) - grant-table: type confusion in grant-copy
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-62428 / XSA-500
                               version 2

               grant-table: type confusion in grant-copy

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

When grant-copy operations are processed, the respective grant may or may
not already be in use by another operation (a mapping or another copy).
For all copy operations the referenced guest frame is looked up.  When
another operation is already active for the grant (the grant is "pinned"),
what is being supplied back to actually carry out permission checks and
copy operation may not be consistent: The permission check may be carried
out on a page different from the one involved in the copy.

IMPACT
======

An unprivileged guest may be able to elevate its privileges to that of the
host.  Information leaks and Denial of Service (DoS) are possible as well.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.2 onwards are vulnerable.  Xen versions 4.1 and
earlier are not vulnerable.

Xen versions 4.13 and newer offer a way to build Xen without grant table
support.  Such hypervisors (CONFIG_GRANT_TABLE turned off) are not
vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Roman S.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa500.patch           xen-unstable - Xen 4.18.x
xsa500-4.17.patch      Xen 4.17.x

$ sha256sum xsa500*
e09e06ef5d4044b4c6104ae83d5e509d45495d7bab1da73f2beb7a916d24f462  xsa500.patch
5fabb02fd4cc62f58a07a8322883b04c638832f65fdf0216a0efde6229d1fd73  xsa500-4.17.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomrEMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ4B4H/1dGUPMt2yREv0C6uHyxT50MoAwaZ01A6Dwm2CNm
2eIjsJGeF3mtlw0T4c6hCmF7fcULFJMcPkJi09TS38ADIOBpivgP+tRkRa+ZRPtG
E6vpRtlHmD57WVPWRfTM0uk6UL/CCyvlUILR8A9lu7tF5PFef3Dzeiqpuh/rMNPx
DmEcn3Mw8DpKvkoMIVJd1TgAtFX0KwWwByxClUIV84K2SBvcNxVoiw2fkKkx1HRa
lB7sVEkKliUyIN/uWmh1VcLshQuulHYNcnkq7ErCEIQqo30ay6WER6W5TS0cfh/F
OUSQWlWzkht2GY0pRXp5UQaBFc8UCsOnVty8DhvLrCyllSk=
=gRtn
-----END PGP SIGNATURE-----

Download attachment "xsa500.patch" of type "application/octet-stream" (1852 bytes)

Download attachment "xsa500-4.17.patch" of type "application/octet-stream" (1844 bytes)
