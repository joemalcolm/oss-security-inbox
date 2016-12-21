X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6530" "Wednesday" "21" "December" "2016" "12:01:32" "+0000" "Xen.org security team" "security@xen.org" "<E1cJfaO-00040Q-Jz@xenbits.xenproject.org>" "174" "[oss-security] Xen Security Advisory 203 (CVE-2016-10025) - x86: missing NULL pointer check in VMFUNC emulation" nil nil nil "12" "2016122112:01:32" "[oss-security] Xen Security Advisory 203 (CVE-2016-10025) - x86: missing NULL pointer check in VMFUNC emulation" (number mark "U       security@xen Dec 21  174/6530  " thread-indent "\"[oss-security] Xen Security Advisory 203 (CVE-2016-10025) - x86: missing NULL pointer check in VMFUNC emulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17877 invoked by uid 550); 21 Dec 2016 12:01:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17859 invoked from network); 21 Dec 2016 12:01:52 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1cJfaO-00040Q-Jz@xenbits.xenproject.org>
Date: Wed, 21 Dec 2016 12:01:32 +0000
Subject: [oss-security] Xen Security Advisory 203 (CVE-2016-10025) - x86: missing NULL
 pointer check in VMFUNC emulation

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-10025 / XSA-203
                               version 3

          x86: missing NULL pointer check in VMFUNC emulation

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

When support for the Intel VMX VMFUNC leaf 0 was added, a new optional
function pointer hvmemul_vmfunc was added to the hvm_emulate_ops
table.  As is intended, that new function pointer is NULL on non-VMX
hardware, including AMD SVM hardware.  However at a call site, the
necessary NULL check was omitted before the indirect function call.

IMPACT
======

Malicious guests may cause a hypervisor crash, resulting in a Denial
of Service (DoS).

VULNERABLE SYSTEMS
==================

Xen versions 4.6 and newer are vulnerable.  Xen versions 4.5 and earlier
are not vulnerable.

Only HVM guests can exploit the vulnerability.  PV guests cannot exploit
the vulnerability.

Only x86 systems using SVM (AMD virtualisation extensions) rather than
VMX (Intel virtualisation extensions) are vulnerable.  This applies to
HVM guests on AMD x86 CPUs.  Therefore AMD x86 hardware is vulnerable;
Intel hardware is not vulnerable.

ARM systems are not vulnerable.

MITIGATION
==========

Running only PV guests will avoid this vulnerability.

Running HVM guests on only VMX capable hardware will also avoid this
vulnerability.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa203.patch           xen-unstable
xsa203-4.8.patch       Xen 4.8.x
xsa203-4.7.patch       Xen 4.7.x, Xen 4.6.x

$ sha256sum xsa203*
9af7e862705987a60de1def81ed179931c3f683d05b05c2708cf16bb85d203c9  xsa203.patch
7cc04278778fe885e4c3ae3f846d099075a38bccfafe6dff018ba525499b4e46  xsa203-4.7.patch
4218fcfff11ec4788462a3ea9dddecb25b9d9fb1beaad17ca0f723b07b6675e4  xsa203-4.8.patch
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

iQEcBAEBAgAGBQJYWm8VAAoJEIP+FMlX6CvZid4H/RlcaSaA1qky6vTKjaW4xUiX
/48Fvz3H8Ioau3Mlqy9WGqoq7HnuhJl2MUuq47vpwChOlYvvNXeRe47sVHsLwz1O
/yImaOc0cZEYsyECpddsVSOdwFEMnR38WFWirH4xboGx8NjWeQg3Fsmwh1r8iHsm
HyR2kRktw/Tu2hpc8BaipsYObglvLGQGy06KwwIB0MPycm20MpR4W41a5vc6iE+1
oKMIag/UD+W1eR7zWkftHnEcG+QNfbpWfU7rKPOrQSX5nuXHCXTcu6JQbzlPD8JS
h+A5r+/tfyQPLTWxoBkH4wbMwdqDPNo1AuiDaGD8KWD97m/j2pFaZKl7lGk8X9w=
=TUeg
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa203.patch"
Content-Disposition: attachment; filename="xsa203.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvSFZNOiBhZGQgbWlzc2luZyBOVUxMIGNoZWNrIGJlZm9yZSB1c2lu
ZyBWTUZVTkMgaG9vawoKVGhpcyBpcyBYU0EtMjAzLgoKU2lnbmVkLW9mZi1i
eTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpSZXZpZXdlZC1i
eTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4K
Ci0tLSBhL3hlbi9hcmNoL3g4Ni9odm0vZW11bGF0ZS5jCisrKyBiL3hlbi9h
cmNoL3g4Ni9odm0vZW11bGF0ZS5jCkBAIC0xNjQ3LDYgKzE2NDcsOCBAQCBz
dGF0aWMgaW50IGh2bWVtdWxfdm1mdW5jKAogewogICAgIGludCByYzsKIAor
ICAgIGlmICggIWh2bV9mdW5jcy5hbHRwMm1fdmNwdV9lbXVsYXRlX3ZtZnVu
YyApCisgICAgICAgIHJldHVybiBYODZFTVVMX1VOSEFORExFQUJMRTsKICAg
ICByYyA9IGh2bV9mdW5jcy5hbHRwMm1fdmNwdV9lbXVsYXRlX3ZtZnVuYyhj
dHh0LT5yZWdzKTsKICAgICBpZiAoIHJjICE9IFg4NkVNVUxfT0tBWSApCiAg
ICAgICAgIHg4Nl9lbXVsX2h3X2V4Y2VwdGlvbihUUkFQX2ludmFsaWRfb3As
IFg4Nl9FVkVOVF9OT19FQywgY3R4dCk7Cg==

--=separator
Content-Type: application/octet-stream; name="xsa203-4.7.patch"
Content-Disposition: attachment; filename="xsa203-4.7.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvSFZNOiBhZGQgbWlzc2luZyBOVUxMIGNoZWNrIGJlZm9yZSB1c2lu
ZyBWTUZVTkMgaG9vawoKVGhpcyBpcyBYU0EtMjAzLgoKU2lnbmVkLW9mZi1i
eTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpSZXZpZXdlZC1i
eTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4K
Ci0tLSBhL3hlbi9hcmNoL3g4Ni9odm0vZW11bGF0ZS5jCisrKyBiL3hlbi9h
cmNoL3g4Ni9odm0vZW11bGF0ZS5jCkBAIC0xNjQzLDYgKzE2NDMsOCBAQCBz
dGF0aWMgaW50IGh2bWVtdWxfdm1mdW5jKAogewogICAgIGludCByYzsKIAor
ICAgIGlmICggIWh2bV9mdW5jcy5hbHRwMm1fdmNwdV9lbXVsYXRlX3ZtZnVu
YyApCisgICAgICAgIHJldHVybiBYODZFTVVMX1VOSEFORExFQUJMRTsKICAg
ICByYyA9IGh2bV9mdW5jcy5hbHRwMm1fdmNwdV9lbXVsYXRlX3ZtZnVuYyhj
dHh0LT5yZWdzKTsKICAgICBpZiAoIHJjICE9IFg4NkVNVUxfT0tBWSApCiAg
ICAgICAgIGh2bWVtdWxfaW5qZWN0X2h3X2V4Y2VwdGlvbihUUkFQX2ludmFs
aWRfb3AsIDAsIGN0eHQpOwo=

--=separator
Content-Type: application/octet-stream; name="xsa203-4.8.patch"
Content-Disposition: attachment; filename="xsa203-4.8.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvSFZNOiBhZGQgbWlzc2luZyBOVUxMIGNoZWNrIGJlZm9yZSB1c2lu
ZyBWTUZVTkMgaG9vawoKVGhpcyBpcyBYU0EtMjAzLgoKU2lnbmVkLW9mZi1i
eTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpSZXZpZXdlZC1i
eTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4K
Ci0tLSBhL3hlbi9hcmNoL3g4Ni9odm0vZW11bGF0ZS5jCisrKyBiL3hlbi9h
cmNoL3g4Ni9odm0vZW11bGF0ZS5jCkBAIC0xNjk0LDYgKzE2OTQsOCBAQCBz
dGF0aWMgaW50IGh2bWVtdWxfdm1mdW5jKAogewogICAgIGludCByYzsKIAor
ICAgIGlmICggIWh2bV9mdW5jcy5hbHRwMm1fdmNwdV9lbXVsYXRlX3ZtZnVu
YyApCisgICAgICAgIHJldHVybiBYODZFTVVMX1VOSEFORExFQUJMRTsKICAg
ICByYyA9IGh2bV9mdW5jcy5hbHRwMm1fdmNwdV9lbXVsYXRlX3ZtZnVuYyhj
dHh0LT5yZWdzKTsKICAgICBpZiAoIHJjICE9IFg4NkVNVUxfT0tBWSApCiAg
ICAgICAgIGh2bWVtdWxfaW5qZWN0X2h3X2V4Y2VwdGlvbihUUkFQX2ludmFs
aWRfb3AsIEhWTV9ERUxJVkVSX05PX0VSUk9SX0NPREUsCg==

--=separator--
