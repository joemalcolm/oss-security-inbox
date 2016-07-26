X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11706" "Tuesday" "26" "July" "2016" "12:05:17" "+0000" "Xen.org security team" "security@xen.org" "<E1bS16r-00051A-AE@xenbits.xenproject.org>" "249" "[oss-security] Xen Security Advisory 183 (CVE-2016-6259) - x86: Missing SMAP whitelisting in 32-bit exception / event delivery" nil nil nil "7" "2016072612:05:17" "[oss-security] Xen Security Advisory 183 (CVE-2016-6259) - x86: Missing SMAP whitelisting in 32-bit exception / event delivery" (number mark "U       security@xen Jul 26  249/11706 " thread-indent "\"[oss-security] Xen Security Advisory 183 (CVE-2016-6259) - x86: Missing SMAP whitelisting in 32-bit exception / event delivery\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21598 invoked by uid 550); 26 Jul 2016 12:06:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21574 invoked from network); 26 Jul 2016 12:06:06 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1bS16r-00051A-AE@xenbits.xenproject.org>
Date: Tue, 26 Jul 2016 12:05:17 +0000
Subject: [oss-security] Xen Security Advisory 183 (CVE-2016-6259) - x86: Missing SMAP
 whitelisting in 32-bit exception / event delivery

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-6259 / XSA-183
                              version 5

    x86: Missing SMAP whitelisting in 32-bit exception / event delivery

UPDATES IN VERSION 5
====================

Public release.

ISSUE DESCRIPTION
=================

Supervisor Mode Access Prevention is a hardware feature designed to make
an Operating System more robust, by raising a pagefault rather than
accidentally following a pointer into userspace.  However, legitimate
accesses into userspace require whitelisting, and the exception delivery
mechanism for 32bit PV guests wasn't whitelisted.

IMPACT
======

A malicious 32-bit PV guest kernel can trigger a safety check, crashing
the hypervisor and causing a denial of service to other VMs on the host.

VULNERABLE SYSTEMS
==================

Xen version 4.5 and newer are vulnerable.  Versions 4.4 and older are
not, due to not having software support for SMAP.

The vulnerability is only exposed on x86 hardware supporting the SMAP
feature (Intel Broadwell and later CPUs).  The vulnerability is not
exposed on ARM hardware, or x86 hardware which do not support SMAP.

The vulnerability is only exposed to x86 32bit PV guests.  The
vulnerability is not exposed to 64bit PV guests or HVM guests.

MITIGATION
==========

Running only HVM guests or 64-bit PV guests, avoids the vulnerability.

Disabling SMAP in the hypervisor by booting Xen with "smap=0" on the
command line will avoid this vulnerability.  (Depending on the
circumstances this workaround may pose a small risk of increasing the
impact of other, possibly unknown, vulnerabilities.)

CREDITS
=======

This issue was discovered by Andrew Cooper of Citrix.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa183.patch           xen-unstable, 4.7.x
xsa183-4.6.patch       Xen 4.6.x, 4.5.x

$ sha256sum xsa183*
ea0ea4b294332814330f222e6d78eea3b19c394eac8ae22feb4a5bd21e90331f  xsa183-unstable.patch
0fee41f21a3eb4af1487590098047f4625688bcef7419572a8f418f9fb728468  xsa183-4.6.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches described above (or others which are
substantially similar) is permitted during the embargo, even on
public-facing systems with untrusted guest users and administrators.

But: Deployment of the "smap=0" mitigation is NOT permitted (except
where all the affected systems and VMs are administered and used only
by organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.  This is because this produces a guest-visible
change which could lead to rediscovery of the vulnerability.

And: Distribution of updated software is prohibited (except to other
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

iQEcBAEBAgAGBQJXl0M9AAoJEIP+FMlX6CvZYB4IAIkCjnrkDBqYcPJrnAAjNDGL
v/qJiE6NAKlvqyi/pRkDodAk+5CLvvjDHmTBtqvT+7SU3ixt4C80MLiVMCuJVsUw
kMcp95KsJne1TSoivAqSXED+J3gkIWXG8PYvpUOwwOqr0aJViuN9Uv52g0+MVUsW
OnkHzYzyyMkIRi0bIzXmhvGeHTUxVhcz8RjMWsjD9FPb+i6lu/kfNUvpiecVa0mx
0J7ByS5l4iEefCH+beT35NFg1BfQINU3cMmDM/i8pklRuJI+HKCYFzPGJyl2+Ccr
0Zd7Lgub2jGsJjgXjBBPCHw/CCdlmX7RiiAvnIQU5adBtCIk6p0T0ugcGXwTIAw=
=ydwH
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa183-unstable.patch"
Content-Disposition: attachment; filename="xsa183-unstable.patch"
Content-Transfer-Encoding: base64

RnJvbSAyZmQ0ZjM0MDU4ZmI1Zjg3ZmJkODA5NzhkYmQyY2I0NThhZmY1NjVk
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBXZWQsIDE1IEp1
biAyMDE2IDE4OjMyOjE0ICswMTAwClN1YmplY3Q6IFtQQVRDSF0geDg2L2Vu
dHJ5OiBBdm9pZCBTTUFQIHZpb2xhdGlvbiBpbgogY29tcGF0X2NyZWF0ZV9i
b3VuY2VfZnJhbWUoKQoKQSAzMmJpdCBndWVzdCBrZXJuZWwgbWlnaHQgYmUg
cnVubmluZyBvbiB1c2VyIG1hcHBpbmdzLgpjb21wYXRfY3JlYXRlX2JvdW5j
ZV9mcmFtZSgpIG11c3Qgd2hpdGVsaXN0IGl0cyBndWVzdCBhY2Nlc3NlcyB0
byBhdm9pZApyaXNraW5nIGEgU01BUCB2aW9sYXRpb24uCgpGb3IgYm90aCB2
YXJpYW50cyBvZiBjcmVhdGVfYm91bmNlX2ZyYW1lKCksIHJlLWJsYWNrbGlz
dCB1c2VyIGFjY2Vzc2VzIGlmCmV4ZWN1dGlvbiBleGl0cyB2aWEgYW4gZXhj
ZXB0aW9uIHRhYmxlIHJlZGlyZWN0aW9uLgoKVGhpcyBpcyBYU0EtMTgzIC8g
Q1ZFLTIwMTYtNjI1OQoKU2lnbmVkLW9mZi1ieTogQW5kcmV3IENvb3BlciA8
YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEdlb3Jn
ZSBEdW5sYXAgPGdlb3JnZS5kdW5sYXBAY2l0cml4LmNvbT4KUmV2aWV3ZWQt
Ynk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KLS0tCnYyOgog
KiBJbmNsdWRlIENMQUMgb24gdGhlIGV4aXQgcGF0aHMgZnJvbSBjb21wYXRf
Y3JlYXRlX2JvdW5jZV9mcmFtZSB3aGljaCBvY2N1cgogICBmcm9tIGZhdWx0
cyBhdHRlbXB0aW5nIHRvIGxvYWQgJWZzCiAqIFJlcG9zaXRpb24gQVNNX1NU
QUMgdG8gYXZvaWQgYnJlYWtpbmcgdGhlIG1hY3JvLW9wIGZ1c2lvbiBvZiB0
ZXN0L2p6Ci0tLQogeGVuL2FyY2gveDg2L3g4Nl82NC9jb21wYXQvZW50cnku
UyB8IDMgKysrCiB4ZW4vYXJjaC94ODYveDg2XzY0L2VudHJ5LlMgICAgICAg
IHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS94ZW4vYXJjaC94ODYveDg2XzY0L2NvbXBhdC9lbnRyeS5T
IGIveGVuL2FyY2gveDg2L3g4Nl82NC9jb21wYXQvZW50cnkuUwppbmRleCA3
ZjAyYWZkLi5lODBjNTNjIDEwMDY0NAotLS0gYS94ZW4vYXJjaC94ODYveDg2
XzY0L2NvbXBhdC9lbnRyeS5TCisrKyBiL3hlbi9hcmNoL3g4Ni94ODZfNjQv
Y29tcGF0L2VudHJ5LlMKQEAgLTMxOCw2ICszMTgsNyBAQCBFTlRSWShjb21w
YXRfaW50ODBfZGlyZWN0X3RyYXApCiBjb21wYXRfY3JlYXRlX2JvdW5jZV9m
cmFtZToKICAgICAgICAgQVNTRVJUX0lOVEVSUlVQVFNfRU5BQkxFRAogICAg
ICAgICBtb3YgICAlZnMsJWVkaQorICAgICAgICBBU01fU1RBQwogICAgICAg
ICB0ZXN0YiAkMixVUkVHU19jcys4KCVyc3ApCiAgICAgICAgIGp6ICAgIDFm
CiAgICAgICAgIC8qIFB1c2ggbmV3IGZyYW1lIGF0IHJlZ2lzdGVyZWQgZ3Vl
c3QtT1Mgc3RhY2sgYmFzZS4gKi8KQEAgLTM2NCw2ICszNjUsNyBAQCBjb21w
YXRfY3JlYXRlX2JvdW5jZV9mcmFtZToKICAgICAgICAgbW92bCAgVFJBUEJP
VU5DRV9lcnJvcl9jb2RlKCVyZHgpLCVlYXgKIC5MZnQ4OiAgbW92bCAgJWVh
eCwlZnM6KCVyc2kpICAgICAgICAgICAjIEVSUk9SIENPREUKIDE6CisgICAg
ICAgIEFTTV9DTEFDCiAgICAgICAgIC8qIFJld3JpdGUgb3VyIHN0YWNrIGZy
YW1lIGFuZCByZXR1cm4gdG8gZ3Vlc3QtT1MgbW9kZS4gKi8KICAgICAgICAg
LyogSUEzMiBSZWYuIFZvbC4gMzogVEYsIFZNLCBSRiBhbmQgTlQgZmxhZ3Mg
YXJlIGNsZWFyZWQgb24gdHJhcC4gKi8KICAgICAgICAgYW5kbCAgJH4oWDg2
X0VGTEFHU19WTXxYODZfRUZMQUdTX1JGfFwKQEAgLTQwMyw2ICs0MDUsNyBA
QCBjb21wYXRfY3Jhc2hfcGFnZV9mYXVsdF80OgogICAgICAgICBhZGRsICAk
NCwlZXNpCiBjb21wYXRfY3Jhc2hfcGFnZV9mYXVsdDoKIC5MZnQxNDogbW92
ICAgJWVkaSwlZnMKKyAgICAgICAgQVNNX0NMQUMKICAgICAgICAgbW92bCAg
JWVzaSwlZWRpCiAgICAgICAgIGNhbGwgIHNob3dfcGFnZV93YWxrCiAgICAg
ICAgIGptcCAgIGRvbV9jcmFzaF9zeW5jX2V4dGFibGUKZGlmZiAtLWdpdCBh
L3hlbi9hcmNoL3g4Ni94ODZfNjQvZW50cnkuUyBiL3hlbi9hcmNoL3g4Ni94
ODZfNjQvZW50cnkuUwppbmRleCBhZDhjNjRjLi5mNzE3OGNkIDEwMDY0NAot
LS0gYS94ZW4vYXJjaC94ODYveDg2XzY0L2VudHJ5LlMKKysrIGIveGVuL2Fy
Y2gveDg2L3g4Nl82NC9lbnRyeS5TCkBAIC00MjAsOSArNDIwLDExIEBAIGRv
bWFpbl9jcmFzaF9wYWdlX2ZhdWx0XzE2OgogZG9tYWluX2NyYXNoX3BhZ2Vf
ZmF1bHRfODoKICAgICAgICAgYWRkcSAgJDgsJXJzaQogZG9tYWluX2NyYXNo
X3BhZ2VfZmF1bHQ6CisgICAgICAgIEFTTV9DTEFDCiAgICAgICAgIG1vdnEg
ICVyc2ksJXJkaQogICAgICAgICBjYWxsICBzaG93X3BhZ2Vfd2FsawogRU5U
UlkoZG9tX2NyYXNoX3N5bmNfZXh0YWJsZSkKKyAgICAgICAgQVNNX0NMQUMK
ICAgICAgICAgIyBHZXQgb3V0IG9mIHRoZSBndWVzdC1zYXZlIGFyZWEgb2Yg
dGhlIHN0YWNrLgogICAgICAgICBHRVRfU1RBQ0tfRU5EKGF4KQogICAgICAg
ICBsZWFxICBTVEFDS19DUFVJTkZPX0ZJRUxEKGd1ZXN0X2NwdV91c2VyX3Jl
Z3MpKCVyYXgpLCVyc3AKLS0gCjIuMS40Cgo=

--=separator
Content-Type: application/octet-stream; name="xsa183-4.6.patch"
Content-Disposition: attachment; filename="xsa183-4.6.patch"
Content-Transfer-Encoding: base64

RnJvbSA3NzdlYmUzMGU4MWFiMjg0ZjliNzgzOTI4NzVmZTg4NGE1OTNkZjM1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBXZWQsIDE1IEp1
biAyMDE2IDE4OjMyOjE0ICswMTAwClN1YmplY3Q6IFtQQVRDSF0geDg2L2Vu
dHJ5OiBBdm9pZCBTTUFQIHZpb2xhdGlvbiBpbgogY29tcGF0X2NyZWF0ZV9i
b3VuY2VfZnJhbWUoKQoKQSAzMmJpdCBndWVzdCBrZXJuZWwgbWlnaHQgYmUg
cnVubmluZyBvbiB1c2VyIG1hcHBpbmdzLgpjb21wYXRfY3JlYXRlX2JvdW5j
ZV9mcmFtZSgpIG11c3Qgd2hpdGVsaXN0IGl0cyBndWVzdCBhY2Nlc3NlcyB0
byBhdm9pZApyaXNraW5nIGEgU01BUCB2aW9sYXRpb24uCgpGb3IgYm90aCB2
YXJpYW50cyBvZiBjcmVhdGVfYm91bmNlX2ZyYW1lKCksIHJlLWJsYWNrbGlz
dCB1c2VyIGFjY2Vzc2VzIGlmCmV4ZWN1dGlvbiBleGl0cyB2aWEgYW4gZXhj
ZXB0aW9uIHRhYmxlIHJlZGlyZWN0aW9uLgoKVGhpcyBpcyBYU0EtMTgzIC8g
Q1ZFLTIwMTYtNjI1OQoKU2lnbmVkLW9mZi1ieTogQW5kcmV3IENvb3BlciA8
YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEdlb3Jn
ZSBEdW5sYXAgPGdlb3JnZS5kdW5sYXBAY2l0cml4LmNvbT4KUmV2aWV3ZWQt
Ynk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KLS0tCnYyOgog
KiBJbmNsdWRlIENMQUMgb24gdGhlIGV4aXQgcGF0aHMgZnJvbSBjb21wYXRf
Y3JlYXRlX2JvdW5jZV9mcmFtZSB3aGljaCBvY2N1cgogICBmcm9tIGZhdWx0
cyBhdHRlbXB0aW5nIHRvIGxvYWQgJWZzCiAqIFJlcG9zaXRpb24gQVNNX1NU
QUMgdG8gYXZvaWQgYnJlYWtpbmcgdGhlIG1hY3JvLW9wIGZ1c2lvbiBvZiB0
ZXN0L2p6Ci0tLQogeGVuL2FyY2gveDg2L3g4Nl82NC9jb21wYXQvZW50cnku
UyB8IDMgKysrCiB4ZW4vYXJjaC94ODYveDg2XzY0L2VudHJ5LlMgICAgICAg
IHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS94ZW4vYXJjaC94ODYveDg2XzY0L2NvbXBhdC9lbnRyeS5T
IGIveGVuL2FyY2gveDg2L3g4Nl82NC9jb21wYXQvZW50cnkuUwppbmRleCAw
ZTNkYjdjLi4xZWFmNGJiIDEwMDY0NAotLS0gYS94ZW4vYXJjaC94ODYveDg2
XzY0L2NvbXBhdC9lbnRyeS5TCisrKyBiL3hlbi9hcmNoL3g4Ni94ODZfNjQv
Y29tcGF0L2VudHJ5LlMKQEAgLTM1MCw2ICszNTAsNyBAQCBFTlRSWShjb21w
YXRfaW50ODBfZGlyZWN0X3RyYXApCiBjb21wYXRfY3JlYXRlX2JvdW5jZV9m
cmFtZToKICAgICAgICAgQVNTRVJUX0lOVEVSUlVQVFNfRU5BQkxFRAogICAg
ICAgICBtb3YgICAlZnMsJWVkaQorICAgICAgICBBU01fU1RBQwogICAgICAg
ICB0ZXN0YiAkMixVUkVHU19jcys4KCVyc3ApCiAgICAgICAgIGp6ICAgIDFm
CiAgICAgICAgIC8qIFB1c2ggbmV3IGZyYW1lIGF0IHJlZ2lzdGVyZWQgZ3Vl
c3QtT1Mgc3RhY2sgYmFzZS4gKi8KQEAgLTQwMyw2ICs0MDQsNyBAQCBVTkxJ
S0VMWV9TVEFSVChueiwgY29tcGF0X2JvdW5jZV9mYWlsc2FmZSkKICAgICAg
ICAgbW92bCAgJWRzLCVlYXgKIC5MZnQxMjogbW92bCAgJWVheCwlZnM6MCo0
KCVyc2kpICAgICAgICAjIERTCiBVTkxJS0VMWV9FTkQoY29tcGF0X2JvdW5j
ZV9mYWlsc2FmZSkKKyAgICAgICAgQVNNX0NMQUMKICAgICAgICAgLyogUmV3
cml0ZSBvdXIgc3RhY2sgZnJhbWUgYW5kIHJldHVybiB0byBndWVzdC1PUyBt
b2RlLiAqLwogICAgICAgICAvKiBJQTMyIFJlZi4gVm9sLiAzOiBURiwgVk0s
IFJGIGFuZCBOVCBmbGFncyBhcmUgY2xlYXJlZCBvbiB0cmFwLiAqLwogICAg
ICAgICBhbmRsICAkfihYODZfRUZMQUdTX1ZNfFg4Nl9FRkxBR1NfUkZ8XApA
QCAtNDQ4LDYgKzQ1MCw3IEBAIGNvbXBhdF9jcmFzaF9wYWdlX2ZhdWx0XzQ6
CiAgICAgICAgIGFkZGwgICQ0LCVlc2kKIGNvbXBhdF9jcmFzaF9wYWdlX2Zh
dWx0OgogLkxmdDE0OiBtb3YgICAlZWRpLCVmcworICAgICAgICBBU01fQ0xB
QwogICAgICAgICBtb3ZsICAlZXNpLCVlZGkKICAgICAgICAgY2FsbCAgc2hv
d19wYWdlX3dhbGsKICAgICAgICAgam1wICAgZG9tX2NyYXNoX3N5bmNfZXh0
YWJsZQpkaWZmIC0tZ2l0IGEveGVuL2FyY2gveDg2L3g4Nl82NC9lbnRyeS5T
IGIveGVuL2FyY2gveDg2L3g4Nl82NC9lbnRyeS5TCmluZGV4IDZlMjc1MDgu
LjBjMmU2M2EgMTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL3g4Ni94ODZfNjQvZW50
cnkuUworKysgYi94ZW4vYXJjaC94ODYveDg2XzY0L2VudHJ5LlMKQEAgLTQ2
Miw5ICs0NjIsMTEgQEAgZG9tYWluX2NyYXNoX3BhZ2VfZmF1bHRfMTY6CiBk
b21haW5fY3Jhc2hfcGFnZV9mYXVsdF84OgogICAgICAgICBhZGRxICAkOCwl
cnNpCiBkb21haW5fY3Jhc2hfcGFnZV9mYXVsdDoKKyAgICAgICAgQVNNX0NM
QUMKICAgICAgICAgbW92cSAgJXJzaSwlcmRpCiAgICAgICAgIGNhbGwgIHNo
b3dfcGFnZV93YWxrCiBFTlRSWShkb21fY3Jhc2hfc3luY19leHRhYmxlKQor
ICAgICAgICBBU01fQ0xBQwogICAgICAgICAjIEdldCBvdXQgb2YgdGhlIGd1
ZXN0LXNhdmUgYXJlYSBvZiB0aGUgc3RhY2suCiAgICAgICAgIEdFVF9TVEFD
S19CQVNFKCVyYXgpCiAgICAgICAgIGxlYXEgIFNUQUNLX0NQVUlORk9fRklF
TEQoZ3Vlc3RfY3B1X3VzZXJfcmVncykoJXJheCksJXJzcAotLSAKMi4xLjQK
Cg==

--=separator--
