X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5696" "Thursday" "7" "October" "2021" "14:41:16" "+0000" "Xen.org security team" "security@xen.org" nil "146" "[oss-security] Xen Security Advisory 386 v2 (CVE-2021-28702) - PCI devices with RMRRs not deassigned correctly" nil nil nil "10" nil nil (number mark "U       security@xen Oct  7  146/5696  " thread-indent "\"[oss-security] Xen Security Advisory 386 v2 (CVE-2021-28702) - PCI devices with RMRRs not deassigned correctly\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 386 v2 (CVE-2021-28702) - PCI devices with RMRRs not deassigned correctly" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18167 invoked by uid 550); 7 Oct 2021 14:41:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18143 invoked from network); 7 Oct 2021 14:41:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=whX0VbxgcafzIANGuqkJSRmkjVp04j5bkRzqO6Z/bEI=; b=TnQ+sCxxRcx1nR69qkFJvT3iSH
	nnyNIW/s7JSg2DfEuJbun9xRYUR2O9fYNs7YA/I1o1BmaZ9L31bQyjZw8tp2D6ktjCQbRuUGjFh0/
	EGCNe8fEObnFUk71flf2iPoOMfwCDO197fqYJxEMS//yLWP4GwLMjykxPB4BH1L2ZGKQ=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1mYUaC-0002lK-RC@xenbits.xenproject.org>
Date: Thu, 07 Oct 2021 14:41:16 +0000
Subject: [oss-security] Xen Security Advisory 386 v2 (CVE-2021-28702) - PCI devices with
 RMRRs not deassigned correctly

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2021-28702 / XSA-386
                               version 2

            PCI devices with RMRRs not deassigned correctly

UPDATES IN VERSION 2
====================

Updated/corrected information about vulnerable versions.
Upstream Xen 4.12 is not affected.

There is no harm from applying the patch to an unaffected version.

ISSUE DESCRIPTION
=================

Certain PCI devices in a system might be assigned Reserved Memory
Regions (specified via Reserved Memory Region Reporting, "RMRR").
These are typically used for platform tasks such as legacy USB
emulation.

If such a device is passed through to a guest, then on guest shutdown
the device is not properly deassigned.  The IOMMU configuration for
these devices which are not properly deassigned ends up pointing to a
freed data structure, including the IO Pagetables.

Subsequent DMA or interrupts from the device will have unpredictable
behaviour, ranging from IOMMU faults to memory corruption.

This bug has existed since at least Xen 4.4 But it was previously
masked by a tangentially-related misbehaviour; that misbehaviour was
corrected in f591755823a7
 IOMMU/PCI: don't let domain cleanup continue when device de-assignment failed
which was backported to supported stable branches.

IMPACT
======

Administrators of guests which have been assigned RMRR-using PCI
devices can cause denial of service and other problems, possibly
including escalation of privilege.

VULNERABLE SYSTEMS
==================

For stable Xen releases: 4.13.4, 4.14.3 and 4.15.1 are vulnerable.
Other versions of Xen released by the Xen Project are not affected.

For Xen git branches: the HEADs of 4.13 and later (including
xen-unstable) were vulnerable, up until 2021-10-05 (when the patch in
this advisory was committed).  4.12 and earlier are not affected.

In detail: code that has the following patch applied, is vulnerable:
 IOMMU/PCI: don't let domain cleanup continue when device de-assignment failed
That patch is currently in upstream stable branches 4.13 onwards and
was included in the most recent stable point releases of each Xen version.
Other downstream Xen builds may be affected if that patch was backported.

Only Intel x86 systems are affected.  AMD x86 systems, and Arm
systems, are all unaffected.

Only systems using PCI passthrough are affected.  (And then, only if
the assigned devices have RMRRs, but whether a device advertises RMRRs
is not easy to discern.)

MITIGATION
==========

There is no mitigation (other than not passing through PCI devices
with RMRRs to guests).

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa386.patch           xen-unstable - Xen 4.13.x

$ sha256sum xsa386*
f2f83c825e249bba9454437b48bbd8307fe7a224f56484388a67af124dfd279b  xsa386.patch
$

NOTE CONCERNING LACK OF EMBARGO
===============================

This issue was reported and debugged in public before the security nature
became apparent.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmFfBvkMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZY20H/jWe2XVSU6R+cOv4GbhWL5sWBv4skLZ07yq77p8i
JB9nJXdVkyHJPSkENzggGGiygiHMJFSD5cLvczJp1IbAlQKQlZt/oVG9oTWHHeqO
joabwgZ9UyNW8/beCigRo1PYdiWI7tMsLp3D/LAjE8+ZhBRjD0NKLyWK26Uw0R8A
Su5tApmlBGx0BJzQm4BUWiyog86fPoNcBkP1hRJfj1BfXRjVYB5MsaPCtMhsqBlG
CFjDJ51Wn4Esxkg22e/429MbbExIAJUZoxuOWDk/D7nQShQNBTfqci4pfcaf5E+f
Mxi32bIr/XY5LLgf0Opu5Sl2JP3s7Ik3IDlSa+wYoGIZWB4=
=Ti35
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa386.patch"
Content-Disposition: attachment; filename="xsa386.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiBWVC1kOiBmaXggZGVhc3NpZ24gb2YgZGV2aWNlIHdpdGggUk1SUgpEYXRl
OiBGcmksIDEgT2N0IDIwMjEgMTU6MDU6NDIgKzAyMDAKCklnbm9yaW5nIGEg
c3BlY2lmaWMgZXJyb3IgY29kZSBoZXJlIHdhcyBub3QgbWVhbnQgdG8gc2hv
cnQgY2lyY3VpdApkZWFzc2lnbiB0byBfanVzdF8gdGhlIHVubWFwcGluZyBv
ZiBSTVJScy4gVGhpcyBidWcgd2FzIHByZXZpb3VzbHkKaGlkZGVuIGJ5IHRo
ZSBib2d1cyAocG90ZW50aWFsbHkgaW5kZWZpbml0ZSkgbG9vcGluZyBpbgpw
Y2lfcmVsZWFzZV9kZXZpY2VzKCksIHVudGlsIGY1OTE3NTU4MjNhNyAoIklP
TU1VL1BDSTogZG9uJ3QgbGV0IGRvbWFpbgpjbGVhbnVwIGNvbnRpbnVlIHdo
ZW4gZGV2aWNlIGRlLWFzc2lnbm1lbnQgZmFpbGVkIikgZml4ZWQgdGhhdCBs
b29wLgoKVGhpcyBpcyBDVkUtMjAyMS0yODcwMiAvIFhTQS0zODYuCgpGaXhl
czogOGI5OWY0NDAwYjY5ICgiVlQtZDogZml4IFJNUlIgcmVsYXRlZCBlcnJv
ciBoYW5kbGluZyIpClJlcG9ydGVkLWJ5OiBJdmFuIEthcmR5a292IDxrYXJk
eWtvdkB0YWJpdC5wcm8+ClNpZ25lZC1vZmYtYnk6IEphbiBCZXVsaWNoIDxq
YmV1bGljaEBzdXNlLmNvbT4KVGVzdGVkLWJ5OiBJdmFuIEthcmR5a292IDxr
YXJkeWtvdkB0YWJpdC5wcm8+CgotLS0gYS94ZW4vZHJpdmVycy9wYXNzdGhy
b3VnaC92dGQvaW9tbXUuYworKysgYi94ZW4vZHJpdmVycy9wYXNzdGhyb3Vn
aC92dGQvaW9tbXUuYwpAQCAtMjQwOSw3ICsyNDA5LDcgQEAgc3RhdGljIGlu
dCByZWFzc2lnbl9kZXZpY2Vfb3duZXJzaGlwKAogICAgICAgICAgICAgICAg
IHJldCA9IGlvbW11X2lkZW50aXR5X21hcHBpbmcoc291cmNlLCBwMm1fYWNj
ZXNzX3gsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBybXJyLT5iYXNlX2FkZHJlc3MsCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBybXJyLT5lbmRfYWRkcmVz
cywgMCk7Ci0gICAgICAgICAgICAgICAgaWYgKCByZXQgIT0gLUVOT0VOVCAp
CisgICAgICAgICAgICAgICAgaWYgKCByZXQgJiYgcmV0ICE9IC1FTk9FTlQg
KQogICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0OwogICAgICAgICAg
ICAgfQogICAgIH0KCg==

--=separator--
