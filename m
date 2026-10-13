X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/8
Message-Id: <E1xGbcm-0000000F959-03cI@xenbits.xenproject.org>
Date: Tue, 13 Oct 2026 12:28:56 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 519 v2 (CVE-2026-102699,CVE-2026-102702) - Arm: multiple issues with GNTTABOP_cache_flush
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

   Xen Security Advisory CVE-2026-102699,CVE-2026-102702 / XSA-519
                              version 2

            Arm: multiple issues with GNTTABOP_cache_flush

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

1) XSA-437 (CVE-2023-34321) addressed issues with overflows in
   calculations involved in guests flushing caches through
   GNTTABOP_cache_flush.  Unfortunately the fix there introduced a
   calculation which may underflow, resulting in a loop which would - at
   least on 64-bit Arm - take excessively long, and which would likely
   eventually crash the hypervisor.

   This is CVE-2026-102699.

2) GNTTABOP_cache_flush may be issued on memory mapped from another
   domain using the grant table interface.  However there was no
   restriction to disallow the use of invalidate-without-clean against
   read-only grant mappings, which may corrupt the granted memory.

   This is CVE-2026-102702.

IMPACT
======

A malicious unprivileged guest may crash the hypervisor, causing a
Denial of Service (DoS) affecting the entire host, or corrupt memory
belonging to another domain.  Privilege escalation and information leaks
cannot be ruled out.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.5 onwards are vulnerable.  Xen versions 4.4 and
earlier are not vulnerable.

Only Arm systems are vulnerable.  x86 systems are not vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

CVE-2026-102699 was discovered by Leonid Komarianskyi of EPAM.  It was
later independently reported by Ayan Kumar Halder of AMD.

CVE-2026-102702 was found by the security team while looking at the
surrounding code.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa519-?.patch           xen-unstable - Xen 4.21.x
xsa519-4.20-?.patch      Xen 4.20.x - Xen 4.17.x

$ sha256sum xsa519*
3abfe7776402ba82d54b72163427694055cc3a5a729fd50a15af58699fef7903  xsa519-1.patch
6f09a24c5c793570e290ec853220099c617e372d96b93f938439ac4a18191dd2  xsa519-2.patch
1ed852f7e22fafe75e278dc913377fda5b0b73c8af51fe872684eb5b0bcb9597  xsa519-4.20-1.patch
df5ba864761f3274df817fa362e234afb4b5e3f95b47daf25a307ac3d922aab6  xsa519-4.20-2.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrOIrAMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ9ccIALBHbUY7GDoW1oFxKSpvrFFzwdSeq+yR7Y+cnBy7
6j9ehJE2zC1qLqHy0MQjFcmdSvdm/1Qy4CZ+cZgKtOMCeOvV8OwA6QkuHV5fch0f
2wHq71u/9p7wWhsILb9EHaUHBFNXiQ+joahKPyX4FHwz2aCB+aodqCRMsvk0Kd7K
PSX4FotvGHSfgxrdzP6oLPOrmvVwy91ienOabE7QMTW2anghDIFVfjycYuebfXxF
S+d7ciAcHdd72fOhM/wVlXZohslxw14ESJYZMUOvha8godQjPwCtT/A/SDc/k0Et
98xImFp4NU9W4Pk42eS+JUs3KNLWFapzVePRQ0Ku80Ia6wg=
=xgyt
-----END PGP SIGNATURE-----

Download attachment "xsa519-1.patch" of type "application/octet-stream" (4994 bytes)

Download attachment "xsa519-2.patch" of type "application/octet-stream" (2653 bytes)

Download attachment "xsa519-4.20-1.patch" of type "application/octet-stream" (4705 bytes)

Download attachment "xsa519-4.20-2.patch" of type "application/octet-stream" (2661 bytes)
