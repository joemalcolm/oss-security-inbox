X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/8
Message-Id: <E1x3uVJ-00GkHd-0R@xenbits.xenproject.org>
Date: Tue, 08 Sep 2026 12:00:45 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 511 v3 (CVE-2026-79603) - Unconditionally do TLB flushing ahead of page scrubbing
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-79603 / XSA-511
                               version 3

        Unconditionally do TLB flushing ahead of page scrubbing

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

x86 PV guests can free memory pages while still keeping a stale TLB entry
pointing to them.  A TLB flush is only issued by Xen (if needed) when the
page is re-used.  Since it's possible for the page to be scrubbed ahead of
the TLB flush, there's a window where a PV guest can modify an already
scrubbed page.

IMPACT
======

Deployments using `xsm=silo scrub-domheap` with the aim of not allowing the
exchange of information amongst guests are not effective in the presence of
PV guests.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.13 onwards are vulnerable.  Xen versions 4.12 and
earlier are not vulnerable as they lack the `scrub-domheap` command line
option.

Only x86 PV guests can exploit the vulnerability.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Roger Pau Monné of AMD.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa511.patch           xen-unstable - Xen 4.22.x
xsa511-4.21.patch      Xen 4.21.x
xsa511-4.20.patch      Xen 4.20.x
xsa511-4.19.patch      Xen 4.19.x
xsa511-4.18.patch      Xen 4.18.x - Xen 4.17.x

$ sha256sum xsa511*
ba3731960983ef88836f96655f917abb25447eab69fda1d9cf7f4e8203138403  xsa511.patch
c05a2d9fb391739a9ed39aa9247be264eb039bdac74f2db3b51e20199e6234cd  xsa511-4.18.patch
9653110b3e82ea5c28185d436b22231f39d6e875712a7c9c6882d8cb1bd0d406  xsa511-4.19.patch
0a475b8622d867210346612c5f97a9c3b7b638de2704d51fbd86317b6b11a840  xsa511-4.20.patch
61aa358aef962a1e4dda3dd45cac7436e395362e9b5f9314ad3c60d39231cb97  xsa511-4.21.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmqf98YMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZf6EH/3BoQ+95hSDLUYJzmWNdjdqwYpyrWe1RaMcXWfuM
DuvbkEd6SIrtkhEmO8ZHSiBm2g5v9/SyXrm0L4NZ2+LcZWbOAx0PK9D3DOjpIZk2
LpQJg75GPWLkBZ62vgZlCzcXa0opVNSrmnJvYimoHvdplMpFQOhd7Ve3988XCx1G
Mb7tKeQ7IdgAW0P/gMTGpunGL9dF58N2d8H5qbp5695tneszzW1UtAVB+4BxlEuh
WenQ1hJVtEWznRTYvaEJ7v6CYBoY7TmeYkpZviGhTj8cuTWguMNrKuSitPkRNJ+P
OLIQ/pz3E6PGhJxXWw8BpjkDzHf9ETACu1g+sa+18z6/+1o=
=/FMW
-----END PGP SIGNATURE-----

Download attachment "xsa511.patch" of type "application/octet-stream" (7746 bytes)

Download attachment "xsa511-4.18.patch" of type "application/octet-stream" (6527 bytes)

Download attachment "xsa511-4.19.patch" of type "application/octet-stream" (6377 bytes)

Download attachment "xsa511-4.20.patch" of type "application/octet-stream" (7748 bytes)

Download attachment "xsa511-4.21.patch" of type "application/octet-stream" (7754 bytes)
