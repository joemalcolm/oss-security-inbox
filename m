X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/11
Message-Id: <E1xPLfh-0000000A5vb-11J3@xenbits.xenproject.org>
Date: Fri, 06 Nov 2026 15:16:05 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 528 v1 (CVE-2026-100082) - Linux xen-blkback: guest can trigger use-after-free for reading statistic data
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

           Xen Security Advisory CVE-2026-100082 / XSA-528

 Linux xen-blkback: guest can trigger use-after-free for reading statistic data

ISSUE DESCRIPTION
=================

he driver does not serialise reads of the device I/O statistics
against the freeing of the memory that holds them. This leads to a
use-after-free when reading statistical counters while the device is
being torn down.

IMPACT
======

This most likely crashes the driver, and possibly the host, causing a
Denial of Service (DoS) for the entire host.

Information leaks cannot be ruled out.

VULNERABLE SYSTEMS
==================

Linux versions 4.5 and newer are vulnerable.

MITIGATION
==========

Using a userspace PV block backend (e.g. the qemu based "qdisk" backend)
will mitigate the problem.

Using a dedicated block driver domain per guest will mitigate the
problem.

CREDITS
=======

This issue was discovered by Yehyeong Lee of Hyundai Mobis.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa528-linux.patch           Linux

$ sha256sum xsa528*
848d5cc56a7b31e84399ac00d616c36bd2b5efdcc0f23017a7590b1b58900c19  xsa528-linux.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

A very similar issue was disclosed in public.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrt7tAMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZTFkH/jRhPRPUnQb/2KV42fKAPvQtffdEIWr72wc5ogYm
d6rTBU81hLdZAyq+Zo2jwhgggjXNeurD84z1Lnr8X6YgnRBAHfWhOd28V583K83j
BzmWsbFeUsMLjiaWuftzdr1RdpqB1ajk6NRAnR5Eb4jrWltIOekDgSviJupMfbRs
iq9pM0J/zbFBcIu21Lor4R5F8wYLx3cbzE0LuSq0j+D5uCMFIAhkea+7ReadQYxr
+L3LbEJIdcGpfZlcf9SRgJ8KKJr6d3JlHAVx2fpq8w/buwRFv3M87VL64MPUk7Tr
kJ/Wpl+hpvnTNE0m88eF1x3pMkdco6fwzz/xg7lvxm1k2Ho=
=CcMW
-----END PGP SIGNATURE-----

Download attachment "xsa528-linux.patch" of type "application/octet-stream" (4065 bytes)
