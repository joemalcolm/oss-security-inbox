X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16736" "Tuesday" "8" "December" "2015" "12:02:21" "+0000" "Xen.org security team" "security@xen.org" "<E1a6GyL-0003v0-Cb@xenbits.xen.org>" "347" "[oss-security] Xen Security Advisory 160 (CVE-2015-8341) - libxl leak of pv kernel and initrd on error" nil nil nil "12" "2015120812:02:21" "[oss-security] Xen Security Advisory 160 (CVE-2015-8341) - libxl leak of pv kernel and initrd on error" (number mark "U       security@xen Dec  8  347/16736 " thread-indent "\"[oss-security] Xen Security Advisory 160 (CVE-2015-8341) - libxl leak of pv kernel and initrd on error\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26452 invoked by uid 550); 8 Dec 2015 12:03:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21580 invoked from network); 8 Dec 2015 12:02:41 -0000
Date: Tue, 08 Dec 2015 12:02:21 +0000
Message-Id: <E1a6GyL-0003v0-Cb@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 160 (CVE-2015-8341) - libxl leak of pv
 kernel and initrd on error

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-8341 / XSA-160
                              version 3

              libxl leak of pv kernel and initrd on error

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

When constructing a guest which is configured to use a PV bootloader
which runs as a userspace process in the toolstack domain
(e.g. pygrub) libxl creates a mapping of the files to be used as
kernel and initial ramdisk when building the guest domain.

However if building the domain subsequently fails these mappings would
not be released leading to a leak of virtual address space in the
calling process, as well as preventing the recovery of the temporary
disk files containing the kernel and initial ramdisk.

IMPACT
======

For toolstacks which manage multiple domains within the same process,
an attacker who is able to repeatedly start a suitable domain (or many
such domains) can cause an out-of-memory condition in the toolstack
process, leading to a denial of service.

Under the same circumstances an attacker can also cause files to
accumulate on the toolstack domain filesystem (usually under /var in
dom0) used to temporarily store the kernel and initial ramdisk,
perhaps leading to a denial of service against arbitrary other
services using that filesystem.

VULNERABLE SYSTEMS
==================

Both ARM and x86 systems using a libxl based toolstack are potentially
vulnerable.

Only libxl-based toolstacks which manage multiple domains in the same
process (such as `libvirt') are vulnerable.

libxl-based toolstacks which manage only a single domain per process
and which exit on failure to create a domain (such as `xl') are not
vulnerable.

Toolstacks not using libxl are not vulnerable to this issue.

Only domains configured to use a PV bootloader in the toolstack domain
(e.g. pygrub) will expose this issue.  Domains configured to use
pvgrub (a totally different program) are not vulnerable.

x86 HVM domains are not vulnerable.

Systems where the kernel and initial ramdisk are provided by the host
administrator from files in domain 0 are not vulnerable.

Xen versions 4.1.x and later are vulnerable.

MITIGATION
==========

Avoiding the use of the PV bootloader mechanisms which run as
processes in the toolstack domain (pygrub), either by providing
kernels directly from the toolstack domain or using a PV bootloader
which runs in guest context (such as pvgrub) will prevent exposure of
this issue.

CREDITS
=======

This issue was discovered by George Dunlap of Citrix.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa160.patch               xen-unstable
xsa160-4.6.patch           Xen 4.5.x, 4.6.x
xsa160-4.4.patch           Xen 4.3.x, 4.4.x

$ sha256sum xsa160*
470811aeead5e942d6fedad5b4e21bee85f2160b022bcab315520014b6aa39a6  xsa160.patch
d0ce9e3c2b951ac3d25da4a0f6f232b13980625a249ed9c4cd6e9484721943a5  xsa160-4.4.patch
40362873b7fa2c1450596ef9ea23c73f80608b77ca50b89e62daf46c131fcee6  xsa160-4.6.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patch described above (or others which are
substantially similar) is permitted during the embargo, even on
public-facing systems with untrusted guest users and administrators.

However deployment of the mitigations described above is not permitted
(except where all the affected systems and VMs are administered and
used only by organisations which are members of the Xen Project
Security Issues Predisclosure List).  Specifically, deployment on
public cloud systems is NOT permitted.

This is because such a change to the bootloader arrangements of a PV
guest would be a user-visible change which could lead to the
rediscovery of the vulnerability.

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

iQEcBAEBAgAGBQJWZr8JAAoJEIP+FMlX6CvZfEYH/Rg7X9HdB+937h81tq30nrkE
/PazyPDB8DprHL0X/IjPEQFvGOazCf45uzSzkrPXaFwu27yhbAxx/m8s94FxUjWb
EiWwYKsb0Gh9OBejRkgiB3VMQmySWqkcjzUR1f2hk4iJ3yX8q2peRECK/Ba9aYPu
lHN9aycnh1ORPmWPUUo8cMFhRVag1P5E77mqrxXo2nfed23xDA5GeZceg8XoT67n
T2m59xAEwrSrHypb/XESuwtEU67CnowRcxlH7Z3EEk+ljvxOBvdovNp0yztOtArK
EnV3UAwM+YMXvoYB4YZUQ/q9tZ1dIgyeTosOSoNHI471lBYL9QTlO22bc4+qKCE=
=IjJr
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa160.patch"
Content-Disposition: attachment; filename="xsa160.patch"
Content-Transfer-Encoding: base64

RnJvbSA0M2ExMGZlY2Q2ZjRhOWQ4YWRmOWY1ZDg1ZTNkNWU3MTg3ZTJkNTRh
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJYW4gSmFja3NvbiA8
aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4KRGF0ZTogV2VkLCAxOCBOb3Yg
MjAxNSAxNTozNDo1NCArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIGxpYnhsOiBG
aXggYm9vdGxvYWRlci1yZWxhdGVkIHZpcnR1YWwgbWVtb3J5IGxlYWsgb24g
cHYKIGJ1aWxkIGZhaWx1cmUKClRoZSBib290bG9hZGVyIG1heSBjYWxsIGxp
YnhsX19maWxlX3JlZmVyZW5jZV9tYXAoKSwgd2hpY2ggbW1hcCdzIHRoZQpw
dl9rZXJuZWwgYW5kIHB2X3JhbWRpc2sgaW50byBwcm9jZXNzIG1lbW9yeS4g
IFRoaXMgd2FzIG9ubHkgdW5tYXBwZWQsCmhvd2V2ZXIsIG9uIHRoZSBzdWNj
ZXNzIHBhdGggb2YgbGlieGxfX2J1aWxkX3B2KCkuICBJZiB0aGVyZSB3ZXJl
IGEKZmFpbHVyZSBhbnl3aGVyZSBiZXR3ZWVuIGxpYnhsX2Jvb3Rsb2FkZXIu
YzpwYXJzZV9ib290bG9hZGVyX3Jlc3VsdCgpCmFuZCB0aGUgZW5kIG9mIGxp
YnhsX19idWlsZF9wdigpLCB0aGUgY2FsbHMgdG8KbGlieGxfX2ZpbGVfcmVm
ZXJlbmNlX3VubWFwKCkgd291bGQgYmUgc2tpcHBlZCwgbGVha2luZyB0aGUg
bWFwcGVkCnZpcnR1YWwgbWVtb3J5LgoKSWRlYWxseSB0aGlzIHdvdWxkIGJl
IGZpeGVkIGJ5IGFkZGluZyB0aGUgdW5tYXAgY2FsbHMgdG8gdGhlCmRlc3Ry
dWN0aW9uIHBhdGggZm9yIGxpYnhsX19kb21haW5fYnVpbGRfc3RhdGUuICBV
bmZvcnR1bmF0ZWx5IHRoZQpsaWZldGltZSBvZiB0aGUgbGlieGxfX2RvbWFp
bl9idWlsZF9zdGF0ZSBpcyBvcGFxdWUsIGFuZCBpdCBkb2Vzbid0CmhhdmUg
YSBwcm9wZXIgZGVzdHJ1Y3Rpb24gcGF0aC4gIEJ1dCwgdGhlIG9ubHkgdGhp
bmcgaW4gaXQgdGhhdCBpc24ndApmcm9tIHRoZSBnYyBhcmUgdGhlc2UgYm9v
dGxvYWRlciByZWZlcmVuY2VzLCBhbmQgdGhleSBhcmUgb25seSBldmVyCnNl
dCBmb3Igb25lIGxpYnhsX19kb21haW5fYnVpbGRfc3RhdGUsIHRoZSBvbmUg
d2hpY2ggaXMKbGlieGxfX2RvbWFpbl9jcmVhdGVfc3RhdGUuYnVpbGRfc3Rh
dGUuCgpTbyB3ZSBjYW4gY2xlYW4gdXAgaW4gdGhlIGV4aXQgcGF0aCBmcm9t
IGxpYnhsX19kb21haW5fY3JlYXRlXyosIHdoaWNoCmFsd2F5cyBjb21lcyB0
aHJvdWdoIGRvbWNyZWF0ZV9jb21wbGV0ZS4KClJlbW92ZSB0aGUgbm93LXJl
ZHVuZGFudCB1bm1hcHMgaW4gbGlieGxfX2J1aWxkX3B2J3Mgc3VjY2VzcyBw
YXRoLgoKVGhpcyBpcyBYU0EtMTYwLgoKU2lnbmVkLW9mZi1ieTogR2Vvcmdl
IER1bmxhcCA8Z2VvcmdlLmR1bmxhcEBjaXRyaXguY29tPgpTaWduZWQtb2Zm
LWJ5OiBJYW4gSmFja3NvbiA8aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4K
VGVzdGVkLWJ5OiBHZW9yZ2UgRHVubGFwIDxnZW9yZ2UuZHVubGFwQGNpdHJp
eC5jb20+CkFja2VkLWJ5OiBJYW4gQ2FtcGJlbGwgPGlhbi5jYW1wYmVsbEBj
aXRyaXguY29tPgotLS0KIHRvb2xzL2xpYnhsL2xpYnhsX2NyZWF0ZS5jIHwg
ICAgMyArKysKIHRvb2xzL2xpYnhsL2xpYnhsX2RvbS5jICAgIHwgICAgMyAt
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYnhsL2xpYnhsX2NyZWF0
ZS5jIGIvdG9vbHMvbGlieGwvbGlieGxfY3JlYXRlLmMKaW5kZXggZjBmZWUw
MC4uY2ViZjkwZSAxMDA2NDQKLS0tIGEvdG9vbHMvbGlieGwvbGlieGxfY3Jl
YXRlLmMKKysrIGIvdG9vbHMvbGlieGwvbGlieGxfY3JlYXRlLmMKQEAgLTE0
ODAsNiArMTQ4MCw5IEBAIHN0YXRpYyB2b2lkIGRvbWNyZWF0ZV9jb21wbGV0
ZShsaWJ4bF9fZWdjICplZ2MsCiAgICAgbGlieGxfZG9tYWluX2NvbmZpZyAq
Y29uc3QgZF9jb25maWcgPSBkY3MtPmd1ZXN0X2NvbmZpZzsKICAgICBsaWJ4
bF9kb21haW5fY29uZmlnICpkX2NvbmZpZ19zYXZlZCA9ICZkY3MtPmd1ZXN0
X2NvbmZpZ19zYXZlZDsKIAorICAgIGxpYnhsX19maWxlX3JlZmVyZW5jZV91
bm1hcCgmZGNzLT5idWlsZF9zdGF0ZS5wdl9rZXJuZWwpOworICAgIGxpYnhs
X19maWxlX3JlZmVyZW5jZV91bm1hcCgmZGNzLT5idWlsZF9zdGF0ZS5wdl9y
YW1kaXNrKTsKKwogICAgIGlmICghcmMgJiYgZF9jb25maWctPmJfaW5mby5l
eGVjX3NzaWRyZWYpCiAgICAgICAgIHJjID0geGNfZmxhc2tfcmVsYWJlbF9k
b21haW4oQ1RYLT54Y2gsIGRjcy0+Z3Vlc3RfZG9taWQsIGRfY29uZmlnLT5i
X2luZm8uZXhlY19zc2lkcmVmKTsKIApkaWZmIC0tZ2l0IGEvdG9vbHMvbGli
eGwvbGlieGxfZG9tLmMgYi90b29scy9saWJ4bC9saWJ4bF9kb20uYwppbmRl
eCA0NGQ0ODFiLi44ODcyMTk3IDEwMDY0NAotLS0gYS90b29scy9saWJ4bC9s
aWJ4bF9kb20uYworKysgYi90b29scy9saWJ4bC9saWJ4bF9kb20uYwpAQCAt
NzY3LDkgKzc2Nyw2IEBAIGludCBsaWJ4bF9fYnVpbGRfcHYobGlieGxfX2dj
ICpnYywgdWludDMyX3QgZG9taWQsCiAgICAgICAgIHN0YXRlLT5zdG9yZV9t
Zm4gPSB4Y19kb21fcDJtKGRvbSwgZG9tLT54ZW5zdG9yZV9wZm4pOwogICAg
IH0KIAotICAgIGxpYnhsX19maWxlX3JlZmVyZW5jZV91bm1hcCgmc3RhdGUt
PnB2X2tlcm5lbCk7Ci0gICAgbGlieGxfX2ZpbGVfcmVmZXJlbmNlX3VubWFw
KCZzdGF0ZS0+cHZfcmFtZGlzayk7Ci0KICAgICByZXQgPSAwOwogb3V0Ogog
ICAgIHhjX2RvbV9yZWxlYXNlKGRvbSk7Ci0tIAoxLjcuMTAuNAoK

--=separator
Content-Type: application/octet-stream; name="xsa160-4.4.patch"
Content-Disposition: attachment; filename="xsa160-4.4.patch"
Content-Transfer-Encoding: base64

RnJvbSA3ZjlmZDE0YzgwYjcxYjRhYmJjYTM2ZjI3NDdkMmU3NWRmZWJjMjg5
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJYW4gSmFja3NvbiA8
aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4KRGF0ZTogV2VkLCAxOCBOb3Yg
MjAxNSAxNTozNDo1NCArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIGxpYnhsOiBG
aXggYm9vdGxvYWRlci1yZWxhdGVkIHZpcnR1YWwgbWVtb3J5IGxlYWsgb24g
cHYKIGJ1aWxkIGZhaWx1cmUKClRoZSBib290bG9hZGVyIG1heSBjYWxsIGxp
YnhsX19maWxlX3JlZmVyZW5jZV9tYXAoKSwgd2hpY2ggbW1hcCdzIHRoZQpw
dl9rZXJuZWwgYW5kIHB2X3JhbWRpc2sgaW50byBwcm9jZXNzIG1lbW9yeS4g
IFRoaXMgd2FzIG9ubHkgdW5tYXBwZWQsCmhvd2V2ZXIsIG9uIHRoZSBzdWNj
ZXNzIHBhdGggb2YgbGlieGxfX2J1aWxkX3B2KCkuICBJZiB0aGVyZSB3ZXJl
IGEKZmFpbHVyZSBhbnl3aGVyZSBiZXR3ZWVuIGxpYnhsX2Jvb3Rsb2FkZXIu
YzpwYXJzZV9ib290bG9hZGVyX3Jlc3VsdCgpCmFuZCB0aGUgZW5kIG9mIGxp
YnhsX19idWlsZF9wdigpLCB0aGUgY2FsbHMgdG8KbGlieGxfX2ZpbGVfcmVm
ZXJlbmNlX3VubWFwKCkgd291bGQgYmUgc2tpcHBlZCwgbGVha2luZyB0aGUg
bWFwcGVkCnZpcnR1YWwgbWVtb3J5LgoKSWRlYWxseSB0aGlzIHdvdWxkIGJl
IGZpeGVkIGJ5IGFkZGluZyB0aGUgdW5tYXAgY2FsbHMgdG8gdGhlCmRlc3Ry
dWN0aW9uIHBhdGggZm9yIGxpYnhsX19kb21haW5fYnVpbGRfc3RhdGUuICBV
bmZvcnR1bmF0ZWx5IHRoZQpsaWZldGltZSBvZiB0aGUgbGlieGxfX2RvbWFp
bl9idWlsZF9zdGF0ZSBpcyBvcGFxdWUsIGFuZCBpdCBkb2Vzbid0CmhhdmUg
YSBwcm9wZXIgZGVzdHJ1Y3Rpb24gcGF0aC4gIEJ1dCwgdGhlIG9ubHkgdGhp
bmcgaW4gaXQgdGhhdCBpc24ndApmcm9tIHRoZSBnYyBhcmUgdGhlc2UgYm9v
dGxvYWRlciByZWZlcmVuY2VzLCBhbmQgdGhleSBhcmUgb25seSBldmVyCnNl
dCBmb3Igb25lIGxpYnhsX19kb21haW5fYnVpbGRfc3RhdGUsIHRoZSBvbmUg
d2hpY2ggaXMKbGlieGxfX2RvbWFpbl9jcmVhdGVfc3RhdGUuYnVpbGRfc3Rh
dGUuCgpTbyB3ZSBjYW4gY2xlYW4gdXAgaW4gdGhlIGV4aXQgcGF0aCBmcm9t
IGxpYnhsX19kb21haW5fY3JlYXRlXyosIHdoaWNoCmFsd2F5cyBjb21lcyB0
aHJvdWdoIGRvbWNyZWF0ZV9jb21wbGV0ZS4KClJlbW92ZSB0aGUgbm93LXJl
ZHVuZGFudCB1bm1hcHMgaW4gbGlieGxfX2J1aWxkX3B2J3Mgc3VjY2VzcyBw
YXRoLgoKVGhpcyBpcyBYU0EtMTYwLgoKU2lnbmVkLW9mZi1ieTogR2Vvcmdl
IER1bmxhcCA8Z2VvcmdlLmR1bmxhcEBjaXRyaXguY29tPgpTaWduZWQtb2Zm
LWJ5OiBJYW4gSmFja3NvbiA8aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4K
VGVzdGVkLWJ5OiBHZW9yZ2UgRHVubGFwIDxnZW9yZ2UuZHVubGFwQGNpdHJp
eC5jb20+CkFja2VkLWJ5OiBJYW4gQ2FtcGJlbGwgPGlhbi5jYW1wYmVsbEBj
aXRyaXguY29tPgotLS0KIHRvb2xzL2xpYnhsL2xpYnhsX2NyZWF0ZS5jIHwg
ICAgMyArKysKIHRvb2xzL2xpYnhsL2xpYnhsX2RvbS5jICAgIHwgICAgMyAt
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYnhsL2xpYnhsX2NyZWF0
ZS5jIGIvdG9vbHMvbGlieGwvbGlieGxfY3JlYXRlLmMKaW5kZXggZTMzNTBk
NS4uNTI5MmMxNSAxMDA2NDQKLS0tIGEvdG9vbHMvbGlieGwvbGlieGxfY3Jl
YXRlLmMKKysrIGIvdG9vbHMvbGlieGwvbGlieGxfY3JlYXRlLmMKQEAgLTEy
OTUsNiArMTI5NSw5IEBAIHN0YXRpYyB2b2lkIGRvbWNyZWF0ZV9jb21wbGV0
ZShsaWJ4bF9fZWdjICplZ2MsCiAgICAgU1RBVEVfQU9fR0MoZGNzLT5hbyk7
CiAgICAgbGlieGxfZG9tYWluX2NvbmZpZyAqY29uc3QgZF9jb25maWcgPSBk
Y3MtPmd1ZXN0X2NvbmZpZzsKIAorICAgIGxpYnhsX19maWxlX3JlZmVyZW5j
ZV91bm1hcCgmZGNzLT5idWlsZF9zdGF0ZS5wdl9rZXJuZWwpOworICAgIGxp
YnhsX19maWxlX3JlZmVyZW5jZV91bm1hcCgmZGNzLT5idWlsZF9zdGF0ZS5w
dl9yYW1kaXNrKTsKKwogICAgIGlmICghcmMgJiYgZF9jb25maWctPmJfaW5m
by5leGVjX3NzaWRyZWYpCiAgICAgICAgIHJjID0geGNfZmxhc2tfcmVsYWJl
bF9kb21haW4oQ1RYLT54Y2gsIGRjcy0+Z3Vlc3RfZG9taWQsIGRfY29uZmln
LT5iX2luZm8uZXhlY19zc2lkcmVmKTsKIApkaWZmIC0tZ2l0IGEvdG9vbHMv
bGlieGwvbGlieGxfZG9tLmMgYi90b29scy9saWJ4bC9saWJ4bF9kb20uYwpp
bmRleCA1MmJjMDFhLi45NzhhMWViIDEwMDY0NAotLS0gYS90b29scy9saWJ4
bC9saWJ4bF9kb20uYworKysgYi90b29scy9saWJ4bC9saWJ4bF9kb20uYwpA
QCAtNDUxLDkgKzQ1MSw2IEBAIGludCBsaWJ4bF9fYnVpbGRfcHYobGlieGxf
X2djICpnYywgdWludDMyX3QgZG9taWQsCiAgICAgICAgIHN0YXRlLT5zdG9y
ZV9tZm4gPSB4Y19kb21fcDJtX2hvc3QoZG9tLCBkb20tPnhlbnN0b3JlX3Bm
bik7CiAgICAgfQogCi0gICAgbGlieGxfX2ZpbGVfcmVmZXJlbmNlX3VubWFw
KCZzdGF0ZS0+cHZfa2VybmVsKTsKLSAgICBsaWJ4bF9fZmlsZV9yZWZlcmVu
Y2VfdW5tYXAoJnN0YXRlLT5wdl9yYW1kaXNrKTsKLQogICAgIHJldCA9IDA7
CiBvdXQ6CiAgICAgeGNfZG9tX3JlbGVhc2UoZG9tKTsKLS0gCjEuNy4xMC40
Cgo=

--=separator
Content-Type: application/octet-stream; name="xsa160-4.6.patch"
Content-Disposition: attachment; filename="xsa160-4.6.patch"
Content-Transfer-Encoding: base64

RnJvbSBhZGNiZDE1YjFhZWM4MzY3Zjc5MDc3NGM5OThkYjE5OWM5YjU3N2Jm
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJYW4gSmFja3NvbiA8
aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4KRGF0ZTogV2VkLCAxOCBOb3Yg
MjAxNSAxNTozNDo1NCArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIGxpYnhsOiBG
aXggYm9vdGxvYWRlci1yZWxhdGVkIHZpcnR1YWwgbWVtb3J5IGxlYWsgb24g
cHYKIGJ1aWxkIGZhaWx1cmUKClRoZSBib290bG9hZGVyIG1heSBjYWxsIGxp
YnhsX19maWxlX3JlZmVyZW5jZV9tYXAoKSwgd2hpY2ggbW1hcCdzIHRoZQpw
dl9rZXJuZWwgYW5kIHB2X3JhbWRpc2sgaW50byBwcm9jZXNzIG1lbW9yeS4g
IFRoaXMgd2FzIG9ubHkgdW5tYXBwZWQsCmhvd2V2ZXIsIG9uIHRoZSBzdWNj
ZXNzIHBhdGggb2YgbGlieGxfX2J1aWxkX3B2KCkuICBJZiB0aGVyZSB3ZXJl
IGEKZmFpbHVyZSBhbnl3aGVyZSBiZXR3ZWVuIGxpYnhsX2Jvb3Rsb2FkZXIu
YzpwYXJzZV9ib290bG9hZGVyX3Jlc3VsdCgpCmFuZCB0aGUgZW5kIG9mIGxp
YnhsX19idWlsZF9wdigpLCB0aGUgY2FsbHMgdG8KbGlieGxfX2ZpbGVfcmVm
ZXJlbmNlX3VubWFwKCkgd291bGQgYmUgc2tpcHBlZCwgbGVha2luZyB0aGUg
bWFwcGVkCnZpcnR1YWwgbWVtb3J5LgoKSWRlYWxseSB0aGlzIHdvdWxkIGJl
IGZpeGVkIGJ5IGFkZGluZyB0aGUgdW5tYXAgY2FsbHMgdG8gdGhlCmRlc3Ry
dWN0aW9uIHBhdGggZm9yIGxpYnhsX19kb21haW5fYnVpbGRfc3RhdGUuICBV
bmZvcnR1bmF0ZWx5IHRoZQpsaWZldGltZSBvZiB0aGUgbGlieGxfX2RvbWFp
bl9idWlsZF9zdGF0ZSBpcyBvcGFxdWUsIGFuZCBpdCBkb2Vzbid0CmhhdmUg
YSBwcm9wZXIgZGVzdHJ1Y3Rpb24gcGF0aC4gIEJ1dCwgdGhlIG9ubHkgdGhp
bmcgaW4gaXQgdGhhdCBpc24ndApmcm9tIHRoZSBnYyBhcmUgdGhlc2UgYm9v
dGxvYWRlciByZWZlcmVuY2VzLCBhbmQgdGhleSBhcmUgb25seSBldmVyCnNl
dCBmb3Igb25lIGxpYnhsX19kb21haW5fYnVpbGRfc3RhdGUsIHRoZSBvbmUg
d2hpY2ggaXMKbGlieGxfX2RvbWFpbl9jcmVhdGVfc3RhdGUuYnVpbGRfc3Rh
dGUuCgpTbyB3ZSBjYW4gY2xlYW4gdXAgaW4gdGhlIGV4aXQgcGF0aCBmcm9t
IGxpYnhsX19kb21haW5fY3JlYXRlXyosIHdoaWNoCmFsd2F5cyBjb21lcyB0
aHJvdWdoIGRvbWNyZWF0ZV9jb21wbGV0ZS4KClJlbW92ZSB0aGUgbm93LXJl
ZHVuZGFudCB1bm1hcHMgaW4gbGlieGxfX2J1aWxkX3B2J3Mgc3VjY2VzcyBw
YXRoLgoKVGhpcyBpcyBYU0EtMTYwLgoKU2lnbmVkLW9mZi1ieTogR2Vvcmdl
IER1bmxhcCA8Z2VvcmdlLmR1bmxhcEBjaXRyaXguY29tPgpTaWduZWQtb2Zm
LWJ5OiBJYW4gSmFja3NvbiA8aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4K
VGVzdGVkLWJ5OiBHZW9yZ2UgRHVubGFwIDxnZW9yZ2UuZHVubGFwQGNpdHJp
eC5jb20+CkFja2VkLWJ5OiBJYW4gQ2FtcGJlbGwgPGlhbi5jYW1wYmVsbEBj
aXRyaXguY29tPgotLS0KIHRvb2xzL2xpYnhsL2xpYnhsX2NyZWF0ZS5jIHwg
ICAgMyArKysKIHRvb2xzL2xpYnhsL2xpYnhsX2RvbS5jICAgIHwgICAgMyAt
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYnhsL2xpYnhsX2NyZWF0
ZS5jIGIvdG9vbHMvbGlieGwvbGlieGxfY3JlYXRlLmMKaW5kZXggZjU3NzFk
YS4uMjc4YjllZCAxMDA2NDQKLS0tIGEvdG9vbHMvbGlieGwvbGlieGxfY3Jl
YXRlLmMKKysrIGIvdG9vbHMvbGlieGwvbGlieGxfY3JlYXRlLmMKQEAgLTE0
ODQsNiArMTQ4NCw5IEBAIHN0YXRpYyB2b2lkIGRvbWNyZWF0ZV9jb21wbGV0
ZShsaWJ4bF9fZWdjICplZ2MsCiAgICAgbGlieGxfZG9tYWluX2NvbmZpZyAq
Y29uc3QgZF9jb25maWcgPSBkY3MtPmd1ZXN0X2NvbmZpZzsKICAgICBsaWJ4
bF9kb21haW5fY29uZmlnICpkX2NvbmZpZ19zYXZlZCA9ICZkY3MtPmd1ZXN0
X2NvbmZpZ19zYXZlZDsKIAorICAgIGxpYnhsX19maWxlX3JlZmVyZW5jZV91
bm1hcCgmZGNzLT5idWlsZF9zdGF0ZS5wdl9rZXJuZWwpOworICAgIGxpYnhs
X19maWxlX3JlZmVyZW5jZV91bm1hcCgmZGNzLT5idWlsZF9zdGF0ZS5wdl9y
YW1kaXNrKTsKKwogICAgIGlmICghcmMgJiYgZF9jb25maWctPmJfaW5mby5l
eGVjX3NzaWRyZWYpCiAgICAgICAgIHJjID0geGNfZmxhc2tfcmVsYWJlbF9k
b21haW4oQ1RYLT54Y2gsIGRjcy0+Z3Vlc3RfZG9taWQsIGRfY29uZmlnLT5i
X2luZm8uZXhlY19zc2lkcmVmKTsKIApkaWZmIC0tZ2l0IGEvdG9vbHMvbGli
eGwvbGlieGxfZG9tLmMgYi90b29scy9saWJ4bC9saWJ4bF9kb20uYwppbmRl
eCA4MDE5ZjRlLi4yZGEzYWM0IDEwMDY0NAotLS0gYS90b29scy9saWJ4bC9s
aWJ4bF9kb20uYworKysgYi90b29scy9saWJ4bC9saWJ4bF9kb20uYwpAQCAt
NzUwLDkgKzc1MCw2IEBAIGludCBsaWJ4bF9fYnVpbGRfcHYobGlieGxfX2dj
ICpnYywgdWludDMyX3QgZG9taWQsCiAgICAgICAgIHN0YXRlLT5zdG9yZV9t
Zm4gPSB4Y19kb21fcDJtX2hvc3QoZG9tLCBkb20tPnhlbnN0b3JlX3Bmbik7
CiAgICAgfQogCi0gICAgbGlieGxfX2ZpbGVfcmVmZXJlbmNlX3VubWFwKCZz
dGF0ZS0+cHZfa2VybmVsKTsKLSAgICBsaWJ4bF9fZmlsZV9yZWZlcmVuY2Vf
dW5tYXAoJnN0YXRlLT5wdl9yYW1kaXNrKTsKLQogICAgIHJldCA9IDA7CiBv
dXQ6CiAgICAgeGNfZG9tX3JlbGVhc2UoZG9tKTsKLS0gCjEuNy4xMC40Cgo=

--=separator--
