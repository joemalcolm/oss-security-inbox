X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/14
Message-Id: <E1wogYJ-003Ddz-0e@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:04:55 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 497 v2 (CVE-2026-42494,CVE-2026-42495,CVE-2026-62423,CVE-2026-62424,CVE-2026-62425) - buffer overruns in libfsimage iso9660 handling
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

 Xen Security Advisory CVE-2026-42494,CVE-2026-42495,CVE-2026-62423,CVE-2026-62424,CVE-2026-62425 / XSA-497
                                                  version 2

            buffer overruns in libfsimage iso9660 handling

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

The directory and Rock Ridge / SUSP walk in libfsimage's iso9660 driver
derives several lengths directly from attacker-controlled on-disk fields
without validating them:

 * The directory loop itself assumes a good record length.  This is
   CVE-2026-42494.

 * The calculation of the System Use area may underflow.  This is
   CVE-2026-42495.

 * The Rock Ridge extension loop assumes a good (inner) record length.
   This is CVE-2026-62423.

 * The Rock Ridge NM record processing assumes a good entry length.
   This is CVE-2026-62424.

 * The Rock Ridge CE record processing assumes a good size and offset.
   This is CVE-2026-62425.

IMPACT
======

A guest using pygrub can escalate its privilege to that of the domain
construction tools (i.e., normally, to control of the host).

If the mechanism introduced by XSA-443 (see the mitigation section below)
is in use, then the guest can only escalate to this limited context.

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

CREDITS
=======

This issue was discovered by Syed Abdul Khaliq of BugQore.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa497.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa497*
65925ac5a322b9eacc8538d6486e3e37ddcb83fe6f02f61c18216ccd2770f964  xsa497.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomq0MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZyesH/0dz6MuK3DsILiWvYuGNuX//RcdpBlQtLmyQR382
vpoicCuEAJLJlZFZsPddIxjTxte77nbFs2Ih51br95J//ou6sX7q6V9wDGt4EHDK
pF4ECI8SCkHDszogIDGDFiSdi7V7VknGpLCjFtINaAcaRLMHx+MMcdMV80IZyoXw
8p2XY7xvaXyo90I1FiecN7yU0H49sYJswLvihJU55hDuBZ25HLe2K59UGs2uaVm2
J0QKIBi3k20kZ5p9diny+cjU81fVu8LwGPKjvK3KUoyNnFsNbsO5owrAq2w/FSbE
1K54Lj6FXk0w08c4S0kz4zLXKLhSeCl7hFvqUpmQAXaN7ew=
=0lw8
-----END PGP SIGNATURE-----

Download attachment "xsa497.patch" of type "application/octet-stream" (6563 bytes)
