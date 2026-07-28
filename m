X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/17
Message-Id: <E1wogYY-003Dm1-2W@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:10 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 501 v4 (CVE-2026-62435,CVE-2026-62436) - grant-table: version change racing with other operations
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

     Xen Security Advisory CVE-2026-62435,CVE-2026-62436 / XSA-501
                               version 4

       grant-table: version change racing with other operations

UPDATES IN VERSION 4
====================

Properly sync backports with staging patch (there was no functional issue,
just a code arrangement one).

Public release.

ISSUE DESCRIPTION
=================

With the introduction of Grant Table v2 came the requirement to be able to
switch between versions.  Switching from v1 to v2 reduces the number of
valid grant references, as a bigger shared entry structure is then needed
while the shared table doesn't change size.  Switching from v2 back to v1
the status frames, which are separate in v2, go away.

Code holding, but intermediately dropping and then re-acquiring the grant
table lock, sometimes wrongly assumes that said properties wouldn't change
across the window in time where the lock is not being held.

The v1 -> v2 issue is CVE-2026-62435.

The v2 -> v1 issue is CVE-2026-62436.

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

This issue was discovered by Mark Esler.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa501.patch           xen-unstable - Xen 4.19.x
xsa501-4.18.patch      Xen 4.18.x
xsa501-4.17.patch      Xen 4.17.x

$ sha256sum xsa501*
e856d64f5b1a16dbb3d7ec19140f24eca508b62de0d25036fa5735cdd5b72be6  xsa501.patch
e006c4fe0a35698318eca59ce828202cac19327f5139d51645116124fc3126e8  xsa501-4.17.patch
10477adfd82fa09123f08497d6a5d44ae61f48d026590ce262cac65f482b2d97  xsa501-4.18.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomrIMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZc98H/0wOjr4aa/IMxNH41B8p6vx1ayiBDvTV8qWgmjf9
AyjNGWG5sAjViMDjtFMUE/CeOeoby+gPRfzop9L7cjlHzy8+y/5s9oRUzC+0VIDq
1V5SBbD0XzhqujoLj5LBF0M1a/EyAJzYeVIV3t1DL6yFAz9YRpUGz6pNAwnF0dui
bfNZcT2K0+BV0YHUQMrEkAUd+PV/mObG8AiVDS8j9BU8sGN4m1Wx2hsYzqYBCXpK
T3lT8dG9qaYcnlH+m9jfWFIE2Srr9a2rLdCMs4dHY1CB/FmZLRrWe304yFuQntET
OGiyZWW86cjmANEKAjrYHSD/CRa81gBqdxiAH/N13zBxZ7I=
=VVHS
-----END PGP SIGNATURE-----

Download attachment "xsa501.patch" of type "application/octet-stream" (10771 bytes)

Download attachment "xsa501-4.17.patch" of type "application/octet-stream" (10507 bytes)

Download attachment "xsa501-4.18.patch" of type "application/octet-stream" (10598 bytes)
