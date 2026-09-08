X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/6
Message-Id: <E1x3uVB-00GjSA-2j@xenbits.xenproject.org>
Date: Tue, 08 Sep 2026 12:00:37 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 509 v3 (CVE-2026-62437) - x86: DMs may cause mem leak by IRQ binding
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-62437 / XSA-509
                               version 3

              x86: DMs may cause mem leak by IRQ binding

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

When guests are terminated, various pieces of cleanup need carrying out.
The cleaning up of PCI devices which were assigned to guests, and the
associated removal of tracking structures for IRQs used by the devices
occurs relatively early in the process.  Unfortunately after that point
the guest about to be terminated could cause its device model (DM) to
re-establish such tracking structures, by having it bind one or more IRQs
anew.  While some of those tracking structures would still be cleaned up
later on, at least one would not be.

IMPACT
======

A HVM guest with one or more PCI devices assigned can cause a memory leak
in the hypervisor, possibly leading to Denial of Service (DoS) of the
entire host.

VULNERABLE SYSTEMS
==================

All Xen versions from at least 3.2 onwards are affected.  Older versions
have not been inspected.

Only HVM guests with assigned PCI devices can leverage the vulnerability.

MITIGATION
==========

Running only PV or PVH guests will avoid the vulnerability.

Running only HVM guests without passing through PCI devices to them will
also avoid the vulnerability.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa509.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa509*
1e027737afa753f3498102ceac4abe62b11a49cfa019f25bb19728a7931f9096  xsa509.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patch described above (or others which are
substantially similar) is permitted during the embargo, even on
public-facing systems with untrusted guest users and administrators.

HOWEVER, deployment of the mitigation is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because removing/replacing of pass-through devices or their
replacement by emulated devices is a guest visible configuration
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmqf970MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ6hYIAIDrF44cxjA9slR5fXYXpQvlGHE8wvTr5F5vNdXO
JlB8yMQjdUPMfSLX0oMPapUwLE/UzFFA/MTXORrK6nj3TbRRHLqF9e9upL6e3QHH
RrV4m2R5OSVjD6PG+T+e24ES5I4SLUTWv9i4vQZPzY54rjMtZ4d53DZk2eQ5v9kj
ozYgQzwk5vMvRhnPv6MVdcBr2EfQ274+XxMKioMBZaFuv+zeomaQTAiok8gXhotX
6twiuhuhvMOtF2FA8V1WkKwUqw5NKm/plv54d8RRB/XNdxPe/8bxY0NlLGgRpMf3
cjSqsuhpEgpY3Vh62v3S0fAtExnWppdb/glJE+g4MZGzC7s=
=J7JJ
-----END PGP SIGNATURE-----

Download attachment "xsa509.patch" of type "application/octet-stream" (1158 bytes)
