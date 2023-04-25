Received: (qmail 1668 invoked by uid 550); 25 Apr 2023 12:03:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1641 invoked from network); 25 Apr 2023 12:03:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=ibj/UWzx5+E1wzwy1jgTCdemR93SZRFrGnLb7SZfK7o=; b=vnYZJVaE4MkyrFov4K7A4irp1b
	80DgsXynVJoKBr13ljg7brKClUpR2FxOIqLU+DhZCv38d+6+feq+xArL67pLgNYS4fm2/BjVFFEE4
	RRKv+tRFOcE8y9MleNpUcQZDu7rMQHclo59cnQ+AgDZU4LVZZdAY1MU8XgdF4R5ZveBQ=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1prHNo-0005by-4j@xenbits.xenproject.org>
Date: Tue, 25 Apr 2023 12:02:56 +0000
Subject: [oss-security] Xen Security Advisory 430 v2 (CVE-2022-42335) - x86 shadow paging
 arbitrary pointer dereference

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2022-42335 / XSA-430
                               version 2

             x86 shadow paging arbitrary pointer dereference

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

In environments where host assisted address translation is necessary
but Hardware Assisted Paging (HAP) is unavailable, Xen will run guests
in so called shadow mode.  Due to too lax a check in one of the hypervisor
routines used for shadow page handling it is possible for a guest with a PCI
device passed through to cause the hypervisor to access an arbitrary pointer
partially under guest control.

IMPACT
======

Guests running in shadow mode and having a PCI device passed through may be
able to cause Denial of Service and other problems, escalation of privilege
cannot be ruled out.

VULNERABLE SYSTEMS
==================

Only Xen version 4.17 is vulnerable.

Only x86 systems are vulnerable.  The vulnerability can be leveraged only
by HVM guests running with shadow paging and having a PCI device passed
through.

MITIGATION
==========

Not passing through PCI devices to HVM guests will avoid the vulnerability.

Running HVM guests only in HAP (Hardware Assisted Paging) mode will also
avoid the vulnerability.

CREDITS
=======

This issue was discovered by Roger Pau Monné of XenServer.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa430.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa430*
c861cabdf546ec7583f2193f9c4f8a62579047315e5fe9eca3e9e944b67ca852  xsa430.patch
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
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmRHr/4MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ6UsH/ib0ei76XtojIl9eaNCPoAotcGBXLDQScV133z5e
7UhW3JPUEG79+p22ACL52Km7wVtWwuL5QzbBDJaw47hTD1IwvoOTQ8Dx+KwyZGsK
H8VW8WM70XyqxRJVfA+sEIEfRnxXKfWz6qWV5n2085XzFFwbF9c+ZZ6NafGv/Jd3
75eUwyGaR0o4YEnzKpLzqYFihK56YyJmZ0+rdYYydHKUy+oVcWjrNEh41Xa6lCJX
OdZ60inTu8rizItE+xEsKLatvoKVrO9q/zhAtLm+iWldf8PTgY9tq4S89DRMD/BN
uYIAL1xBCS2HC/IyUXI63PMwHg6fYzq+0JLjtYV0IYDfYE8=
=tInZ
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa430.patch"
Content-Disposition: attachment; filename="xsa430.patch"
Content-Transfer-Encoding: base64

RnJvbSA1N2IzYTJhY2U1YzRhNzgxMThiMzcyYzk1ZjY5YWY0ZjA1ODViNDhk
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBSb2dlciBQYXUgTW9u
bmUgPHJvZ2VyLnBhdUBjaXRyaXguY29tPgpEYXRlOiBNb24sIDIwIE1hciAy
MDIzIDEyOjA4OjUyICswMTAwClN1YmplY3Q6IFtQQVRDSF0geDg2L3NoYWRv
dzogcmVzdG9yZSBkcm9wcGVkIGNoZWNrIGluCiBzaF91bnNoYWRvd19mb3Jf
cDJtX2NoYW5nZSgpCk1JTUUtVmVyc2lvbjogMS4wCkNvbnRlbnQtVHlwZTog
dGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250ZW50LVRyYW5zZmVyLUVu
Y29kaW5nOiA4Yml0CgpBcyBhIHJlc3VsdCBvZiAyNDE3MDJlMDY0NjA0ZGJi
M2UwZDliNzMxYWE4ZjQ1YmU0NDgyNDNiIHRoZQptZm5fdmFsaWQoKSBjaGVj
ayBpbiBzaF91bnNoYWRvd19mb3JfcDJtX2NoYW5nZSgpIHdhcyBsb3N0LiAg
VGhhdAphbGxvd3Mgc2hfcmVtb3ZlX3NoYWRvd3MoKSB0byBiZSBjYWxsZWQg
d2l0aCBnZm5zIHRoYXQgaGF2ZSBubyBiYWNraW5nCnBhZ2UsIGNhdXNpbmcg
YW4gQVNTRVJUIHRvIHRyaWdnZXIgaW4gZGVidWcgYnVpbGRzIG9yIGRlcmVm
ZXJlbmNpbmcgYW4KYXJiaXRyYXJ5IHBvaW50ZXIgcGFydGlhbGx5IHVuZGVy
IGd1ZXN0IGNvbnRyb2wgaW4gbm9uLWRlYnVnIGJ1aWxkczoKClJJUDogICAg
ZTAwODpbPGZmZmY4MmQwNDAyZGNmMmM+XSBzaF9yZW1vdmVfc2hhZG93cysw
eDE5Zi8weDcyMgpSRkxBR1M6IDAwMDAwMDAwMDAwMTAyNDYgICBDT05URVhU
OiBoeXBlcnZpc29yIChkMHYyKQpbLi4uXQpYZW4gY2FsbCB0cmFjZToKICAg
WzxmZmZmODJkMDQwMmRjZjJjPl0gUiBzaF9yZW1vdmVfc2hhZG93cysweDE5
Zi8weDcyMgogICBbPGZmZmY4MmQwNDAyZTI4ZjQ+XSBGIGFyY2gveDg2L21t
L3NoYWRvdy9odm0uYyNzaF91bnNoYWRvd19mb3JfcDJtX2NoYW5nZSsweGFi
LzB4MmI3CiAgIFs8ZmZmZjgyZDA0MDMxMTkzMT5dIEYgYXJjaC94ODYvbW0v
cDJtLXB0LmMjd3JpdGVfcDJtX2VudHJ5KzB4MTliLzB4NGQzCiAgIFs8ZmZm
ZjgyZDA0MDMxMzFiMj5dIEYgYXJjaC94ODYvbW0vcDJtLXB0LmMjcDJtX3B0
X3NldF9lbnRyeSsweDY3Yi8weGE4ZQogICBbPGZmZmY4MmQwNDAzMDJjOTI+
XSBGIHAybV9zZXRfZW50cnkrMHhjYy8weDE0OQogICBbPGZmZmY4MmQwNDAz
MDVhNTA+XSBGIHVubWFwX21taW9fcmVnaW9ucysweDE3Yi8weDJjOQogICBb
PGZmZmY4MmQwNDAyNDFlNWU+XSBGIGRvX2RvbWN0bCsweDExZjMvMHgxOTVl
CiAgIFs8ZmZmZjgyZDA0MDJjN2UxMD5dIEYgaHZtX2h5cGVyY2FsbCsweDVi
MS8weGEyZAogICBbPGZmZmY4MmQwNDAyYWRjNzI+XSBGIHZteF92bWV4aXRf
aGFuZGxlcisweDEzMGYvMHgxY2Q1CiAgIFs8ZmZmZjgyZDA0MDIwMzYwMj5d
IEYgdm14X2FzbV92bWV4aXRfaGFuZGxlcisweGYyLzB4MjEwCgoqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqClBhbmljIG9uIENQ
VSAxOgpBc3NlcnRpb24gJ21mbl92YWxpZChnbWZuKScgZmFpbGVkIGF0IGFy
Y2gveDg2L21tL3NoYWRvdy9jb21tb24uYzoyMjAzCioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioKCkZpeCB0aGlzIGJ5IHJlc3Rv
cmluZyB0aGUgbWZuX3ZhbGlkKCkgY2hlY2sgaW4Kc2hfdW5zaGFkb3dfZm9y
X3AybV9jaGFuZ2UoKSwgdW5pZnlpbmcgaXQgd2l0aCB0aGUgcmVzdCBvZiB0
aGUgY2hlY2tzCnRoYXQgYXJlIGRvbmUgYXQgdGhlIHN0YXJ0IG9mIHRoZSBm
dW5jdGlvbi4KClRoaXMgaXMgWFNBLTQzMCAvIENWRS0yMDIyLTQyMzM1CgpG
aXhlczogMjQxNzAyZTA2NCAoJ3g4Ni9zaGFkb3c6IHNsaWdodGx5IGNvbnNv
bGlkYXRlIHNoX3Vuc2hhZG93X2Zvcl9wMm1fY2hhbmdlKCkgKHBhcnQgSUkp
JykKU2lnbmVkLW9mZi1ieTogUm9nZXIgUGF1IE1vbm7DqSA8cm9nZXIucGF1
QGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGljaCA8amJldWxp
Y2hAc3VzZS5jb20+Ci0tLQogeGVuL2FyY2gveDg2L21tL3NoYWRvdy9odm0u
YyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEveGVuL2FyY2gveDg2L21tL3No
YWRvdy9odm0uYyBiL3hlbi9hcmNoL3g4Ni9tbS9zaGFkb3cvaHZtLmMKaW5k
ZXggODhjM2MxNjMyMi4uNmRlNDc5YzAwOCAxMDA2NDQKLS0tIGEveGVuL2Fy
Y2gveDg2L21tL3NoYWRvdy9odm0uYworKysgYi94ZW4vYXJjaC94ODYvbW0v
c2hhZG93L2h2bS5jCkBAIC04MTQsNyArODE0LDggQEAgc3RhdGljIHZvaWQg
Y2ZfY2hlY2sgc2hfdW5zaGFkb3dfZm9yX3AybV9jaGFuZ2UoCiAKICAgICAv
KiBPbmx5IHByZXZpb3VzbHkgcHJlc2VudCAvIHZhbGlkIGVudHJpZXMgbmVl
ZCBwcm9jZXNzaW5nLiAqLwogICAgIGlmICggIShvZmxhZ3MgJiBfUEFHRV9Q
UkVTRU5UKSB8fAotICAgICAgICAgKCFwMm1faXNfdmFsaWQocDJtdCkgJiYg
IXAybV9pc19ncmFudChwMm10KSkgKQorICAgICAgICAgKCFwMm1faXNfdmFs
aWQocDJtdCkgJiYgIXAybV9pc19ncmFudChwMm10KSkgfHwKKyAgICAgICAg
ICFtZm5fdmFsaWQob21mbikgKQogICAgICAgICByZXR1cm47CiAKICAgICBz
d2l0Y2ggKCBsZXZlbCApCi0tIAoyLjQwLjAKCg==

--=separator--
