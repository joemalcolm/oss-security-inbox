X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/6
Message-Id: <E1xGbcd-0000000F8nY-3bRd@xenbits.xenproject.org>
Date: Tue, 13 Oct 2026 12:28:47 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 517 v2 (CVE-2026-79610) - grant-table: double version change race
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-79610 / XSA-517
                               version 2

                grant-table: double version change race

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

XSA-501 was about issues with v1 -> v2 and v2 -> v1 changes racing certain
other grant table operations.  Sadly a v2 -> v1 -> v2 change has yet
another effect which wasn't accounted for: During the first change, status
pages would be freed.  During the second change they would be allocated
again.  Hence across the full pair of change the addresses of the status
pages may change, rendering stale previously calculated pointers into the
status array.

IMPACT
======

An unprivileged guest may be able to elevate its privileges to that of the
host.  Information leaks and Denial of Service (DoS) are possible as well.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.0 onwards are vulnerable.  Xen versions 3.4 and
earlier are not vulnerable.

Only x86 guests permitted to use grant table version 2 interfaces can
leverage this vulnerability.  On Arm, grant table v2 use is explicitly
unsupported.

Only multi-vCPU guests can leverage this vulnerability.

Xen versions 4.13 and newer offer a way to build Xen without grant table
support.  Such hypervisors (CONFIG_GRANT_TABLE turned off) are not
vulnerable.

MITIGATION
==========

Using the "gnttab=max-ver:1" hypervisor command line option will avoid
the vulnerability.

Using the "max_grant_version=1" guest configuration option for guests will
also avoid the vulnerability.

CREDITS
=======

This issue was discovered by Claude Opus and diagnosed as a security issue
by Teddy Astie of Vates.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa517.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa517*
0f114af84cd925f8bc69b26386e2e4a95a52f947bc400f961a9e1ba46c0a2e05  xsa517.patch
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

This is because restricting the available grant table version is a guest
visible configuration change, which may lead to re-discovery of the issue.

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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrOIlkMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZAGUH/3wERoCBP6lIwfFmIMiAcqVVctqz6/8OgplQEp8A
inNRPR8Avx++0lt4AdERiNYy3xwxGAZzJsxYC3ipCaHvMwOmm11DiMX5yuhvefNw
TJxWaWut2QmF0Vi0G4acvvlfslb9JA9quEgLDzF/2dMiyHzTL4xvdeJ5OR5zXAoD
hexjk0DCSDcYRHnD0OautofMGTaBaGJVHz08uRNkz3gOxumAeKnxmfelF8QgnTb3
jRYIt5z+Kye8oXZ0uTVY86YR7YbuiaHAJx1YZzceyfaVjJzvS8ZsTFt2CXshcex8
33fw3iQnY9ImA/NC11y4OLt8F8nb+Ge2Cge98wBt8NPSoBc=
=SAIu
-----END PGP SIGNATURE-----

Download attachment "xsa517.patch" of type "application/octet-stream" (1925 bytes)
