X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/11
Message-Id: <E1wWv8a-00CQaD-2W@xenbits.xenproject.org>
Date: Tue, 09 Jun 2026 12:00:56 +0000
From: Xen.org security team <security@....org>
To: xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
CC: Xen.org security team <security-team-members@....org>
Subject: Xen Security Advisory 491 v2 (CVE-2026-42487) - x86 HVM I/O port list traversal
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-42487 / XSA-491
                               version 2

                    x86 HVM I/O port list traversal

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

HVM guest I/O port accesses are subject to either emulation or at least
translation.  Translations are managed by the device model (via
XEN_DOMCTL_ioport_mapping), and hence the linked list used may changed
at any time.  Traversal of those lists (while handling guest I/O port
accesses) therefore needs synchronizing with updates, which was missing
so far.

IMPACT
======

A device model of a HVM guest can cause a hypervisor crash, causing a
Denial of Service (DoS) of the entire host.  Privilege escalation and
information leaks cannot be ruled out.

VULNERABLE SYSTEMS
==================

All Xen versions from at least 3.2 onwards are vulnerable.  Earlier
versions have not been inspected.

Only x86 systems are vulnerable.  Arm systems are not vulnerable.

Only entities controlling HVM guests can leverage the vulnerability.
These are device models running in either a stub domain or de-privileged
in Dom0.

MITIGATION
==========

Running only PV or PVH guests will avoid the vulnerability.

(Switching from a device model stub domain or a de-privileged device
model to a fully privileged Dom0 device model does NOT mitigate this
vulnerability.  Rather, it simply recategorises the vulnerability to
hostile management code, regarding it "as designed"; thus it merely
reclassifies these issues as "not a bug".  The security of a Xen system
using stub domains is still better than with a qemu-dm running as a Dom0
process.  Users and vendors of stub qemu dm systems should not change
their configuration to use a Dom0 qemu process.)

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa491.patch           xen-unstable
xsa491-4.21.patch      Xen 4.21.x - Xen 4.17.x

$ sha256sum xsa491*
23a90da1c71389083351846169fc565a671b44f5f4ba838b18fc0fa6d7582bf8  xsa491.patch
443674f42a092b953b6ba4d91cfa19bfbee0077dfcd5a39ae53368e40ed23aac  xsa491-4.21.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches and/or mitigations described above (or
others which are substantially similar) is permitted during the
embargo, even on public-facing systems with untrusted guest users and
administrators.

But: Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, please contact the Xen Project Security
Team.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmon+4gMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZGqMIAJ3p3v2yhpMhVPL7ClsuYuz8ks1cVHn4d4971wCS
gao1KbD+k8xjiqrR5pdCO/cHViXmajPk7sV4NwOsSmW1KQ8ejQrps3v16/IOTIjp
JzcDRqk2J6IurQE819kIe0B7vQlgfElK1ZUq070DljChzBwcuWnaXywacgh/eofo
SpElIHLtlM9RPmPTPaAI5inEIANb2Rrqdgt6yUg3XqSUN77h4ma8GLZH+Tt2x6Zg
HN9BjZcSmcRkOwWK80g30rQ0ZltSSh0ExM5Jhk0vtulbK5BeO7dAphElwbBjAwb2
RjuoQhvS4QkvCEZGpUIiFJKtxlixhqZZl9CFYm0b4Xe/aJA=
=8fKa
-----END PGP SIGNATURE-----

Download attachment "xsa491.patch" of type "application/octet-stream" (6973 bytes)

Download attachment "xsa491-4.21.patch" of type "application/octet-stream" (7014 bytes)
