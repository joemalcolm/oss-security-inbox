X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/26
Message-Id: <E1xQqqm-00000003kLo-0iQo@xenbits.xenproject.org>
Date: Tue, 10 Nov 2026 18:45:44 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 532 v1 (CVE-2026-99287) - Linux xen-netback: guest can trigger double unmap of memory
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-99287 / XSA-532

      Linux xen-netback: guest can trigger double unmap of memory

ISSUE DESCRIPTION
=================

When xen-netback is setting up the connection to a frontend, it is
mapping the ring pages and then validating the ring pages' contents.
In case the ring index values are illegal, xen-netback tries to unmap
all allocated resources of the connection.  Due to a missing test for
already unmapped memory, the unmap can happen twice, resulting in a
potential unmap of another guest's memory page.

IMPACT
======

The most likely outcome is a driver crash, possibly escalated to a host
crash.  This then is a Denial of Service (DoS) affecting the entire host.

Information leaks or privilege escalations cannot be ruled out.

VULNERABLE SYSTEMS
==================

Linux versions 5.5 and newer are vulnerable.

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

xsa532-linux.patch           Linux

$ sha256sum xsa532*
4d835bd07ca645ee9b9dadfffd1224bdfaa28d609c6af3666b38df54486bc9f6  xsa532-linux.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

The issue is affecting the same driver as XSA-531, which has no
embargo, too.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrzZgcMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZwDEH/AyWeZ/6Ej8kaE1nqKU740uF2dPKn9zrcazgcNlW
gkisqJn+RQm2b3SRoYrnxWMLQOTvWpPQTbKrJmVUk4ehPUr8OJrpyTwihX5iA7zs
q995XWsDraOAGL6vw3msrPJBqERB2JFmJG2XcqxlqFpSdhAXpb7nSM2YBm3EhjQp
xJnZ6t8dBEaB+lOsP5sD3KtXUIlui7crrwkuwFQmosWkGfbAIHoyvYVLqWedA8yy
Dm+9Wtze82oPy9dvn8qLF2Q9xsehkOw3o9A6lROWJk73ExlA0xHLwhuns8Q/86y/
bRKjybJ7wZXX3Rjtzupjs6/68nzGNyN/1aAmwCFOo+eP9UQ=
=O99r
-----END PGP SIGNATURE-----

Download attachment "xsa532-linux.patch" of type "application/octet-stream" (1634 bytes)
