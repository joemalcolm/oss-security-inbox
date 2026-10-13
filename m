X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/3
Message-Id: <E1xGbcM-0000000F8M0-0z6F@xenbits.xenproject.org>
Date: Tue, 13 Oct 2026 12:28:30 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 514 v2 (CVE-2026-79607) - Xenstore: Guests can crash xenstored during Live Update
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-79607 / XSA-514
                               version 2

        Xenstore: Guests can crash xenstored during Live Update

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

During Xenstore live update the state record for a Xenstore watch with
specified watch depth is written with two bytes missing.  This results
in an inconsistent state when reading the state back in the new Xenstore,
causing a crash of Xenstore or wrong Xenstore data.

IMPACT
======

An unprivileged guest can cause the Xenstore service to crash or to get
corrupted during a live update of Xenstore, causing a DoS of the host
regarding further domain administration actions.

VULNERABLE SYSTEMS
==================

Only systems running Xen 4.22 are vulnerable.  Systems running Xen 4.21
or older are not vulnerable.

Only systems running C xenstore either as daemon or as stubdom are
vulnerable. Systems running oxenstored are not vulnerable.

MITIGATION
==========

Not doing a live update of Xenstore avoids the vulnerability.

Switching to oxenstored avoids the vulnerability.

CREDITS
=======

This issue was discovered by Andrii Sultanov of Vates.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa514.patch           xen-unstable - Xen 4.22.x

$ sha256sum xsa514*
8774d9b45db75851560db70a9be06d5e379311bd3042d9049bc29456e141ae7d  xsa514.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches described above (or others which are substantially similar)
is permitted during the embargo, even on public-facing systems with untrusted guest
users and administrators.  Not doing a live update of Xenstore as a mitigation is
permitted.  Switching to oxenstored is not permitted, as this is a guest visible
configuration change.

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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrOIa8MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZB5YH+wf2251Z1DOOtQcCB1LV9vsunIaEGd5l7pHdIZ3a
3j9A6r/KGc+RtSgDB9TWCMgjKLbBfwivOxBHHhxjhejsfnUKUJNryJFLn86plFdu
VRrdk5pHmypNgb9mCf3KQ8BQputnuAu36QuIlw3F5z5XAanmyurT1QJKV0RXLrQF
J3ROkGAGYp6gHhPDBFwCi/dWE/I1PRfvi53oyPPflj2kAh3DPwycpPQV0JZommjC
ljh1uvyPMnwr76nnh5e4LmismWa9Gks/p3BQuF01w3Prj/vR4wRxLEMCPjhK6xV6
PLcKgrt+DGn/xwj7fEdaAVlXyh4YcxQlmUWHzaNm94Knq+8=
=BuOZ
-----END PGP SIGNATURE-----

Download attachment "xsa514.patch" of type "application/octet-stream" (1323 bytes)
