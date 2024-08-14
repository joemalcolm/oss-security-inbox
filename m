Received: (qmail 29804 invoked by uid 550); 14 Aug 2024 13:25:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29747 invoked from network); 14 Aug 2024 13:25:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=Y7PBCM24upHm5ZQZt2uHvLuBCEM77iHd0QNUm65etq8=; b=mHpuv4VPDxFyMpp5QLnhLZfZQ7
	zZxypwhs+Wncl8rjU9e3yNhADBYP/MWTdj8JpuUSS/CoVyyfyk+6s9qUBMVg1w0yFYkBbPu29/daN
	rPW8xu1ZQzISF1heFn2tEmJMPD0D8dj/TYVlQQhBkiPTQD/DrL8tnWShSMxOWkOl//sc=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1seE0L-0001xk-NV@xenbits.xenproject.org>
Date: Wed, 14 Aug 2024 13:25:33 +0000
Subject: [oss-security] Xen Security Advisory 460 v2 (CVE-2024-31145) - error handling in
 x86 IOMMU identity mapping

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2024-31145 / XSA-460
                               version 2

             error handling in x86 IOMMU identity mapping

UPDATES IN VERSION 2
====================

Wording updated. Public release.

ISSUE DESCRIPTION
=================

Certain PCI devices in a system might be assigned Reserved Memory
Regions (specified via Reserved Memory Region Reporting, "RMRR") for
Intel VT-d or Unity Mapping ranges for AMD-Vi.  These are typically used
for platform tasks such as legacy USB emulation.

Since the precise purpose of these regions is unknown, once a device
associated with such a region is active, the mappings of these regions
need to remain continuouly accessible by the device.  In the logic
establishing these mappings, error handling was flawed, resulting in
such mappings to potentially remain in place when they should have been
removed again.  Respective guests would then gain access to memory
regions which they aren't supposed to have access to.

IMPACT
======

The precise impact is system specific.  Denial of Service (DoS)
affecting the entire host or individual guests, privilege escalation,
and information leaks cannot be ruled out.

VULNERABLE SYSTEMS
==================

Only x86 systems passing PCI devices with RMRR/Unity regions through to
guests are potentially affected.

PCI devices listed in a vm.cfg file have error handling which causes `xl
create` to abort and tear down the domain, and is thus believed to be
safe.

PCI devices attached using `xl pci-attach` will result in the command
returning nonzero, but will not tear down the domain.  VMs which
continue to run after `xl pci-attach` has failed expose the
vulnerability.

For x86 Intel hardware, Xen versions 4.0 and later are affected.

For all x86 hardware, Xen versions having the XSA-378 fixes applied /
backported are affected.

MITIGATION
==========

Assigning devices using the vm.cfg file for attachment at boot avoids
the vulnerability.

CREDITS
=======

This issue was discovered by Teddy Astie of Vates and diagnosed as a
security issue by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the respective stable branch before applying these patches.

xsa460.patch           xen-unstable - Xen 4.16.x

$ sha256sum xsa460*
f4ca598f71e9ef6b9bc50803df2996b92d2e69afd8e36d9544823d7e56ec1819  xsa460.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAma8sCIMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZiSUIAMFWxhjNzhsuUGbrUVsO6oDIs7gOcVEsC3BlcsIp
LqetutOWHwR8B9jHeOjewZjgL/q1031qX+nCCcU/ilZtA7cAiVhPNrh4PSD/D9S5
RqUG3oSsFjSTtGwVl2JlqlHoE90tXOqLBhZFCJixQzaW3kbCfhDZdmufj8TQYBCQ
N3ioNAGwvmSeV8QPh8l3P7TRRsMwr0OTWQYtj7r4QuW+dDPJaKzbCpmWVaCPVeI2
uKUxwwIxSE9J9L1mUR34HIJR/clCFNqlcpc/MmQVz0qprBOh4jNDunN+JNDY1VXR
3P+N50ZnHCK5w1z+vjeVvZRyp9JDt2LDUj6XJ6G9IdvN1xA=
=vNzh
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa460.patch"
Content-Disposition: attachment; filename="xsa460.patch"
Content-Transfer-Encoding: base64

RnJvbTogVGVkZHkgQXN0aWUgPHRlZGR5LmFzdGllQHZhdGVzLnRlY2g+ClN1YmplY3Q6IHg4Ni9J
T01NVTogbW92ZSB0cmFja2luZyBpbiBpb21tdV9pZGVudGl0eV9tYXBwaW5nKCkKCklmIGZvciBz
b21lIHJlYXNvbiB4bWFsbG9jKCkgZmFpbHMgYWZ0ZXIgaGF2aW5nIG1hcHBlZCB0aGUgcmVzZXJ2
ZWQKcmVnaW9ucywgYW4gZXJyb3IgaXMgcmVwb3J0ZWQsIGJ1dCB0aGUgcmVnaW9ucyByZW1haW4g
bWFwcGVkIGluIHRoZSBQMk0uCgpTaW1pbGFybHkgaWYgYW4gZXJyb3Igb2NjdXJzIGR1cmluZyBz
ZXRfaWRlbnRpdHlfcDJtX2VudHJ5KCkgKGV4Y2VwdCBvbgp0aGUgZmlyc3QgY2FsbCksIHRoZSBw
YXJ0aWFsIG1hcHBpbmdzIG9mIHRoZSByZWdpb24gd291bGQgYmUgcmV0YWluZWQKd2l0aG91dCBi
ZWluZyB0cmFja2VkIGFueXdoZXJlLCBhbmQgaGVuY2Ugd2l0aG91dCB0aGVyZSBiZWluZyBhIHdh
eSB0bwpyZW1vdmUgdGhlbSBhZ2FpbiBmcm9tIHRoZSBkb21haW4ncyBQMk0uCgpNb3ZlIHRoZSBz
ZXR0aW5nIHVwIG9mIHRoZSBsaXN0IGVudHJ5IGFoZWFkIG9mIHRyeWluZyB0byBtYXAgdGhlIHJl
Z2lvbi4KSW4gY2FzZXMgb3RoZXIgdGhhbiB0aGUgZmlyc3QgbWFwcGluZyBmYWlsaW5nLCBrZWVw
IHJlY29yZCBvZiB0aGUgZnVsbApyZWdpb24sIHN1Y2ggdGhhdCBhIHN1YnNlcXVlbnQgdW5tYXBw
aW5nIHJlcXVlc3QgY2FuIGJlIHByb3Blcmx5IHRvcm4KZG93bi4KClRvIGNvbXBlbnNhdGUgZm9y
IHRoZSBwb3RlbnRpYWxseSBleGNlc3MgdW5tYXBwaW5nIHJlcXVlc3RzLCBkb24ndCBsb2cgYQp3
YXJuaW5nIGZyb20gcDJtX3JlbW92ZV9pZGVudGl0eV9lbnRyeSgpIHdoZW4gdGhlcmUgcmVhbGx5
IHdhcyBub3RoaW5nCm1hcHBlZCBhdCBhIGdpdmVuIEdGTi4KClRoaXMgaXMgWFNBLTQ2MCAvIENW
RS0yMDI0LTMxMTQ1LgoKRml4ZXM6IDIyMDFiNjdiOTEyOCAoIlZULWQ6IGltcHJvdmUgUk1SUiBy
ZWdpb24gaGFuZGxpbmciKQpGaXhlczogYzBlMTlkN2M2YzQyICgiSU9NTVU6IGdlbmVyYWxpemUg
VlQtZCdzIHRyYWNraW5nIG9mIG1hcHBlZCBSTVJSIHJlZ2lvbnMiKQpTaWduZWQtb2ZmLWJ5OiBU
ZWRkeSBBc3RpZSA8dGVkZHkuYXN0aWVAdmF0ZXMudGVjaD4KU2lnbmVkLW9mZi1ieTogSmFuIEJl
dWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpSZXZpZXdlZC1ieTogUm9nZXIgUGF1IE1vbm7DqSA8
cm9nZXIucGF1QGNpdHJpeC5jb20+CgotLS0gYS94ZW4vYXJjaC94ODYvbW0vcDJtLmMKKysrIGIv
eGVuL2FyY2gveDg2L21tL3AybS5jCkBAIC0xMjY3LDkgKzEyNjcsMTEgQEAgaW50IHAybV9yZW1v
dmVfaWRlbnRpdHlfZW50cnkoc3RydWN0IGRvbQogICAgIGVsc2UKICAgICB7CiAgICAgICAgIGdm
bl91bmxvY2socDJtLCBnZm4sIDApOwotICAgICAgICBwcmludGsoWEVOTE9HX0dfV0FSTklORwot
ICAgICAgICAgICAgICAgIm5vbi1pZGVudGl0eSBtYXAgZCVkOiVseCBub3QgY2xlYXJlZCAobWFw
cGVkIHRvICVseClcbiIsCi0gICAgICAgICAgICAgICBkLT5kb21haW5faWQsIGdmbl9sLCBtZm5f
eChtZm4pKTsKKyAgICAgICAgaWYgKCAocDJtdCAhPSBwMm1faW52YWxpZCAmJiBwMm10ICE9IHAy
bV9tbWlvX2RtKSB8fAorICAgICAgICAgICAgIGEgIT0gcDJtX2FjY2Vzc19uIHx8ICFtZm5fZXEo
bWZuLCBJTlZBTElEX01GTikgKQorICAgICAgICAgICBwcmludGsoWEVOTE9HX0dfV0FSTklORwor
ICAgICAgICAgICAgICAgICAgIm5vbi1pZGVudGl0eSBtYXAgJXBkOiVseCBub3QgY2xlYXJlZCAo
bWFwcGVkIHRvICVseClcbiIsCisgICAgICAgICAgICAgICAgICBkLCBnZm5fbCwgbWZuX3gobWZu
KSk7CiAgICAgICAgIHJldCA9IDA7CiAgICAgfQogCi0tLSBhL3hlbi9kcml2ZXJzL3Bhc3N0aHJv
dWdoL3g4Ni9pb21tdS5jCisrKyBiL3hlbi9kcml2ZXJzL3Bhc3N0aHJvdWdoL3g4Ni9pb21tdS5j
CkBAIC0yNjcsMjQgKzI2NywzNiBAQCBpbnQgaW9tbXVfaWRlbnRpdHlfbWFwcGluZyhzdHJ1Y3Qg
ZG9tYWluCiAgICAgaWYgKCBwMm1hID09IHAybV9hY2Nlc3NfeCApCiAgICAgICAgIHJldHVybiAt
RU5PRU5UOwogCi0gICAgd2hpbGUgKCBiYXNlX3BmbiA8IGVuZF9wZm4gKQotICAgIHsKLSAgICAg
ICAgaW50IGVyciA9IHNldF9pZGVudGl0eV9wMm1fZW50cnkoZCwgYmFzZV9wZm4sIHAybWEsIGZs
YWcpOwotCi0gICAgICAgIGlmICggZXJyICkKLSAgICAgICAgICAgIHJldHVybiBlcnI7Ci0gICAg
ICAgIGJhc2VfcGZuKys7Ci0gICAgfQotCiAgICAgbWFwID0geG1hbGxvYyhzdHJ1Y3QgaWRlbnRp
dHlfbWFwKTsKICAgICBpZiAoICFtYXAgKQogICAgICAgICByZXR1cm4gLUVOT01FTTsKKwogICAg
IG1hcC0+YmFzZSA9IGJhc2U7CiAgICAgbWFwLT5lbmQgPSBlbmQ7CiAgICAgbWFwLT5hY2Nlc3Mg
PSBwMm1hOwogICAgIG1hcC0+Y291bnQgPSAxOworCisgICAgLyoKKyAgICAgKiBJbnNlcnQgaW50
byBsaXN0IGFoZWFkIG9mIG1hcHBpbmcsIHNvIHRoZSByYW5nZSBjYW4gYmUgZm91bmQgd2hlbgor
ICAgICAqIHRyeWluZyB0byBjbGVhbiB1cC4KKyAgICAgKi8KICAgICBsaXN0X2FkZF90YWlsKCZt
YXAtPmxpc3QsICZoZC0+YXJjaC5pZGVudGl0eV9tYXBzKTsKIAorICAgIGZvciAoIDsgYmFzZV9w
Zm4gPCBlbmRfcGZuOyArK2Jhc2VfcGZuICkKKyAgICB7CisgICAgICAgIGludCBlcnIgPSBzZXRf
aWRlbnRpdHlfcDJtX2VudHJ5KGQsIGJhc2VfcGZuLCBwMm1hLCBmbGFnKTsKKworICAgICAgICBp
ZiAoICFlcnIgKQorICAgICAgICAgICAgY29udGludWU7CisKKyAgICAgICAgaWYgKCAobWFwLT5i
YXNlID4+IFBBR0VfU0hJRlRfNEspID09IGJhc2VfcGZuICkKKyAgICAgICAgeworICAgICAgICAg
ICAgbGlzdF9kZWwoJm1hcC0+bGlzdCk7CisgICAgICAgICAgICB4ZnJlZShtYXApOworICAgICAg
ICB9CisgICAgICAgIHJldHVybiBlcnI7CisgICAgfQorCiAgICAgcmV0dXJuIDA7CiB9CiAK

--=separator--
