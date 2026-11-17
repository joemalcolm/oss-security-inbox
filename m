X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/2
Message-Id: <E1xTL62-0000000Cr98-21cp@xenbits.xenproject.org>
Date: Tue, 17 Nov 2026 15:27:46 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 524 v2 (CVE-2024-21963) - AMD IOMMU Out-of-Bounds Device Table Read
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2024-21963 / XSA-524
                               version 2

               AMD IOMMU Out-of-Bounds Device Table Read

UPDATES IN VERSION 2
====================

Original (buggy) patch updated and new incremental patch added.

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

Applying the first of the attached patches to a tree not previously
patched for this XSA resolves this issue.  Applying the second of the
attached patches on top of the originally distributed one, which was
meanwhile also committed to the respective git branches, also
resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa524.patch           xen-unstable - Xen 4.17.x
xsa524-fix.patch       xen-unstable - Xen 4.17.x

$ sha256sum xsa524*
74d593768da3b9303b984d3f65439510138c8d1ccd2ed84b9abc2867881dfee5  xsa524.patch
8ca9e4ea59b17ad6003dc6f512c049840c722f78cc379f32337c8a698b779bd2  xsa524-fix.patch
$

NOTE CONCERNING CVE
===================

The use of a 2024 CVE on a 2026 disclosure was queried with AMD, and
confirmed to be correct.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmr8clAMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZKwIH/itoSkHwzCASmVBAdsxVJ7PrziOBOs3CI2dkTfqn
zqLzrx6PwgjnPCGUvhUinTrjR9W68DNFnwi4fSUHOvpErXVq9OPj/XFEahDQ90fZ
Rsjff4+XwhZUk4SWjsamFwrPTyKId/fGESWI53jMDlVMjfh5qHSuXcIbF1F/PIgO
5WKZiX6mIL1T/pzMg7Q7prQSpEhWz+kKSvPEUy2CgYGJzIIkANxcls2sdDAj6FSW
FXWHlNLNnRD9n3LbWHktZktkgnz4cTwxL0Z62vB8viWMtN+SC1vN6lftCWVhTXeI
mwtKAR56TYZaJ8vw/LKKCQmu0PFNYyOcvEKw+1bxokBPyZs=
=TFmn
-----END PGP SIGNATURE-----

Download attachment "xsa524.patch" of type "application/octet-stream" (4556 bytes)

Download attachment "xsa524-fix.patch" of type "application/octet-stream" (1218 bytes)
