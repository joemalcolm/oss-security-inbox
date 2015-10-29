X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10918" "Thursday" "29" "October" "2015" "12:00:27" "+0000" "Xen.org security team" "security@xen.org" "<E1ZrlsZ-00024q-IX@xenbits.xen.org>" "245" "[oss-security] Xen Security Advisory 148 (CVE-2015-7835) - x86: Uncontrolled creation of large page mappings by PV guests" nil nil nil "10" "2015102912:00:27" "[oss-security] Xen Security Advisory 148 (CVE-2015-7835) - x86: Uncontrolled creation of large page mappings by PV guests" (number mark "U       security@xen Oct 29  245/10918 " thread-indent "\"[oss-security] Xen Security Advisory 148 (CVE-2015-7835) - x86: Uncontrolled creation of large page mappings by PV guests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13853 invoked by uid 550); 29 Oct 2015 12:03:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26541 invoked from network); 29 Oct 2015 12:00:46 -0000
Date: Thu, 29 Oct 2015 12:00:27 +0000
Message-Id: <E1ZrlsZ-00024q-IX@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 148 (CVE-2015-7835) - x86: Uncontrolled
 creation of large page mappings by PV guests

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7835 / XSA-148
                              version 4

      x86: Uncontrolled creation of large page mappings by PV guests

UPDATES IN VERSION 4
====================

Public release.

ISSUE DESCRIPTION
=================

The code to validate level 2 page table entries is bypassed when
certain conditions are satisfied.  This means that a PV guest can
create writeable mappings using super page mappings.

Such writeable mappings can violate Xen intended invariants for pages
which Xen is supposed to keep read-only.

This is possible even if the "allowsuperpage" command line option is
not used.

IMPACT
======

Malicious PV guest administrators can escalate privilege so as to
control the whole system.

VULNERABLE SYSTEMS
==================

Xen 3.4 and onward are vulnerable.

Only x86 systems are vulnerable.  ARM systems are not vulnerable.

Only PV guests can exploit the vulnerability.  Both 32-bit and 64-bit
PV guests can do so.

MITIGATION
==========

Running only HVM guests will avoid this vulnerability.

On systems where the guest kernel is controlled by the host rather
than guest administrator, running only kernels which do not call these
hypercalls will also prevent untrusted guest users from exploiting
this issue. However untrusted guest administrators can still trigger
it unless further steps are taken to prevent them from loading code
into the kernel (e.g. by disabling loadable modules etc) or from using
other mechanisms which allow them to run code at kernel privilege.

CREDITS
=======

This issue was discovered by 栾尚聪 (好风) of Alibaba.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa148.patch                 xen-unstable, Xen 4.6.x
xsa148-4.5.patch             Xen 4.5.x
xsa148-4.4.patch             Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa148*.patch
f320d105a4832124910f46c50acd4803fe289bd7c4702ec15f97fb611b70944d  xsa148.patch
7f78efd001f041a0e5502546664d28011cb881d72c94ea564585efb3ca01ddfe  xsa148-4.4.patch
272a729048471cea851d4a881f3f2c32c7be101e2a452d2b2ceb9d66908ee4a3  xsa148-4.5.patch
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

iQEcBAEBAgAGBQJWMgm4AAoJEIP+FMlX6CvZPl0IAI7uPHn9OiDqQlKnvuF5DJkx
WkmX6lNgIXd9arkZ2gUvlenPArfJV2Rv75TP/0LLuITrv+AcylFEBd7T7rdbXeAT
w5TaYI1wnixu8D+klyMGDjIt8Oy0gG1D8tpJYB4SETmT/Knv9FmFmUrShPD5kEVW
6W3j3PulCpPX6+8rpmD+1CD8DDH/FHvr3xc/mK9gaWTSfPvYX0wcUbVR5GK63SHy
6smdmcbyMz6RLlq9MRSs1ifYuAOFel3bFi0NaUm+w3luVozgg6MiEopmnmLZXgbu
93iMDiKbQmr6XdsqvqWexJ7hAiWD5Sp+ztUW0iyNLKpj482VU9wSm0vwneZpgCg=
=WDZi
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa148.patch"
Content-Disposition: attachment; filename="xsa148.patch"
Content-Transfer-Encoding: base64

eDg2OiBndWFyZCBhZ2FpbnN0IHVuZHVlIHN1cGVyIHBhZ2UgUFRFIGNyZWF0
aW9uCgpXaGVuIG9wdGlvbmFsIHN1cGVyIHBhZ2Ugc3VwcG9ydCBnb3QgYWRk
ZWQgKGNvbW1pdCBiZDFjZDgxZDY0ICJ4ODY6IFBWCnN1cHBvcnQgZm9yIGh1
Z2VwYWdlcyIpLCB0d28gYWRqdXN0bWVudHMgd2VyZSBtaXNzZWQ6IG1vZF9s
Ml9lbnRyeSgpCm5lZWRzIHRvIGNvbnNpZGVyIHRoZSBQU0UgYW5kIFJXIGJp
dHMgd2hlbiBkZWNpZGluZyB3aGV0aGVyIHRvIHVzZSB0aGUKZmFzdCBwYXRo
LCBhbmQgdGhlIFBTRSBiaXQgbXVzdCBub3QgYmUgcmVtb3ZlZCBmcm9tIEwy
X0RJU0FMTE9XX01BU0sKdW5jb25kaXRpb25hbGx5LgoKVGhpcyBpcyBYU0Et
MTQ4LgoKU2lnbmVkLW9mZi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1
c2UuY29tPgpSZXZpZXdlZC1ieTogVGltIERlZWdhbiA8dGltQHhlbi5vcmc+
CgotLS0gYS94ZW4vYXJjaC94ODYvbW0uYworKysgYi94ZW4vYXJjaC94ODYv
bW0uYwpAQCAtMTYwLDcgKzE2MCwxMCBAQCBzdGF0aWMgdm9pZCBwdXRfc3Vw
ZXJwYWdlKHVuc2lnbmVkIGxvbmcgCiBzdGF0aWMgdWludDMyX3QgYmFzZV9k
aXNhbGxvd19tYXNrOwogLyogR2xvYmFsIGJpdCBpcyBhbGxvd2VkIHRvIGJl
IHNldCBvbiBMMSBQVEVzLiBJbnRlbmRlZCBmb3IgdXNlciBtYXBwaW5ncy4g
Ki8KICNkZWZpbmUgTDFfRElTQUxMT1dfTUFTSyAoKGJhc2VfZGlzYWxsb3df
bWFzayB8IF9QQUdFX0dOVFRBQikgJiB+X1BBR0VfR0xPQkFMKQotI2RlZmlu
ZSBMMl9ESVNBTExPV19NQVNLIChiYXNlX2Rpc2FsbG93X21hc2sgJiB+X1BB
R0VfUFNFKQorCisjZGVmaW5lIEwyX0RJU0FMTE9XX01BU0sgKHVubGlrZWx5
KG9wdF9hbGxvd19zdXBlcnBhZ2UpIFwKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgPyBiYXNlX2Rpc2FsbG93X21hc2sgJiB+X1BBR0VfUFNFIFwKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgOiBiYXNlX2Rpc2FsbG93X21hc2sp
CiAKICNkZWZpbmUgbDNfZGlzYWxsb3dfbWFzayhkKSAoIWlzX3B2XzMyYml0
X2RvbWFpbihkKSA/IFwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
YmFzZV9kaXNhbGxvd19tYXNrIDogMHhGRkZGRjE5OFUpCkBAIC0xODQxLDcg
KzE4NDQsMTAgQEAgc3RhdGljIGludCBtb2RfbDJfZW50cnkobDJfcGdlbnRy
eV90ICpwbAogICAgICAgICB9CiAKICAgICAgICAgLyogRmFzdCBwYXRoIGZv
ciBpZGVudGljYWwgbWFwcGluZyBhbmQgcHJlc2VuY2UuICovCi0gICAgICAg
IGlmICggIWwyZV9oYXNfY2hhbmdlZChvbDJlLCBubDJlLCBfUEFHRV9QUkVT
RU5UKSApCisgICAgICAgIGlmICggIWwyZV9oYXNfY2hhbmdlZChvbDJlLCBu
bDJlLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5saWtlbHko
b3B0X2FsbG93X3N1cGVycGFnZSkKKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgID8gX1BBR0VfUFNFIHwgX1BBR0VfUlcgfCBfUEFHRV9QUkVTRU5U
CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6IF9QQUdFX1BSRVNF
TlQpICkKICAgICAgICAgewogICAgICAgICAgICAgYWRqdXN0X2d1ZXN0X2wy
ZShubDJlLCBkKTsKICAgICAgICAgICAgIGlmICggVVBEQVRFX0VOVFJZKGwy
LCBwbDJlLCBvbDJlLCBubDJlLCBwZm4sIHZjcHUsIHByZXNlcnZlX2FkKSAp
Cg==

--=separator
Content-Type: application/octet-stream; name="xsa148-4.4.patch"
Content-Disposition: attachment; filename="xsa148-4.4.patch"
Content-Transfer-Encoding: base64

eDg2OiBndWFyZCBhZ2FpbnN0IHVuZHVlIHN1cGVyIHBhZ2UgUFRFIGNyZWF0
aW9uCgpXaGVuIG9wdGlvbmFsIHN1cGVyIHBhZ2Ugc3VwcG9ydCBnb3QgYWRk
ZWQgKGNvbW1pdCBiZDFjZDgxZDY0ICJ4ODY6IFBWCnN1cHBvcnQgZm9yIGh1
Z2VwYWdlcyIpLCB0d28gYWRqdXN0bWVudHMgd2VyZSBtaXNzZWQ6IG1vZF9s
Ml9lbnRyeSgpCm5lZWRzIHRvIGNvbnNpZGVyIHRoZSBQU0UgYW5kIFJXIGJp
dHMgd2hlbiBkZWNpZGluZyB3aGV0aGVyIHRvIHVzZSB0aGUKZmFzdCBwYXRo
LCBhbmQgdGhlIFBTRSBiaXQgbXVzdCBub3QgYmUgcmVtb3ZlZCBmcm9tIEwy
X0RJU0FMTE9XX01BU0sKdW5jb25kaXRpb25hbGx5LgoKVGhpcyBpcyBYU0Et
MTQ4LgoKU2lnbmVkLW9mZi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1
c2UuY29tPgpSZXZpZXdlZC1ieTogVGltIERlZWdhbiA8dGltQHhlbi5vcmc+
CgotLS0gYS94ZW4vYXJjaC94ODYvbW0uYworKysgYi94ZW4vYXJjaC94ODYv
bW0uYwpAQCAtMTYzLDcgKzE2MywxMCBAQCBzdGF0aWMgdm9pZCBwdXRfc3Vw
ZXJwYWdlKHVuc2lnbmVkIGxvbmcgCiAKIHN0YXRpYyB1aW50MzJfdCBiYXNl
X2Rpc2FsbG93X21hc2s7CiAjZGVmaW5lIEwxX0RJU0FMTE9XX01BU0sgKGJh
c2VfZGlzYWxsb3dfbWFzayB8IF9QQUdFX0dOVFRBQikKLSNkZWZpbmUgTDJf
RElTQUxMT1dfTUFTSyAoYmFzZV9kaXNhbGxvd19tYXNrICYgfl9QQUdFX1BT
RSkKKworI2RlZmluZSBMMl9ESVNBTExPV19NQVNLICh1bmxpa2VseShvcHRf
YWxsb3dfc3VwZXJwYWdlKSBcCisgICAgICAgICAgICAgICAgICAgICAgICAg
ID8gYmFzZV9kaXNhbGxvd19tYXNrICYgfl9QQUdFX1BTRSBcCisgICAgICAg
ICAgICAgICAgICAgICAgICAgIDogYmFzZV9kaXNhbGxvd19tYXNrKQogCiAj
ZGVmaW5lIGwzX2Rpc2FsbG93X21hc2soZCkgKCFpc19wdl8zMm9uNjRfZG9t
YWluKGQpID8gIFwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmFz
ZV9kaXNhbGxvd19tYXNrIDogICAgICAgXApAQCAtMTc4Niw3ICsxNzg5LDEw
IEBAIHN0YXRpYyBpbnQgbW9kX2wyX2VudHJ5KGwyX3BnZW50cnlfdCAqcGwK
ICAgICAgICAgfQogCiAgICAgICAgIC8qIEZhc3QgcGF0aCBmb3IgaWRlbnRp
Y2FsIG1hcHBpbmcgYW5kIHByZXNlbmNlLiAqLwotICAgICAgICBpZiAoICFs
MmVfaGFzX2NoYW5nZWQob2wyZSwgbmwyZSwgX1BBR0VfUFJFU0VOVCkgKQor
ICAgICAgICBpZiAoICFsMmVfaGFzX2NoYW5nZWQob2wyZSwgbmwyZSwKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVubGlrZWx5KG9wdF9hbGxv
d19zdXBlcnBhZ2UpCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA/
IF9QQUdFX1BTRSB8IF9QQUdFX1JXIHwgX1BBR0VfUFJFU0VOVAorICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgOiBfUEFHRV9QUkVTRU5UKSApCiAg
ICAgICAgIHsKICAgICAgICAgICAgIGFkanVzdF9ndWVzdF9sMmUobmwyZSwg
ZCk7CiAgICAgICAgICAgICBpZiAoIFVQREFURV9FTlRSWShsMiwgcGwyZSwg
b2wyZSwgbmwyZSwgcGZuLCB2Y3B1LCBwcmVzZXJ2ZV9hZCkgKQo=

--=separator
Content-Type: application/octet-stream; name="xsa148-4.5.patch"
Content-Disposition: attachment; filename="xsa148-4.5.patch"
Content-Transfer-Encoding: base64

eDg2OiBndWFyZCBhZ2FpbnN0IHVuZHVlIHN1cGVyIHBhZ2UgUFRFIGNyZWF0
aW9uCgpXaGVuIG9wdGlvbmFsIHN1cGVyIHBhZ2Ugc3VwcG9ydCBnb3QgYWRk
ZWQgKGNvbW1pdCBiZDFjZDgxZDY0ICJ4ODY6IFBWCnN1cHBvcnQgZm9yIGh1
Z2VwYWdlcyIpLCB0d28gYWRqdXN0bWVudHMgd2VyZSBtaXNzZWQ6IG1vZF9s
Ml9lbnRyeSgpCm5lZWRzIHRvIGNvbnNpZGVyIHRoZSBQU0UgYW5kIFJXIGJp
dHMgd2hlbiBkZWNpZGluZyB3aGV0aGVyIHRvIHVzZSB0aGUKZmFzdCBwYXRo
LCBhbmQgdGhlIFBTRSBiaXQgbXVzdCBub3QgYmUgcmVtb3ZlZCBmcm9tIEwy
X0RJU0FMTE9XX01BU0sKdW5jb25kaXRpb25hbGx5LgoKVGhpcyBpcyBYU0Et
MTQ4LgoKU2lnbmVkLW9mZi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1
c2UuY29tPgpSZXZpZXdlZC1ieTogVGltIERlZWdhbiA8dGltQHhlbi5vcmc+
CgotLS0gYS94ZW4vYXJjaC94ODYvbW0uYworKysgYi94ZW4vYXJjaC94ODYv
bW0uYwpAQCAtMTYyLDcgKzE2MiwxMCBAQCBzdGF0aWMgdm9pZCBwdXRfc3Vw
ZXJwYWdlKHVuc2lnbmVkIGxvbmcgCiBzdGF0aWMgdWludDMyX3QgYmFzZV9k
aXNhbGxvd19tYXNrOwogLyogR2xvYmFsIGJpdCBpcyBhbGxvd2VkIHRvIGJl
IHNldCBvbiBMMSBQVEVzLiBJbnRlbmRlZCBmb3IgdXNlciBtYXBwaW5ncy4g
Ki8KICNkZWZpbmUgTDFfRElTQUxMT1dfTUFTSyAoKGJhc2VfZGlzYWxsb3df
bWFzayB8IF9QQUdFX0dOVFRBQikgJiB+X1BBR0VfR0xPQkFMKQotI2RlZmlu
ZSBMMl9ESVNBTExPV19NQVNLIChiYXNlX2Rpc2FsbG93X21hc2sgJiB+X1BB
R0VfUFNFKQorCisjZGVmaW5lIEwyX0RJU0FMTE9XX01BU0sgKHVubGlrZWx5
KG9wdF9hbGxvd19zdXBlcnBhZ2UpIFwKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgPyBiYXNlX2Rpc2FsbG93X21hc2sgJiB+X1BBR0VfUFNFIFwKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgOiBiYXNlX2Rpc2FsbG93X21hc2sp
CiAKICNkZWZpbmUgbDNfZGlzYWxsb3dfbWFzayhkKSAoIWlzX3B2XzMyb242
NF9kb21haW4oZCkgPyAgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBiYXNlX2Rpc2FsbG93X21hc2sgOiAgICAgICBcCkBAIC0xNzcwLDcgKzE3
NzMsMTAgQEAgc3RhdGljIGludCBtb2RfbDJfZW50cnkobDJfcGdlbnRyeV90
ICpwbAogICAgICAgICB9CiAKICAgICAgICAgLyogRmFzdCBwYXRoIGZvciBp
ZGVudGljYWwgbWFwcGluZyBhbmQgcHJlc2VuY2UuICovCi0gICAgICAgIGlm
ICggIWwyZV9oYXNfY2hhbmdlZChvbDJlLCBubDJlLCBfUEFHRV9QUkVTRU5U
KSApCisgICAgICAgIGlmICggIWwyZV9oYXNfY2hhbmdlZChvbDJlLCBubDJl
LAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5saWtlbHkob3B0
X2FsbG93X3N1cGVycGFnZSkKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgID8gX1BBR0VfUFNFIHwgX1BBR0VfUlcgfCBfUEFHRV9QUkVTRU5UCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6IF9QQUdFX1BSRVNFTlQp
ICkKICAgICAgICAgewogICAgICAgICAgICAgYWRqdXN0X2d1ZXN0X2wyZShu
bDJlLCBkKTsKICAgICAgICAgICAgIGlmICggVVBEQVRFX0VOVFJZKGwyLCBw
bDJlLCBvbDJlLCBubDJlLCBwZm4sIHZjcHUsIHByZXNlcnZlX2FkKSApCg==

--=separator--
