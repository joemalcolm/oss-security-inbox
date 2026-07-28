X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/18
Message-Id: <E1wogYb-003Dnj-1I@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:13 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 502 v3 (CVE-2026-62429) - vNUMA domain cleanup may race other operations
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-62429 / XSA-502
                               version 3

            vNUMA domain cleanup may race other operations

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

Accessing the vNUMA configuration data of a guest is still possible when
domain destruction has already started.  The cleaning up of that
configuration information is not synchronized with its retrieval by a
device model controlling the guest.

IMPACT
======

While Denial of Service (DoS) affecting the entire host and information
leaks and are the prevailing effect, a device model stub domain or a
de-privileged device model running in the control domain may also be
able to elevate its privileges to that of the host.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.5 onwards are vulnerable.  Xen versions 4.4 and
earlier are not vulnerable.

Only entities controlling guests (on x86: HVM guests) can leverage the
vulnerability.  These are device models running in either a stub domain or
de-privileged in Dom0.

Only guests which have vNUMA enabled allow their controlling entities to
leverage the vulnerability.

MITIGATION
==========

On x86, running only PV or PVH guests will avoid the vulnerability.

Not enabling vNUMA for HVM guests will also avoid the vulnerability.

CREDITS
=======

This issue was discovered by Teddy Astie of Vates.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa502.patch           xen-unstable - Xen 4.22.0
xsa502-4.21.patch      Xen 4.21.x - Xen 4.19.x
xsa502-4.18.patch      Xen 4.18.x - Xen 4.17.x

$ sha256sum xsa502*
e6150a6c468906a1bbcd4b9fca1f28cf3dc2c4617d6aab7c48507dbac003df82  xsa502.patch
f780c280539aedb3eeb4f5a43f3d2f4bc5a112ca1a2d7ad6a95eb2fbdc5f5cc8  xsa502-4.18.patch
a0b2b6f543a566e997a9f38bbd718cc81e8de8e7b442ff47e92260f70e66f647  xsa502-4.21.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches described above (or others which are
substantially similar) is permitted during the embargo, even on public-
facing systems with untrusted guest users and administrators.

HOWEVER, deployment of the mitigation is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because no longer exposing vNUMA is a guest visible configuration
change, which may lead to re-discovery of the issue.

Deployment of this mitigation is permitted only AFTER the embargo ends.

AND: Distribution of updated software is prohibited (except to other
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomrQMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ58sH/2CogHDnmyLVcaB68ySxCnCZI5qNt0VonyH4n3s0
Ef4H74nwh3osLXrvkcnXvbrH4hqDKI3MtydScfHc5dpa1rQHXO8utHxZtGUU+CSv
A1nSYD42pu96V5xvTXO+xK5sCZoBREgUNS2TGCE02dkwXdngsCWnAPFn1BQi7wsG
LJWuzurlSRSc28PPuIEaKJM+eiyG88ep5fADrLycVPvltqd6bktEE1Xa82h5iSYd
9K7KTEDT9Kc0HZEg4x0h2OBwVqGdKF+8FHDNCEtpiwtE2Ao6OycTVzGNX7f+fq4/
CeQjI8I94j/r1zVPtuGBHNVkUdgrCIe36156RC7f1LFy0JM=
=7hf1
-----END PGP SIGNATURE-----

Download attachment "xsa502.patch" of type "application/octet-stream" (3869 bytes)

Download attachment "xsa502-4.18.patch" of type "application/octet-stream" (3877 bytes)

Download attachment "xsa502-4.21.patch" of type "application/octet-stream" (3878 bytes)
