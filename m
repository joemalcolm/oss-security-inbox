X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5639" "Friday" "19" "November" "2021" "14:10:54" "+0000" "Xen.org security team" "security@xen.org" nil "140" "[oss-security] Xen Security Advisory 390 v1 (CVE-2021-28710) - certain VT-d IOMMUs may not work in shared page table mode" nil nil nil "11" nil nil (number mark "U       security@xen Nov 19  140/5639  " thread-indent "\"[oss-security] Xen Security Advisory 390 v1 (CVE-2021-28710) - certain VT-d IOMMUs may not work in shared page table mode\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 390 v1 (CVE-2021-28710) - certain VT-d IOMMUs may not work in shared page table mode" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7314 invoked by uid 550); 19 Nov 2021 14:11:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7293 invoked from network); 19 Nov 2021 14:11:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=umEaDI8/hUmH+5yhUmlANGENfqJ8OeLb0pmTgj8hvss=; b=OEp38vmrfhW3Jlrh0MU+sVHTKw
	EcSoUTtlOsNS/jYmsPMdXKD35H7d5C2fiH0ZxZ3UcCNMNOt53q6ykM0A4gRyParMou61U4ydvDG6w
	7pFDUh/TSLsW+hARM9OIHqHNkySj6qklqKMClqE6XCnJGV0RHRIIWvdQMUmk9xEovzgo=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1mo4bO-0006a8-Pf@xenbits.xenproject.org>
Date: Fri, 19 Nov 2021 14:10:54 +0000
Subject: [oss-security] Xen Security Advisory 390 v1 (CVE-2021-28710) - certain VT-d
 IOMMUs may not work in shared page table mode

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2021-28710 / XSA-390

      certain VT-d IOMMUs may not work in shared page table mode

ISSUE DESCRIPTION
=================

For efficiency reasons, address translation control structures (page
tables) may (and, on suitable hardware, by default will) be shared
between CPUs, for second-level translation (EPT), and IOMMUs.  These
page tables are presently set up to always be 4 levels deep.  However,
an IOMMU may require the use of just 3 page table levels.  In such a
configuration the lop level table needs to be stripped before
inserting the root table's address into the hardware pagetable base
register.  When sharing page tables, Xen erroneously skipped this
stripping.  Consequently, the guest is able to write to leaf page
table entries.

IMPACT
======

A malicious guest may be able to escalate its privileges to that of
the host.

VULNERABLE SYSTEMS
==================

Xen version 4.15 is vulnerable.  Xen versions 4.14 and earlier are not
vulnerable.

Only x86 Intel systems with IOMMU(s) in use are affected.  Arm
systems, non-Intel x86 systems, and x86 systems without IOMMU are not
affected.

Only HVM guests with passed-through PCI devices and configured to share
IOMMU and EPT page tables are able to leverage the vulnerability on
affected hardware.  Note that page table sharing is the default
configuration on capable hardware.

Systems are only affected if the IOMMU used for a passed through
device requires the use of page tables less than 4 levels deep.  We
are informed that this is the case for some at least Ivybridge and
earlier "client" chips; additionally it might be possible for such a
situation to arise when Xen is running nested under another
hypervisor, if an (emulated) Intel IOMMU is made available to Xen.

MITIGATION
==========

Suppressing the use of shared page tables avoids the vulnerability.
This can be achieved globally by passing "iommu=no-sharept" on the
hypervisor command line.  This can also be achieved on a per-guest basis
via the "passthrough=sync_pt" xl guest configuration file option.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa390.patch           xen-unstable - Xen 4.15.x

$ sha256sum xsa390*
34d3b59a52c79bd7f9d963ca44ee5cfee08274d49961726e81c34eeff6e6cd37  xsa390.patch
$

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

NOTE REGARDING LACK OF EMBARGO
==============================

This fix for issue was submitted in public before realizing the security
aspect.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmGXsGUMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZiMkH/2t+q/yAO7srnKdt1yLhOcG/tok0pdSLe5b3ayES
ZktW69wnSlQ/TeH96A64pZKxXbQpRh3cDbjn2xedCDGIOyaKuObgPY7aYfuvtOxN
/6a3P3qUf2oxm5/nS0KG6kHX69gptXupvgCPwl2i1KWARi4uMEm76N7lCe3o8fFd
s8HNfLvJ0tX6pXtOQjeQEt73fDWQ/hwKGGJctFI1hrvy01erqHDdZrYiJAO6vp8z
c9LU1o8dIQSUg2dm5GSX5DCX6xEzOh6sT53CDQ7W5gTn+SnCGr7FT1iTeXYeTFSN
EaYZVynkaxQeCXsoJO0K2o7lwwKvUrQ6GNhqdd4iOR/annY=
=P/qb
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa390.patch"
Content-Disposition: attachment; filename="xsa390.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiBWVC1kOiBmaXggcmVkdWNlZCBwYWdlIHRhYmxlIGxldmVscyBzdXBwb3J0
IHdoZW4gc2hhcmluZyB0YWJsZXMKCmRvbWFpbl9wZ2RfbWFkZHIoKSBjb250
YWlucyBsb2dpYyB0byBhZGp1c3QgdGhlIHJvb3QgYWRkcmVzcyB0byBiZSBw
dXQKaW4gdGhlIGNvbnRleHQgZW50cnkgaW4gY2FzZSA0LWxldmVsIHBhZ2Ug
dGFibGVzIGFyZW4ndCBzdXBwb3J0ZWQgYnkgYW4KSU9NTVUuIFRoaXMgbG9n
aWMgbWF5IG5vdCBiZSBieXBhc3NlZCB3aGVuIHNoYXJpbmcgcGFnZSB0YWJs
ZXMuCgpUaGlzIGlzIENWRS0yMDIxLTI4NzEwIC8gWFNBLTM5MC4KCkZpeGVz
OiAyNWNjZDA5MzQyNWMgKCJpb21tdTogcmVtb3ZlIHRoZSBzaGFyZV9wMm0g
b3BlcmF0aW9uIikKU2lnbmVkLW9mZi1ieTogSmFuIEJldWxpY2ggPGpiZXVs
aWNoQHN1c2UuY29tPgpSZXZpZXdlZC1ieTogS2V2aW4gVGlhbiA8a2V2aW4u
dGlhbkBpbnRlbC5jb20+CgotLS0gYS94ZW4vZHJpdmVycy9wYXNzdGhyb3Vn
aC92dGQvaW9tbXUuYworKysgYi94ZW4vZHJpdmVycy9wYXNzdGhyb3VnaC92
dGQvaW9tbXUuYwpAQCAtMzQwLDE5ICszNDAsMjEgQEAgc3RhdGljIHVpbnQ2
NF90IGRvbWFpbl9wZ2RfbWFkZHIoc3RydWN0CiAgICAgewogICAgICAgICBw
YWdldGFibGVfdCBwZ3QgPSBwMm1fZ2V0X3BhZ2V0YWJsZShwMm1fZ2V0X2hv
c3RwMm0oZCkpOwogCi0gICAgICAgIHJldHVybiBwYWdldGFibGVfZ2V0X3Bh
ZGRyKHBndCk7CisgICAgICAgIHBnZF9tYWRkciA9IHBhZ2V0YWJsZV9nZXRf
cGFkZHIocGd0KTsKICAgICB9Ci0KLSAgICBpZiAoICFoZC0+YXJjaC52dGQu
cGdkX21hZGRyICkKKyAgICBlbHNlCiAgICAgewotICAgICAgICAvKiBFbnN1
cmUgd2UgaGF2ZSBwYWdldGFibGVzIGFsbG9jYXRlZCBkb3duIHRvIGxlYWYg
UFRFLiAqLwotICAgICAgICBhZGRyX3RvX2RtYV9wYWdlX21hZGRyKGQsIDAs
IDEpOwotCiAgICAgICAgIGlmICggIWhkLT5hcmNoLnZ0ZC5wZ2RfbWFkZHIg
KQotICAgICAgICAgICAgcmV0dXJuIDA7Ci0gICAgfQorICAgICAgICB7Cisg
ICAgICAgICAgICAvKiBFbnN1cmUgd2UgaGF2ZSBwYWdldGFibGVzIGFsbG9j
YXRlZCBkb3duIHRvIGxlYWYgUFRFLiAqLworICAgICAgICAgICAgYWRkcl90
b19kbWFfcGFnZV9tYWRkcihkLCAwLCAxKTsKIAotICAgIHBnZF9tYWRkciA9
IGhkLT5hcmNoLnZ0ZC5wZ2RfbWFkZHI7CisgICAgICAgICAgICBpZiAoICFo
ZC0+YXJjaC52dGQucGdkX21hZGRyICkKKyAgICAgICAgICAgICAgICByZXR1
cm4gMDsKKyAgICAgICAgfQorCisgICAgICAgIHBnZF9tYWRkciA9IGhkLT5h
cmNoLnZ0ZC5wZ2RfbWFkZHI7CisgICAgfQogCiAgICAgLyogU2tpcCB0b3Ag
bGV2ZWxzIG9mIHBhZ2UgdGFibGVzIGZvciAyLSBhbmQgMy1sZXZlbCBEUkhE
cy4gKi8KICAgICBmb3IgKCBhZ2F3ID0gbGV2ZWxfdG9fYWdhdyg0KTsK

--=separator--
