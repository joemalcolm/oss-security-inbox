X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/9
Message-Id: <E1x3uVM-00GkcL-1j@xenbits.xenproject.org>
Date: Tue, 08 Sep 2026 12:00:48 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 512 v3 (CVE-2026-79604) - oxenstored: Unbounded accumulation of watches
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-79604 / XSA-512
                               version 3

             oxenstored: Unbounded accumulation of watches

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

Oxenstored maintains two datastructures about watches; one global trie,
and one hashtable tracked per domain.  When a xenbus reconnect is
requested, watches are not cleared out of the global trie.

IMPACT
======

A guest can cause unbounded memory usage in oxenstored.  This can lead
to a system-wide DoS.

VULNERABLE SYSTEMS
==================

All version of Xen from 4.6 onwards are vulnerable.

Only systems using the Ocaml Xenstored implementation are vulnerable.
Systems using the C Xenstored implementation are not vulnerable.

MITIGATION
==========

There are no mitigations.

CREDITS
=======

Found by Anthropic using agents to study the security of open-source
projects, with Ada Logics validating and reporting.

RESOLUTION
==========

Applying the appropriate set of attached patches resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

For xen.git oxenstored:

xsa512-?.patch           xen-unstable - Xen 4.18.x
xsa512-4.17-?.patch      Xen 4.17.x

For xapi-project/oxenstored:

xsa512-oxenstored-?.patch oxenstored master

$ sha256sum xsa512*
c4f92a3e032f853a85cbd43391b6fd6a2c8f6f4caeee49bec9bc97a5279ce9a3  xsa512-1.patch
2cc57079eda8f0db34885e8be242d736f590ae8094c60a044b55b4889e10392f  xsa512-2.patch
16bfa30473d4ba67dea69f1915357ecbe4aefc3b10bfd413f0bd7a7d2cfe2a80  xsa512-4.17-1.patch
7c23fb0e64429db074d7ec4cf7ba6ba319b69d5f1d059aa848c19b9ce148244c  xsa512-4.17-2.patch
28c6267057ccf3508eee92dd82a9726e6b0d616fd7cc3e7dcee9cbfd3b0b80f7  xsa512-oxenstored-1.patch
00b9df35d9cc3ee393385a65725a2a681e31b9e00c4d1d76e0441e284f005707  xsa512-oxenstored-2.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmqf98gMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZk9kIAMqGI+5EVMLUd++EmpLqiTyGPcMYcDexca9XIpfJ
Gx+DICPIRfRDCFtUG4jEeEDi8lmDvIKp5XXTNRkxyWF3uVKYDA5xCxekKOGmS40A
p46pGzVVzGeSKdm2FfxEDDyuhhET5QrZLN98rJBcoL0/aX5sI4UoDR/FfdFemoAV
BVrRG4WgQuBDa7+/t4jgZ8DysZbn/zmLoOtNIPVtaH5zvep0ehGQSnR8sAOEB+mV
tmiW3kQoR1hxlOF/p1iVKLoBdOtJktwJ+Tk6OCCssS5TNGlGcpTs0KPukkXKwrem
vYDYkHeUTf4rd3khUfCdW1S0Gc/3XSBtdL26VSj1xku5kMA=
=6TLi
-----END PGP SIGNATURE-----

Download attachment "xsa512-1.patch" of type "application/octet-stream" (2983 bytes)

Download attachment "xsa512-2.patch" of type "application/octet-stream" (3112 bytes)

Download attachment "xsa512-4.17-1.patch" of type "application/octet-stream" (2915 bytes)

Download attachment "xsa512-4.17-2.patch" of type "application/octet-stream" (3100 bytes)

Download attachment "xsa512-oxenstored-1.patch" of type "application/octet-stream" (3119 bytes)

Download attachment "xsa512-oxenstored-2.patch" of type "application/octet-stream" (2962 bytes)
