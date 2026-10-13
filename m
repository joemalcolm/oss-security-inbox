X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/7
Message-Id: <E1xGbci-0000000F8xP-1Sbi@xenbits.xenproject.org>
Date: Tue, 13 Oct 2026 12:28:52 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 518 v2 (CVE-2026-79611) - VMX: VMentry failure with branch tracing and blocked states
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-79611 / XSA-518
                               version 2

      VMX: VMentry failure with branch tracing and blocked states

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

For XSA-308 logic was introduced, as VMX VMEntry checks do not like the
exact combination of state which occurs when #DB in intercepted, Single
Stepping is active, and blocked by STI/MovSS is active, despite this being
a legitimate state to be in.  The resulting VMEntry failure is fatal to
the guest.

Sadly there is another special sub-case of the above, with branch tracing
enabled.  In that case the prior adjustment would still cause a VMentry
failure, as before fatal to the guest.

IMPACT
======

HVM/PVH guest userspace code may be able to crash the guest, resulting
in a guest Denial of Service.

VULNERABLE SYSTEMS
==================

All versions of Xen are affected.

Only systems supporting VMX hardware virtual extensions (Intel, VIA or
Zhaoxin CPUs) are affected.  Arm as well as AMD and Hygon systems are
unaffected.

Only HVM/PVH guests are affected.  PV guests cannot leverage the
vulnerability.

MITIGATION
==========

Running only PV guests will avoid this vulnerability.

Running HVM guests on only AMD or Hygon hardware will also avoid this
vulnerability.

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

xsa518.patch           xen-unstable - Xen 4.21.x
xsa518-4.20.patch      Xen 4.20.x - Xen 4.17.x

$ sha256sum xsa518*
a703af59b22f1e47543af0668c8715b4e4011ba4fc05fd8b94bf05503dce88ef  xsa518.patch
a1a1b3548166e051f62a0759af5df8d365f524ae52f4bbbe642d45692a1f8bde  xsa518-4.20.patch
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
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrOIooMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZTOUIAMMapd/RMFzQxmwdwICbmj2zDnEWutkzQyV0bMMK
Ui2VleXQ7pDWH5OEfDNl6644Gs6x4zB9lrTZFubAFvXjqNUk9C3QxU6LOlV0RQAq
a96/glbPhXhOONdn1K5DuJq35sKjhGdsy8B+Ati+IGPstT8bGytrz+CVbdR1bnLb
3XvnRHqFSEHoQxejE/aRXpRw4k1HHD5wFQ/WfvgOEKYj+Ghjm+KE2sNhcahxxFf4
ys8v9JWBKhnLAe+mJIiMPGiKmX5uUVl6HhdX6SjTHuzzbsmITF3VOwsnHZR9vLn1
BqUwLG/uQKes4LRinfOA5RrOMt/q/ChjXPw2x6IZZJLjHVk=
=hyph
-----END PGP SIGNATURE-----

Download attachment "xsa518.patch" of type "application/octet-stream" (3872 bytes)

Download attachment "xsa518-4.20.patch" of type "application/octet-stream" (3192 bytes)
