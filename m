X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/25
Message-Id: <E1xQqqi-00000003kKJ-2oLd@xenbits.xenproject.org>
Date: Tue, 10 Nov 2026 18:45:40 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 531 v1 (CVE-2026-99286) - Linux xen-netback: guest can trigger use-after-free for network statistics reads
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-99286 / XSA-531

 Linux xen-netback: guest can trigger use-after-free for network statistics reads

ISSUE DESCRIPTION
=================

The network statistic data in the driver is protected by RCU.
Unfortunately when tearing down the queues after an error during
connecting to the frontend (e.g. due to illegal Xenstore data filled
in by the guest), there was missing RCU synchronization before freeing
the memory holding the statistic data.  This was meant to be fixed by
the patch of XSA-526, but that patch failed to set the indication that
the data should no longer be accessed, before waiting for RCU to have
finished accesses.  In case the data is being read via sysfs in this
phase, access to already freed memory or memory being in new use is
possible.

IMPACT
======

The most likely outcome is a driver crash, possibly escalated to a host
crash.  This then is a Denial of Service (DoS) affecting the entire host.

Information leaks cannot be ruled out.

VULNERABLE SYSTEMS
==================

Linux versions 4.11 and newer are vulnerable. Note that the patch
for XSA-526 is still needed.

MITIGATION
==========

Using a userspace PV network backend (e.g. the qemu based "qnic" backend)
will mitigate the problem.

Using a dedicated network driver domain per guest will mitigate the
problem.

CREDITS
=======

This issue was discovered by Tu Dinh of Vates.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa531-linux.patch           Linux

$ sha256sum xsa531*
1da1dc0543ad3b61698e6d9afc90720bb54f314b6fbc58ab83b8ee0b86fda086  xsa531-linux.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

The issue is directly related to the recent XSA-526 fix and easy to find.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrzZgUMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZLHgH/i0+e6pRQkH5mI9w/GPnPDy/QGSVjEaLqj72Oo/9
NOi1fEwHibm7JPOO/NpZHDcGvh2Y5PT7DRlVw1+1EV2+lbLzbxHX2BWVySQx9cPk
jBKem0k1udcCsKGxe09/wPW53NPmfw3KARs9L1KEJZl5/akXTUX3ZjSIOyoRg9oE
nCmbgcfg2m+KfFGnrieQaiiMOO2iD2KZmeJFLsGaT007wVkeFx2vJBxEdTayiMvF
A6BwRTc8gBd3iLxgBMO7Wdz5h3uWlgjDYq8E52tzMFbII3OeYCiiyStYlYFMk3la
sVr8bYFcctn1xm4/XukqoS00EVcNVYqaQl1yxkDf8im9qZs=
=KIyG
-----END PGP SIGNATURE-----

Download attachment "xsa531-linux.patch" of type "application/octet-stream" (1914 bytes)
