X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9452" "Tuesday" "13" "December" "2016" "13:08:05" "+0000" "Xen.org security team" "security@xen.org" "<E1cGmoP-00020v-Lw@xenbits.xenproject.org>" "218" "[oss-security] Xen Security Advisory 200 (CVE-2016-9932) - x86 CMPXCHG8B emulation fails to ignore operand size override" nil nil nil "12" "2016121313:08:05" "[oss-security] Xen Security Advisory 200 (CVE-2016-9932) - x86 CMPXCHG8B emulation fails to ignore operand size override" (number mark "U       security@xen Dec 13  218/9452  " thread-indent "\"[oss-security] Xen Security Advisory 200 (CVE-2016-9932) - x86 CMPXCHG8B emulation fails to ignore operand size override\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20415 invoked by uid 550); 13 Dec 2016 13:08:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20391 invoked from network); 13 Dec 2016 13:08:30 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1cGmoP-00020v-Lw@xenbits.xenproject.org>
Date: Tue, 13 Dec 2016 13:08:05 +0000
Subject: [oss-security] Xen Security Advisory 200 (CVE-2016-9932) - x86 CMPXCHG8B
 emulation fails to ignore operand size override

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-9932 / XSA-200
                              version 3

     x86 CMPXCHG8B emulation fails to ignore operand size override

UPDATES IN VERSION 3
====================

CVE assigned.

Public release.

ISSUE DESCRIPTION
=================

The x86 instruction CMPXCHG8B is supposed to ignore legacy operand
size overrides; it only honors the REX.W override (making it
CMPXCHG16B).  So, the operand size is always 8 or 16.

When support for CMPXCHG16B emulation was added to the instruction
emulator, this restriction on the set of possible operand sizes was
relied on in some parts of the emulation; but a wrong, fully general,
operand size value was used for other parts of the emulation.

As a result, if a guest uses a supposedly-ignored operand size prefix,
a small amount of hypervisor stack data is leaked to the guests: a 96
bit leak to guests running in 64-bit mode; or, a 32 bit leak to other
guests.

IMPACT
======

A malicious unprivileged guest may be able to obtain sensitive
information from the host.

VULNERABLE SYSTEMS
==================

Xen versions 3.3 through 4.7 are affected.  Xen master and Xen 4.8 as
well as Xen versions 3.2 and earlier are not affected.

Only x86 systems are affected.  ARM systems are not affected.

On Xen 4.6 and earlier the vulnerability is exposed to all HVM guest
user processes, including unprivileged processes.

On Xen 4.7, the vulnerability is exposed only to HVM guest user
processes granted a degree of privilege (such as direct hardware
access) by the guest administrator; or, to all user processes when the
VM has been explicitly configured with a non-default cpu vendor string
(in xm/xl, this would be done with a `cpuid=' domain config option).

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa200-4.7.patch       Xen 4.7.x
xsa200-4.6.patch       Xen 4.6.x, Xen 4.5.x, Xen 4.4.x

$ sha256sum xsa200*
820e95e87b838de5eb4158a55c81cf205428f0ed17009dc8d45b2392cf9a0885  xsa200-4.6.patch
d7113b94f6ef1c2849aedfe33eace85b0713fa83639c8a533fb289aa73e818e8  xsa200-4.7.patch
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

iQEcBAEBAgAGBQJYT/KgAAoJEIP+FMlX6CvZR6QH/0eEM2+9ixdfFAiyhFzn0TTq
mLgbKs4L0ALfPD2JVhkiLlB/thJ7RKXfPAsYVBQhNY+xb58OLykH4Clh0NuOY45W
wkWxHeunHAfsNo3FIaISr/uG/5fAnarPsfF+bNYpyWCuWLz4Ml+uuflnfL60PmoP
OGSPLEPKZ56r9lyaIALFVfkXgHkaquM/WXi+FdG23aArbT43cVHeGou8dUNbH/Jd
FpKdO3AhMT9i+ioPeicSIimxLOEBZnrCaB/7qOAzu7q3nlQ8X/1Q8a8TjjOtYtQA
/kOkvpexkQuRA98AI6018ajqU/D5VdFW+I2X0kmbTAxj1SyT12X25f9Wsc0PbdE=
=ERcI
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa200-4.6.patch"
Content-Disposition: attachment; filename="xsa200-4.6.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODZlbXVsOiBDTVBYQ0hHOEIgaWdub3JlcyBvcGVyYW5kIHNpemUgcHJl
Zml4CgpPdGhlcndpc2UgYmVzaWRlcyBtaXMtaGFuZGxpbmcgdGhlIGluc3Ry
dWN0aW9uLCB0aGUgY29tcGFyaXNvbiBmYWlsdXJlCmNhc2Ugd291bGQgcmVz
dWx0IGluIHVuaW5pdGlhbGl6ZWQgc3RhY2sgZGF0YSBiZWluZyBoYW5kZWQg
YmFjayB0byB0aGUKZ3Vlc3QgaW4gckRYOnJBWCAoMzIgYml0cyBsZWFrZWQg
Zm9yIDMyLWJpdCBndWVzdHMsIDk2IGJpdHMgZm9yIDY0LWJpdApvbmVzKS4K
ClRoaXMgaXMgWFNBLTIwMC4KClNpZ25lZC1vZmYtYnk6IEphbiBCZXVsaWNo
IDxqYmV1bGljaEBzdXNlLmNvbT4KCi0tLSBhL3Rvb2xzL3Rlc3RzL3g4Nl9l
bXVsYXRvci90ZXN0X3g4Nl9lbXVsYXRvci5jCisrKyBiL3Rvb2xzL3Rlc3Rz
L3g4Nl9lbXVsYXRvci90ZXN0X3g4Nl9lbXVsYXRvci5jCkBAIC00MjksNiAr
NDI5LDI0IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikKICAg
ICAgICAgZ290byBmYWlsOwogICAgIHByaW50Zigib2theVxuIik7CiAKKyAg
ICBwcmludGYoIiUtNDBzIiwgIlRlc3RpbmcgY21weGNoZzhiICglZWRpKSBb
b3BzaXplXS4uLiIpOworICAgIGluc3RyWzBdID0gMHg2NjsgaW5zdHJbMV0g
PSAweDBmOyBpbnN0clsyXSA9IDB4Yzc7IGluc3RyWzNdID0gMHgwZjsKKyAg
ICByZXNbMF0gICAgICA9IDB4MTIzNDU2Nzg7CisgICAgcmVzWzFdICAgICAg
PSAweDg3NjU0MzIxOworICAgIHJlZ3MuZWZsYWdzID0gMHgyMDA7CisgICAg
cmVncy5laXAgICAgPSAodW5zaWduZWQgbG9uZykmaW5zdHJbMF07CisgICAg
cmVncy5lZGkgICAgPSAodW5zaWduZWQgbG9uZylyZXM7CisgICAgcmMgPSB4
ODZfZW11bGF0ZSgmY3R4dCwgJmVtdWxvcHMpOworICAgIGlmICggKHJjICE9
IFg4NkVNVUxfT0tBWSkgfHwKKyAgICAgICAgIChyZXNbMF0gIT0gMHgxMjM0
NTY3OCkgfHwKKyAgICAgICAgIChyZXNbMV0gIT0gMHg4NzY1NDMyMSkgfHwK
KyAgICAgICAgIChyZWdzLmVheCAhPSAweDEyMzQ1Njc4KSB8fAorICAgICAg
ICAgKHJlZ3MuZWR4ICE9IDB4ODc2NTQzMjEpIHx8CisgICAgICAgICAoKHJl
Z3MuZWZsYWdzJjB4MjQwKSAhPSAweDIwMCkgfHwKKyAgICAgICAgIChyZWdz
LmVpcCAhPSAodW5zaWduZWQgbG9uZykmaW5zdHJbNF0pICkKKyAgICAgICAg
Z290byBmYWlsOworICAgIHByaW50Zigib2theVxuIik7CisKICAgICBwcmlu
dGYoIiUtNDBzIiwgIlRlc3RpbmcgbW92c3hiZCAoJSVlYXgpLCUlZWN4Li4u
Iik7CiAgICAgaW5zdHJbMF0gPSAweDBmOyBpbnN0clsxXSA9IDB4YmU7IGlu
c3RyWzJdID0gMHgwODsKICAgICByZWdzLmVmbGFncyA9IDB4MjAwOwotLS0g
YS94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2X2VtdWxhdGUuYworKysg
Yi94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2X2VtdWxhdGUuYwpAQCAt
NDczOSw4ICs0NzM5LDEyIEBAIHg4Nl9lbXVsYXRlKAogICAgICAgICBnZW5l
cmF0ZV9leGNlcHRpb25faWYoKG1vZHJtX3JlZyAmIDcpICE9IDEsIEVYQ19V
RCwgLTEpOwogICAgICAgICBnZW5lcmF0ZV9leGNlcHRpb25faWYoZWEudHlw
ZSAhPSBPUF9NRU0sIEVYQ19VRCwgLTEpOwogICAgICAgICBpZiAoIG9wX2J5
dGVzID09IDggKQorICAgICAgICB7CiAgICAgICAgICAgICB2Y3B1X211c3Rf
aGF2ZV9jeDE2KCk7Ci0gICAgICAgIG9wX2J5dGVzICo9IDI7CisgICAgICAg
ICAgICBvcF9ieXRlcyA9IDE2OworICAgICAgICB9CisgICAgICAgIGVsc2UK
KyAgICAgICAgICAgIG9wX2J5dGVzID0gODsKIAogICAgICAgICAvKiBHZXQg
YWN0dWFsIG9sZCB2YWx1ZS4gKi8KICAgICAgICAgaWYgKCAocmMgPSBvcHMt
PnJlYWQoZWEubWVtLnNlZywgZWEubWVtLm9mZiwgb2xkLCBvcF9ieXRlcywK

--=separator
Content-Type: application/octet-stream; name="xsa200-4.7.patch"
Content-Disposition: attachment; filename="xsa200-4.7.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODZlbXVsOiBDTVBYQ0hHOEIgaWdub3JlcyBvcGVyYW5kIHNpemUgcHJl
Zml4CgpPdGhlcndpc2UgYmVzaWRlcyBtaXMtaGFuZGxpbmcgdGhlIGluc3Ry
dWN0aW9uLCB0aGUgY29tcGFyaXNvbiBmYWlsdXJlCmNhc2Ugd291bGQgcmVz
dWx0IGluIHVuaW5pdGlhbGl6ZWQgc3RhY2sgZGF0YSBiZWluZyBoYW5kZWQg
YmFjayB0byB0aGUKZ3Vlc3QgaW4gckRYOnJBWCAoMzIgYml0cyBsZWFrZWQg
Zm9yIDMyLWJpdCBndWVzdHMsIDk2IGJpdHMgZm9yIDY0LWJpdApvbmVzKS4K
ClRoaXMgaXMgWFNBLTIwMC4KClNpZ25lZC1vZmYtYnk6IEphbiBCZXVsaWNo
IDxqYmV1bGljaEBzdXNlLmNvbT4KCi0tLSBhL3Rvb2xzL3Rlc3RzL3g4Nl9l
bXVsYXRvci90ZXN0X3g4Nl9lbXVsYXRvci5jCisrKyBiL3Rvb2xzL3Rlc3Rz
L3g4Nl9lbXVsYXRvci90ZXN0X3g4Nl9lbXVsYXRvci5jCkBAIC00MzUsNiAr
NDM1LDI0IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikKICAg
ICAgICAgZ290byBmYWlsOwogICAgIHByaW50Zigib2theVxuIik7CiAKKyAg
ICBwcmludGYoIiUtNDBzIiwgIlRlc3RpbmcgY21weGNoZzhiICglZWRpKSBb
b3BzaXplXS4uLiIpOworICAgIGluc3RyWzBdID0gMHg2NjsgaW5zdHJbMV0g
PSAweDBmOyBpbnN0clsyXSA9IDB4Yzc7IGluc3RyWzNdID0gMHgwZjsKKyAg
ICByZXNbMF0gICAgICA9IDB4MTIzNDU2Nzg7CisgICAgcmVzWzFdICAgICAg
PSAweDg3NjU0MzIxOworICAgIHJlZ3MuZWZsYWdzID0gMHgyMDA7CisgICAg
cmVncy5laXAgICAgPSAodW5zaWduZWQgbG9uZykmaW5zdHJbMF07CisgICAg
cmVncy5lZGkgICAgPSAodW5zaWduZWQgbG9uZylyZXM7CisgICAgcmMgPSB4
ODZfZW11bGF0ZSgmY3R4dCwgJmVtdWxvcHMpOworICAgIGlmICggKHJjICE9
IFg4NkVNVUxfT0tBWSkgfHwKKyAgICAgICAgIChyZXNbMF0gIT0gMHgxMjM0
NTY3OCkgfHwKKyAgICAgICAgIChyZXNbMV0gIT0gMHg4NzY1NDMyMSkgfHwK
KyAgICAgICAgIChyZWdzLmVheCAhPSAweDEyMzQ1Njc4KSB8fAorICAgICAg
ICAgKHJlZ3MuZWR4ICE9IDB4ODc2NTQzMjEpIHx8CisgICAgICAgICAoKHJl
Z3MuZWZsYWdzJjB4MjQwKSAhPSAweDIwMCkgfHwKKyAgICAgICAgIChyZWdz
LmVpcCAhPSAodW5zaWduZWQgbG9uZykmaW5zdHJbNF0pICkKKyAgICAgICAg
Z290byBmYWlsOworICAgIHByaW50Zigib2theVxuIik7CisKICAgICBwcmlu
dGYoIiUtNDBzIiwgIlRlc3RpbmcgbW92c3hiZCAoJSVlYXgpLCUlZWN4Li4u
Iik7CiAgICAgaW5zdHJbMF0gPSAweDBmOyBpbnN0clsxXSA9IDB4YmU7IGlu
c3RyWzJdID0gMHgwODsKICAgICByZWdzLmVmbGFncyA9IDB4MjAwOwotLS0g
YS94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2X2VtdWxhdGUuYworKysg
Yi94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2X2VtdWxhdGUuYwpAQCAt
NDc3NSw4ICs0Nzc1LDEyIEBAIHg4Nl9lbXVsYXRlKAogICAgICAgICBnZW5l
cmF0ZV9leGNlcHRpb25faWYoKG1vZHJtX3JlZyAmIDcpICE9IDEsIEVYQ19V
RCwgLTEpOwogICAgICAgICBnZW5lcmF0ZV9leGNlcHRpb25faWYoZWEudHlw
ZSAhPSBPUF9NRU0sIEVYQ19VRCwgLTEpOwogICAgICAgICBpZiAoIG9wX2J5
dGVzID09IDggKQorICAgICAgICB7CiAgICAgICAgICAgICBob3N0X2FuZF92
Y3B1X211c3RfaGF2ZShjeDE2KTsKLSAgICAgICAgb3BfYnl0ZXMgKj0gMjsK
KyAgICAgICAgICAgIG9wX2J5dGVzID0gMTY7CisgICAgICAgIH0KKyAgICAg
ICAgZWxzZQorICAgICAgICAgICAgb3BfYnl0ZXMgPSA4OwogCiAgICAgICAg
IC8qIEdldCBhY3R1YWwgb2xkIHZhbHVlLiAqLwogICAgICAgICBpZiAoIChy
YyA9IG9wcy0+cmVhZChlYS5tZW0uc2VnLCBlYS5tZW0ub2ZmLCBvbGQsIG9w
X2J5dGVzLAo=

--=separator--
