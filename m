X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/21
Message-Id: <E1xQq97-00000003N8z-1NFl@xenbits.xenproject.org>
Date: Tue, 10 Nov 2026 18:00:37 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 524 v1 (CVE-2024-21963) - AMD IOMMU Out-of-Bounds Device Table Read
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2024-21963 / XSA-524

               AMD IOMMU Out-of-Bounds Device Table Read

ISSUE DESCRIPTION
=================

With AMD IOMMUs, the OS or Hypervisor chooses the position and size of
the Device Table, which holds the main configuration information for
devices.

AMD have disclosed a vulnerability in some IOMMUs, whereby under
specific circumstances they read beyond the size chosen by the OS or
Hypervisor.  This gets interpreted as valid configuration data for
certain devices.

For more information, see:
  https://www.amd.com/en/resources/product-security/bulletin/amd-sb-3060.html

IMPACT
======

Depending on platform and system configuration, a domain might be able
to control the IOMMU configuration for a device.

If a domain can exercise such control, it can modify arbitrary host
memory and escalate it's privilege to that of Xen.

VULNERABLE SYSTEMS
==================

Systems running all versions of Xen are affected.

Only certain AMD systems are believed to be vulnerable.  Systems from
other manufacturers are not known to be affected.

A particular system is potentially vulnerable if:

 1) Any of the IOMMUs in the system have a Device Table size less than
    2MB.  i.e. the system's IVRS table describes that particular IOMMU
    as not covering a full PCI bus, and
 2) There is either:
    a) A real device behind the IOMMU which is the first function not
       covered by the IVRS description, or
    b) Any device behind the IOMMU which can be configured to use the
       initiator ID of the first function not covered by the IVRS
       description.

If the above situation holds, the IOMMU will read out of bounds from the
next sequential page in physical memory, and interpret it as valid
configuration data for the device.  This page may belong to a guest.

MITIGATION
==========

There are no mitigations.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa524.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa524*
01204a1bacc2bfb44506975a147fbf5f067831eebee37b7f8cf55f558adceb50  xsa524.patch
$

NOTE CONCERNING CVE
===================

The use of a 2024 CVE on a 2026 disclosure was queried with AMD, and
confirmed to be correct.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmrzWUUMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZF3oIALkMaorBfSljZ7A0pDIjp9Ejy3vkQgMfMnyDpmnh
n/M0rdHDaX+hpavhsCThZd65j6fwLiLqeKC14FV9dxmb3VqdW7Efpc6J/LZ3Z3ZW
hbtej/hGRfjWGKF4El6FH4Lzx5AjDmKqDyvR71+TL2sXT80xvKmWfVhx8MGG+JGb
lKuBp0lS+72qhIGdMr3IWOebYi0h75JA0XgPlm2YGajn7CL0RpImO78gb5WvT5sU
/Bv9kUBhsZsitTEV8vXdF4A0ksZM9xIYQavsfq+4YyRGYmAYwQqR3mYHF2SJdq4R
MGsY5LxhFcktw+dfRq9rtfU/vnVkfxDBgzQrwRFts8YbCqI=
=bZvY
-----END PGP SIGNATURE-----

Download attachment "xsa524.patch" of type "application/octet-stream" (5004 bytes)
