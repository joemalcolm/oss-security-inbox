X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4521" "Tuesday" "5" "October" "2021" "18:43:10" "+0000" "Xen.org security team" "security@xen.org" nil "120" "[oss-security] Xen Security Advisory 386 v1 (CVE-2021-28702) - PCI devices with RMRRs not deassigned correctly" nil nil nil "10" nil nil (number mark "U       security@xen Oct  5  120/4521  " thread-indent "\"[oss-security] Xen Security Advisory 386 v1 (CVE-2021-28702) - PCI devices with RMRRs not deassigned correctly\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 386 v1 (CVE-2021-28702) - PCI devices with RMRRs not deassigned correctly" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10199 invoked by uid 550); 5 Oct 2021 18:43:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10179 invoked from network); 5 Oct 2021 18:43:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=tfi/3QwQXxxrSN8ZOEpf0N6gSqkc9mlvL65nLRNcV9Y=; b=4Xv/9z2YWtWV1lA5qeAWpVtPNQ
	5K6Zq8UEV8nWtHoISUY5o5Ad0avsVPp+/zKMOwnrN7aQ4pK7yN3USz9sHwwLr0yC/NRBt04PfNNMQ
	oxh5eJlwbfCP2baa4EEHoPfnd9pJzxkofsK1zRuc03Pog9Vc1IdaTRHgjcgCN+40Y4iw=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1mXpPC-0006vg-20@xenbits.xenproject.org>
Date: Tue, 05 Oct 2021 18:43:10 +0000
Subject: [oss-security] Xen Security Advisory 386 v1 (CVE-2021-28702) - PCI devices with
 RMRRs not deassigned correctly

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2021-28702 / XSA-386

            PCI devices with RMRRs not deassigned correctly

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

IMPACT
======

Administrators of guests which have been assigned RMRR-using PCI
devices can cause denial of service and other problems, possibly
including escalation of privilege.

VULNERABLE SYSTEMS
==================

All versions of Xen from at least 4.4 onwards are vulnerable.

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

xsa386.patch           xen-unstable - Xen 4.12.x

$ sha256sum xsa386*
f2f83c825e249bba9454437b48bbd8307fe7a224f56484388a67af124dfd279b  xsa386.patch
$

NOTE CONCERNING LACK OF EMBARGO
===============================

This issue was reported and debugged in public before the security nature
became apparent.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmFcnH8MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZje0H+QE5A0ZvoaJ5VupZYjAt5ynbQjVqxwxqAxZDTvP7
t3gtpsHSYgrHW+3giULxjGU0ZUGF9daO1JEIZCPCbUdIlmGqGEXdDoqtz0GrXCJJ
swQFeXQVmn9lV4KMTHO0BvGw5aZOft1VgGNrixd3vckFl7c5G8sWFdl7IU7FPDTQ
LiLMg6f1oOntBYjNZUZ2210jqct9GZ4ugURRufwZrwYIpc9H5pFnZAFHKismX/2m
x/PCdmOCeivytmUPA4k62oJVpJdysAL+31XkZz8bbAhjFsUmYBJscW2T5mSfaYIp
TaSrg9WBV+TVW7aNE2iittE2O0/YyOWfpUVh6lliECeFdd0=
=aNEo
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
