X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/10
Message-Id: <E1xPLfe-0000000A5tc-0wMP@xenbits.xenproject.org>
Date: Fri, 06 Nov 2026 15:16:02 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 527 v1 (CVE-2026-100081) - Linux xen-netback: guest can trigger use-after-free for reading multicast data
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

           Xen Security Advisory CVE-2026-100081 / XSA-527

 Linux xen-netback: guest can trigger use-after-free for reading multicast data

ISSUE DESCRIPTION
=================

Multicast handling in the driver is implemented as a lookup early on the
transmit (guest receive) path.  The respective function can be invoked in
parallel with teardown of a device.  Thus the lookup may access data which
was already freed, with that memory perhaps already being in new use
elsewhere.

IMPACT
======

The most likely outcome is a driver crash, possibly escalated to a host
crash.  This then is a Denial of Service (DoS) affecting the entire host.
Information leaks and, with very low likelihood, privilege escalation
cannot be ruled out.

VULNERABLE SYSTEMS
==================

Linux versions 4.3 and newer are vulnerable.

MITIGATION
==========

Using a userspace PV network backend (e.g. the qemu based "qnic" backend)
will mitigate the problem.

Using a dedicated network driver domain per guest will mitigate the
problem.

CREDITS
=======

This issue was discovered by kerhunt.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa527-linux.patch           Linux 7.4-rc - 5.5

$ sha256sum xsa527*
f68ebd9c262ac005043c9832bc8f73d70f5e083d1c9435b55d4dccadbb3e40df  xsa527-linux.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

A closely related issue was disclosed in public.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrt7s4MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZeNAH/j1BrfAQ6QeYh/fzh1ql5EG2e2hE3m3cP6k84uBh
ZIVNAcqat+6UsxF/jaHRyTV49cts4HVHDBu9mpoi1vWkLhoSK7kkLl37oh0ar71P
XpCtLfgqzCPd/0F19at2l5sigXwZA/GvRbn4aEVp4s+dC5U/a67IZJtj/xMvTGVB
oOeIEenbIQHrWMCQmXaLHa2Ht2qCgJyyt0LzAFZf2pTbcl6tnCt8yQFVHh2ABa7e
5rXgH3bJRp6AOod3nsAkL+al2l8ShAx/TTIvDUxZw+qD6bELMDBwGYWSTMCRogAH
JcqEMRgZWL87gx2ubKJkG57pGuoXv8ydhD2o0/9WrBPRbzs=
=dUnZ
-----END PGP SIGNATURE-----

Download attachment "xsa527-linux.patch" of type "application/octet-stream" (1425 bytes)
