X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/22
Message-Id: <E1wogYp-003Dy5-0f@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:27 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 506 v2 (CVE-2026-62433) - correct buffer checks for DM_OP hypercalls
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-62433 / XSA-506
                               version 2

              correct buffer checks for DM_OP hypercalls

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Parts of the DM_OP handling code assumes the caller has provided the
required number of buffers for the given operation without any checking
being done.  As a result, certain operations might access stack
rubble as structures are possibly uninitialized.

IMPACT
======

A device model of a HVM guest can gain insight on the contents of the
Xen stack, thus possibly leaking data from other guests contexts.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.10 onwards are vulnerable.  Xen versions 4.9 and
earlier are not vulnerable.

Only entities controlling HVM guests can leverage the vulnerability.
These are device models running in either a stub domain or de-privileged
in Dom0.

MITIGATION
==========

Running only PV or PVH guests will avoid the vulnerability.

(Switching from a device model stub domain or a de-privileged device
model to a fully privileged Dom0 device model does NOT mitigate this
vulnerability.  Rather, it simply recategorises the vulnerability to
hostile management code, regarding it "as designed"; thus it merely
reclassifies these issues as "not a bug".  The security of a Xen system
using stub domains is still better than with a qemu-dm running as a Dom0
process.  Users and vendors of stub qemu dm systems should not change
their configuration to use a Dom0 QEMU process.)

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa506.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa506*
7fa79f0421eafa420f7af791ad35a96a769c945260d81419052611771347b411  xsa506.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomrwMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZNF4H/0c6JMsivAWWDIQ920Bwh7EEOKhMv3nGIrBqrN8/
TGKJNNoNQinhoQv9fnqwsHaiC8e49PNUJqTpEN8/o/b0obnl4Tw2JyUXFY1bZyaz
XNS85rkrUc0+Ue/Ka2464mmQ826TJXfaXG9CZYlC5cO/JtzX65ecMW4H7ju2tdnt
c9xK+I5kIQPwUwy3HUMrKFvWi+JIvpCzhuHYDH2iJDecmk42pOmnKtS54q6YO15n
c4xdn7aNyeECKQw4qUcjKC7zKRgrqFu5J3BlvXauZOkJCL50PK+OpWK6QV+fRNGy
N7dnY5w+1BMVrHywZI5iy8WqZtJoi6TOO1Gl0WcB07/vvJk=
=APkr
-----END PGP SIGNATURE-----

Download attachment "xsa506.patch" of type "application/octet-stream" (2424 bytes)
