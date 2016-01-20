X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14050" "Wednesday" "20" "January" "2016" "12:08:42" "+0000" "Xen.org security team" "security@xen.org" "<E1aLrZ4-0003QN-Ce@xenbits.xen.org>" "301" "[oss-security] Xen Security Advisory 167 (CVE-2016-1570) - PV superpage functionality missing sanity checks" "^CC:" nil nil "1" "2016012012:08:42" "[oss-security] Xen Security Advisory 167 (CVE-2016-1570) - PV superpage functionality missing sanity checks" (number mark "U       security@xen Jan 20  301/14050 " thread-indent "\"[oss-security] Xen Security Advisory 167 (CVE-2016-1570) - PV superpage functionality missing sanity checks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17531 invoked by uid 550); 20 Jan 2016 12:09:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17513 invoked from network); 20 Jan 2016 12:09:04 -0000
Message-Id: <E1aLrZ4-0003QN-Ce@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Wed, 20 Jan 2016 12:08:42 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 167 (CVE-2016-1570) - PV superpage
 functionality missing sanity checks
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-1570 / XSA-167
                              version 4

            PV superpage functionality missing sanity checks

UPDATES IN VERSION 4
====================

Public release.

ISSUE DESCRIPTION
=================

The PV superpage functionality lacks certain validity checks on data
being passed to the hypervisor by guests.  This is the case for the
page identifier (MFN) passed to MMUEXT_MARK_SUPER and
MMUEXT_UNMARK_SUPER sub-ops of the HYPERVISOR_mmuext_op hypercall as
well as for various forms of page table updates.

IMPACT
======

Use of the feature, which is disabled by default, may have unknown
effects, ranging from information leaks through Denial of Service to
privilege escalation.

VULNERABLE SYSTEMS
==================

Only systems which enable the PV superpage feature are affected.  That
is, only systems with an `allowsuperpage' setting on the hypervisor
command line.  Note that in Xen 4.0.x and 3.4.x the option is named
`allowhugepage'.

Xen versions 3.4.0, 3.4.1, and from 4.1 onwards are affected.

Only x86 systems are affected.

Only PV guests can exploit the vulnerability.

MITIGATION
==========

Running only HVM guests will avoid this issue.

Not enabling PV superpage support (by omitting the `allowsuperpage' or
`allowhugepage' hypervisor command line options) will avoid exposing
the issue.

CREDITS
=======

This issue was discovered by Qinghao Tang of 360 Marvel Team.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa167.patch           xen-unstable
xsa167-4.6.patch       Xen 4.6.x, 4.5.x
xsa167-4.4.patch       Xen 4.4.x, 4.3.x

$ sha256sum xsa167*
a71f709eef59425cb2113fa48d3b44048c6bf41063200fee1c847f6e0ed45a09  xsa167.patch
194c1ce89292f4cbb9980baa703095bcbeb5849abf46d193e07a98a0d8301f78  xsa167-4.4.patch
2bd786cccfd13c6732d6db8afc9e18058465efcb1bc93f894c359e3a820d5403  xsa167-4.6.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches and/or mitigations described above (or
others which are substantially similar) is permitted during the
embargo, even on public-facing systems with untrusted guest users and
administrators.


However deployment of the SUPERPAGE DISABLEMENT MITIGATION is NOT
permitted (except where all the affected systems and VMs are
administered and used only by organisations which are members of the
Xen Project Security Issues Predisclosure List).  Specifically,
deployment on public cloud systems is NOT permitted.

This is because disabling PV superpage support is visible to guests, so
such deployment could lead to the rediscovery of the vulnerability.

Deployment of the mitigation is permitted only AFTER the embargo ends.


Also: Distribution of updated software is prohibited (except to other
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

iQEcBAEBAgAGBQJWn3jEAAoJEIP+FMlX6CvZTOsH/2ReFJ0Yhp5da69XKvFEJR/s
0yEFxjvqiSyBPsWjyiaAdOp/1A2sltEeDDnMy7xEoXHmon0p6IV0IR4L+fMCLjl2
1ZI4tKpkn3zUE+IOjfu/GJ53f87XWSq/u9Ri7yZQdxFpgd3AXcLegGm8i4L/58iY
vdwAAuczACztEN/NbWFedlGUEd5PKqKwb4wOg1uhLIMwzvjxgtejVAyZD83HgP6i
LeWMO7EfeU8ND38Otiw9lNlKD/Ia7vpRG+BXuADLx18hbR1TU9AJ0RO1zb9JnAAj
snYdgB6s1wzRD4/HOc+s1uaIttPPODs0IhZunylI7UVhdWKp5Qkszw/QUcmufnk=
=5acB
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa167.patch"
Content-Disposition: attachment; filename="xsa167.patch"
Content-Transfer-Encoding: base64

eDg2L21tOiBQViBzdXBlcnBhZ2UgaGFuZGxpbmcgbGFja3Mgc2FuaXR5IGNo
ZWNrcwoKTU1VRVhUX3ssVU59TUFSS19TVVBFUiBmYWlsIHRvIGNoZWNrIHRo
ZSBpbnB1dCBNRk4gZm9yIHZhbGlkaXR5IGJlZm9yZQpkZXJlZmVyZW5jaW5n
IHBvaW50ZXJzIGludG8gdGhlIHN1cGVycGFnZSBmcmFtZSB0YWJsZS4KCmdl
dF9zdXBlcnBhZ2UoKSBoYXMgYSBzaW1pbGFyIGlzc3VlLgoKVGhpcyBpcyBY
U0EtMTY3LgoKUmVwb3J0ZWQtYnk6IFFpbmdoYW8gVGFuZyA8bHVvZGFsb25n
ZGVAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJl
dWxpY2hAc3VzZS5jb20+CkFja2VkLWJ5OiBJYW4gQ2FtcGJlbGwgPGlhbi5j
YW1wYmVsbEBjaXRyaXguY29tPgoKLS0tIGEveGVuL2FyY2gveDg2L21tLmMK
KysrIGIveGVuL2FyY2gveDg2L21tLmMKQEAgLTI2MzUsNiArMjYzNSw5IEBA
IGludCBnZXRfc3VwZXJwYWdlKHVuc2lnbmVkIGxvbmcgbWZuLCBzdHIKIAog
ICAgIEFTU0VSVChvcHRfYWxsb3dfc3VwZXJwYWdlKTsKIAorICAgIGlmICgg
IW1mbl92YWxpZChtZm4gfCAoTDFfUEFHRVRBQkxFX0VOVFJJRVMgLSAxKSkg
KQorICAgICAgICByZXR1cm4gLUVJTlZBTDsKKwogICAgIHNwYWdlID0gbWZu
X3RvX3NwYWdlKG1mbik7CiAgICAgeSA9IHNwYWdlLT50eXBlX2luZm87CiAg
ICAgZG8gewpAQCAtMzQzMiw0MiArMzQzNSwyNiBAQCBsb25nIGRvX21tdWV4
dF9vcCgKICAgICAgICAgfQogCiAgICAgICAgIGNhc2UgTU1VRVhUX01BUktf
U1VQRVI6CisgICAgICAgIGNhc2UgTU1VRVhUX1VOTUFSS19TVVBFUjoKICAg
ICAgICAgewogICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBtZm4gPSBvcC5h
cmcxLm1mbjsKIAotICAgICAgICAgICAgaWYgKCB1bmxpa2VseShkICE9IHBn
X293bmVyKSApCi0gICAgICAgICAgICAgICAgcmMgPSAtRVBFUk07Ci0gICAg
ICAgICAgICBlbHNlIGlmICggbWZuICYgKEwxX1BBR0VUQUJMRV9FTlRSSUVT
LTEpICkKLSAgICAgICAgICAgIHsKLSAgICAgICAgICAgICAgICBNRU1fTE9H
KCJVbmFsaWduZWQgc3VwZXJwYWdlIHJlZmVyZW5jZSBtZm4gJWx4IiwgbWZu
KTsKLSAgICAgICAgICAgICAgICByYyA9IC1FSU5WQUw7Ci0gICAgICAgICAg
ICB9Ci0gICAgICAgICAgICBlbHNlIGlmICggIW9wdF9hbGxvd19zdXBlcnBh
Z2UgKQorICAgICAgICAgICAgaWYgKCAhb3B0X2FsbG93X3N1cGVycGFnZSAp
CiAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgTUVNX0xPRygiU3Vw
ZXJwYWdlcyBkaXNhbGxvd2VkIik7CiAgICAgICAgICAgICAgICAgcmMgPSAt
RU5PU1lTOwogICAgICAgICAgICAgfQotICAgICAgICAgICAgZWxzZQotICAg
ICAgICAgICAgICAgIHJjID0gbWFya19zdXBlcnBhZ2UobWZuX3RvX3NwYWdl
KG1mbiksIGQpOwotICAgICAgICAgICAgYnJlYWs7Ci0gICAgICAgIH0KLQot
ICAgICAgICBjYXNlIE1NVUVYVF9VTk1BUktfU1VQRVI6Ci0gICAgICAgIHsK
LSAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgbWZuID0gb3AuYXJnMS5tZm47
Ci0KLSAgICAgICAgICAgIGlmICggdW5saWtlbHkoZCAhPSBwZ19vd25lcikg
KQorICAgICAgICAgICAgZWxzZSBpZiAoIHVubGlrZWx5KGQgIT0gcGdfb3du
ZXIpICkKICAgICAgICAgICAgICAgICByYyA9IC1FUEVSTTsKLSAgICAgICAg
ICAgIGVsc2UgaWYgKCBtZm4gJiAoTDFfUEFHRVRBQkxFX0VOVFJJRVMtMSkg
KQorICAgICAgICAgICAgZWxzZSBpZiAoIG1mbiAmIChMMV9QQUdFVEFCTEVf
RU5UUklFUyAtIDEpICkKICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAg
ICBNRU1fTE9HKCJVbmFsaWduZWQgc3VwZXJwYWdlIHJlZmVyZW5jZSBtZm4g
JWx4IiwgbWZuKTsKICAgICAgICAgICAgICAgICByYyA9IC1FSU5WQUw7Ci0g
ICAgICAgICAgICB9Ci0gICAgICAgICAgICBlbHNlIGlmICggIW9wdF9hbGxv
d19zdXBlcnBhZ2UgKQotICAgICAgICAgICAgewotICAgICAgICAgICAgICAg
IE1FTV9MT0coIlN1cGVycGFnZXMgZGlzYWxsb3dlZCIpOwotICAgICAgICAg
ICAgICAgIHJjID0gLUVOT1NZUzsKICAgICAgICAgICAgIH0KKyAgICAgICAg
ICAgIGVsc2UgaWYgKCAhbWZuX3ZhbGlkKG1mbiB8IChMMV9QQUdFVEFCTEVf
RU5UUklFUyAtIDEpKSApCisgICAgICAgICAgICAgICAgcmMgPSAtRUlOVkFM
OworICAgICAgICAgICAgZWxzZSBpZiAoIG9wLmNtZCA9PSBNTVVFWFRfTUFS
S19TVVBFUiApCisgICAgICAgICAgICAgICAgcmMgPSBtYXJrX3N1cGVycGFn
ZShtZm5fdG9fc3BhZ2UobWZuKSwgZCk7CiAgICAgICAgICAgICBlbHNlCiAg
ICAgICAgICAgICAgICAgcmMgPSB1bm1hcmtfc3VwZXJwYWdlKG1mbl90b19z
cGFnZShtZm4pKTsKICAgICAgICAgICAgIGJyZWFrOwo=

--=separator
Content-Type: application/octet-stream; name="xsa167-4.4.patch"
Content-Disposition: attachment; filename="xsa167-4.4.patch"
Content-Transfer-Encoding: base64

eDg2L21tOiBQViBzdXBlcnBhZ2UgaGFuZGxpbmcgbGFja3Mgc2FuaXR5IGNo
ZWNrcwoKTU1VRVhUX3ssVU59TUFSS19TVVBFUiBmYWlsIHRvIGNoZWNrIHRo
ZSBpbnB1dCBNRk4gZm9yIHZhbGlkaXR5IGJlZm9yZQpkZXJlZmVyZW5jaW5n
IHBvaW50ZXJzIGludG8gdGhlIHN1cGVycGFnZSBmcmFtZSB0YWJsZS4KCmdl
dF9zdXBlcnBhZ2UoKSBoYXMgYSBzaW1pbGFyIGlzc3VlLgoKVGhpcyBpcyBY
U0EtMTY3LgoKUmVwb3J0ZWQtYnk6IFFpbmdoYW8gVGFuZyA8bHVvZGFsb25n
ZGVAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJl
dWxpY2hAc3VzZS5jb20+CkFja2VkLWJ5OiBJYW4gQ2FtcGJlbGwgPGlhbi5j
YW1wYmVsbEBjaXRyaXguY29tPgoKLS0tIGEveGVuL2FyY2gveDg2L21tLmMK
KysrIGIveGVuL2FyY2gveDg2L21tLmMKQEAgLTI1NjYsNiArMjU2Niw5IEBA
IGludCBnZXRfc3VwZXJwYWdlKHVuc2lnbmVkIGxvbmcgbWZuLCBzdHIKIAog
ICAgIEFTU0VSVChvcHRfYWxsb3dfc3VwZXJwYWdlKTsKIAorICAgIGlmICgg
IW1mbl92YWxpZChtZm4gfCAoTDFfUEFHRVRBQkxFX0VOVFJJRVMgLSAxKSkg
KQorICAgICAgICByZXR1cm4gLUVJTlZBTDsKKwogICAgIHNwYWdlID0gbWZu
X3RvX3NwYWdlKG1mbik7CiAgICAgeSA9IHNwYWdlLT50eXBlX2luZm87CiAg
ICAgZG8gewpAQCAtMzMyMCwxNCArMzMyMyw2IEBAIGxvbmcgZG9fbW11ZXh0
X29wKAogICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBtZm47CiAgICAgICAg
ICAgICBzdHJ1Y3Qgc3BhZ2VfaW5mbyAqc3BhZ2U7CiAKLSAgICAgICAgICAg
IG1mbiA9IG9wLmFyZzEubWZuOwotICAgICAgICAgICAgaWYgKCBtZm4gJiAo
TDFfUEFHRVRBQkxFX0VOVFJJRVMtMSkgKQotICAgICAgICAgICAgewotICAg
ICAgICAgICAgICAgIE1FTV9MT0coIlVuYWxpZ25lZCBzdXBlcnBhZ2UgcmVm
ZXJlbmNlIG1mbiAlbHgiLCBtZm4pOwotICAgICAgICAgICAgICAgIG9rYXkg
PSAwOwotICAgICAgICAgICAgICAgIGJyZWFrOwotICAgICAgICAgICAgfQot
CiAgICAgICAgICAgICBpZiAoICFvcHRfYWxsb3dfc3VwZXJwYWdlICkKICAg
ICAgICAgICAgIHsKICAgICAgICAgICAgICAgICBNRU1fTE9HKCJTdXBlcnBh
Z2VzIGRpc2FsbG93ZWQiKTsKQEAgLTMzMzYsMTYgKzMzMzEsNiBAQCBsb25n
IGRvX21tdWV4dF9vcCgKICAgICAgICAgICAgICAgICBicmVhazsKICAgICAg
ICAgICAgIH0KIAotICAgICAgICAgICAgc3BhZ2UgPSBtZm5fdG9fc3BhZ2Uo
bWZuKTsKLSAgICAgICAgICAgIG9rYXkgPSAobWFya19zdXBlcnBhZ2Uoc3Bh
Z2UsIGQpID49IDApOwotICAgICAgICAgICAgYnJlYWs7Ci0gICAgICAgIH0K
LQotICAgICAgICBjYXNlIE1NVUVYVF9VTk1BUktfU1VQRVI6Ci0gICAgICAg
IHsKLSAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgbWZuOwotICAgICAgICAg
ICAgc3RydWN0IHNwYWdlX2luZm8gKnNwYWdlOwotCiAgICAgICAgICAgICBt
Zm4gPSBvcC5hcmcxLm1mbjsKICAgICAgICAgICAgIGlmICggbWZuICYgKEwx
X1BBR0VUQUJMRV9FTlRSSUVTLTEpICkKICAgICAgICAgICAgIHsKQEAgLTMz
NTQsMTYgKzMzMzksMTYgQEAgbG9uZyBkb19tbXVleHRfb3AoCiAgICAgICAg
ICAgICAgICAgYnJlYWs7CiAgICAgICAgICAgICB9CiAKLSAgICAgICAgICAg
IGlmICggIW9wdF9hbGxvd19zdXBlcnBhZ2UgKQorICAgICAgICAgICAgaWYg
KCAhbWZuX3ZhbGlkKG1mbiB8IChMMV9QQUdFVEFCTEVfRU5UUklFUyAtIDEp
KSApCiAgICAgICAgICAgICB7Ci0gICAgICAgICAgICAgICAgTUVNX0xPRygi
U3VwZXJwYWdlcyBkaXNhbGxvd2VkIik7CiAgICAgICAgICAgICAgICAgb2th
eSA9IDA7Ci0gICAgICAgICAgICAgICAgcmMgPSAtRU5PU1lTOwogICAgICAg
ICAgICAgICAgIGJyZWFrOwogICAgICAgICAgICAgfQogCiAgICAgICAgICAg
ICBzcGFnZSA9IG1mbl90b19zcGFnZShtZm4pOwotICAgICAgICAgICAgb2th
eSA9ICh1bm1hcmtfc3VwZXJwYWdlKHNwYWdlKSA+PSAwKTsKKyAgICAgICAg
ICAgIG9rYXkgPSAoKG9wLmNtZCA9PSBNTVVFWFRfTUFSS19TVVBFUgorICAg
ICAgICAgICAgICAgICAgICA/IG1hcmtfc3VwZXJwYWdlKHNwYWdlLCBkKQor
ICAgICAgICAgICAgICAgICAgICA6IHVubWFya19zdXBlcnBhZ2Uoc3BhZ2Up
KSA+PSAwKTsKICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICB9CiAK

--=separator
Content-Type: application/octet-stream; name="xsa167-4.6.patch"
Content-Disposition: attachment; filename="xsa167-4.6.patch"
Content-Transfer-Encoding: base64

eDg2L21tOiBQViBzdXBlcnBhZ2UgaGFuZGxpbmcgbGFja3Mgc2FuaXR5IGNo
ZWNrcwoKTU1VRVhUX3ssVU59TUFSS19TVVBFUiBmYWlsIHRvIGNoZWNrIHRo
ZSBpbnB1dCBNRk4gZm9yIHZhbGlkaXR5IGJlZm9yZQpkZXJlZmVyZW5jaW5n
IHBvaW50ZXJzIGludG8gdGhlIHN1cGVycGFnZSBmcmFtZSB0YWJsZS4KCmdl
dF9zdXBlcnBhZ2UoKSBoYXMgYSBzaW1pbGFyIGlzc3VlLgoKVGhpcyBpcyBY
U0EtMTY3LgoKUmVwb3J0ZWQtYnk6IFFpbmdoYW8gVGFuZyA8bHVvZGFsb25n
ZGVAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJl
dWxpY2hAc3VzZS5jb20+CkFja2VkLWJ5OiBJYW4gQ2FtcGJlbGwgPGlhbi5j
YW1wYmVsbEBjaXRyaXguY29tPgoKLS0tIGEveGVuL2FyY2gveDg2L21tLmMK
KysrIGIveGVuL2FyY2gveDg2L21tLmMKQEAgLTI2MjQsNiArMjYyNCw5IEBA
IGludCBnZXRfc3VwZXJwYWdlKHVuc2lnbmVkIGxvbmcgbWZuLCBzdHIKIAog
ICAgIEFTU0VSVChvcHRfYWxsb3dfc3VwZXJwYWdlKTsKIAorICAgIGlmICgg
IW1mbl92YWxpZChtZm4gfCAoTDFfUEFHRVRBQkxFX0VOVFJJRVMgLSAxKSkg
KQorICAgICAgICByZXR1cm4gLUVJTlZBTDsKKwogICAgIHNwYWdlID0gbWZu
X3RvX3NwYWdlKG1mbik7CiAgICAgeSA9IHNwYWdlLT50eXBlX2luZm87CiAg
ICAgZG8gewpAQCAtMzQwMSw0MiArMzQwNCwyNiBAQCBsb25nIGRvX21tdWV4
dF9vcCgKICAgICAgICAgfQogCiAgICAgICAgIGNhc2UgTU1VRVhUX01BUktf
U1VQRVI6CisgICAgICAgIGNhc2UgTU1VRVhUX1VOTUFSS19TVVBFUjoKICAg
ICAgICAgewogICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBtZm4gPSBvcC5h
cmcxLm1mbjsKIAotICAgICAgICAgICAgaWYgKCB1bmxpa2VseShkICE9IHBn
X293bmVyKSApCi0gICAgICAgICAgICAgICAgcmMgPSAtRVBFUk07Ci0gICAg
ICAgICAgICBlbHNlIGlmICggbWZuICYgKEwxX1BBR0VUQUJMRV9FTlRSSUVT
LTEpICkKLSAgICAgICAgICAgIHsKLSAgICAgICAgICAgICAgICBNRU1fTE9H
KCJVbmFsaWduZWQgc3VwZXJwYWdlIHJlZmVyZW5jZSBtZm4gJWx4IiwgbWZu
KTsKLSAgICAgICAgICAgICAgICBva2F5ID0gMDsKLSAgICAgICAgICAgIH0K
LSAgICAgICAgICAgIGVsc2UgaWYgKCAhb3B0X2FsbG93X3N1cGVycGFnZSAp
CisgICAgICAgICAgICBpZiAoICFvcHRfYWxsb3dfc3VwZXJwYWdlICkKICAg
ICAgICAgICAgIHsKICAgICAgICAgICAgICAgICBNRU1fTE9HKCJTdXBlcnBh
Z2VzIGRpc2FsbG93ZWQiKTsKICAgICAgICAgICAgICAgICByYyA9IC1FTk9T
WVM7CiAgICAgICAgICAgICB9Ci0gICAgICAgICAgICBlbHNlCi0gICAgICAg
ICAgICAgICAgcmMgPSBtYXJrX3N1cGVycGFnZShtZm5fdG9fc3BhZ2UobWZu
KSwgZCk7Ci0gICAgICAgICAgICBicmVhazsKLSAgICAgICAgfQotCi0gICAg
ICAgIGNhc2UgTU1VRVhUX1VOTUFSS19TVVBFUjoKLSAgICAgICAgewotICAg
ICAgICAgICAgdW5zaWduZWQgbG9uZyBtZm4gPSBvcC5hcmcxLm1mbjsKLQot
ICAgICAgICAgICAgaWYgKCB1bmxpa2VseShkICE9IHBnX293bmVyKSApCisg
ICAgICAgICAgICBlbHNlIGlmICggdW5saWtlbHkoZCAhPSBwZ19vd25lcikg
KQogICAgICAgICAgICAgICAgIHJjID0gLUVQRVJNOwotICAgICAgICAgICAg
ZWxzZSBpZiAoIG1mbiAmIChMMV9QQUdFVEFCTEVfRU5UUklFUy0xKSApCisg
ICAgICAgICAgICBlbHNlIGlmICggbWZuICYgKEwxX1BBR0VUQUJMRV9FTlRS
SUVTIC0gMSkgKQogICAgICAgICAgICAgewogICAgICAgICAgICAgICAgIE1F
TV9MT0coIlVuYWxpZ25lZCBzdXBlcnBhZ2UgcmVmZXJlbmNlIG1mbiAlbHgi
LCBtZm4pOwotICAgICAgICAgICAgICAgIG9rYXkgPSAwOwotICAgICAgICAg
ICAgfQotICAgICAgICAgICAgZWxzZSBpZiAoICFvcHRfYWxsb3dfc3VwZXJw
YWdlICkKLSAgICAgICAgICAgIHsKLSAgICAgICAgICAgICAgICBNRU1fTE9H
KCJTdXBlcnBhZ2VzIGRpc2FsbG93ZWQiKTsKLSAgICAgICAgICAgICAgICBy
YyA9IC1FTk9TWVM7CisgICAgICAgICAgICAgICAgcmMgPSAtRUlOVkFMOwog
ICAgICAgICAgICAgfQorICAgICAgICAgICAgZWxzZSBpZiAoICFtZm5fdmFs
aWQobWZuIHwgKEwxX1BBR0VUQUJMRV9FTlRSSUVTIC0gMSkpICkKKyAgICAg
ICAgICAgICAgICByYyA9IC1FSU5WQUw7CisgICAgICAgICAgICBlbHNlIGlm
ICggb3AuY21kID09IE1NVUVYVF9NQVJLX1NVUEVSICkKKyAgICAgICAgICAg
ICAgICByYyA9IG1hcmtfc3VwZXJwYWdlKG1mbl90b19zcGFnZShtZm4pLCBk
KTsKICAgICAgICAgICAgIGVsc2UKICAgICAgICAgICAgICAgICByYyA9IHVu
bWFya19zdXBlcnBhZ2UobWZuX3RvX3NwYWdlKG1mbikpOwogICAgICAgICAg
ICAgYnJlYWs7Cg==

--=separator--
