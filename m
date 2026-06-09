X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/14
Message-Id: <E1wWv8t-00CR1E-1u@xenbits.xenproject.org>
Date: Tue, 09 Jun 2026 12:01:15 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 494 v3 (CVE-2026-42488) - x86: mismatched mapcache metadata
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-42488 / XSA-494
                               version 3

                   x86: mismatched mapcache metadata

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

Some shadow paging errors paths will switch the page-tables without
updating the currently running vCPU reference.  This causes a mismatch
between the loaded page-tables and the mapcache metadata which can lead
to corruption of the mapcache.

IMPACT
======

Privilege escalation, Denial of Service (DoS) affecting the entire host,
and information leaks.

VULNERABLE SYSTEMS
==================

Xen 4.15 and onwards are vulnerable.  Any Xen version with the fix for
XSA-438 applied is vulnerable.

Only x86 systems are vulnerable.  Only 64-bit PV guests can leverage the
vulnerability, and only when running in shadow mode.  Shadow mode would
be in use when migrating guests or as a workaround for XSA-273 (L1TF).

MITIGATION
==========

Running only HVM or PVH guests will avoid the vulnerability.

Running PV guests in the PV shim will also avoid the vulnerability.

CREDITS
=======

This issue was discovered by Roger Pau Monné of XenServer.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa494.patch           xen-unstable
xsa494-4.21.patch      Xen 4.21.x
xsa494-4.20.patch      Xen 4.20.x - Xen 4.19.x
xsa494-4.18.patch      Xen 4.18.x
xsa494-4.17.patch      Xen 4.17.x

$ sha256sum xsa494*
6e3328f73000afdfffa5e4d9fec89a4c9456d97758bfa1a0605765a386565328  xsa494.patch
483675d6cb69b70e919110f58814b047787c3b53def344cf32f4acdd7ee9b271  xsa494-4.17.patch
e637dce8cd5ecf7c30501ab2eb0af5240ff0a36844b257ca7dd14094d5118aa2  xsa494-4.18.patch
a70aa60fb5dcf171025c5d90e332dcae95a83bbf9d42ab45451f629621f455e5  xsa494-4.20.patch
14f9698060c523893f710cc5ab3ec723c75a99e5caa193b9281d4a06016bf687  xsa494-4.21.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmon+5MMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ+HcIAIpJbk3ISxjsn0ZFBXR01iOGubj+Y/vKE4mdJe1y
1//aeWPL26enDoyZ5KoT+hiC2qogTfT1p71MIS0Gns44UfVOw95xlrd0eUO//5td
NQk7YFYn/WB+z9KWcdV8+Lo3zKiMNFiILCeK2+WefByfBQfZ/WFBQ48WZpxnkxHo
j7cgtmtmTStmIDEWxY0pfdEWHPCBGX3SvUGWKR2tl5tZZxjd+yIij4fjLzUCKxU3
r4dYblTAg0JyDsI2SR16TLRSKyWxnwprzlb2fJEDsZXoZvIetf6jhHpvfFY+Z2m1
zlLfFDam+oGQI1CwrMNCz69AaeJzyTnRdiY+BM51lpgdjj0=
=pLmw
-----END PGP SIGNATURE-----

Download attachment "xsa494.patch" of type "application/octet-stream" (14868 bytes)

Download attachment "xsa494-4.17.patch" of type "application/octet-stream" (13910 bytes)

Download attachment "xsa494-4.18.patch" of type "application/octet-stream" (14797 bytes)

Download attachment "xsa494-4.20.patch" of type "application/octet-stream" (14880 bytes)

Download attachment "xsa494-4.21.patch" of type "application/octet-stream" (14889 bytes)
