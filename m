Received: (qmail 20045 invoked by uid 550); 21 Oct 2025 12:00:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20024 invoked from network); 21 Oct 2025 12:00:27 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1vBB2B-005gLp-1f@xenbits.xenproject.org>
Date: Tue, 21 Oct 2025 12:00:11 +0000
Subject: [oss-security] Xen Security Advisory 475 v2 (CVE-2025-58147,CVE-2025-58148) -
 x86: Incorrect input sanitisation in Viridian hypercalls

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

     Xen Security Advisory CVE-2025-58147,CVE-2025-58148 / XSA-475
                               version 2

       x86: Incorrect input sanitisation in Viridian hypercalls

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Some Viridian hypercalls can specify a mask of vCPU IDs as an input, in
one of three formats.  Xen has boundary checking bugs with all three
formats, which can cause out-of-bounds reads and writes while processing
the inputs.

 * CVE-2025-58147.  Hypercalls using the HV_VP_SET Sparse format can
   cause vpmask_set() to write out of bounds when converting the bitmap
   to Xen's format.

 * CVE-2025-58148.  Hypercalls using any input format can cause
   send_ipi() to read d->vcpu[] out-of-bounds, and operate on a wild
   vCPU pointer.

IMPACT
======

A buggy or malicious guest can cause Denial of Service (DoS) affecting
the entire host, information leaks, or elevation of privilege.

VULNERABLE SYSTEMS
==================

Xen versions 4.15 and newer are vulnerable.  Versions 4.14 and older are
not vulnerable.

Only x86 HVM guests which have Viridian enabled can leverage the
vulnerability.

With the `xl` toolstack, this means any `viridian=` setting in the VM's
configuration file.

Note - despite:

  `viridian=["!hcall_remote_tlb_flush", "!hcall_ipi", "!ex_processor_masks"]`

being documented to turns off the relevant functionality, this
configuration does not block the relevant hypercalls.

MITIGATION
==========

Not enabling Viridian will avoid the issuse.

CREDITS
=======

This issue was discovered by Teddy Astie of Vates

RESOLUTION
==========

Applying the appropriate set of attached patches resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa475-?.patch           xen-unstable - Xen 4.20.x
xsa475-4.19-?.patch      Xen 4.19.x - Xen 4.17.x

$ sha256sum xsa475*
25ba4933e4cf94e81d192f3ba522ec7b258c6e69015a43d169b0325e61957f42  xsa475-1.patch
d012541f99c69279b30554e8ea7a7da2790aaa6ff81b0d597f305e4498391369  xsa475-2.patch
6b820b116418e6fd376b6d23ede589e4f86fea4ea775e9afb5c631ceba44d05f  xsa475-4.19-1.patch
f94b48392179bc08f412ead900a91299ef3a27a6dd4f5fdcf7a152fd65d3a02b  xsa475-4.19-2.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches (but not mitigations) described above (or others
which are substantially similar) is permitted during the embargo, even on
public-facing systems with untrusted guest users and administrators.

This is because the mitigations are guest visible changes, and hence could
give hints to users about the upcoming vulnerabilities.

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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmj3daEMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZnvgIAJzU/Bczr7/Gj3pIqop+rgDsoLw/PU2tGkwhumJQ
0lICxaHWlqrk8cL0y+Ll0nQV4DTwoZbhSm9Bz3S9ZKo6/Qby9YZzo0Tyt9U2OxNU
YTpiYGSwrSlCs8cpfj4gwKGzEZ0nNTBTVbAa9UfqIYcvNF4j/L0Tnl6cJOZ/xNhh
8BoH02j+vCF8B8ZInutJjHhKPtrmDta0/md9R4Ydrx4OrLlAoYA4hKnkOuBWfhHg
amL1aJ3vk9kNNkP6sO19Vnp5KTawnLGZwN95+FDlDGuh8n8ixKfURvZ9eK8Ycfir
naItP4wBkFC9ukzlvGtkwoHPDspxKjtFTYfNvVNvoV6JOWc=
=oSQZ
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa475-1.patch"
Content-Disposition: attachment; filename="xsa475-1.patch"
Content-Transfer-Encoding: base64

RnJvbTogVGVkZHkgQXN0aWUgPHRlZGR5LmFzdGllQHZhdGVzLnRlY2g+ClN1YmplY3Q6IHg4Ni92
aXJpZGlhbjogRW5mb3JjZSBib3VuZHMgY2hlY2sgaW4gdnBtYXNrX3NldCgpCgpDYWxsZXJzIGNh
biBwYXNzIHZwL21hc2sgdmFsdWVzIHdoaWNoIGV4Y2VlZCB0aGUgc2l6ZSBvZiB2cG1hc2stPm1h
c2suICBFbnN1cmUKd2Ugb25seSBzZXQgYml0cyB3aGljaCBhcmUgd2l0aGluIGJvdW5kcy4KClRo
aXMgaXMgWFNBLTQ3NSAvIENWRS0yMDI1LTU4MTQ3LgoKRml4ZXM6IGI0MTI0NjgyZGI2ZSAoInZp
cmlkaWFuOiBhZGQgRXhQcm9jZXNzb3JNYXNrcyB2YXJpYW50cyBvZiB0aGUgZmx1c2ggaHlwZXJj
YWxscyIpClNpZ25lZC1vZmYtYnk6IFRlZGR5IEFzdGllIDx0ZWRkeS5hc3RpZUB2YXRlcy50ZWNo
PgpSZXZpZXdlZC1ieTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4K
CmRpZmYgLS1naXQgYS94ZW4vYXJjaC94ODYvaHZtL3ZpcmlkaWFuL3ZpcmlkaWFuLmMgYi94ZW4v
YXJjaC94ODYvaHZtL3ZpcmlkaWFuL3ZpcmlkaWFuLmMKaW5kZXggYzBiZTI0YmQyMjEwLi43MDNm
OWFjOGJjYzEgMTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL3g4Ni9odm0vdmlyaWRpYW4vdmlyaWRpYW4u
YworKysgYi94ZW4vYXJjaC94ODYvaHZtL3ZpcmlkaWFuL3ZpcmlkaWFuLmMKQEAgLTU2Miw3ICs1
NjIsOCBAQCBzdGF0aWMgdm9pZCB2cG1hc2tfc2V0KHN0cnVjdCBoeXBlcmNhbGxfdnBtYXNrICp2
cG1hc2ssIHVuc2lnbmVkIGludCB2cCwKIAogICAgICAgICBpZiAoIG1hc2sgJiAxICkKICAgICAg
ICAgewotICAgICAgICAgICAgQVNTRVJUKHZwIDwgSFZNX01BWF9WQ1BVUyk7CisgICAgICAgICAg
ICBpZiAoIHZwID49IEhWTV9NQVhfVkNQVVMgKQorICAgICAgICAgICAgICAgIGJyZWFrOwogICAg
ICAgICAgICAgX19zZXRfYml0KHZwLCB2cG1hc2stPm1hc2spOwogICAgICAgICB9CiAK

--=separator
Content-Type: application/octet-stream; name="xsa475-2.patch"
Content-Disposition: attachment; filename="xsa475-2.patch"
Content-Transfer-Encoding: base64

RnJvbTogVGVkZHkgQXN0aWUgPHRlZGR5LmFzdGllQHZhdGVzLnRlY2g+ClN1YmplY3Q6IHg4Ni92
aXJpZGlhbjogRW5mb3JjZSBib3VuZHMgY2hlY2sgaW4gc2VuZF9pcGkoKQoKQ2FsbGVycyBjYW4g
cGFzcyBpbiBhIHZwbWFzayB3aGljaCBleGNlZWRzIGQtPm1heF92Y3B1cy4gIFByZXZlbnQgb3V0
LW9mLWJvdW5kCnJlYWRzIG9mIGQtPnZjcHVbXS4KClRoaXMgaXMgWFNBLTQ3NSAvIENWRS0yMDI1
LTU4MTQ4LgoKRml4ZXM6IDcyOGFjYmExYmE0YSAoInZpcmlkaWFuOiB1c2UgaHlwZXJjYWxsX3Zw
bWFzayBpbiBodmNhbGxfaXBpKCkiKQpTaWduZWQtb2ZmLWJ5OiBUZWRkeSBBc3RpZSA8dGVkZHku
YXN0aWVAdmF0ZXMudGVjaD4KUmV2aWV3ZWQtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29w
ZXIzQGNpdHJpeC5jb20+CgpkaWZmIC0tZ2l0IGEveGVuL2FyY2gveDg2L2h2bS92aXJpZGlhbi92
aXJpZGlhbi5jIGIveGVuL2FyY2gveDg2L2h2bS92aXJpZGlhbi92aXJpZGlhbi5jCmluZGV4IDcw
M2Y5YWM4YmNjMS4uZjc5Y2ZmY2IzNzY3IDEwMDY0NAotLS0gYS94ZW4vYXJjaC94ODYvaHZtL3Zp
cmlkaWFuL3ZpcmlkaWFuLmMKKysrIGIveGVuL2FyY2gveDg2L2h2bS92aXJpZGlhbi92aXJpZGlh
bi5jCkBAIC01NzcsMjYgKzU3Nyw2IEBAIHN0YXRpYyB2b2lkIHZwbWFza19maWxsKHN0cnVjdCBo
eXBlcmNhbGxfdnBtYXNrICp2cG1hc2spCiAgICAgYml0bWFwX2ZpbGwodnBtYXNrLT5tYXNrLCBI
Vk1fTUFYX1ZDUFVTKTsKIH0KIAotc3RhdGljIHVuc2lnbmVkIGludCB2cG1hc2tfZmlyc3QoY29u
c3Qgc3RydWN0IGh5cGVyY2FsbF92cG1hc2sgKnZwbWFzaykKLXsKLSAgICByZXR1cm4gZmluZF9m
aXJzdF9iaXQodnBtYXNrLT5tYXNrLCBIVk1fTUFYX1ZDUFVTKTsKLX0KLQotc3RhdGljIHVuc2ln
bmVkIGludCB2cG1hc2tfbmV4dChjb25zdCBzdHJ1Y3QgaHlwZXJjYWxsX3ZwbWFzayAqdnBtYXNr
LAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgdnApCi17Ci0g
ICAgLyoKLSAgICAgKiBJZiB2cCArIDEgPiBIVk1fTUFYX1ZDUFVTIHRoZW4gZmluZF9uZXh0X2Jp
dCgpIHdpbGwgcmV0dXJuCi0gICAgICogSFZNX01BWF9WQ1BVUywgZW5zdXJpbmcgdGhlIGZvcl9l
YWNoX3ZwICggLi4uICkgbG9vcCB0ZXJtaW5hdGVzLgotICAgICAqLwotICAgIHJldHVybiBmaW5k
X25leHRfYml0KHZwbWFzay0+bWFzaywgSFZNX01BWF9WQ1BVUywgdnAgKyAxKTsKLX0KLQotI2Rl
ZmluZSBmb3JfZWFjaF92cCh2cG1hc2ssIHZwKSBcCi0JZm9yICggKHZwKSA9IHZwbWFza19maXJz
dCh2cG1hc2spOyBcCi0JICAgICAgKHZwKSA8IEhWTV9NQVhfVkNQVVM7IFwKLQkgICAgICAodnAp
ID0gdnBtYXNrX25leHQodnBtYXNrLCB2cCkgKQotCiBzdGF0aWMgdW5zaWduZWQgaW50IHZwbWFz
a19ucihjb25zdCBzdHJ1Y3QgaHlwZXJjYWxsX3ZwbWFzayAqdnBtYXNrKQogewogICAgIHJldHVy
biBiaXRtYXBfd2VpZ2h0KHZwbWFzay0+bWFzaywgSFZNX01BWF9WQ1BVUyk7CkBAIC04MTMsNyAr
NzkzLDcgQEAgc3RhdGljIHZvaWQgc2VuZF9pcGkoc3RydWN0IGh5cGVyY2FsbF92cG1hc2sgKnZw
bWFzaywgdWludDhfdCB2ZWN0b3IpCiAgICAgaWYgKCBuciA+IDEgKQogICAgICAgICBjcHVfcmFp
c2Vfc29mdGlycV9iYXRjaF9iZWdpbigpOwogCi0gICAgZm9yX2VhY2hfdnAgKCB2cG1hc2ssIHZw
ICkKKyAgICBiaXRtYXBfZm9yX2VhY2ggKCB2cCwgdnBtYXNrLT5tYXNrLCBjdXJyZC0+bWF4X3Zj
cHVzICkKICAgICB7CiAgICAgICAgIHN0cnVjdCB2bGFwaWMgKnZsYXBpYyA9IHZjcHVfdmxhcGlj
KGN1cnJkLT52Y3B1W3ZwXSk7CiAK

--=separator
Content-Type: application/octet-stream; name="xsa475-4.19-1.patch"
Content-Disposition: attachment; filename="xsa475-4.19-1.patch"
Content-Transfer-Encoding: base64

RnJvbTogVGVkZHkgQXN0aWUgPHRlZGR5LmFzdGllQHZhdGVzLnRlY2g+ClN1YmplY3Q6IHg4Ni92
aXJpZGlhbjogRW5mb3JjZSBib3VuZHMgY2hlY2sgaW4gdnBtYXNrX3NldCgpCgpDYWxsZXJzIGNh
biBwYXNzIHZwL21hc2sgdmFsdWVzIHdoaWNoIGV4Y2VlZCB0aGUgc2l6ZSBvZiB2cG1hc2stPm1h
c2suICBFbnN1cmUKd2Ugb25seSBzZXQgYml0cyB3aGljaCBhcmUgd2l0aGluIGJvdW5kcy4KClRo
aXMgaXMgWFNBLTQ3NSAvIENWRS0yMDI1LTU4MTQ3LgoKRml4ZXM6IGI0MTI0NjgyZGI2ZSAoInZp
cmlkaWFuOiBhZGQgRXhQcm9jZXNzb3JNYXNrcyB2YXJpYW50cyBvZiB0aGUgZmx1c2ggaHlwZXJj
YWxscyIpClNpZ25lZC1vZmYtYnk6IFRlZGR5IEFzdGllIDx0ZWRkeS5hc3RpZUB2YXRlcy50ZWNo
PgpSZXZpZXdlZC1ieTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4K
CmRpZmYgLS1naXQgYS94ZW4vYXJjaC94ODYvaHZtL3ZpcmlkaWFuL3ZpcmlkaWFuLmMgYi94ZW4v
YXJjaC94ODYvaHZtL3ZpcmlkaWFuL3ZpcmlkaWFuLmMKaW5kZXggYTQxYTcwZTM3YTI5Li40MWU5
M2VmMjBmYjIgMTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL3g4Ni9odm0vdmlyaWRpYW4vdmlyaWRpYW4u
YworKysgYi94ZW4vYXJjaC94ODYvaHZtL3ZpcmlkaWFuL3ZpcmlkaWFuLmMKQEAgLTU2Miw3ICs1
NjIsOCBAQCBzdGF0aWMgdm9pZCB2cG1hc2tfc2V0KHN0cnVjdCBoeXBlcmNhbGxfdnBtYXNrICp2
cG1hc2ssIHVuc2lnbmVkIGludCB2cCwKIAogICAgICAgICBpZiAoIG1hc2sgJiAxICkKICAgICAg
ICAgewotICAgICAgICAgICAgQVNTRVJUKHZwIDwgSFZNX01BWF9WQ1BVUyk7CisgICAgICAgICAg
ICBpZiAoIHZwID49IEhWTV9NQVhfVkNQVVMgKQorICAgICAgICAgICAgICAgIGJyZWFrOwogICAg
ICAgICAgICAgX19zZXRfYml0KHZwLCB2cG1hc2stPm1hc2spOwogICAgICAgICB9CiAK

--=separator
Content-Type: application/octet-stream; name="xsa475-4.19-2.patch"
Content-Disposition: attachment; filename="xsa475-4.19-2.patch"
Content-Transfer-Encoding: base64

RnJvbTogVGVkZHkgQXN0aWUgPHRlZGR5LmFzdGllQHZhdGVzLnRlY2g+ClN1YmplY3Q6IHg4Ni92
aXJpZGlhbjogRW5mb3JjZSBib3VuZHMgY2hlY2sgaW4gc2VuZF9pcGkoKQoKQ2FsbGVycyBjYW4g
cGFzcyBpbiBhIHZwbWFzayB3aGljaCBleGNlZWRzIGQtPm1heF92Y3B1cy4gIFByZXZlbnQgb3V0
LW9mLWJvdW5kCnJlYWRzIG9mIGQtPnZjcHVbXS4KClRoaXMgaXMgWFNBLTQ3NSAvIENWRS0yMDI1
LTU4MTQ4LgoKRml4ZXM6IDcyOGFjYmExYmE0YSAoInZpcmlkaWFuOiB1c2UgaHlwZXJjYWxsX3Zw
bWFzayBpbiBodmNhbGxfaXBpKCkiKQpTaWduZWQtb2ZmLWJ5OiBUZWRkeSBBc3RpZSA8dGVkZHku
YXN0aWVAdmF0ZXMudGVjaD4KUmV2aWV3ZWQtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29w
ZXIzQGNpdHJpeC5jb20+CgpkaWZmIC0tZ2l0IGEveGVuL2FyY2gveDg2L2h2bS92aXJpZGlhbi92
aXJpZGlhbi5jIGIveGVuL2FyY2gveDg2L2h2bS92aXJpZGlhbi92aXJpZGlhbi5jCmluZGV4IDQx
ZTkzZWYyMGZiMi4uZDQ1NzUxMzY1ZmRlIDEwMDY0NAotLS0gYS94ZW4vYXJjaC94ODYvaHZtL3Zp
cmlkaWFuL3ZpcmlkaWFuLmMKKysrIGIveGVuL2FyY2gveDg2L2h2bS92aXJpZGlhbi92aXJpZGlh
bi5jCkBAIC01NzcsMjYgKzU3Nyw2IEBAIHN0YXRpYyB2b2lkIHZwbWFza19maWxsKHN0cnVjdCBo
eXBlcmNhbGxfdnBtYXNrICp2cG1hc2spCiAgICAgYml0bWFwX2ZpbGwodnBtYXNrLT5tYXNrLCBI
Vk1fTUFYX1ZDUFVTKTsKIH0KIAotc3RhdGljIHVuc2lnbmVkIGludCB2cG1hc2tfZmlyc3QoY29u
c3Qgc3RydWN0IGh5cGVyY2FsbF92cG1hc2sgKnZwbWFzaykKLXsKLSAgICByZXR1cm4gZmluZF9m
aXJzdF9iaXQodnBtYXNrLT5tYXNrLCBIVk1fTUFYX1ZDUFVTKTsKLX0KLQotc3RhdGljIHVuc2ln
bmVkIGludCB2cG1hc2tfbmV4dChjb25zdCBzdHJ1Y3QgaHlwZXJjYWxsX3ZwbWFzayAqdnBtYXNr
LAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgdnApCi17Ci0g
ICAgLyoKLSAgICAgKiBJZiB2cCArIDEgPiBIVk1fTUFYX1ZDUFVTIHRoZW4gZmluZF9uZXh0X2Jp
dCgpIHdpbGwgcmV0dXJuCi0gICAgICogSFZNX01BWF9WQ1BVUywgZW5zdXJpbmcgdGhlIGZvcl9l
YWNoX3ZwICggLi4uICkgbG9vcCB0ZXJtaW5hdGVzLgotICAgICAqLwotICAgIHJldHVybiBmaW5k
X25leHRfYml0KHZwbWFzay0+bWFzaywgSFZNX01BWF9WQ1BVUywgdnAgKyAxKTsKLX0KLQotI2Rl
ZmluZSBmb3JfZWFjaF92cCh2cG1hc2ssIHZwKSBcCi0JZm9yICggKHZwKSA9IHZwbWFza19maXJz
dCh2cG1hc2spOyBcCi0JICAgICAgKHZwKSA8IEhWTV9NQVhfVkNQVVM7IFwKLQkgICAgICAodnAp
ID0gdnBtYXNrX25leHQodnBtYXNrLCB2cCkgKQotCiBzdGF0aWMgdW5zaWduZWQgaW50IHZwbWFz
a19ucihjb25zdCBzdHJ1Y3QgaHlwZXJjYWxsX3ZwbWFzayAqdnBtYXNrKQogewogICAgIHJldHVy
biBiaXRtYXBfd2VpZ2h0KHZwbWFzay0+bWFzaywgSFZNX01BWF9WQ1BVUyk7CkBAIC04MTMsNyAr
NzkzLDcgQEAgc3RhdGljIHZvaWQgc2VuZF9pcGkoc3RydWN0IGh5cGVyY2FsbF92cG1hc2sgKnZw
bWFzaywgdWludDhfdCB2ZWN0b3IpCiAgICAgaWYgKCBuciA+IDEgKQogICAgICAgICBjcHVfcmFp
c2Vfc29mdGlycV9iYXRjaF9iZWdpbigpOwogCi0gICAgZm9yX2VhY2hfdnAgKCB2cG1hc2ssIHZw
ICkKKyAgICBmb3JfZWFjaF9zZXRfYml0ICggdnAsIHZwbWFzay0+bWFzaywgY3VycmQtPm1heF92
Y3B1cyApCiAgICAgewogICAgICAgICBzdHJ1Y3QgdmxhcGljICp2bGFwaWMgPSB2Y3B1X3ZsYXBp
YyhjdXJyZC0+dmNwdVt2cF0pOwogCg==

--=separator--
