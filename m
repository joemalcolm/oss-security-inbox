X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6985" "Monday" "3" "August" "2015" "12:39:38" "+0000" "Xen.org security team" "security@xen.org" "<E1ZMF1m-0004B9-Qj@xenbits.xen.org>" "176" "[oss-security] Xen Security Advisory 139 (CVE-2015-5166) - Use after free in QEMU/Xen block unplug protocol" nil nil nil "8" "2015080312:39:38" "[oss-security] Xen Security Advisory 139 (CVE-2015-5166) - Use after free in QEMU/Xen block unplug protocol" (number mark "        security@xen Aug  3  176/6985  " thread-indent "\"[oss-security] Xen Security Advisory 139 (CVE-2015-5166) - Use after free in QEMU/Xen block unplug protocol\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3887 invoked by uid 550); 3 Aug 2015 12:40:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3743 invoked from network); 3 Aug 2015 12:40:00 -0000
Message-Id: <E1ZMF1m-0004B9-Qj@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Mon, 03 Aug 2015 12:39:38 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 139 (CVE-2015-5166) - Use after free in
 QEMU/Xen block unplug protocol
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-5166 / XSA-139
                              version 2

           Use after free in QEMU/Xen block unplug protocol

UPDATES IN VERSION 2
====================

CVE assigned.

Public release.

Updated status of the patches.

ISSUE DESCRIPTION
=================

When unplugging an emulated block device the device was not fully
unplugged, meaning a second unplug attempt would attempt to unplug the
device a second time using a previously freed pointer.

IMPACT
======

An HVM guest which has access to an emulated IDE disk device may be
able to exploit this vulnerability in order to take over the qemu
process elevating its privilege to that of the qemu process.

VULNERABLE SYSTEMS
==================

All Xen systems running x86 HVM guests using the upstream based
"qemu-xen" are vulnerable.

Systems using the "qemu-xen-traditional" version of the qemu device
model, either in a stubdomain or as a domain 0 process, are not vulnerable.

Systems running only PV guests are NOT vulnerable.

ARM systems are not vulnerable.

MITIGATION
==========

There is no known mitigation for this issue.

CREDITS
=======

This issue was discovered by Donghai Zhu of Alibaba.

RESOLUTION
==========

The attached patches have been proposed as fixes for the issue.
However they have not been finalised by upstream.  A revised advisory
will be issued in the event that the final patches differ from those
included here.

xsa139-qemuu-unstable.patch        qemu-upstream, xen-unstable
xsa139-qemuu-4.5.patch             qemu-upstream, Xen 4.5.x, Xen
                                   4.4.x, Xen 4.3.x, Xen 4.2.x

$ sha256sum xsa139*.patch
dead84667dd4868d0688dc4e62a54a14883e6f0352cf3318b277aa37e27c9261  xsa139-qemuu-unstable.patch
3aa775255053d1d14a3e383998240eb3520aea7de137cdb7624b169db8b06d85  xsa139-qemuu-4.5.patch
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

iQEcBAEBAgAGBQJVv2B2AAoJEIP+FMlX6CvZyOIIAJyuhk8W+BkgL8eejTfV0dlH
38QKpakRSIRXOB3Px3pyyssmk/3Qa/5HiYK3jn4/5JmKnCbXUcevBSnxBPJqbugc
iNhQC7e6um8Ah6V9YkoixdjNrRs7TAyHhR43xK4WBZ89XlbFEI8eGnG8pf/zRLp5
S5eRfqcJRo5T4uZLABN2K2Vko/sLvzeCzikDQoBIgYoIqpyC6X4svzcJre6GsEfp
gZtR+TXvcMXpbndmlEGqhLznlC8iQYA6bpI0PQ22n2ANDzmnzR3u6+nrHCmzCmoY
PNykUGi3+8OIkwoyosoZv6//L9Bx2U2iKFWqhDdqAi6p8krqhVQCxMZ18IbsyVI=
=iCoi
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa139-qemuu-unstable.patch"
Content-Disposition: attachment; filename="xsa139-qemuu-unstable.patch"
Content-Transfer-Encoding: base64

RnJvbTogU3RlZmFubyBTdGFiZWxsaW5pIDxzdGVmYW5vLnN0YWJlbGxpbmlA
ZXUuY2l0cml4LmNvbT4KCkZpeCByZWxlYXNlX2RyaXZlIG9uIHVucGx1Z2dl
ZCBkZXZpY2VzIChwY2lfcGlpeDNfeGVuX2lkZV91bnBsdWcpCgpwY2lfcGlp
eDNfeGVuX2lkZV91bnBsdWcgc2hvdWxkIGNvbXBsZXRlbHkgdW5ob29rIHRo
ZSB1bnBsdWdnZWQKSURFRGV2aWNlIGZyb20gdGhlIGNvcnJlc3BvbmRpbmcg
QmxvY2tCYWNrZW5kLCBvdGhlcndpc2UgdGhlIG5leHQgY2FsbAp0byByZWxl
YXNlX2RyaXZlIHdpbGwgdHJ5IHRvIGRldGFjaCB0aGUgZHJpdmUgYWdhaW4u
CgpTdWdnZXN0ZWQtYnk6IEtldmluIFdvbGYgPGt3b2xmQHJlZGhhdC5jb20+
IApTaWduZWQtb2ZmLWJ5OiBTdGVmYW5vIFN0YWJlbGxpbmkgPHN0ZWZhbm8u
c3RhYmVsbGluaUBldS5jaXRyaXguY29tPgoKZGlmZiAtLWdpdCBhL2h3L2lk
ZS9waWl4LmMgYi9ody9pZGUvcGlpeC5jCmluZGV4IGFkYjY2NDkuLjVhMjZj
ODYgMTAwNjQ0Ci0tLSBhL2h3L2lkZS9waWl4LmMKKysrIGIvaHcvaWRlL3Bp
aXguYwpAQCAtMTY5LDYgKzE2OSw3IEBAIGludCBwY2lfcGlpeDNfeGVuX2lk
ZV91bnBsdWcoRGV2aWNlU3RhdGUgKmRldikKICAgICBQQ0lJREVTdGF0ZSAq
cGNpX2lkZTsKICAgICBEcml2ZUluZm8gKmRpOwogICAgIGludCBpOworICAg
IElERURldmljZSAqaWRlZGV2OwogCiAgICAgcGNpX2lkZSA9IFBDSV9JREUo
ZGV2KTsKIApAQCAtMTgxLDYgKzE4MiwxMiBAQCBpbnQgcGNpX3BpaXgzX3hl
bl9pZGVfdW5wbHVnKERldmljZVN0YXRlICpkZXYpCiAgICAgICAgICAgICAg
ICAgYmxrX2RldGFjaF9kZXYoYmxrLCBkcyk7CiAgICAgICAgICAgICB9CiAg
ICAgICAgICAgICBwY2lfaWRlLT5idXNbZGktPmJ1c10uaWZzW2RpLT51bml0
XS5ibGsgPSBOVUxMOworICAgICAgICAgICAgaWYgKCEoaSAlIDIpKSB7Cisg
ICAgICAgICAgICAgICAgaWRlZGV2ID0gcGNpX2lkZS0+YnVzW2RpLT5idXNd
Lm1hc3RlcjsKKyAgICAgICAgICAgIH0gZWxzZSB7CisgICAgICAgICAgICAg
ICAgaWRlZGV2ID0gcGNpX2lkZS0+YnVzW2RpLT5idXNdLnNsYXZlOworICAg
ICAgICAgICAgfQorICAgICAgICAgICAgaWRlZGV2LT5jb25mLmJsayA9IE5V
TEw7CiAgICAgICAgICAgICBibGtfdW5yZWYoYmxrKTsKICAgICAgICAgfQog
ICAgIH0K

--=separator
Content-Type: application/octet-stream; name="xsa139-qemuu-4.5.patch"
Content-Disposition: attachment; filename="xsa139-qemuu-4.5.patch"
Content-Transfer-Encoding: base64

cGNpX3BpaXgzX3hlbl9pZGVfdW5wbHVnIHNob3VsZCBjb21wbGV0ZWx5IHVu
aG9vayB0aGUgdW5wbHVnZ2VkCklERURldmljZSBmcm9tIHRoZSBjb3JyZXNw
b25kaW5nIEJsb2NrQmFja2VuZCwgb3RoZXJ3aXNlIHRoZSBuZXh0IGNhbGwK
dG8gcmVsZWFzZV9kcml2ZSB3aWxsIHRyeSB0byBkZXRhY2ggdGhlIGRyaXZl
IGFnYWluLgoKU3VnZ2VzdGVkLWJ5OiBLZXZpbiBXb2xmIDxrd29sZkByZWRo
YXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBTdGVmYW5vIFN0YWJlbGxpbmkgPHN0
ZWZhbm8uc3RhYmVsbGluaUBldS5jaXRyaXguY29tPgotLS0KIGh3L2lkZS9w
aWl4LmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9ody9pZGUvcGlpeC5jIGIvaHcvaWRlL3Bp
aXguYwppbmRleCA0MDc1N2ViLi4wNTI0ZGNlIDEwMDY0NAotLS0gYS9ody9p
ZGUvcGlpeC5jCisrKyBiL2h3L2lkZS9waWl4LmMKQEAgLTE3Miw2ICsxNzIs
NyBAQCBpbnQgcGNpX3BpaXgzX3hlbl9pZGVfdW5wbHVnKERldmljZVN0YXRl
ICpkZXYpCiAgICAgUENJSURFU3RhdGUgKnBjaV9pZGU7CiAgICAgRHJpdmVJ
bmZvICpkaTsKICAgICBpbnQgaSA9IDA7CisgICAgSURFRGV2aWNlICppZGVk
ZXY7CiAKICAgICBwY2lfaWRlID0gUENJX0lERShkZXYpOwogCkBAIC0xODQs
NiArMTg1LDEyIEBAIGludCBwY2lfcGlpeDNfeGVuX2lkZV91bnBsdWcoRGV2
aWNlU3RhdGUgKmRldikKICAgICAgICAgICAgIH0KICAgICAgICAgICAgIGJk
cnZfY2xvc2UoZGktPmJkcnYpOwogICAgICAgICAgICAgcGNpX2lkZS0+YnVz
W2RpLT5idXNdLmlmc1tkaS0+dW5pdF0uYnMgPSBOVUxMOworICAgICAgICAg
ICAgaWYgKCEoaSAlIDIpKSB7CisgICAgICAgICAgICAgICAgaWRlZGV2ID0g
cGNpX2lkZS0+YnVzW2RpLT5idXNdLm1hc3RlcjsKKyAgICAgICAgICAgIH0g
ZWxzZSB7CisgICAgICAgICAgICAgICAgaWRlZGV2ID0gcGNpX2lkZS0+YnVz
W2RpLT5idXNdLnNsYXZlOworICAgICAgICAgICAgfQorICAgICAgICAgICAg
aWRlZGV2LT5jb25mLmJzID0gTlVMTDsKICAgICAgICAgICAgIGRyaXZlX3B1
dF9yZWYoZGkpOwogICAgICAgICB9CiAgICAgfQotLSAKMi4xLjQKCg==

--=separator--
