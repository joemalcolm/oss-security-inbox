X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/13
Message-Id: <E1wWv8o-00CQve-1j@xenbits.xenproject.org>
Date: Tue, 09 Jun 2026 12:01:10 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 493 v2 (CVE-2025-10263) - Arm: Completion of memory accesses not guaranteed by completion of a TLBI
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

              Xen Security Advisory CVE-2025-10263 / XSA-493
                                 version 2

 Arm: Completion of memory accesses not guaranteed by completion of a TLBI

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

A hardware issue has been identified in certain Arm CPU designs.  A
broadcast TLBI on one PE may complete before affected memory accesses
on another PE are globally observed.  This may permit bypass of Stage 1
translation, Stage 2 translation, or GPT protection.

The erratum occurs when all of the following conditions are met:

 - A PE (PEx) executes a store.
 - Another PE (PEy) executes a TLBI instruction which applies to
   Stage 1 only information, Stage 1 and 2 information, or GPT
   information (but not Stage 2 only information), applies to the
   Inner Shareable or Outer Shareable domain containing PEx, and
   affects at least one of the bytes accessed by PEx's store.
 - PEy executes a DSB instruction which is sufficient to complete the
   TLBI instruction.
 - Complex micro-architectural conditions occur.

When all conditions are met, PEy's DSB may complete before the global
observation of a portion of PEx's store which was affected by the TLB
invalidation.  This store may complete at a later time, after memory
accesses which are ordered after the DSB.

The relevant TLB entries are invalidated correctly before the
completion of the DSB.  This erratum does not affect reads.

For more details, please refer to the Arm Security Center:
  https://developer.arm.com/Arm%20Security%20Center

IMPACT
======

A malicious guest may be able to write to memory it no longer has
permission to write to, after Xen has modified Stage 2 translation to
forbid writes to that location.  This could allow a guest to escalate
its privileges to that of the hypervisor.

VULNERABLE SYSTEMS
==================

Only systems running Xen on Arm are affected.  x86 systems are not
vulnerable.

Only multi-core configurations are affected.

The following Arm CPUs are affected:

 - Arm C1-Ultra, C1-Premium
 - Neoverse V3 & V3AE, Neoverse V2, Neoverse V1, Neoverse N2,
   Neoverse N1
 - Cortex-X925, Cortex-X4, Cortex-X3, Cortex-X2, Cortex-X1 & X1C,
   Cortex-A710, Cortex-A78, A78AE & A78C, Cortex-A77, Cortex-A76 &
   A76AE

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was reported by Arm.

RESOLUTION
==========

Applying the appropriate set of attached patches resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa493/xsa493-??.patch           xen-unstable
xsa493/xsa493-4.21-??.patch      Xen 4.21.x
xsa493/xsa493-4.20-??.patch      Xen 4.20.x
xsa493/xsa493-4.19-??.patch      Xen 4.19.x
xsa493/xsa493-4.18-??.patch      Xen 4.18.x
xsa493/xsa493-4.17-??.patch      Xen 4.17.x

$ sha256sum xsa493*/*
b065245ad3e22d19a0a1f26af6978ebf52f1d59f4ddeb4aeb03eb198bc12f2fd  xsa493/xsa493-01.patch
d8f3896d4916867aaefe340ce4d2bce0c3698c093e59ee863677d6524f43a000  xsa493/xsa493-02.patch
d77017101f424f792b560b37c82d75108b68ff9183a640fa680ba6f5fc9928aa  xsa493/xsa493-03.patch
a1cd4eabe923d1d4197c95a9ce8f233a226a49cd4bf6c8651b7a11f89fccc0ed  xsa493/xsa493-4.17-01.patch
7238d3bbfe6bfd96fac0da8fb36456c23519938fe694a9f90a9f7317ba1c8fdb  xsa493/xsa493-4.17-02.patch
b561f4c7365fd6f39a35661bcc74330126abdf7f022e6340b56c6beaf5dad9c2  xsa493/xsa493-4.17-03.patch
84f818e5549cc48ca93cc7f153162881c825c51cc1da1d7e677ca1779db4e2a7  xsa493/xsa493-4.17-04.patch
1226029b0bdb4091979819bcbbe4480cb4dc4c8073758dcfa4c418dec5ff49e5  xsa493/xsa493-4.17-05.patch
59f49949a1cb27580e846cbc08402f496228de129607a90c84603c9961d7c51e  xsa493/xsa493-4.17-06.patch
f6175dc3287d38ec7c225dee428e17d6dd66c2457668942fadbf5aff78cffa1b  xsa493/xsa493-4.17-07.patch
da413bb5e5e3114e7cbbfa8ee26ffed61f902475d2ef809893a2b4002d41dd01  xsa493/xsa493-4.17-08.patch
3ef94e7a74c4e5c06655174245d004819ce6dfdc1d54f63c2463e5edf8ea182b  xsa493/xsa493-4.17-09.patch
5d604ef4efffe2a199dbe8e4dcb46883e1ec294b71f7d2679bcbfa4a3d6ae168  xsa493/xsa493-4.18-01.patch
074fad2b5bf195337c0799d59493a621e1020d8cb9834ed2997997b208d498d3  xsa493/xsa493-4.18-02.patch
df6dcfc54ddfee83e2bfc00448d7a3dedda9c8c0858ea3258ebdaf674d9cf8a4  xsa493/xsa493-4.18-03.patch
cc3457e14c2b35afef35a9fd3cc3905f6e03b0f30333b56b963bc1577dbcf4a8  xsa493/xsa493-4.18-04.patch
4b523acb3b5904d649531f8c78e701ec9384e02045fc941d2ae061f28d9c5e73  xsa493/xsa493-4.18-05.patch
3511018842968d19e34e949800d638d648ddfaad7511f80f53acfb96af244750  xsa493/xsa493-4.19-01.patch
5e157dd88c71d10323f3102f555a069c1ded6ecb203a69d53c7e441ecaaa06fc  xsa493/xsa493-4.19-02.patch
5da2ee837cb3bd151af442397c32bd5afca508b4d2f237fd6a395f20d41b740a  xsa493/xsa493-4.19-03.patch
797955e752e4010b2df5dadf75bf210a00a8ad1bfe6ee8848b5b68734ec3cd2b  xsa493/xsa493-4.19-04.patch
dfa9616895e9768b6f0d7c6efc903b00e2e51af4e0f5c38a29e79d17ea272b86  xsa493/xsa493-4.19-05.patch
0e50dae0a0dddeb2755f761f966a8d0a9186246504dacda4dd5994367f71ea8e  xsa493/xsa493-4.20-01.patch
9d9911d02f5ca5aaaf9fe3700e0ff66371d1bb469471e4bf6c305a786329f3d1  xsa493/xsa493-4.20-02.patch
9058d6dfe2fcbedbb0b10d529e9e3d3e7635381d12b41383832e163aff156002  xsa493/xsa493-4.20-03.patch
eb81f949744f3e748a871dc81eb0774e58faeb3bcc6c486f2237b9f516fdad00  xsa493/xsa493-4.20-04.patch
d4eb81c40cedbdd425429c340da45d7bb344b63d71328d8cc978fc70f606804d  xsa493/xsa493-4.20-05.patch
bd2e39066c4f9a9ed20a9214d6dd4cb71a5fa34349129398dba03b684ab49478  xsa493/xsa493-4.21-01.patch
b4b603075259fa6274b61a09133d59c8846910a29dd5b0d5af2d55a0adc67659  xsa493/xsa493-4.21-02.patch
721d339f1c18f6867d5a5a0d02e3edceb8d97ed08725787b3537969a656d74f6  xsa493/xsa493-4.21-03.patch
bfc9c9b005968f33f8a33116be7f8ce9918cd3020f35f8bd173727ac19bb0261  xsa493/xsa493-4.21-04.patch
738177c22c9b081165fb4500c05ddf53b7e9e1de68b3190462eb8cb66a5aa6a5  xsa493/xsa493-4.21-05.patch
0d6bca07e5177f4e13c572410224c5cea0c10b5004c370dd742c7c725d98a9be  xsa493/xsa493-04.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmon+5EMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZl9sH/2gOt3FnPag044GT7tB/PZHNzVPNZKsqKv6TbKrh
Sd+3da3eoNX9Py4AJ25t/jUkuLoZLL1yc7Mo/6nXj3/YevWb0RgUIc8Z0nUSi17f
yBcbtAaOYlGmmDGlC/MY9H4xT2htYJXwA+XOztb7k7VS0j9g8xEv8q08RBM1Jibd
nelqwwKiDm7kJS7AtuA8bHWX+pNuvGKqKvt+AhHD6F6XXsFzZ7fU1F2Sin/Rxj2V
fi8EDJcaCBNWuyajpvQbpt3vZJX5cV4n6HnkSeUxEOyLbkSMk3oH3EIqPRbuV8V3
g2WFu5NEbyjwIUOHENQubIH1isSQ8ogx6e/JPR/fgLPJtU8=
=wDng
-----END PGP SIGNATURE-----

Download attachment "xsa493/xsa493-01.patch" of type "application/octet-stream" (3496 bytes)

Download attachment "xsa493/xsa493-02.patch" of type "application/octet-stream" (1561 bytes)

Download attachment "xsa493/xsa493-03.patch" of type "application/octet-stream" (1561 bytes)

Download attachment "xsa493/xsa493-4.17-01.patch" of type "application/octet-stream" (4922 bytes)

Download attachment "xsa493/xsa493-4.17-02.patch" of type "application/octet-stream" (3629 bytes)

Download attachment "xsa493/xsa493-4.17-03.patch" of type "application/octet-stream" (3704 bytes)

Download attachment "xsa493/xsa493-4.17-04.patch" of type "application/octet-stream" (2133 bytes)

Download attachment "xsa493/xsa493-4.17-05.patch" of type "application/octet-stream" (11999 bytes)

Download attachment "xsa493/xsa493-4.17-06.patch" of type "application/octet-stream" (3495 bytes)

Download attachment "xsa493/xsa493-4.17-07.patch" of type "application/octet-stream" (1559 bytes)

Download attachment "xsa493/xsa493-4.17-08.patch" of type "application/octet-stream" (1559 bytes)

Download attachment "xsa493/xsa493-4.17-09.patch" of type "application/octet-stream" (5182 bytes)

Download attachment "xsa493/xsa493-4.18-01.patch" of type "application/octet-stream" (12585 bytes)

Download attachment "xsa493/xsa493-4.18-02.patch" of type "application/octet-stream" (3495 bytes)

Download attachment "xsa493/xsa493-4.18-03.patch" of type "application/octet-stream" (1559 bytes)

Download attachment "xsa493/xsa493-4.18-04.patch" of type "application/octet-stream" (1559 bytes)

Download attachment "xsa493/xsa493-4.18-05.patch" of type "application/octet-stream" (5182 bytes)

Download attachment "xsa493/xsa493-4.19-01.patch" of type "application/octet-stream" (12586 bytes)

Download attachment "xsa493/xsa493-4.19-02.patch" of type "application/octet-stream" (3495 bytes)

Download attachment "xsa493/xsa493-4.19-03.patch" of type "application/octet-stream" (1559 bytes)

Download attachment "xsa493/xsa493-4.19-04.patch" of type "application/octet-stream" (1559 bytes)

Download attachment "xsa493/xsa493-4.19-05.patch" of type "application/octet-stream" (5182 bytes)

Download attachment "xsa493/xsa493-4.20-01.patch" of type "application/octet-stream" (12586 bytes)

Download attachment "xsa493/xsa493-4.20-02.patch" of type "application/octet-stream" (3496 bytes)

Download attachment "xsa493/xsa493-4.20-03.patch" of type "application/octet-stream" (1561 bytes)

Download attachment "xsa493/xsa493-4.20-04.patch" of type "application/octet-stream" (1561 bytes)

Download attachment "xsa493/xsa493-4.20-05.patch" of type "application/octet-stream" (5182 bytes)

Download attachment "xsa493/xsa493-4.21-01.patch" of type "application/octet-stream" (12607 bytes)

Download attachment "xsa493/xsa493-4.21-02.patch" of type "application/octet-stream" (3496 bytes)

Download attachment "xsa493/xsa493-4.21-03.patch" of type "application/octet-stream" (1561 bytes)

Download attachment "xsa493/xsa493-4.21-04.patch" of type "application/octet-stream" (1561 bytes)

Download attachment "xsa493/xsa493-4.21-05.patch" of type "application/octet-stream" (5182 bytes)

Download attachment "xsa493/xsa493-04.patch" of type "application/octet-stream" (5182 bytes)
