X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/22
Message-Id: <E1xQq9L-00000003NGI-1q9A@xenbits.xenproject.org>
Date: Tue, 10 Nov 2026 18:00:51 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 525 v1 (CVE-2024-36350,CVE-2024-36357,CVE-2026-0004) - x86: Transient Scheduler Attacks (update)
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

 Xen Security Advisory CVE-2024-36350,CVE-2024-36357,CVE-2026-0004 / XSA-525

               x86: Transient Scheduler Attacks (update)

ISSUE DESCRIPTION
=================

AMD have discovered further properties of Transient Scheduler Attacks.

The previously published XSA-471 dealt with two TSA variants, TSA-SQ
and TSA-L1 on Zen3 and Zen4 CPUs.  For details, see XSA-471.

AMD had previously said that Zen5 CPUs were not vulnerable to TSA-SQ and
TSA-L1.  This statement has been corrected, and is being tracked as
AMD-SB-7073 using the existing CVE-2024-36350 and CVE-2024-36357.

AMD have also disclosed a new TSA variant, TSA-Fill, which is being
tracked as AMD-SB-3031 and CVE-2026-0004.

For more information, see:
  https://xenbits.xen.org/xsa/advisory-471.html
  https://www.amd.com/content/dam/amd/en/documents/resources/bulletin/technical-guidance-for-mitigating-transient-scheduler-attacks.pdf
  https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7073.html
  https://www.amd.com/en/resources/product-security/bulletin/amd-sb-3031.html

IMPACT
======

An attacker might be able to infer data belonging to other contexts,
including data belonging to other guests.

VULNERABLE SYSTEMS
==================

Systems running all versions of Xen are affected.

Only AMD Zen5 CPUs are believed to be vulnerable.  Other AMD CPUs, and
CPUs from other manufacturers are not known to be affected.

MITIGATION
==========

There are no mitigations.

RESOLUTION
==========

AMD are producing microcode to address all TSA variants on Zen5 CPUs.
This has been included in linux-firmware already, since 2026-09-23.
Consult your dom0 OS vendor and/or hardware vendor for updated
microcode.

Part of this fix involves no longer reporting Zen5 CPUs as safe to
TSA-SQ/L1, given AMD's updated position on the matter.  VMs will need to
be rebooted (not simply migrated) to pick up this change in status.

Applying the appropriate set of attached patches resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa525/xsa525-?.patch           xen-unstable - Xen 4.21.x
xsa525/xsa525-4.20-?.patch      Xen 4.20.x
xsa525/xsa525-4.19-?.patch      Xen 4.19.x
xsa525/xsa525-4.18-?.patch      Xen 4.18.x - Xen 4.17.x

$ sha256sum xsa525*/*
62c1a6b5396cb988070749fba20fd078b07bd30447efcd82ccc44517a20f885b  xsa525/xsa525-1.patch
d65d81d971804e29d6630f62b5b651e590c26dc257190398bb7d9899e4a030e8  xsa525/xsa525-2.patch
4a76ee7c6d57e880abcdc6e5d2c77841e2c8d2ca8abc608c6d6660c0d556a41f  xsa525/xsa525-3.patch
7fd51ab28439f32a28656e9766e91fc19c042a2a24638415b89752915b4bdf97  xsa525/xsa525-4.18-1.patch
29227b300fd01290353669f050cf9ed046375274bcaf0d1d194489b8c0bb4c92  xsa525/xsa525-4.18-2.patch
f7bcef48cdce7ec4938bfbdca2f949f5dcad79ff02915c9258527e31daf0aabe  xsa525/xsa525-4.18-3.patch
f8acc54f83bd98ae6aa6420c7b26a963517dfb75408709c73f40e992daefd352  xsa525/xsa525-4.19-1.patch
e6e299c8d8be16ed79a578e11ea923f51b4d9bdd546263e9648dcd509f9e9fdb  xsa525/xsa525-4.19-2.patch
f955868d415fdc06aabd9e6608a3822f84ceb55021a1d12a4390dfe7753c2859  xsa525/xsa525-4.19-3.patch
d15d8aff9d1ca16bdcd0fb22555d32536beb9390ac2b413fc3aab699359503f1  xsa525/xsa525-4.20-1.patch
be99ef9f5bddd890440a53d1218ceebf53810c4bb671bde15b52c9e606e52e10  xsa525/xsa525-4.20-2.patch
a82151934f89dfd669f026edfe0a5865f251d1e42095bd0963f39d943be56aa8  xsa525/xsa525-4.20-3.patch
$
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrzWY4MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZmBkH/2X1KFg5v3U8SuXiVx+u2APu9Z913M8iZYBg73vi
oVFRmaaTU5S/dvtyAZScn3ugKpTNa2TfG2wAnOCfZIiJfARgjYxeQjDWvP/t7WQN
uPxWSHxSmQeY4UgLJFO8c3bacDb99OBThLz66WKEcAis4CvDYhdHL6HUfhTiLXVc
gp8ZqB1ofQQrM/T6OFdvf7xkCbV8TPEKAPhVveY0EDIu25/9hqJB3L9U8gnZlYJT
cFVxZP/A3mFGLw6qT9nqtfe9BxeTuTS4LczwV61BHK6AO5cKRf5dZdogyC/wxgQV
4LqYYNfYKBkjiAFdBGmMhXPHtdXUQrJgywCq3PlxvX0hUhg=
=VeP2
-----END PGP SIGNATURE-----

Download attachment "xsa525/xsa525-1.patch" of type "application/octet-stream" (1951 bytes)

Download attachment "xsa525/xsa525-2.patch" of type "application/octet-stream" (5701 bytes)

Download attachment "xsa525/xsa525-3.patch" of type "application/octet-stream" (5011 bytes)

Download attachment "xsa525/xsa525-4.18-1.patch" of type "application/octet-stream" (2149 bytes)

Download attachment "xsa525/xsa525-4.18-2.patch" of type "application/octet-stream" (5888 bytes)

Download attachment "xsa525/xsa525-4.18-3.patch" of type "application/octet-stream" (5600 bytes)

Download attachment "xsa525/xsa525-4.19-1.patch" of type "application/octet-stream" (1951 bytes)

Download attachment "xsa525/xsa525-4.19-2.patch" of type "application/octet-stream" (5689 bytes)

Download attachment "xsa525/xsa525-4.19-3.patch" of type "application/octet-stream" (5012 bytes)

Download attachment "xsa525/xsa525-4.20-1.patch" of type "application/octet-stream" (1951 bytes)

Download attachment "xsa525/xsa525-4.20-2.patch" of type "application/octet-stream" (5689 bytes)

Download attachment "xsa525/xsa525-4.20-3.patch" of type "application/octet-stream" (5008 bytes)
