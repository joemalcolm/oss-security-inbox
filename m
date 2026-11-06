X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/9
Message-Id: <E1xPLfb-0000000A5rj-1W0D@xenbits.xenproject.org>
Date: Fri, 06 Nov 2026 15:15:59 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 526 v1 (CVE-2026-100080) - Linux xen-netback: guest can trigger use-after-free for
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

           Xen Security Advisory CVE-2026-100080 / XSA-526

          Linux xen-netback: guest can trigger use-after-free for
                        network statistics reads

ISSUE DESCRIPTION
=================

The network statistic data in the driver is protected by RCU.
Unfortunately when tearing down the queues after an error during
connecting to the frontend (e.g. due to illegal Xenstore data filled
in by the guest), the statistic data is being freed without
synchronizing the RCU state.  In case the data is being read via sysfs
in this phase, access to already freed memory or memory being in new
use is possible.

IMPACT
======

The most likely outcome is a driver crash, possibly escalated to a host
crash.  This then is a Denial of Service (DoS) affecting the entire host.

Information leaks cannot be ruled out.

VULNERABLE SYSTEMS
==================

Linux versions 4.11 and newer are vulnerable.

MITIGATION
==========

Using a userspace PV network backend (e.g. the qemu based "qnic" backend)
will mitigate the problem.

Using a dedicated network driver domain per guest will mitigate the
problem.

CREDITS
=======

This issue was discovered by Yehyeong Lee of Hyundai Mobis.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa526-linux.patch           Linux

$ sha256sum xsa526*
88dd41b89b43fa1b14e68c1a40aa69a22309e0c57a1b5543168949a273627ca8  xsa526-linux.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

This issue was disclosed in public.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrt7ssMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZq84H/02MP77ou0FS+9nAF8CWbGl79KfiUWO2xjXPEdKB
Mgyzk0Gtq+Q0/oTaxPC59f9Pxc4yiCnGuIjpVM2qPOfaHZD0uEnzzGEROxVNCABq
7wCxZ/9Uu3MXO+1rcMgVqUNoHEqYLxgSp3OZ7O48DFQtkulP6fp4EgR0xTUIgPwn
oKlWoSKORAXOkULt5Qn5xI0+YN0OgDMdHKj/BPkRIGeeqOHPRcUmeZU9VRnOiATh
v1lR6erAWEx/dwr5Yq6ZReA6GFgDNRRk7ersnc5mwxxUyDtJtNXPHUCmE8AZ/q4C
H2I/1SLzm6oa+v+0fngSasn9+lMZC6fzy0SxRJF3clRui+A=
=uEqL
-----END PGP SIGNATURE-----

Download attachment "xsa526-linux.patch" of type "application/octet-stream" (1472 bytes)
