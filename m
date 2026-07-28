X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/24
Message-Id: <E1wogYw-003E18-0s@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:34 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 508 v2 - pygrub is only supported in de-privileged mode
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

                    Xen Security Advisory XSA-508
                              version 2

            pygrub is only supported in de-privileged mode

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

XSA-443 and XSA-497 addressed specific issues in specific file system
drivers (libfsimage) used by pygrub.  Further issues were reported, and
yet more are to be expected. XSA-443 introduced a means to run pygrub
de-privileged.  Only this mode of operation is security supported from
now on.

IMPACT
======

A guest using pygrub can escalate its privilege to that of the domain
construction tools (i.e., normally, to control of the host).

VULNERABLE SYSTEMS
==================

All Xen versions from at least 3.2 onwards are affected.  Older versions
have not been inspected.

MITIGATION
==========

XSA-443 added a mechanism to run pygrub de-privileged.  Using this mode
will mitigate the vulnerability.

Ensuring that guests do not use the pygrub bootloader will avoid this
vulnerability.

For cases where the PV guest is known to be 64bit, and uses grub2 as a
bootloader, pvgrub is a suitable alternative to pygrub.

Running only HVM or PVH guests will avoid the vulnerability.

RESOLUTION
==========

Applying the attached patch documents this issue.  Patches for XSA-443
added additional functionality to pygrub and libxl in order to run pygrub
in a restricted environment using a specific UID.  Check xl.cfg man page
for information on the bootloader_restrict option.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa508.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa508*
f1e4b6490228b7fac61fd968229f98a3dfb782d56c6729d3fe01bc34c77fbd5c  xsa508.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomsAMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZLhoH/38QGcVs3Xc3KuskdvBx57IV/vW9XjNlVYSngmdm
lKzXTZhjrecrPZvwBbhuqOBXkaFQSL17+lLVK3xRAzv2dd5hn2PqXkMj06JSwcrh
haXN/JWUDwQtmJuLfGNkQ9P1W27oMXZ3pBGhv1SsEfD0mNiyC7ZZKizU291usZbF
6JMUGNUmQ1Dyom2CiylmJGmrNrHzKdfNqURc+DoSOctpS9vbT0U0xLtKYvbVr3cj
7DuITo1/gS/3pxiUw/7E5uR7zPusBGISP1ir5rBqTkgoMf2tJkt7tfygqJtrqnkU
BaUt0ZCo7NBKg71o0AESZIdO3Ddg2QD6xrymtI0BVqa0n1E=
=9mkq
-----END PGP SIGNATURE-----

Download attachment "xsa508.patch" of type "application/octet-stream" (881 bytes)
