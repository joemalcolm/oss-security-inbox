X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/13
Message-Id: <E1wogYG-003Dcb-0p@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:04:52 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 496 v2 (CVE-2026-42492) - vIRQ event channel binding may break Xenstore
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-42492 / XSA-496
                               version 2

             vIRQ event channel binding may break Xenstore

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Xenstore, to have an up-to-date picture of the entire system, wants to
know of domains appearing and disappearing.  To make this more robust, a
new XEN_DOMCTL_get_domain_state was introduced.  The management of the
bitmap underlying that operation is tied into the binding of the
VIRQ_DOM_EXC virtual IRQ.  Unfortunately an error path there would tear
down the bitmap even in cases when it wasn't set up.  Unprivileged domains
can trigger that error path.

IMPACT
======

An unprivileged domain can affect the operation of Xenstore, potentially
leading to a Denial of Service (DoS) affecting the entire host.  A
hypervisor crash with similar host wide effect also is possible, albeit
unlikely.

VULNERABLE SYSTEMS
==================

Xen 4.21 and onwards are vulnerable.  Xen 4.20 and older are not
vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Grygorii Strashko of EPAM.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa496.patch           xen-unstable - Xen 4.21.x

$ sha256sum xsa496*
80a0a807dd9d7ae793b462d78da2bd9d4f84eb5062f3e60622d12edde9c2a27c  xsa496.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomqwMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZc8IIALEzvp6RymbSYDSTBqNl4k+mRBOfMTdwOGKA9lNm
zYl9rFlGcTTR2HogU9Vplm0gQmcrksFndwXMzjkOqLlRnbDs6JsSIpuQaWi6jm7f
Fj0QLAMXLxLLMAPvC8j9kLJjJrlv7X1VeYolsHBSq3lCoqb5YgZaqMIDuOXgO9+7
//cSTRbaEnm4UBrV/WxUX1pd6RHOBbioJjyLwy4QZyfoTfXtVrw6bv5IHsq8GyD6
QYRFnh9fZ+33p7LDoU5jUlDO+TnJZeUlbWGqMTsxdGx8l93662nNGDIYrxJr+/8g
6CmXyObBkiI3qXRT7sSt1/FzdnoDIQTPtIyv4xuIi4GMT+0=
=V0J6
-----END PGP SIGNATURE-----

Download attachment "xsa496.patch" of type "application/octet-stream" (1330 bytes)
