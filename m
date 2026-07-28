X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/12
Message-Id: <E1wogYC-003Db7-2s@xenbits.xenproject.org>
Date: Tue, 28 Jul 2026 12:04:48 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 495 v2 (CVE-2026-42493) - x86 shadow paging is deprecated
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-42493 / XSA-495
                               version 2

                    x86 shadow paging is deprecated

UPDATES IN VERSION 2
====================

Updated the patch for staging with further CI adjustements.

Public release.

ISSUE DESCRIPTION
=================

Addressing certain issues, in particular related to operations which may
take excessively long and therefore would need preemption, has turned out
overly costly.  Since alternatives (HVM/PVH: HAP, PV: shim) are commonly
available, the decision was to deprecate the functionality, while still
retaining it for people to use at their own (security) risk.  Memory-wise
small enough guests may still be okay to run.

IMPACT
======

An unprivileged guest may be able to cause Denial of Service (DoS)
affecting the entire host.

VULNERABLE SYSTEMS
==================

All x86 systems with builds of Xen having SHADOW_PAGING=y are affected.
Note that prior to Xen 4.7 this control didn't exist, and all builds of
Xen would be affected.  (Strictly speaking Xen 4.6 had a different, harder
to use mechanism to disable shadow paging support: One could pass
"shadow-paging=n" on the make command line.)

MITIGATION
==========

Running HVM and PVH in Hardware Assisted Paging (HAP) mode will avoid this
vulnerability.

There's no mitigation available for PV guests.  This is because shadow
mode, if support is enabled in the hypervisor, could be engaged at any
time.  Note that without shadow mode built into Xen, guests not properly
dealing with L1TF will simply be crashed instead.

RESOLUTION
==========

Applying the appropriate attached patch documents this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa495.patch           xen-unstable - Xen 4.22.0
xsa495-4.21.patch      Xen 4.21.x
xsa495-4.20.patch      Xen 4.20.x - Xen 4.19.x
xsa495-4.18.patch      Xen 4.18.x
xsa495-4.17.patch      Xen 4.17.x

$ sha256sum xsa495*
949624ce241ddc455c43cdde0ff045cc5fdf29b69f06f7079fa8f1d2400e1d9d  xsa495.patch
bb1fea4b49840b81a1a7ca86124e308f23edd6eb078857d44d9ebaf1b352b374  xsa495-4.17.patch
06f2c862df85a17b9dc1d4a0df42cadb97e24b7033c070c9ad74ad72d278af0e  xsa495-4.18.patch
bffa5816be9ddf0fabec0509f2b74e30a5dd0e5429a3b7919e304150cb5091f2  xsa495-4.20.patch
7092cf37dbcfecc9aa6bf9a2836ed70f48f52bccb9630e94c89d2afe120b47f5  xsa495-4.21.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of patches or mitigations is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because switching HVM or PVH guests from shadow to HAP mode is a
guest noticeable change, while for PV guests the lack of shadow mode is
noticeable because they then cannot be migrated anymore, and guests not
properly fixed for L1TF would be forcibly crashed.

Deployment is permitted only AFTER the embargo ends.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmpomqUMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZH9wH/2EYJsV5YVdJsoQSlG94dqOR7IDPEI2I17wUVSoG
OK6BaqaejA1SHJbt0/wSkhJ9er+1UHzgr61S7EnE813mugu7T9nwTku1/++4DB9O
V/ID/NZzWwGJ2EjCHGrVTPZvmxMmVBGZs3bex00xrQ83y97D3TfmCRH0k6ip7sUh
kKSmdvTdlnODuV1+3KT09RIpDvOjVGXLpnd22++0CcT0eFoOrn0nH2dgdUw/grTf
7ye6pGcj2xViznw7FDJnXG4XOAC+wIBMX9HJK6rMOFR9P2DFUxUEcYVN+DlzR67h
3Mejc9U4Ll+65RoZbI01lmpnpqEJ33kPRGkwzA0CJmkF8wQ=
=evRY
-----END PGP SIGNATURE-----

Download attachment "xsa495.patch" of type "application/octet-stream" (3705 bytes)

Download attachment "xsa495-4.17.patch" of type "application/octet-stream" (3105 bytes)

Download attachment "xsa495-4.18.patch" of type "application/octet-stream" (2989 bytes)

Download attachment "xsa495-4.20.patch" of type "application/octet-stream" (3039 bytes)

Download attachment "xsa495-4.21.patch" of type "application/octet-stream" (3043 bytes)
