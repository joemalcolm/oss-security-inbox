X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/20
Message-Id: <E1wogYi-003Drz-0y@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:05:20 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 504 v2 (CVE-2026-62431) - Viridian STIMER division by zero
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-62431 / XSA-504
                               version 2

                   Viridian STIMER division by zero

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

The logic to handle periodic Viridian STIMERs performs a division with an
unchecked user-controlled divisor value, that can be set to zero to cause a #DE
fault.

IMPACT
======

Enabling Viridian STIMERs to unprivileged HVM guests can result in a Denial
of Service (DoS) affecting the entire host.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.13 onwards are vulnerable.  Xen versions 4.12 and
earlier are not vulnerable.

Only HVM guests with Viridian STIMERs enabled can trigger the vulnerability.

MITIGATION
==========

Not enabling Viridian STIMERs for HVM guests will avoid the vulnerability.

Note Viridian extensions are not enabled by default.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa504.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa504*
cc142e53866a27f3c97bd8532f42df2197f9e8e85fb3846b6fcd682d854e5689  xsa504.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches above (or others which are substantially similar) is
permitted during the embargo, even on public-facing systems with untrusted
guest users and administrators.

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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomroMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZiF4H+QFl08pzXWh5Zd2uOlbjYCaQMoDFeWSGCAkCcG8z
PlKv4yVLPwxUB0W5cPVV61M/fFDgihZh0usNZ/xm5aTt0uhPE31kXItsYRRLPpmg
zbV5OgUgIJxeAABML030lNjlAyLBpVculHAWbyFZdMh/xf0bQc1ty8U/xQDLU+IE
cohmtH8v6WvK2PxTA8nNj39EB9rUcz1gYInLh2QltW14di7+FUHGISxiIr/eNcUv
9d/at8ESSH1WNeSRSr+sbE0dMRxAQgoMa93GvU7sEvuZtdwOnnET8l1nVN/84kXM
sCMq6mjgVDUmSNOH2aBXxewimjp9DV0BLkmliqHrHDKer3s=
=intH
-----END PGP SIGNATURE-----

Download attachment "xsa504.patch" of type "application/octet-stream" (2272 bytes)
