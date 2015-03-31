X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8369" "Tuesday" "31" "March" "2015" "12:10:07" "+0000" "Xen.org security team" "security@xen.org" "<E1Ycuzf-0005TY-Ao@xenbits.xen.org>" "199" "[oss-security] Xen Security Advisory 127 (CVE-2015-2751) - Certain domctl operations may be abused to lock up the host" nil nil nil "3" "2015033112:10:07" "[oss-security] Xen Security Advisory 127 (CVE-2015-2751) - Certain domctl operations may be abused to lock up the host" (number mark "        security@xen Mar 31  199/8369  " thread-indent "\"[oss-security] Xen Security Advisory 127 (CVE-2015-2751) - Certain domctl operations may be abused to lock up the host\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1444 invoked by uid 550); 31 Mar 2015 12:10:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30577 invoked from network); 31 Mar 2015 12:10:26 -0000
Message-Id: <E1Ycuzf-0005TY-Ao@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Tue, 31 Mar 2015 12:10:07 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 127 (CVE-2015-2751) - Certain domctl
 operations may be abused to lock up the host
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-2751 / XSA-127
                              version 2

     Certain domctl operations may be abused to lock up the host

UPDATES IN VERSION 2
====================

CVE assigned.

Public release.

ISSUE DESCRIPTION
=================

XSA-77 put the majority of the domctl operations on a list excepting
them from having security advisories issued for them if any effects
their use might have could hamper security. Subsequently some of them
got declared disaggregation safe, but for a small subset this was not
really correct: Their (mis-)use may result in host lockups.

As a result, the potential security benefits of toolstack
disaggregation are not always fully realised.

IMPACT
======

Domains deliberately given partial management control may be able to
deny service to the entire host.

As a result, in a system designed to enhance security by radically
disaggregating the management, the security may be reduced.  But, the
security will be no worse than a non-disaggregated design.

VULNERABLE SYSTEMS
==================

Xen versions 4.3 onwards are vulnerable.
Xen versions 4.2 and earlier do not have the described disaggregation
functionality and hence are not vulnerable.

MITIGATION
==========

The issues discussed in this advisory are themselves bugs in features
used for a security risk mitigation.

There is no further mitigation available, beyond general measures to
try to avoid parts of the system management becoming controlled by
attackers.  Those are the kind of measures which we expect any users
of radical disaggregation to have already deployed.

Switching from disaggregated to a non-disaggregated operation does NOT
mitigate these vulnerabilities.  Rather, it simply recategorises the
vulnerability to hostile management code, regarding it "as designed";
thus it merely reclassifies these issues as "not a bug".

Users and vendors of disaggregated systems should not change their
configuration.  The robustness benefits of disaggregation are
unaffected, and (depending on system design) security benefits are
likely to remain despite the vulnerabilities.

CREDITS
=======

This issue was discovered by Andrew Cooper of Citrix.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa127-unstable.patch        xen-unstable
xsa127-4.x.patch             Xen 4.5.x, Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa127*.patch
5b98280738a205c40f56d0a7feb6ea6cd867da7ac1e0d9f4fc4620bae2c09171  xsa127.patch
e5fd3c126ae10fe45283e6eb1a4216b75057f1772d869d2b3a26398b0984c7bd  xsa127-4.x.patch
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
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJVGo5PAAoJEIP+FMlX6CvZMhoH/0zH/JpvOk+dTQHVBN5uYjDB
hkW5+/K4NfqRpnxQmTNJ6F5j0gcjbPCusf1yjdwjsAkToX2Y3TmqQAulpzkpT1z2
vvnIl8nYvD92fL1C8U9EBAXj62QmxN/IoX8rSl+g8byhoSO4WmUkbqseOb6LlcV3
wq/H15ZFfE6FjDQQGaFasbYyDOgBQiWFEmrBo2Zx7Qkendv5lt0YV/6/j3m1R8Hm
D9fEchB07zKO49YkKnRrucDSf/9JTJI8W8M4Hmm9ykXncdUVI7xTSa66/XDOegcL
ArBl9aXvuN9jMETS/JJBkEwqvULTQMy+Ac4NxBJE2W0allkKZxCcHMq50oSq3t0=
=qqy0
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa127.patch"
Content-Disposition: attachment; filename="xsa127.patch"
Content-Transfer-Encoding: base64

ZG9tY3RsOiBkb24ndCBhbGxvdyBhIHRvb2xzdGFjayBkb21haW4gdG8gY2Fs
bCBkb21haW5fcGF1c2UoKSBvbiBpdHNlbGYKClRoZXNlIERPTUNUTCBzdWJv
cHMgd2VyZSBhY2NpZGVudGFsbHkgZGVjbGFyZWQgc2FmZSBmb3IgZGlzYWdn
cmVnYXRpb24KaW4gdGhlIHdha2Ugb2YgWFNBLTc3LgoKVGhpcyBpcyBYU0Et
MTI3LgoKU2lnbmVkLW9mZi1ieTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNv
b3BlcjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEphbiBCZXVsaWNoIDxq
YmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IElhbiBDYW1wYmVsbCA8aWFu
LmNhbXBiZWxsQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vYXJjaC94ODYvZG9t
Y3RsLmMKKysrIGIveGVuL2FyY2gveDg2L2RvbWN0bC5jCkBAIC04ODQsNiAr
ODg0LDEwIEBAIGxvbmcgYXJjaF9kb19kb21jdGwoCiAgICAgewogICAgICAg
ICB4ZW5fZ3Vlc3RfdHNjX2luZm9fdCBpbmZvOwogCisgICAgICAgIHJldCA9
IC1FSU5WQUw7CisgICAgICAgIGlmICggZCA9PSBjdXJyZW50LT5kb21haW4g
KSAvKiBubyBkb21haW5fcGF1c2UoKSAqLworICAgICAgICAgICAgYnJlYWs7
CisKICAgICAgICAgZG9tYWluX3BhdXNlKGQpOwogICAgICAgICB0c2NfZ2V0
X2luZm8oZCwgJmluZm8udHNjX21vZGUsCiAgICAgICAgICAgICAgICAgICAg
ICAgICAmaW5mby5lbGFwc2VkX25zZWMsCkBAIC04OTksNiArOTAzLDEwIEBA
IGxvbmcgYXJjaF9kb19kb21jdGwoCiAKICAgICBjYXNlIFhFTl9ET01DVExf
c2V0dHNjaW5mbzoKICAgICB7CisgICAgICAgIHJldCA9IC1FSU5WQUw7Cisg
ICAgICAgIGlmICggZCA9PSBjdXJyZW50LT5kb21haW4gKSAvKiBubyBkb21h
aW5fcGF1c2UoKSAqLworICAgICAgICAgICAgYnJlYWs7CisKICAgICAgICAg
ZG9tYWluX3BhdXNlKGQpOwogICAgICAgICB0c2Nfc2V0X2luZm8oZCwgZG9t
Y3RsLT51LnRzY19pbmZvLmluZm8udHNjX21vZGUsCiAgICAgICAgICAgICAg
ICAgICAgICBkb21jdGwtPnUudHNjX2luZm8uaW5mby5lbGFwc2VkX25zZWMs
Ci0tLSBhL3hlbi9jb21tb24vZG9tY3RsLmMKKysrIGIveGVuL2NvbW1vbi9k
b21jdGwuYwpAQCAtNTMxLDcgKzUzMSwxMCBAQCBsb25nIGRvX2RvbWN0bChY
RU5fR1VFU1RfSEFORExFX1BBUkFNKHhlCiAgICAgICAgIGJyZWFrOwogCiAg
ICAgY2FzZSBYRU5fRE9NQ1RMX3Jlc3VtZWRvbWFpbjoKLSAgICAgICAgZG9t
YWluX3Jlc3VtZShkKTsKKyAgICAgICAgaWYgKCBkID09IGN1cnJlbnQtPmRv
bWFpbiApIC8qIG5vIGRvbWFpbl9wYXVzZSgpICovCisgICAgICAgICAgICBy
ZXQgPSAtRUlOVkFMOworICAgICAgICBlbHNlCisgICAgICAgICAgICBkb21h
aW5fcmVzdW1lKGQpOwogICAgICAgICBicmVhazsKIAogICAgIGNhc2UgWEVO
X0RPTUNUTF9jcmVhdGVkb21haW46Cg==

--=separator
Content-Type: application/octet-stream; name="xsa127-4.x.patch"
Content-Disposition: attachment; filename="xsa127-4.x.patch"
Content-Transfer-Encoding: base64

ZG9tY3RsOiBkb24ndCBhbGxvdyBhIHRvb2xzdGFjayBkb21haW4gdG8gY2Fs
bCBkb21haW5fcGF1c2UoKSBvbiBpdHNlbGYKClRoZXNlIERPTUNUTCBzdWJv
cHMgd2VyZSBhY2NpZGVudGFsbHkgZGVjbGFyZWQgc2FmZSBmb3IgZGlzYWdn
cmVnYXRpb24KaW4gdGhlIHdha2Ugb2YgWFNBLTc3LgoKVGhpcyBpcyBYU0Et
MTI3LgoKU2lnbmVkLW9mZi1ieTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNv
b3BlcjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEphbiBCZXVsaWNoIDxq
YmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IElhbiBDYW1wYmVsbCA8aWFu
LmNhbXBiZWxsQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vYXJjaC94ODYvZG9t
Y3RsLmMKKysrIGIveGVuL2FyY2gveDg2L2RvbWN0bC5jCkBAIC04ODgsNiAr
ODg4LDEwIEBAIGxvbmcgYXJjaF9kb19kb21jdGwoCiAgICAgewogICAgICAg
ICB4ZW5fZ3Vlc3RfdHNjX2luZm9fdCBpbmZvOwogCisgICAgICAgIHJldCA9
IC1FSU5WQUw7CisgICAgICAgIGlmICggZCA9PSBjdXJyZW50LT5kb21haW4g
KSAvKiBubyBkb21haW5fcGF1c2UoKSAqLworICAgICAgICAgICAgYnJlYWs7
CisKICAgICAgICAgZG9tYWluX3BhdXNlKGQpOwogICAgICAgICB0c2NfZ2V0
X2luZm8oZCwgJmluZm8udHNjX21vZGUsCiAgICAgICAgICAgICAgICAgICAg
ICAgICAmaW5mby5lbGFwc2VkX25zZWMsCkBAIC05MDMsNiArOTA3LDEwIEBA
IGxvbmcgYXJjaF9kb19kb21jdGwoCiAKICAgICBjYXNlIFhFTl9ET01DVExf
c2V0dHNjaW5mbzoKICAgICB7CisgICAgICAgIHJldCA9IC1FSU5WQUw7Cisg
ICAgICAgIGlmICggZCA9PSBjdXJyZW50LT5kb21haW4gKSAvKiBubyBkb21h
aW5fcGF1c2UoKSAqLworICAgICAgICAgICAgYnJlYWs7CisKICAgICAgICAg
ZG9tYWluX3BhdXNlKGQpOwogICAgICAgICB0c2Nfc2V0X2luZm8oZCwgZG9t
Y3RsLT51LnRzY19pbmZvLmluZm8udHNjX21vZGUsCiAgICAgICAgICAgICAg
ICAgICAgICBkb21jdGwtPnUudHNjX2luZm8uaW5mby5lbGFwc2VkX25zZWMs
Ci0tLSBhL3hlbi9jb21tb24vZG9tY3RsLmMKKysrIGIveGVuL2NvbW1vbi9k
b21jdGwuYwpAQCAtNTIyLDggKzUyMiwxMCBAQCBsb25nIGRvX2RvbWN0bChY
RU5fR1VFU1RfSEFORExFX1BBUkFNKHhlCiAKICAgICBjYXNlIFhFTl9ET01D
VExfcmVzdW1lZG9tYWluOgogICAgIHsKLSAgICAgICAgZG9tYWluX3Jlc3Vt
ZShkKTsKLSAgICAgICAgcmV0ID0gMDsKKyAgICAgICAgaWYgKCBkID09IGN1
cnJlbnQtPmRvbWFpbiApIC8qIG5vIGRvbWFpbl9wYXVzZSgpICovCisgICAg
ICAgICAgICByZXQgPSAtRUlOVkFMOworICAgICAgICBlbHNlCisgICAgICAg
ICAgICBkb21haW5fcmVzdW1lKGQpOwogICAgIH0KICAgICBicmVhazsKIAo=

--=separator--
