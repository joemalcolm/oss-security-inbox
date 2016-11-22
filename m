X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10147" "Tuesday" "22" "November" "2016" "12:02:12" "+0000" "Xen.org security team" "security@xen.org" "<E1c99m8-00085A-U9@xenbits.xenproject.org>" "228" "[oss-security] Xen Security Advisory 192 (CVE-2016-9382) - x86 task switch to VM86 mode mis-handled" nil nil nil "11" "2016112212:02:12" "[oss-security] Xen Security Advisory 192 (CVE-2016-9382) - x86 task switch to VM86 mode mis-handled" (number mark "U       security@xen Nov 22  228/10147 " thread-indent "\"[oss-security] Xen Security Advisory 192 (CVE-2016-9382) - x86 task switch to VM86 mode mis-handled\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26621 invoked by uid 550); 22 Nov 2016 14:49:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32091 invoked from network); 22 Nov 2016 12:02:33 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1c99m8-00085A-U9@xenbits.xenproject.org>
Date: Tue, 22 Nov 2016 12:02:12 +0000
Subject: [oss-security] Xen Security Advisory 192 (CVE-2016-9382) - x86 task switch to
 VM86 mode mis-handled

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-9382 / XSA-192
                              version 3

               x86 task switch to VM86 mode mis-handled

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

LDTR, just like TR, is purely a protected mode facility.  Hence even
when switching to a VM86 mode task, LDTR loading needs to follow
protected mode semantics.  This was violated by the code.

IMPACT
======

On SVM (AMD hardware): a malicious unprivileged guest process can
escalate its privilege to that of the guest operating system.

On both SVM and VMX (Intel hardware): a malicious unprivileged guest
process can crash the guest.

VULNERABLE SYSTEMS
==================

Only 32-bit x86 HVM guests are vulnerable.  Furthermore, only guest
operating systems which actually make use of hardware task switching,
and allow a new task to start in VM86 mode, are vulnerable.  We are
not aware of any such operating systems.

The vulnerability is NOT exposed on any PV guests.
The vulnerability is NOT exposed on any 64-bit guests,

ARM systems are NOT vulnerable.

Xen versions from 4.0 onwards are affected.  Xen versions 3.4 and
earlier are not affected.

MITIGATION
==========

For guests which are affected, the vulnerability could possibly be
mitigated by disabling access to VM86 mode by unprivileged guest
programs.  Details would depend on the (so far hypothetical)
vulnerable guest kernel.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa192.patch           xen-unstable, Xen 4.7.x, Xen 4.6.x
xsa192-4.5.patch       Xen 4.5.x, Xen 4.4.x

$ sha256sum xsa192*
687b0216eefd5ecef8a3135cc6f542cb3d9ff35e8e9696a157703e84656c35e8  xsa192.patch
bb0c6622c6f5c5eb9a680020d865802069446830b4a170bcb82336f6c3b77f55  xsa192-4.5.patch
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

iQEcBAEBAgAGBQJYNDJ9AAoJEIP+FMlX6CvZy5gIALU7weBZNJeQzBUMoQn6fAG/
KNP3Br3BDYHC/MMbyIAkkEyHTfsR1xFNAHHb2Tb/Wl7v081owV7JwO3bkf0FJ88w
K8RXFeUbt1z5rAdt1B088CbZA4/KkGRBd32vicUIE7+9EnkgSOlLc8abjind+yQ9
2CtOHwDL0LVbjjGF6VdME9pooDZf2ZT1fHfClUbwPFsfTMKjUeJcfoVFqenifmYR
wTYPtw6z+cCrjBlPyleglh/2uAc6ncTIQAC8Ee2dJyKv4wMqP60u97ANylnN3DpZ
DTl+VUYdNsy78R9/xbqF7dT5gCeDV9y1rDoqHQwwtSGL/lvjU0ujbEtG7XS2/7M=
=chON
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa192.patch"
Content-Disposition: attachment; filename="xsa192.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvSFZNOiBkb24ndCBsb2FkIExEVFIgd2l0aCBWTTg2IG1vZGUgYXR0
cnMgZHVyaW5nIHRhc2sgc3dpdGNoCgpKdXN0IGxpa2UgVFIsIExEVFIgaXMg
cHVyZWx5IGEgcHJvdGVjdGVkIG1vZGUgZmFjaWxpdHkgYW5kIGhlbmNlIG5l
ZWRzCnRvIGJlIGxvYWRlZCBhY2NvcmRpbmdseS4gQWxzbyBtb3ZlIGl0cyBs
b2FkaW5nIHRvIHdoZXJlIGl0CmFyY2hpdGVjdXJhbGx5IGJlbG9uZ3MuCgpU
aGlzIGlzIFhTQS0xOTIuCgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8
amJldWxpY2hAc3VzZS5jb20+ClJldmlld2VkLWJ5OiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpUZXN0ZWQtYnk6IEFuZHJl
dyBDb29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+CgotLS0gYS94
ZW4vYXJjaC94ODYvaHZtL2h2bS5jCisrKyBiL3hlbi9hcmNoL3g4Ni9odm0v
aHZtLmMKQEAgLTI3MjgsMTcgKzI3MjgsMTYgQEAgc3RhdGljIHZvaWQgaHZt
X3VubWFwX2VudHJ5KHZvaWQgKnApCiB9CiAKIHN0YXRpYyBpbnQgaHZtX2xv
YWRfc2VnbWVudF9zZWxlY3RvcigKLSAgICBlbnVtIHg4Nl9zZWdtZW50IHNl
ZywgdWludDE2X3Qgc2VsKQorICAgIGVudW0geDg2X3NlZ21lbnQgc2VnLCB1
aW50MTZfdCBzZWwsIHVuc2lnbmVkIGludCBlZmxhZ3MpCiB7CiAgICAgc3Ry
dWN0IHNlZ21lbnRfcmVnaXN0ZXIgZGVzY3RhYiwgY3MsIHNlZ3I7CiAgICAg
c3RydWN0IGRlc2Nfc3RydWN0ICpwZGVzYywgZGVzYzsKICAgICB1OCBkcGws
IHJwbCwgY3BsOwogICAgIGJvb2xfdCB3cml0YWJsZTsKICAgICBpbnQgZmF1
bHRfdHlwZSA9IFRSQVBfaW52YWxpZF90c3M7Ci0gICAgc3RydWN0IGNwdV91
c2VyX3JlZ3MgKnJlZ3MgPSBndWVzdF9jcHVfdXNlcl9yZWdzKCk7CiAgICAg
c3RydWN0IHZjcHUgKnYgPSBjdXJyZW50OwogCi0gICAgaWYgKCByZWdzLT5l
ZmxhZ3MgJiBYODZfRUZMQUdTX1ZNICkKKyAgICBpZiAoIGVmbGFncyAmIFg4
Nl9FRkxBR1NfVk0gKQogICAgIHsKICAgICAgICAgc2Vnci5zZWwgPSBzZWw7
CiAgICAgICAgIHNlZ3IuYmFzZSA9ICh1aW50MzJfdClzZWwgPDwgNDsKQEAg
LTI5ODYsNiArMjk4NSw4IEBAIHZvaWQgaHZtX3Rhc2tfc3dpdGNoKAogICAg
IGlmICggcmMgIT0gSFZNQ09QWV9va2F5ICkKICAgICAgICAgZ290byBvdXQ7
CiAKKyAgICBpZiAoIGh2bV9sb2FkX3NlZ21lbnRfc2VsZWN0b3IoeDg2X3Nl
Z19sZHRyLCB0c3MubGR0LCAwKSApCisgICAgICAgIGdvdG8gb3V0OwogCiAg
ICAgaWYgKCBodm1fc2V0X2NyMyh0c3MuY3IzLCAxKSApCiAgICAgICAgIGdv
dG8gb3V0OwpAQCAtMzAwOCwxMyArMzAwOSwxMiBAQCB2b2lkIGh2bV90YXNr
X3N3aXRjaCgKICAgICB9CiAKICAgICBleG5fcmFpc2VkID0gMDsKLSAgICBp
ZiAoIGh2bV9sb2FkX3NlZ21lbnRfc2VsZWN0b3IoeDg2X3NlZ19sZHRyLCB0
c3MubGR0KSB8fAotICAgICAgICAgaHZtX2xvYWRfc2VnbWVudF9zZWxlY3Rv
cih4ODZfc2VnX2VzLCB0c3MuZXMpIHx8Ci0gICAgICAgICBodm1fbG9hZF9z
ZWdtZW50X3NlbGVjdG9yKHg4Nl9zZWdfY3MsIHRzcy5jcykgfHwKLSAgICAg
ICAgIGh2bV9sb2FkX3NlZ21lbnRfc2VsZWN0b3IoeDg2X3NlZ19zcywgdHNz
LnNzKSB8fAotICAgICAgICAgaHZtX2xvYWRfc2VnbWVudF9zZWxlY3Rvcih4
ODZfc2VnX2RzLCB0c3MuZHMpIHx8Ci0gICAgICAgICBodm1fbG9hZF9zZWdt
ZW50X3NlbGVjdG9yKHg4Nl9zZWdfZnMsIHRzcy5mcykgfHwKLSAgICAgICAg
IGh2bV9sb2FkX3NlZ21lbnRfc2VsZWN0b3IoeDg2X3NlZ19ncywgdHNzLmdz
KSApCisgICAgaWYgKCBodm1fbG9hZF9zZWdtZW50X3NlbGVjdG9yKHg4Nl9z
ZWdfZXMsIHRzcy5lcywgdHNzLmVmbGFncykgfHwKKyAgICAgICAgIGh2bV9s
b2FkX3NlZ21lbnRfc2VsZWN0b3IoeDg2X3NlZ19jcywgdHNzLmNzLCB0c3Mu
ZWZsYWdzKSB8fAorICAgICAgICAgaHZtX2xvYWRfc2VnbWVudF9zZWxlY3Rv
cih4ODZfc2VnX3NzLCB0c3Muc3MsIHRzcy5lZmxhZ3MpIHx8CisgICAgICAg
ICBodm1fbG9hZF9zZWdtZW50X3NlbGVjdG9yKHg4Nl9zZWdfZHMsIHRzcy5k
cywgdHNzLmVmbGFncykgfHwKKyAgICAgICAgIGh2bV9sb2FkX3NlZ21lbnRf
c2VsZWN0b3IoeDg2X3NlZ19mcywgdHNzLmZzLCB0c3MuZWZsYWdzKSB8fAor
ICAgICAgICAgaHZtX2xvYWRfc2VnbWVudF9zZWxlY3Rvcih4ODZfc2VnX2dz
LCB0c3MuZ3MsIHRzcy5lZmxhZ3MpICkKICAgICAgICAgZXhuX3JhaXNlZCA9
IDE7CiAKICAgICByYyA9IGh2bV9jb3B5X3RvX2d1ZXN0X3ZpcnQoCg==

--=separator
Content-Type: application/octet-stream; name="xsa192-4.5.patch"
Content-Disposition: attachment; filename="xsa192-4.5.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvSFZNOiBkb24ndCBsb2FkIExEVFIgd2l0aCBWTTg2IG1vZGUgYXR0
cnMgZHVyaW5nIHRhc2sgc3dpdGNoCgpKdXN0IGxpa2UgVFIsIExEVFIgaXMg
cHVyZWx5IGEgcHJvdGVjdGVkIG1vZGUgZmFjaWxpdHkgYW5kIGhlbmNlIG5l
ZWRzCnRvIGJlIGxvYWRlZCBhY2NvcmRpbmdseS4gQWxzbyBtb3ZlIGl0cyBs
b2FkaW5nIHRvIHdoZXJlIGl0CmFyY2hpdGVjdXJhbGx5IGJlbG9uZ3MuCgpU
aGlzIGlzIFhTQS0xOTIuCgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8
amJldWxpY2hAc3VzZS5jb20+ClJldmlld2VkLWJ5OiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpUZXN0ZWQtYnk6IEFuZHJl
dyBDb29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+CgotLS0gYS94
ZW4vYXJjaC94ODYvaHZtL2h2bS5jCisrKyBiL3hlbi9hcmNoL3g4Ni9odm0v
aHZtLmMKQEAgLTM1NzcsMTYgKzM1NzcsMTUgQEAgc3RhdGljIHZvaWQgaHZt
X3VubWFwX2VudHJ5KHZvaWQgKnApCiB9CiAKIHN0YXRpYyBpbnQgaHZtX2xv
YWRfc2VnbWVudF9zZWxlY3RvcigKLSAgICBlbnVtIHg4Nl9zZWdtZW50IHNl
ZywgdWludDE2X3Qgc2VsKQorICAgIGVudW0geDg2X3NlZ21lbnQgc2VnLCB1
aW50MTZfdCBzZWwsIHVuc2lnbmVkIGludCBlZmxhZ3MpCiB7CiAgICAgc3Ry
dWN0IHNlZ21lbnRfcmVnaXN0ZXIgZGVzY3RhYiwgY3MsIHNlZ3I7CiAgICAg
c3RydWN0IGRlc2Nfc3RydWN0ICpwZGVzYywgZGVzYzsKICAgICB1OCBkcGws
IHJwbCwgY3BsOwogICAgIGludCBmYXVsdF90eXBlID0gVFJBUF9pbnZhbGlk
X3RzczsKLSAgICBzdHJ1Y3QgY3B1X3VzZXJfcmVncyAqcmVncyA9IGd1ZXN0
X2NwdV91c2VyX3JlZ3MoKTsKICAgICBzdHJ1Y3QgdmNwdSAqdiA9IGN1cnJl
bnQ7CiAKLSAgICBpZiAoIHJlZ3MtPmVmbGFncyAmIFg4Nl9FRkxBR1NfVk0g
KQorICAgIGlmICggZWZsYWdzICYgWDg2X0VGTEFHU19WTSApCiAgICAgewog
ICAgICAgICBzZWdyLnNlbCA9IHNlbDsKICAgICAgICAgc2Vnci5iYXNlID0g
KHVpbnQzMl90KXNlbCA8PCA0OwpAQCAtMzgyOSw2ICszODI4LDggQEAgdm9p
ZCBodm1fdGFza19zd2l0Y2goCiAgICAgaWYgKCByYyAhPSBIVk1DT1BZX29r
YXkgKQogICAgICAgICBnb3RvIG91dDsKIAorICAgIGlmICggaHZtX2xvYWRf
c2VnbWVudF9zZWxlY3Rvcih4ODZfc2VnX2xkdHIsIHRzcy5sZHQsIDApICkK
KyAgICAgICAgZ290byBvdXQ7CiAKICAgICBpZiAoIGh2bV9zZXRfY3IzKHRz
cy5jcjMpICkKICAgICAgICAgZ290byBvdXQ7CkBAIC0zODUxLDEzICszODUy
LDEyIEBAIHZvaWQgaHZtX3Rhc2tfc3dpdGNoKAogICAgIH0KIAogICAgIGV4
bl9yYWlzZWQgPSAwOwotICAgIGlmICggaHZtX2xvYWRfc2VnbWVudF9zZWxl
Y3Rvcih4ODZfc2VnX2xkdHIsIHRzcy5sZHQpIHx8Ci0gICAgICAgICBodm1f
bG9hZF9zZWdtZW50X3NlbGVjdG9yKHg4Nl9zZWdfZXMsIHRzcy5lcykgfHwK
LSAgICAgICAgIGh2bV9sb2FkX3NlZ21lbnRfc2VsZWN0b3IoeDg2X3NlZ19j
cywgdHNzLmNzKSB8fAotICAgICAgICAgaHZtX2xvYWRfc2VnbWVudF9zZWxl
Y3Rvcih4ODZfc2VnX3NzLCB0c3Muc3MpIHx8Ci0gICAgICAgICBodm1fbG9h
ZF9zZWdtZW50X3NlbGVjdG9yKHg4Nl9zZWdfZHMsIHRzcy5kcykgfHwKLSAg
ICAgICAgIGh2bV9sb2FkX3NlZ21lbnRfc2VsZWN0b3IoeDg2X3NlZ19mcywg
dHNzLmZzKSB8fAotICAgICAgICAgaHZtX2xvYWRfc2VnbWVudF9zZWxlY3Rv
cih4ODZfc2VnX2dzLCB0c3MuZ3MpICkKKyAgICBpZiAoIGh2bV9sb2FkX3Nl
Z21lbnRfc2VsZWN0b3IoeDg2X3NlZ19lcywgdHNzLmVzLCB0c3MuZWZsYWdz
KSB8fAorICAgICAgICAgaHZtX2xvYWRfc2VnbWVudF9zZWxlY3Rvcih4ODZf
c2VnX2NzLCB0c3MuY3MsIHRzcy5lZmxhZ3MpIHx8CisgICAgICAgICBodm1f
bG9hZF9zZWdtZW50X3NlbGVjdG9yKHg4Nl9zZWdfc3MsIHRzcy5zcywgdHNz
LmVmbGFncykgfHwKKyAgICAgICAgIGh2bV9sb2FkX3NlZ21lbnRfc2VsZWN0
b3IoeDg2X3NlZ19kcywgdHNzLmRzLCB0c3MuZWZsYWdzKSB8fAorICAgICAg
ICAgaHZtX2xvYWRfc2VnbWVudF9zZWxlY3Rvcih4ODZfc2VnX2ZzLCB0c3Mu
ZnMsIHRzcy5lZmxhZ3MpIHx8CisgICAgICAgICBodm1fbG9hZF9zZWdtZW50
X3NlbGVjdG9yKHg4Nl9zZWdfZ3MsIHRzcy5ncywgdHNzLmVmbGFncykgKQog
ICAgICAgICBleG5fcmFpc2VkID0gMTsKIAogICAgIHJjID0gaHZtX2NvcHlf
dG9fZ3Vlc3RfdmlydCgK

--=separator--
