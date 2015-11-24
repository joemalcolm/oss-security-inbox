X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3603" "Tuesday" "24" "November" "2015" "17:13:34" "+0000" "Xen.org security team" "security@xen.org" "<E1a1H9q-0000wL-6j@xenbits.xen.org>" "99" "[oss-security] Xen Security Advisory 163 - virtual PMU is unsupported" "^CC:" nil nil "11" "2015112417:13:34" "[oss-security] Xen Security Advisory 163 - virtual PMU is unsupported" (number mark "        security@xen Nov 24   99/3603  " thread-indent "\"[oss-security] Xen Security Advisory 163 - virtual PMU is unsupported\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9717 invoked by uid 550); 24 Nov 2015 17:14:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8125 invoked from network); 24 Nov 2015 17:13:55 -0000
Message-Id: <E1a1H9q-0000wL-6j@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Tue, 24 Nov 2015 17:13:34 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 163 - virtual PMU is unsupported
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

                    Xen Security Advisory XSA-163

                      virtual PMU is unsupported

ISSUE DESCRIPTION
=================

The Virtual Performance Measurement Unit feature has been documented
as unsupported, so far only on Intel CPUs.  Further issues have been
found or are suspected which would also (or exclusively) affect AMD
CPUs.  We believe that the functionality is mostly intended for
non-production use anyway.  Therefore this functionality is hereby
documented as generally unsupported security-wise.

IMPACT
======

Use of the feature may have unknown effects, ranging from information
leaks through Denial of Service to privilege escalation.

VULNERABLE SYSTEMS
==================

Only systems which enable the VPMU feature are affected.  That is,
only systems with a `vpmu' setting on the hypervisor command line.

Xen versions from 3.3 onwards are affected.

Only x86 systems are affected.  ARM systems do not currently implement
vPMU and are therefore currently unaffected; should this functionality
be added to ARM in the future it would be covered by this exclusion.

In Xen versions prior to 4.6 only HVM guests can take advantage of
this unsupported functionality.  In Xen versions from 4.6 onwards all
guest kinds can use this unsupported functionality.

MITIGATION
==========

Not enabling vPMU support (by omitting the "vpmu" hypervisor command
line option) will avoid using and exposing the unsupported
functionality.

RESOLUTION
==========

Applying the attached patch documents the situation.  The patch does
not fix any security issues.

xsa163.patch           xen-unstable

$ sha256sum xsa163*
b9185a45a41f31e7c2f85b79a669b8b1dbf00c6b40a79b00c779b344ccab45b7  xsa163.patch
$
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWVJqRAAoJEIP+FMlX6CvZba8H/23BreIs2Gxkh+9Jty8EEMdp
nk3hSpEgxIb101XsbZ4JNwMO8QqBoTi1Bt0+k4bnjdRsU1G/vImacaN9LlefmLJc
jn3n4Ce9ODGQvCEp1LPwWQusduFhMUIaUK6cwB2LclYxUnxCgUpLBFReOp9QIbgZ
Bv+rrw9gcNb8zUKT53FZ7bOApRoU28rSFX1XE72ELPDdGbpTVXxlvQZtKsQY7N7O
Se1COml0MDhufWRf3SNxO2MmqZsg43fsjvJaJgGoXE+4gslcLBMjiwgoUDX2k9CG
Pi4M5uLNLxXJZkgbo1qi8ueQB9yck6tMg+o6f3wDFz28SFfu8/D2szXGOblpE5w=
=2Wqz
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa163.patch"
Content-Disposition: attachment; filename="xsa163.patch"
Content-Transfer-Encoding: base64

eDg2L3ZQTVU6IGRvY3VtZW50IGFzIHVuc3VwcG9ydGVkCgpUaGlzIGlzIFhT
QS0xNjMuCgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hA
c3VzZS5jb20+Ci0tLQpOb3RlIHRoYXQgdGhlIHJlZmVyZW5jZWQgbGluayB3
aWxsIG9ubHkgYmVjb21lIGFjdGl2ZSBhZnRlciBwdWJsaWMKZGlzY2xvc3Vy
ZS4KCi0tLSBhL2RvY3MvbWlzYy94ZW4tY29tbWFuZC1saW5lLm1hcmtkb3du
CisrKyBiL2RvY3MvbWlzYy94ZW4tY29tbWFuZC1saW5lLm1hcmtkb3duCkBA
IC0xNDgyLDggKzE0ODIsOSBAQCBmZWF0dXJlIGlzIHN3aXRjaGVkIG9uIG9u
IEludGVsIHByb2Nlc3NvCiBOb3RlIHRoYXQgaWYgKip3YXRjaGRvZyoqIG9w
dGlvbiBpcyBhbHNvIHNwZWNpZmllZCB2cG11IHdpbGwgYmUgdHVybmVkIG9m
Zi4KIAogKldhcm5pbmc6KgotQXMgdGhlIEJUUyB2aXJ0dWFsaXNhdGlvbiBp
cyBub3QgMTAwJSBzYWZlIGFuZCBiZWNhdXNlIG9mIHRoZSBuZWhhbGVtIHF1
aXJrCi1kb24ndCB1c2UgdGhlIHZwbXUgZmxhZyBvbiBwcm9kdWN0aW9uIHN5
c3RlbXMgd2l0aCBJbnRlbCBjcHVzIQorQXMgdGhlIHZpcnR1YWxpc2F0aW9u
IGlzIG5vdCAxMDAlIHNhZmUsIGRvbid0IHVzZSB0aGUgdnBtdSBmbGFnIG9u
Citwcm9kdWN0aW9uIHN5c3RlbXMgKHNlZSBYZW4gU2VjdXJpdHkgQWR2aXNv
cnkgMTYzLAoraHR0cDovL3hlbmJpdHMueGVuLm9yZy94c2EvYWR2aXNvcnkt
MTYzLmh0bWwpIQogCiAjIyMgd2F0Y2hkb2cKID4gYD0gZm9yY2UgfCA8Ym9v
bGVhbj5gCg==

--=separator--
