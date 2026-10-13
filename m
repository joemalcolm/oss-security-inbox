X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/4
Message-Id: <E1xGbcR-0000000F8S9-0jrW@xenbits.xenproject.org>
Date: Tue, 13 Oct 2026 12:28:35 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 515 v2 (CVE-2026-79608) - x86/AMD: ineffectual Zenbleed workaround
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-79608 / XSA-515
                               version 2

               x86/AMD: ineffectual Zenbleed workaround

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

The workaround for XSA-433 (Zenbleed, CVE-2023-20593) was later
re-worked to better integrate with other manipulations of the same MSR.
In this rework an inverted conditional was introduced, resulting in the
workaround to not be applied when needed and vice versa.

For more details, see:
  http://xenbits.xen.org/xsa/advisory-433.html

IMPACT
======

An attacker can exploit this bug to read data from different contexts on
the same core.  Examples of such data includes key material, cypher and
plaintext from the AES-NI instructions, or the contents of REP-MOVS
instructions, commonly used to implement memcpy().

VULNERABLE SYSTEMS
==================

Xen versions 4.19.4 and onwards, 4.20.3 and onwards, 4.21.1 and onwards,
and 4.22 are affected.  Xen versions 4.18, minor versions 4.19.3 and
earlier, minor versions 4.20.2 and earlier, and 4.21.0 are not affected.

The vulnerability can only be leveraged on systems running out-of-date
microcode.  Microcode fixing Zenbleed was published in late 2023.
Updated firmware subseqeuent to this, or e.g. updated amd-ucode from
linux-firmware (for the subset of CPUs covered by linux-firmware) are
not vulnerable.

The original issue and hence the applicability of the workaround is
specific to the AMD Zen2 microarchitecture.  AMD do not believe that
other microarchitectures are affected.

MITIGATION
==========

This issue can be mitigated by disabling AVX, either by booting Xen with
`cpuid=no-avx` on the command line, or by specifying `cpuid="host:avx=0"` in
the vm.cfg file of all untrusted VMs.  However, this will come with a
significant impact on the system and is not recommended for anyone able to
deploy the microcode or patch described below.

CREDITS
=======

This issue was discovered by Sashiko + Opus 5.0 and diagnosed as a
security issue by George Dunlap.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa515.patch           xen-unstable - Xen 4.19.x

$ sha256sum xsa515*
d54c5f5443209e523c1d1b456063d105792058d402513bc1e56246b5938de6d8  xsa515.patch
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

This is because altering exposure of AVX is a guest visible configuration
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrOIhsMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZKrYIAIKTxPm+Rvb9K2SvRJoHgjFDGTG0OxXqWFDjPnUR
DKTx/URFmXCFT4PCGuAearWnkw25x0e80TdNfCrdHxDJzENSCcmb+5iIuM8nUtgo
hMwNON4YUWn0GhBe3fcgAdlmxwWfhIJZHWt0LDrZrO9Nr21hmgVhvzME2VtH0EkA
Yafi6ZixVwheA48w2to1cBjx27J5XucmvFoMgSRfW40YhpCmWDLDMv1F0vwxioyy
vWVrk7pfYEj8n/hiap2MoI/pTDD6PruF+lWsO1fzHFwZHcUPOU+rV/elfEAA027E
rRVsxob58ljY1IH/sMYOmSm7OQaGjau0kS7vC9kXtm7lmBQ=
=NxYd
-----END PGP SIGNATURE-----

Download attachment "xsa515.patch" of type "application/octet-stream" (1189 bytes)
