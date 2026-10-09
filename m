X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/3
Message-Id: <E1xF6LU-001PzP-2R@xenbits.xenproject.org>
Date: Fri, 09 Oct 2026 08:52:52 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 522 v1 (CVE-2026-98375) - Linux xen-netfront: backend can crash guest via malformed RX packets
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-98375 / XSA-522

 Linux xen-netfront: backend can crash guest via malformed RX packets

ISSUE DESCRIPTION
=================

If a RX packet sent from the networking backend to the Linux xen-netfront
driver is split into multiple slots and the first slot is shorter than
an Ethernet header, a BUG() will crash the guest. This is a backend induced
Denial of Service (DoS).

IMPACT
======

A malicious network backend can cause a DoS affecting the entire guest it
is serving.

VULNERABLE SYSTEMS
==================

All Linux guests being served by a potentially untrusted network backend
(i.e. a network backend in a driver domain) are affected.

Linux guests with a kernel from 2.6.23 onwards are affected.

MITIGATION
==========

Using a trusted network backend will avoid the issue in the guests.

CREDITS
=======

This issue was discovered by Josef Bacik of Anthropic.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa522-linux.patch           Linux

$ sha256sum xsa522*
5bd78edbf9f039b6e12e725c883a44485fd60e7e8e06c493d57bb2ecfeccbb6e  xsa522-linux.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

This issue was disclosed in public.
-----BEGIN PGP SIGNATURE-----

iQFcBAEBCABGFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrIqswbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMCwzDBxwZ3BAeGVuLm9yZwAKCRCD/hTJV+gr2Z0aB/4x
lyvVclfKLPKO7TezBS0Du+ee3t8PbwMfWe7Gw3rMOkaytQs+XbBZrZ/lF9uNgSyu
a+bwaALjNvTuBJiU2Hq6w6qSMjrDb4Kfn1vRe+iw/MXj5K1q8J6NzXP/rZGkIPCl
E1NyC8RPiRzva/X3CgfO59nsHNxmVxy5cFowP4oxGjp/sAqTLR4JMbK9tALa50Hz
5dc+CUC7i9YlbVgcn1KatORknlSBBqvefRM/zF/uLtGi5YCmVWVc7QlHF5BCBgio
Gu5zjEqA+De5/Rg0o5gHH3Jh6xWTtfThoZewROQgu+P9QYUmHZpGKfCkYazTddzi
Ns9Hz1obvGY4JuCanYvF
=QR/D
-----END PGP SIGNATURE-----

Download attachment "xsa522-linux.patch" of type "application/octet-stream" (2347 bytes)
