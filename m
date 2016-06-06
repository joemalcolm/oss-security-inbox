X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6129" "Monday" "6" "June" "2016" "14:26:14" "+0000" "Xen.org security team" "security@xen.org" "<E1b9vTq-0001gg-6a@xenbits.xenproject.org>" "154" "[oss-security] Xen Security Advisory 181 (CVE-2016-5242) - arm: Host crash caused by VMID exhaustion" "^CC:" nil nil "6" "2016060614:26:14" "[oss-security] Xen Security Advisory 181 (CVE-2016-5242) - arm: Host crash caused by VMID exhaustion" (number mark "U       security@xen Jun  6  154/6129  " thread-indent "\"[oss-security] Xen Security Advisory 181 (CVE-2016-5242) - arm: Host crash caused by VMID exhaustion\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29796 invoked by uid 550); 6 Jun 2016 14:26:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29774 invoked from network); 6 Jun 2016 14:26:41 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
Message-Id: <E1b9vTq-0001gg-6a@xenbits.xenproject.org>
CC: Xen.org security team <security@xen.org>
Date: Mon, 06 Jun 2016 14:26:14 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 181 (CVE-2016-5242) - arm: Host crash
 caused by VMID exhaustion
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-5242 / XSA-181
                              version 2

               arm: Host crash caused by VMID exhaustion

UPDATES IN VERSION 2
====================

CVE assigned.

ISSUE DESCRIPTION
=================

VMIDs are a finite hardware resource, and allocated as part of domain
creation.  If no free VMIDs are available when trying to create a new domain,
a bug in the error path causes a NULL pointer to be used, resulting in a Data
Abort and host crash.

IMPACT
======

Attempting to create too many concurrent domains causes a host crash rather
than a graceful error.  A malicious device driver domain can hold references
to domains, preventing its VMID being released.

VULNERABLE SYSTEMS
==================

Xen versions 4.4 and later are affected.  Older Xen versions are unaffected.

x86 systems are not affected.

Only arm systems with less-privileged device driver domains can expose this
vulnerability.

MITIGATION
==========

There is no mitigation.  Not using driver domains reclassifies the problem,
but does not fix it.

NOTE REGARDING LACK OF EMBARGO
==============================

The crash was discussed publicly on xen-devel, before it was appreciated
that there was a security problem.

CREDITS
=======

This issue was discovered by Aaron Cornelius of DornerWorks.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa181.patch           xen-unstable, Xen 4.6.x, 4.5.x
xsa181-4.4.patch       Xen 4.4.x

$ sha256sum xsa181*
6756fcf44446675e5277f6d6c0e8a0aaa51a7909ad9a55af89a09367fded8733  xsa181.patch
97a90c7cb42466647622cb2ed98de531b7ba2e174a1bc639a32a6f1b626d503f  xsa181-4.4.patch
$
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEbBAEBAgAGBQJXUYxcAAoJEIP+FMlX6CvZgAAH+OiNDLSkAHUl3isXjFzK+Mf9
NGuIyXc2j5K8uTwz5KvZkhiWLVCeOY7Jo1Wix3Fa1wFtJ2rMlgQf7/hOt0tk0NjU
w97Re+xSi69iruPEdwb4k31ohnlfLSqriqL4JWh6EDrhftdnvEk/yXmriyu1RhKy
MLk1P24Ora/gvSj31px3vBkbu8KLImhIOkOcRmJ7FQb8gWsmMDluuVu7lhUAL7im
KCe6u99sDQo18wxubYID4XxFqJExBUd6L3cnpdN4UITgylSaIqJq/RBwd8jRrxW8
MxT9/IcNf0rmB1Sh1IARBFF7P7hj76ho3sIpMeE0cMPWBe2NWMItX9ula61vQA==
=kBFB
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa181.patch"
Content-Disposition: attachment; filename="xsa181.patch"
Content-Transfer-Encoding: base64

RnJvbSBlZTQ4OGUyMTMzZTU4MTk2N2QxM2Q1Mjg3ZDdiZDY1NGU5YjJlMmE2
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBUaHUsIDIgSnVu
IDIwMTYgMTQ6MTk6MDAgKzAxMDAKU3ViamVjdDogW1BBVENIXSB4ZW4vYXJt
OiBEb24ndCBmcmVlIHAybS0+cm9vdCBpbiBwMm1fdGVhcmRvd24oKSBiZWZv
cmUgaXQgaGFzCiBiZWVuIGFsbG9jYXRlZAoKSWYgcDJtX2luaXQoKSBkaWRu
J3QgY29tcGxldGUgc3VjY2Vzc2Z1bGx5LCAoZS5nLiBkdWUgdG8gVk1JRApl
eGhhdXN0aW9uKSwgcDJtX3RlYXJkb3duKCkgaXMgY2FsbGVkIGFuZCB1bmNv
bmRpdGlvbmFsbHkgdHJpZXMgdG8gZnJlZQpwMm0tPnJvb3QgYmVmb3JlIGl0
IGhhcyBiZWVuIGFsbG9jYXRlZC4gIGZyZWVfZG9taGVhcF9wYWdlcygpIGRv
ZXNuJ3QKdG9sZXJhdGUgTlVMTCBwb2ludGVycy4KClRoaXMgaXMgWFNBLTE4
MQoKUmVwb3J0ZWQtYnk6IEFhcm9uIENvcm5lbGl1cyA8QWFyb24uQ29ybmVs
aXVzQGRvcm5lcndvcmtzLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5kcmV3IENv
b3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6
IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KUmV2aWV3ZWQtYnk6
IEp1bGllbiBHcmFsbCA8anVsaWVuLmdyYWxsQGFybS5jb20+Ci0tLQogeGVu
L2FyY2gvYXJtL3AybS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS94ZW4v
YXJjaC9hcm0vcDJtLmMgYi94ZW4vYXJjaC9hcm0vcDJtLmMKaW5kZXggODM4
ZDAwNC4uNmExOWM1NyAxMDA2NDQKLS0tIGEveGVuL2FyY2gvYXJtL3AybS5j
CisrKyBiL3hlbi9hcmNoL2FybS9wMm0uYwpAQCAtMTQwOCw3ICsxNDA4LDgg
QEAgdm9pZCBwMm1fdGVhcmRvd24oc3RydWN0IGRvbWFpbiAqZCkKICAgICB3
aGlsZSAoIChwZyA9IHBhZ2VfbGlzdF9yZW1vdmVfaGVhZCgmcDJtLT5wYWdl
cykpICkKICAgICAgICAgZnJlZV9kb21oZWFwX3BhZ2UocGcpOwogCi0gICAg
ZnJlZV9kb21oZWFwX3BhZ2VzKHAybS0+cm9vdCwgUDJNX1JPT1RfT1JERVIp
OworICAgIGlmICggcDJtLT5yb290ICkKKyAgICAgICAgZnJlZV9kb21oZWFw
X3BhZ2VzKHAybS0+cm9vdCwgUDJNX1JPT1RfT1JERVIpOwogCiAgICAgcDJt
LT5yb290ID0gTlVMTDsKIAotLSAKMi4xLjQKCg==

--=separator
Content-Type: application/octet-stream; name="xsa181-4.4.patch"
Content-Disposition: attachment; filename="xsa181-4.4.patch"
Content-Transfer-Encoding: base64

RnJvbSA2MDVhMjcxMWM0MTEyNDc5MjAxMTZhNTAyNmU3NzI4MTViMTE2OGNk
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBUaHUsIDIgSnVu
IDIwMTYgMTQ6MTk6MDAgKzAxMDAKU3ViamVjdDogW1BBVENIXSB4ZW4vYXJt
OiBEb24ndCBmcmVlIHAybS0+Zmlyc3RfbGV2ZWwgaW4gcDJtX3RlYXJkb3du
KCkgYmVmb3JlCiBpdCBoYXMgYmVlbiBhbGxvY2F0ZWQKCklmIHAybV9pbml0
KCkgZGlkbid0IGNvbXBsZXRlIHN1Y2Nlc3NmdWxseSwgKGUuZy4gZHVlIHRv
IFZNSUQKZXhoYXVzdGlvbiksIHAybV90ZWFyZG93bigpIGlzIGNhbGxlZCBh
bmQgdW5jb25kaXRpb25hbGx5IHRyaWVzIHRvIGZyZWUKcDJtLT5maXJzdF9s
ZXZlbCBiZWZvcmUgaXQgaGFzIGJlZW4gYWxsb2NhdGVkLiAgZnJlZV9kb21o
ZWFwX3BhZ2VzKCkgZG9lc24ndAp0b2xlcmF0ZSBOVUxMIHBvaW50ZXJzLgoK
VGhpcyBpcyBYU0EtMTgxCgpSZXBvcnRlZC1ieTogQWFyb24gQ29ybmVsaXVz
IDxBYXJvbi5Db3JuZWxpdXNAZG9ybmVyd29ya3MuY29tPgpTaWduZWQtb2Zm
LWJ5OiBBbmRyZXcgQ29vcGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29t
PgpSZXZpZXdlZC1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29t
PgpSZXZpZXdlZC1ieTogSnVsaWVuIEdyYWxsIDxqdWxpZW4uZ3JhbGxAYXJt
LmNvbT4KLS0tCiB4ZW4vYXJjaC9hcm0vcDJtLmMgfCAzICsrLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL3hlbi9hcmNoL2FybS9wMm0uYyBiL3hlbi9hcmNoL2FybS9w
Mm0uYwppbmRleCBhZmY3YTJjLi45Y2Y2ZjkxIDEwMDY0NAotLS0gYS94ZW4v
YXJjaC9hcm0vcDJtLmMKKysrIGIveGVuL2FyY2gvYXJtL3AybS5jCkBAIC02
MTUsNyArNjE1LDggQEAgdm9pZCBwMm1fdGVhcmRvd24oc3RydWN0IGRvbWFp
biAqZCkKICAgICB3aGlsZSAoIChwZyA9IHBhZ2VfbGlzdF9yZW1vdmVfaGVh
ZCgmcDJtLT5wYWdlcykpICkKICAgICAgICAgZnJlZV9kb21oZWFwX3BhZ2Uo
cGcpOwogCi0gICAgZnJlZV9kb21oZWFwX3BhZ2VzKHAybS0+Zmlyc3RfbGV2
ZWwsIFAyTV9GSVJTVF9PUkRFUik7CisgICAgaWYgKCBwMm0tPmZpcnN0X2xl
dmVsICkKKyAgICAgICAgZnJlZV9kb21oZWFwX3BhZ2VzKHAybS0+Zmlyc3Rf
bGV2ZWwsIFAyTV9GSVJTVF9PUkRFUik7CiAKICAgICBwMm0tPmZpcnN0X2xl
dmVsID0gTlVMTDsKIAotLSAKMi4xLjQKCg==

--=separator--
