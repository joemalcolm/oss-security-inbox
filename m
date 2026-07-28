X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/23
Message-Id: <E1wogYs-003Dzb-3C@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:30 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 507 v2 (CVE-2026-62434) - PoD: Don't try to reclaim special pages
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-62434 / XSA-507
                               version 2

                PoD: Don't try to reclaim special pages

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

A guest started with Populated on Demand enabled (PoD) can attempt to
reclaim pages which aren't regular guest RAM.  This can cause corruption
of memory management state in Xen.

IMPACT
======

A buggy or malicious guest can cause corruption of Xen's state, leading
to crashes or other malfunctions.  Information leak and privilege
escalation cannot be ruled out.

VULNERABLE SYSTEMS
==================

All Xen versions from 3.4 onwards are vulnerable.  Xen versions 3.3 and
earlier are not vulnerable.

Only x86 systems are vulnerable.

Only x86 HVM and PVH guests started in populate-on-demand mode are
believed to be able to leverage the vulnerability.  Populate-on-demand
mode is activated when the guest's xl configuration file specifies a
"maxmem" value which is larger than the "memory" value.

MITIGATION
==========

Running only PV guests or HVM/PVH guests without PoD will avoid the
vulnerability.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa507.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa507*
41485ddf0912cfa53fa05e236aa27c3c6490919ac2dab5b9f57ed69f5b38f60a  xsa507.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomr4MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ+04H/i3UMWbGcPG2kp978waMmF3Gtfb/r8mw3UBzVGCi
cIOBWf/FizjWu54SQEQtjwYPfi0nKftFN1UPqAGs+OUtyiZ8EcPL5x9i7arrqA2T
uGfpCTb3NtFmacBbrpGnqkNahMtSLWtE8aSVEQhLxvZcLTPB6OPzIi/MVPGyA7jl
/LSGWs4vd99Y8ZvAN20rhxaEAjYynfd7N4tXn38EoW9WiQBuPZ5eNzsbieah8PEo
Ajntyx774ipvtYYStA4fhsLwO+6LyqH7okDR1g8Xkq6IVrOshP194mxnsuEfcMIO
4TCkWbzhmspfxQ1E2aW2VVPzIC2X2b+i8JieUK/z3mmrRSU=
=AfG5
-----END PGP SIGNATURE-----

Download attachment "xsa507.patch" of type "application/octet-stream" (2186 bytes)
