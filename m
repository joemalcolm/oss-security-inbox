X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["15632" "Thursday" "8" "September" "2016" "12:00:54" "+0000" "Xen.org security team" "security@xen.org" "<E1bhy0k-0000uT-IV@xenbits.xenproject.org>" "321" "[oss-security] Xen Security Advisory 186 (CVE-2016-7093) - x86: Mishandling of instruction pointer truncation during emulation" nil nil nil "9" "2016090812:00:54" "[oss-security] Xen Security Advisory 186 (CVE-2016-7093) - x86: Mishandling of instruction pointer truncation during emulation" (number mark "U       security@xen Sep  8  321/15632 " thread-indent "\"[oss-security] Xen Security Advisory 186 (CVE-2016-7093) - x86: Mishandling of instruction pointer truncation during emulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28155 invoked by uid 550); 8 Sep 2016 12:01:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28092 invoked from network); 8 Sep 2016 12:01:16 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1bhy0k-0000uT-IV@xenbits.xenproject.org>
Date: Thu, 08 Sep 2016 12:00:54 +0000
Subject: [oss-security] Xen Security Advisory 186 (CVE-2016-7093) - x86: Mishandling of
 instruction pointer truncation during emulation

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-7093 / XSA-186
                              version 4

      x86: Mishandling of instruction pointer truncation during emulation

UPDATES IN VERSION 4
====================

Public release.

ISSUE DESCRIPTION
=================

When emulating HVM instructions, Xen uses a small i-cache for fetches
from guest memory.  The code that handles cache misses does not check
if the address from which it fetched lies within the cache before
blindly writing to it.  As such it is possible for the guest to
overwrite hypervisor memory.

It is currently believed that the only way to trigger this bug is to
use the way that Xen currently incorrectly wraps CS:IP in 16 bit
modes.  The included patch prevents such wrapping.

IMPACT
======

A malicious HVM guest administrator can escalate their privilege to that
of the host.

VULNERABLE SYSTEMS
==================

Xen versions 4.7.0 and later are vulnerable.
Xen releases 4.6.3 and 4.5.3 are vulnerable.

Xen releases 4.6.0 to 4.6.2 inclusive are NOT vulnerable.
Xen releases 4.5.2 and earlier are NOT vulnerable.

The vulnerability is only exposed to HVM guests on x86 hardware.

The vulnerability is not exposed to x86 PV guests, or ARM guests.

MITIGATION
==========

Running only PV guests will avoid this vulnerability.

CREDITS
=======

This issue was discovered by Brian Marcotte.

RESOLUTION
==========

Applying the first patch will resolve the issue.

Users wishing to independently verify the correctness of the fix may
find the second patch helpful.  The second patch makes it easier to
use the "fep" (Force Emulation Prefix) feature to reproduce the
erroneous condition in a test environment.  The "fep" feature requires
explicit enablement on the hypervisor command line, and is unsuitable
for production systems.  Accordingly, applying the second patch does
not affect production systems and does not improve security.

Xen version     First patch               Second patch
 xen-unstable:   xsa186-0001-*.patch       xsa186-0002-*.patch
 Xen 4.7.x:      xsa186-0001-*.patch       xsa186-4.7-0002-*.patch
 Xen 4.6.3:      xsa186-0001-*.patch       xsa186-4.6-0002-*.patch
 Xen 4.5.3:      xsa186-0001-*.patch       xsa186-4.6-0002-*.patch

$ sha256sum xsa186*
f2082a36d968a47e477bb5082d0e0aaa58e6cb3dc20b26389f043a9b7b595fa6  xsa186-0001-x86-emulate-Correct-boundary-interactions-of-emulate.patch
412fa58edcbd1c7fdbfec7e28898cf98585593e6a24ccfb088dc0b84715286a5  xsa186-0002-hvm-fep-Allow-testing-of-instructions-crossing-the-1.patch
7482a823c3443e26dee1111c4904162845eaa9f826aa7bf8348007406d91bddd  xsa186-4.6-0002-hvm-fep-Allow-testing-of-instructions-crossing-the.patch
5a826a32763d82ac83c924f8c89d12aae5f069a4cbc7d5193aa8413a02b6dc05  xsa186-4.7-0002-hvm-fep-Allow-testing-of-instructions-crossing-the.patch
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
Version: GnuPG v1

iQEcBAEBAgAGBQJX0VLsAAoJEIP+FMlX6CvZoUoIAMvgdMZRYdK5MaaRUAA1hDG3
UFSxZCH8zja6wZG6WPNj7VqvEkQ2350oqb05BGB8jTFCmqtNDDIyHK68WaMpwDMv
EEeetosujnlHTtVV7N8e0HO7F497PzZtzfniTyZc/h2Lna552ohMy/UcADtA7xxP
IK6qwvxpkx1aLzsDFpHIdrVcttDD/oZcVbBFwcCAqK33eGNC3S6BJvIibCAKfO8h
YKiAtvWUNsX/o4L9Zs4M50/pK3TzWsaDjfK3IX5LJPtsrcrKklrALVnDUOpTz1WA
07UIk0BcrzicEuTvuATWSQ3nVxUXAH95io23PCniHHntBtYJHjGA5rIqX+tiN6w=
=HT+K
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream;
 name="xsa186-0001-x86-emulate-Correct-boundary-interactions-of-emulate.patch"
Content-Disposition: attachment;
 filename="xsa186-0001-x86-emulate-Correct-boundary-interactions-of-emulate.patch"
Content-Transfer-Encoding: base64

RnJvbSBlOTM4YmUwMTNiYTczZmYwOGZhNGYxZDg2NzA1MDFhYWNlZmRlN2Zi
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBGcmksIDIyIEp1
bCAyMDE2IDE2OjAyOjU0ICswMDAwClN1YmplY3Q6IFtQQVRDSCAxLzJdIHg4
Ni9lbXVsYXRlOiBDb3JyZWN0IGJvdW5kYXJ5IGludGVyYWN0aW9ucyBvZiBl
bXVsYXRlZAogaW5zdHJ1Y3Rpb25zCgpUaGlzIHJldmVydHMgbW9zdCBvZiBj
L3MgMDY0MGZmYjYgIng4NmVtdWw6IGZpeCBySVAgaGFuZGxpbmciLgoKRXhw
ZXJpbWVudGFsbHksIGluIGxvbmcgbW9kZSBwcm9jZXNzb3JzIHdpbGwgZXhl
Y3V0ZSBhbiBpbnN0cnVjdGlvbiBzdHJlYW0Kd2hpY2ggY3Jvc3NlcyB0aGUg
NjRiaXQgLTEgLT4gMCB2aXJ0dWFsIGJvdW5kYXJ5LCB3aGV0aGVyIHRoZSBp
bnN0cnVjdGlvbgpib3VuZGFyeSBpcyBhbGlnbmVkIG9uIHRoZSB2aXJ0dWFs
IGJvdW5kYXJ5LCBvciBpcyBtaXNhbGlnbmVkLgoKSW4gY29tcGF0aWJpbGl0
eSBtb2RlLCBJbnRlbCBwcm9jZXNzb3JzIHdpbGwgZXhlY3V0ZSBhbiBpbnN0
cnVjdGlvbiBzdHJlYW0Kd2hpY2ggY3Jvc3NlcyB0aGUgMzJiaXQgLTEgLT4g
MCB2aXJ0dWFsIGJvdW5kYXJ5LCB3aGlsZSBBTUQgcHJvY2Vzc29ycyByYWlz
ZSBhCnNlZ21lbnRhdGlvbiBmYXVsdC4gIFhlbidzIHNlZ21lbnRhdGlvbiBi
ZWhhdmlvdXIgbWF0Y2hlcyBBTUQuCgpGb3IgMTZiaXQgY29kZSwgaGFyZHdh
cmUgZG9lcyBub3QgZXZlciB0cnVuY2F0ZWQgJWlwLiAgJWVpcCBpcyBhbHdh
eXMgdXNlZCBhbmQKYmVoYXZlcyBub3JtYWxseSBhcyBhIDMyYml0IHJlZ2lz
dGVyLCBpbmNsdWRpbmcgaW4gMTZiaXQgcHJvdGVjdGVkIG1vZGUKc2VnbWVu
dHMsIGFzIHdlbGwgYXMgaW4gUmVhbCBhbmQgVW5yZWFsIG1vZGUuCgpUaGlz
IGlzIFhTQS0xODYKClJlcG9ydGVkLWJ5OiBCcmlhbiBNYXJjb3R0ZSA8bWFy
Y290dGVAcGFuaXguY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpSZXZpZXdlZC1ieTogSmFu
IEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgotLS0KIHhlbi9hcmNoL3g4
Ni94ODZfZW11bGF0ZS94ODZfZW11bGF0ZS5jIHwgMjIgKysrKy0tLS0tLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MTggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEveGVuL2FyY2gveDg2L3g4
Nl9lbXVsYXRlL3g4Nl9lbXVsYXRlLmMgYi94ZW4vYXJjaC94ODYveDg2X2Vt
dWxhdGUveDg2X2VtdWxhdGUuYwppbmRleCBkNWE1NmNmLi5iZjM1MjlhIDEw
MDY0NAotLS0gYS94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2X2VtdWxh
dGUuYworKysgYi94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2X2VtdWxh
dGUuYwpAQCAtMTU3MCwxMCArMTU3MCw2IEBAIHg4Nl9lbXVsYXRlKAogI2Vu
ZGlmCiAgICAgfQogCi0gICAgLyogVHJ1bmNhdGUgcklQIHRvIGRlZl9hZF9i
eXRlcyAoMiBvciA0KSBpZiBuZWNlc3NhcnkuICovCi0gICAgaWYgKCBkZWZf
YWRfYnl0ZXMgPCBzaXplb2YoX3JlZ3MuZWlwKSApCi0gICAgICAgIF9yZWdz
LmVpcCAmPSAoMVVMIDw8IChkZWZfYWRfYnl0ZXMgKiA4KSkgLSAxOwotCiAg
ICAgLyogUHJlZml4IGJ5dGVzLiAqLwogICAgIGZvciAoIDsgOyApCiAgICAg
ewpAQCAtMzkwNiwyMSArMzkwMiwxMSBAQCB4ODZfZW11bGF0ZSgKIAogICAg
IC8qIENvbW1pdCBzaGFkb3cgcmVnaXN0ZXIgc3RhdGUuICovCiAgICAgX3Jl
Z3MuZWZsYWdzICY9IH5FRkxHX1JGOwotICAgIHN3aXRjaCAoIF9fYnVpbHRp
bl9leHBlY3QoZGVmX2FkX2J5dGVzLCBzaXplb2YoX3JlZ3MuZWlwKSkgKQot
ICAgIHsKLSAgICAgICAgdWludDE2X3QgaXA7CiAKLSAgICBjYXNlIDI6Ci0g
ICAgICAgIGlwID0gX3JlZ3MuZWlwOwotICAgICAgICBfcmVncy5laXAgPSBj
dHh0LT5yZWdzLT5laXA7Ci0gICAgICAgICoodWludDE2X3QgKikmX3JlZ3Mu
ZWlwID0gaXA7Ci0gICAgICAgIGJyZWFrOwotI2lmZGVmIF9feDg2XzY0X18K
LSAgICBjYXNlIDQ6Ci0gICAgICAgIF9yZWdzLnJpcCA9IF9yZWdzLl9laXA7
Ci0gICAgICAgIGJyZWFrOwotI2VuZGlmCi0gICAgfQorICAgIC8qIFplcm8g
dGhlIHVwcGVyIDMyIGJpdHMgb2YgJXJpcCBpZiBub3QgaW4gbG9uZyBtb2Rl
LiAqLworICAgIGlmICggZGVmX2FkX2J5dGVzIDwgc2l6ZW9mKF9yZWdzLmVp
cCkgKQorICAgICAgICBfcmVncy5laXAgPSAodWludDMyX3QpX3JlZ3MuZWlw
OworCiAgICAgKmN0eHQtPnJlZ3MgPSBfcmVnczsKIAogIGRvbmU6Ci0tIAoy
LjEuNAoK

--=separator
Content-Type: application/octet-stream;
 name="xsa186-0002-hvm-fep-Allow-testing-of-instructions-crossing-the-1.patch"
Content-Disposition: attachment;
 filename="xsa186-0002-hvm-fep-Allow-testing-of-instructions-crossing-the-1.patch"
Content-Transfer-Encoding: base64

RnJvbSA0M2VlZWQzYThkYTQ2ZThmZDNhOTZhM2IwOTA5N2VjOTJkODM1ODQx
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBGcmksIDEyIEF1
ZyAyMDE2IDE0OjM1OjI4ICswMTAwClN1YmplY3Q6IFtQQVRDSCAyLzJdIGh2
bS9mZXA6IEFsbG93IHRlc3Rpbmcgb2YgaW5zdHJ1Y3Rpb25zIGNyb3NzaW5n
IHRoZSAtMSAtPgogMCB2aXJ0dWFsIGJvdW5kYXJ5CgpUaGUgRm9yY2UgRW11
bGF0aW9uIFByZWZpeCBpcyBuYW1lZCB0byBmb2xsb3cgaXRzIFBWIGNvdW50
ZXJwYXJ0IGZvciBjcHVpZCBvcgpyZHRzYywgYnV0IGlzbid0IHJlYWxseSBh
biBpbnN0cnVjdGlvbiBwcmVmaXguICBJdCBiZWhhdmVzIGFzIGEgYnJlYWst
b3V0IGludG8KWGVuLCB3aXRoIHRoZSBwdXJwb3NlIG9mIGVtdWxhdGluZyB0
aGUgbmV4dCBpbnN0cnVjdGlvbiBpbiB0aGUgY3VycmVudCBzdGF0ZS4KCkl0
IGlzIGltcG9ydGFudCB0byBiZSBhYmxlIHRvIHRlc3QgbGVnYWwgc2l0dWF0
aW9ucyB3aGljaCBvY2N1ciBpbiByZWFsCmhhcmR3YXJlLCBpbmNsdWRpbmcg
aW5zdHJ1Y3Rpb24gd2hpY2ggY3Jvc3MgY2VydGFpbiBib3VuZGFyaWVzLCBh
bmQKaW5zdHJ1Y3Rpb25zIHN0YXJ0aW5nIGF0IDAuCgpSZXBvcnRlZC1ieTog
QnJpYW4gTWFyY290dGUgPG1hcmNvdHRlQHBhbml4LmNvbT4KU2lnbmVkLW9m
Zi1ieTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KUmV2aWV3ZWQtYnk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNv
bT4KLS0tCiB4ZW4vYXJjaC94ODYvaHZtL2h2bS5jIHwgMTQgKysrKysrLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEveGVuL2FyY2gveDg2L2h2bS9odm0u
YyBiL3hlbi9hcmNoL3g4Ni9odm0vaHZtLmMKaW5kZXggODkzZWZmNi4uZWFi
N2NjOSAxMDA2NDQKLS0tIGEveGVuL2FyY2gveDg2L2h2bS9odm0uYworKysg
Yi94ZW4vYXJjaC94ODYvaHZtL2h2bS5jCkBAIC0zOTAwLDE1ICszOTAwLDgg
QEAgdm9pZCBodm1fdWRfaW50ZXJjZXB0KHN0cnVjdCBjcHVfdXNlcl9yZWdz
ICpyZWdzKQogICAgICAgICB1bnNpZ25lZCBsb25nIGFkZHI7CiAgICAgICAg
IGNoYXIgc2lnWzVdOyAvKiB1ZDI7IC5hc2NpaSAieGVuIiAqLwogCi0gICAg
ICAgIC8qCi0gICAgICAgICAqIE5vdGUgdGhhdCBpbiB0aGUgY2FsbCBiZWxv
dyB3ZSBwYXNzIDEgbW9yZSB0aGFuIHRoZSBzaWduYXR1cmUKLSAgICAgICAg
ICogc2l6ZSwgdG8gZ3VhcmQgYWdhaW5zdCB0aGUgb3ZlcmFsbCBjb2RlIHNl
cXVlbmNlIHdyYXBwaW5nIGJldHdlZW4KLSAgICAgICAgICogInByZWZpeCIg
YW5kIGFjdHVhbCBpbnN0cnVjdGlvbi4gVGhlcmUncyBuZWNlc3NhcmlseSBh
dCBsZWFzdCBvbmUKLSAgICAgICAgICogYWN0dWFsIGluc3RydWN0aW9uIGJ5
dGUgcmVxdWlyZWQsIHNvIHRoaXMgd29uJ3QgY2F1c2UgZmFpbHVyZSBvbgot
ICAgICAgICAgKiBsZWdpdGltYXRlIHVzZXMuCi0gICAgICAgICAqLwogICAg
ICAgICBpZiAoIGh2bV92aXJ0dWFsX3RvX2xpbmVhcl9hZGRyKHg4Nl9zZWdf
Y3MsIGNzLCByZWdzLT5laXAsCi0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc2l6ZW9mKHNpZykgKyAxLCBodm1fYWNjZXNzX2lu
c25fZmV0Y2gsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc2l6ZW9mKHNpZyksIGh2bV9hY2Nlc3NfaW5zbl9mZXRjaCwKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoaHZtX2xv
bmdfbW9kZV9lbmFibGVkKGN1cikgJiYKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY3MtPmF0dHIuZmllbGRzLmwpID8gNjQg
OgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNz
LT5hdHRyLmZpZWxkcy5kYiA/IDMyIDogMTYsICZhZGRyKSAmJgpAQCAtMzkx
OCw2ICszOTExLDExIEBAIHZvaWQgaHZtX3VkX2ludGVyY2VwdChzdHJ1Y3Qg
Y3B1X3VzZXJfcmVncyAqcmVncykKICAgICAgICAgewogICAgICAgICAgICAg
cmVncy0+ZWlwICs9IHNpemVvZihzaWcpOwogICAgICAgICAgICAgcmVncy0+
ZWZsYWdzICY9IH5YODZfRUZMQUdTX1JGOworCisgICAgICAgICAgICAvKiBa
ZXJvIHRoZSB1cHBlciAzMiBiaXRzIG9mICVyaXAgaWYgbm90IGluIGxvbmcg
bW9kZS4gKi8KKyAgICAgICAgICAgIGlmICggIShodm1fbG9uZ19tb2RlX2Vu
YWJsZWQoY3VyKSAmJiBjcy0+YXR0ci5maWVsZHMubCkgKQorICAgICAgICAg
ICAgICAgIHJlZ3MtPmVpcCA9IHJlZ3MtPl9laXA7CisKICAgICAgICAgICAg
IGFkZF90YWludChUQUlOVF9IVk1fRkVQKTsKICAgICAgICAgfQogICAgIH0K
LS0gCjIuMS40Cgo=

--=separator
Content-Type: application/octet-stream;
 name="xsa186-4.6-0002-hvm-fep-Allow-testing-of-instructions-crossing-the.patch"
Content-Disposition: attachment;
 filename="xsa186-4.6-0002-hvm-fep-Allow-testing-of-instructions-crossing-the.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KU3ViamVjdDogaHZtL2ZlcDogQWxsb3cgdGVzdGluZyBvZiBpbnN0cnVj
dGlvbnMgY3Jvc3NpbmcgdGhlIC0xIC0+IDAgdmlydHVhbCBib3VuZGFyeQoK
VGhlIEZvcmNlIEVtdWxhdGlvbiBQcmVmaXggaXMgbmFtZWQgdG8gZm9sbG93
IGl0cyBQViBjb3VudGVycGFydCBmb3IgY3B1aWQgb3IKcmR0c2MsIGJ1dCBp
c24ndCByZWFsbHkgYW4gaW5zdHJ1Y3Rpb24gcHJlZml4LiAgSXQgYmVoYXZl
cyBhcyBhIGJyZWFrLW91dCBpbnRvClhlbiwgd2l0aCB0aGUgcHVycG9zZSBv
ZiBlbXVsYXRpbmcgdGhlIG5leHQgaW5zdHJ1Y3Rpb24gaW4gdGhlIGN1cnJl
bnQgc3RhdGUuCgpJdCBpcyBpbXBvcnRhbnQgdG8gYmUgYWJsZSB0byB0ZXN0
IGxlZ2FsIHNpdHVhdGlvbnMgd2hpY2ggb2NjdXIgaW4gcmVhbApoYXJkd2Fy
ZSwgaW5jbHVkaW5nIGluc3RydWN0aW9uIHdoaWNoIGNyb3NzIGNlcnRhaW4g
Ym91bmRhcmllcywgYW5kCmluc3RydWN0aW9ucyBzdGFydGluZyBhdCAwLgoK
UmVwb3J0ZWQtYnk6IEJyaWFuIE1hcmNvdHRlIDxtYXJjb3R0ZUBwYW5peC5j
b20+ClNpZ25lZC1vZmYtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29w
ZXIzQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGljaCA8amJl
dWxpY2hAc3VzZS5jb20+CgotLS0gYS94ZW4vYXJjaC94ODYvaHZtL3N2bS9z
dm0uYworKysgYi94ZW4vYXJjaC94ODYvaHZtL3N2bS9zdm0uYwpAQCAtMjEz
OSw2ICsyMTM5LDEwIEBAIHN0YXRpYyB2b2lkIHN2bV92bWV4aXRfdWRfaW50
ZXJjZXB0KHN0cnUKICAgICAgICAgewogICAgICAgICAgICAgcmVncy0+ZWlw
ICs9IHNpemVvZihzaWcpOwogICAgICAgICAgICAgcmVncy0+ZWZsYWdzICY9
IH5YODZfRUZMQUdTX1JGOworCisgICAgICAgICAgICAvKiBaZXJvIHRoZSB1
cHBlciAzMiBiaXRzIG9mICVyaXAgaWYgbm90IGluIGxvbmcgbW9kZS4gKi8K
KyAgICAgICAgICAgIGlmICggc3ZtX2d1ZXN0X3g4Nl9tb2RlKGN1cnJlbnQp
ICE9IDggKQorICAgICAgICAgICAgICAgIHJlZ3MtPmVpcCA9IHJlZ3MtPl9l
aXA7CiAgICAgICAgIH0KICAgICB9CiAKLS0tIGEveGVuL2FyY2gveDg2L2h2
bS92bXgvdm14LmMKKysrIGIveGVuL2FyY2gveDg2L2h2bS92bXgvdm14LmMK
QEAgLTI3NTcsNiArMjc1NywxMCBAQCBzdGF0aWMgdm9pZCB2bXhfdm1leGl0
X3VkX2ludGVyY2VwdChzdHJ1CiAgICAgICAgIHsKICAgICAgICAgICAgIHJl
Z3MtPmVpcCArPSBzaXplb2Yoc2lnKTsKICAgICAgICAgICAgIHJlZ3MtPmVm
bGFncyAmPSB+WDg2X0VGTEFHU19SRjsKKworICAgICAgICAgICAgLyogWmVy
byB0aGUgdXBwZXIgMzIgYml0cyBvZiAlcmlwIGlmIG5vdCBpbiBsb25nIG1v
ZGUuICovCisgICAgICAgICAgICBpZiAoIHZteF9ndWVzdF94ODZfbW9kZShj
dXJyZW50KSAhPSA4ICkKKyAgICAgICAgICAgICAgICByZWdzLT5laXAgPSBy
ZWdzLT5fZWlwOwogICAgICAgICB9CiAgICAgfQogCg==

--=separator
Content-Type: application/octet-stream;
 name="xsa186-4.7-0002-hvm-fep-Allow-testing-of-instructions-crossing-the.patch"
Content-Disposition: attachment;
 filename="xsa186-4.7-0002-hvm-fep-Allow-testing-of-instructions-crossing-the.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KU3ViamVjdDogaHZtL2ZlcDogQWxsb3cgdGVzdGluZyBvZiBpbnN0cnVj
dGlvbnMgY3Jvc3NpbmcgdGhlIC0xIC0+IDAgdmlydHVhbCBib3VuZGFyeQoK
VGhlIEZvcmNlIEVtdWxhdGlvbiBQcmVmaXggaXMgbmFtZWQgdG8gZm9sbG93
IGl0cyBQViBjb3VudGVycGFydCBmb3IgY3B1aWQgb3IKcmR0c2MsIGJ1dCBp
c24ndCByZWFsbHkgYW4gaW5zdHJ1Y3Rpb24gcHJlZml4LiAgSXQgYmVoYXZl
cyBhcyBhIGJyZWFrLW91dCBpbnRvClhlbiwgd2l0aCB0aGUgcHVycG9zZSBv
ZiBlbXVsYXRpbmcgdGhlIG5leHQgaW5zdHJ1Y3Rpb24gaW4gdGhlIGN1cnJl
bnQgc3RhdGUuCgpJdCBpcyBpbXBvcnRhbnQgdG8gYmUgYWJsZSB0byB0ZXN0
IGxlZ2FsIHNpdHVhdGlvbnMgd2hpY2ggb2NjdXIgaW4gcmVhbApoYXJkd2Fy
ZSwgaW5jbHVkaW5nIGluc3RydWN0aW9uIHdoaWNoIGNyb3NzIGNlcnRhaW4g
Ym91bmRhcmllcywgYW5kCmluc3RydWN0aW9ucyBzdGFydGluZyBhdCAwLgoK
UmVwb3J0ZWQtYnk6IEJyaWFuIE1hcmNvdHRlIDxtYXJjb3R0ZUBwYW5peC5j
b20+ClNpZ25lZC1vZmYtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29w
ZXIzQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGljaCA8amJl
dWxpY2hAc3VzZS5jb20+CgotLS0gYS94ZW4vYXJjaC94ODYvaHZtL2h2bS5j
CisrKyBiL3hlbi9hcmNoL3g4Ni9odm0vaHZtLmMKQEAgLTM5MDUsNiArMzkw
NSwxMCBAQCB2b2lkIGh2bV91ZF9pbnRlcmNlcHQoc3RydWN0IGNwdV91c2Vy
X3JlCiAgICAgICAgIHsKICAgICAgICAgICAgIHJlZ3MtPmVpcCArPSBzaXpl
b2Yoc2lnKTsKICAgICAgICAgICAgIHJlZ3MtPmVmbGFncyAmPSB+WDg2X0VG
TEFHU19SRjsKKworICAgICAgICAgICAgLyogWmVybyB0aGUgdXBwZXIgMzIg
Yml0cyBvZiAlcmlwIGlmIG5vdCBpbiBsb25nIG1vZGUuICovCisgICAgICAg
ICAgICBpZiAoICEoaHZtX2xvbmdfbW9kZV9lbmFibGVkKGN1cikgJiYgY3Mu
YXR0ci5maWVsZHMubCkgKQorICAgICAgICAgICAgICAgIHJlZ3MtPmVpcCA9
IHJlZ3MtPl9laXA7CiAgICAgICAgIH0KICAgICB9CiAK

--=separator--
