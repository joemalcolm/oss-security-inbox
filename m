Received: (qmail 9260 invoked by uid 550); 27 Feb 2025 12:53:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9236 invoked from network); 27 Feb 2025 12:53:46 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1tndOO-00CM3B-2R@xenbits.xenproject.org>
Date: Thu, 27 Feb 2025 12:53:32 +0000
Subject: [oss-security] Xen Security Advisory 467 v1 (CVE-2025-1713) - deadlock potential
 with VT-d and legacy PCI device pass-through

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2025-1713 / XSA-467

    deadlock potential with VT-d and legacy PCI device pass-through

ISSUE DESCRIPTION
=================

When setting up interrupt remapping for legacy PCI(-X) devices,
including PCI(-X) bridges, a lookup of the upstream bridge is required.
This lookup, itself involving acquiring of a lock, is done in a context
where acquiring that lock is unsafe.  This can lead to a deadlock.

IMPACT
======

The passing through of certain kinds of devices to an unprivileged guest
can result in a Denial of Service (DoS) affecting the entire host.

Note: Normal usage of such devices by a privileged domain can also
      trigger the issue.  In such a scenario, the deadlock is not
      considered a security issue, but just a plain bug.

VULNERABLE SYSTEMS
==================

Xen versions 4.0 and later are affected.  Xen versions 3.4 and earlier
are not directly affected, but had other issues.

Systems with Intel IOMMU hardware (VT-d) are affected.  Systems using
AMD or non-x86 hardware are not affected.

Only systems where certain kinds of devices are passed through to an
unprivileged guest are vulnerable.

MITIGATION
==========

Avoiding the passing through of the affected device types will avoid
the vulnerability.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa467.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa467*
2fffaa8892b3daecd698b4af95701045874a76edc2e18c8d2abbec85a39aa05c  xsa467.patch
$

NOTE REGARDING LACK OF EMBARGO
==============================

The issue was reported initially on a public bug tracker and discussed in
public before it was realized that there was a security aspect.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmfAX/kMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ++UH/0n3V1omvWiPXQCSOl+HawK77MezS2MkjRx6HQ/N
0SeaaWodvhBMeGd/FAECc7CY3G+sdLkOmwpVFtKvxBOjMRyEc6IsqdAa1CxkUZ0p
S+K7/MNmBB8qzB73sSpFpssR7NYGQXTQNxbQOuYURSyyZK5yejavgQ0oTc8jhhsH
NQOaTJPU/p6HBjDRlPcWB9EraJlPsr2iqv4FrbzDK+dS+I8BpfmElpnJkQOiOECg
McfLgod2jwV8y9l9Zvzx8IXJMkWxIHTdXkgmZq2sDr6foiFEbFUHV1ZG0rr8l+Sl
ckqx01g9UEDVmvjasWVjxeZUiaMLtppAp3SrewGjGwlx6oA=
=3+H1
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa467.patch"
Content-Disposition: attachment; filename="xsa467.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0OiBJT01NVS94ODY6
IHRoZSBidXMtdG8tYnJpZGdlIGxvY2sgbmVlZHMgdG8gYmUgYWNxdWlyZWQgSVJRLXNhZmUKClRo
ZSBmdW5jdGlvbidzIHVzZSBmcm9tIHNldF9tc2lfc291cmNlX2lkKCkgaXMgZ3VhcmFudGVlZCB0
byBiZSBpbiBhbgpJUlFzLW9mZiByZWdpb24uIFdoaWxlIHRoZSBpbnZvY2F0aW9uIG9mIHRoYXQg
ZnVuY3Rpb24gY291bGQgYmUgbW92ZWQKYWhlYWQgaW4gbXNpX21zZ190b19yZW1hcF9lbnRyeSgp
IChkb2Vzbid0IG5lZWQgdG8gYmUgaW4gdGhlIElPTU1VLQppbnRyZW1hcC1sb2NrZWQgcmVnaW9u
KSwgdGhlIGNhbGwgdHJlZSBmcm9tIG1hcF9kb21haW5fcGlycSgpIGhvbGRzIGFuCklSUSBkZXNj
cmlwdG9yIGxvY2suIEhlbmNlIGFsbCB1c2Ugc2l0ZXMgb2YgdGhlIGxvY2sgbmVlZCBiZWNvbWUg
SVJRLQpzYWZlIG9uZXMuCgpJbiBmaW5kX3Vwc3RyZWFtX2JyaWRnZSgpIGRvIGEgdGlueSBiaXQg
b2YgdGlkeWluZyBpbiBhZGphY2VudCBjb2RlOgpDaGFuZ2UgYSB2YXJpYWJsZSdzIHR5cGUgdG8g
dW5zaWduZWQgYW5kIG1lcmdlIGEgcmVkdW5kYW50IGFzc2lnbm1lbnQKaW50byBhbm90aGVyIHZh
cmlhYmxlJ3MgaW5pdGlhbGl6ZXIuCgpUaGlzIGlzIFhTQS00NjcgLyBDVkUtMjAyNS0xNzEzLgoK
Rml4ZXM6IDQ3NmJiY2NjODExYyAoIlZULWQ6IGZpeCBNU0kgc291cmNlLWlkIG9mIGludGVycnVw
dCByZW1hcHBpbmciKQpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5j
b20+ClJldmlld2VkLWJ5OiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+ClJldmlld2Vk
LWJ5OiBSb2dlciBQYXUgTW9ubsOpIDxyb2dlci5wYXVAY2l0cml4LmNvbT4KCi0tLSBhL3hlbi9k
cml2ZXJzL3Bhc3N0aHJvdWdoL3BjaS5jCisrKyBiL3hlbi9kcml2ZXJzL3Bhc3N0aHJvdWdoL3Bj
aS5jCkBAIC0zNTQsMjAgKzM1NCwyMSBAQCBzdGF0aWMgc3RydWN0IHBjaV9kZXYgKmFsbG9jX3Bk
ZXYoc3RydWN0CiAgICAgc3dpdGNoICggcGRldi0+dHlwZSA9IHBkZXZfdHlwZShwc2VnLT5uciwg
YnVzLCBkZXZmbikgKQogICAgIHsKICAgICAgICAgdW5zaWduZWQgaW50IGNhcCwgc2VjX2J1cywg
c3ViX2J1czsKKyAgICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsKIAogICAgICAgICBjYXNlIERF
Vl9UWVBFX1BDSWUyUENJX0JSSURHRToKICAgICAgICAgY2FzZSBERVZfVFlQRV9MRUdBQ1lfUENJ
X0JSSURHRToKICAgICAgICAgICAgIHNlY19idXMgPSBwY2lfY29uZl9yZWFkOChwZGV2LT5zYmRm
LCBQQ0lfU0VDT05EQVJZX0JVUyk7CiAgICAgICAgICAgICBzdWJfYnVzID0gcGNpX2NvbmZfcmVh
ZDgocGRldi0+c2JkZiwgUENJX1NVQk9SRElOQVRFX0JVUyk7CiAKLSAgICAgICAgICAgIHNwaW5f
bG9jaygmcHNlZy0+YnVzMmJyaWRnZV9sb2NrKTsKKyAgICAgICAgICAgIHNwaW5fbG9ja19pcnFz
YXZlKCZwc2VnLT5idXMyYnJpZGdlX2xvY2ssIGZsYWdzKTsKICAgICAgICAgICAgIGZvciAoIDsg
c2VjX2J1cyA8PSBzdWJfYnVzOyBzZWNfYnVzKysgKQogICAgICAgICAgICAgewogICAgICAgICAg
ICAgICAgIHBzZWctPmJ1czJicmlkZ2Vbc2VjX2J1c10ubWFwID0gMTsKICAgICAgICAgICAgICAg
ICBwc2VnLT5idXMyYnJpZGdlW3NlY19idXNdLmJ1cyA9IGJ1czsKICAgICAgICAgICAgICAgICBw
c2VnLT5idXMyYnJpZGdlW3NlY19idXNdLmRldmZuID0gZGV2Zm47CiAgICAgICAgICAgICB9Ci0g
ICAgICAgICAgICBzcGluX3VubG9jaygmcHNlZy0+YnVzMmJyaWRnZV9sb2NrKTsKKyAgICAgICAg
ICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBzZWctPmJ1czJicmlkZ2VfbG9jaywgZmxhZ3Mp
OwogICAgICAgICAgICAgYnJlYWs7CiAKICAgICAgICAgY2FzZSBERVZfVFlQRV9QQ0llX0VORFBP
SU5UOgpAQCAtNDM3LDE2ICs0MzgsMTcgQEAgc3RhdGljIHZvaWQgZnJlZV9wZGV2KHN0cnVjdCBw
Y2lfc2VnICpwcwogICAgIHN3aXRjaCAoIHBkZXYtPnR5cGUgKQogICAgIHsKICAgICAgICAgdW5z
aWduZWQgaW50IHNlY19idXMsIHN1Yl9idXM7CisgICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7
CiAKICAgICAgICAgY2FzZSBERVZfVFlQRV9QQ0llMlBDSV9CUklER0U6CiAgICAgICAgIGNhc2Ug
REVWX1RZUEVfTEVHQUNZX1BDSV9CUklER0U6CiAgICAgICAgICAgICBzZWNfYnVzID0gcGNpX2Nv
bmZfcmVhZDgocGRldi0+c2JkZiwgUENJX1NFQ09OREFSWV9CVVMpOwogICAgICAgICAgICAgc3Vi
X2J1cyA9IHBjaV9jb25mX3JlYWQ4KHBkZXYtPnNiZGYsIFBDSV9TVUJPUkRJTkFURV9CVVMpOwog
Ci0gICAgICAgICAgICBzcGluX2xvY2soJnBzZWctPmJ1czJicmlkZ2VfbG9jayk7CisgICAgICAg
ICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmcHNlZy0+YnVzMmJyaWRnZV9sb2NrLCBmbGFncyk7CiAg
ICAgICAgICAgICBmb3IgKCA7IHNlY19idXMgPD0gc3ViX2J1czsgc2VjX2J1cysrICkKICAgICAg
ICAgICAgICAgICBwc2VnLT5idXMyYnJpZGdlW3NlY19idXNdID0gcHNlZy0+YnVzMmJyaWRnZVtw
ZGV2LT5idXNdOwotICAgICAgICAgICAgc3Bpbl91bmxvY2soJnBzZWctPmJ1czJicmlkZ2VfbG9j
ayk7CisgICAgICAgICAgICBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwc2VnLT5idXMyYnJpZGdl
X2xvY2ssIGZsYWdzKTsKICAgICAgICAgICAgIGJyZWFrOwogCiAgICAgICAgIGRlZmF1bHQ6CkBA
IC0xMDUzLDggKzEwNTUsOSBAQCBlbnVtIHBkZXZfdHlwZSBwZGV2X3R5cGUodTE2IHNlZywgdTgg
YnVzCiBpbnQgZmluZF91cHN0cmVhbV9icmlkZ2UodTE2IHNlZywgdTggKmJ1cywgdTggKmRldmZu
LCB1OCAqc2VjYnVzKQogewogICAgIHN0cnVjdCBwY2lfc2VnICpwc2VnID0gZ2V0X3BzZWcoc2Vn
KTsKLSAgICBpbnQgcmV0ID0gMDsKLSAgICBpbnQgY250ID0gMDsKKyAgICBpbnQgcmV0ID0gMTsK
KyAgICB1bnNpZ25lZCBsb25nIGZsYWdzOworICAgIHVuc2lnbmVkIGludCBjbnQgPSAwOwogCiAg
ICAgaWYgKCAqYnVzID09IDAgKQogICAgICAgICByZXR1cm4gMDsKQEAgLTEwNjUsOCArMTA2OCw3
IEBAIGludCBmaW5kX3Vwc3RyZWFtX2JyaWRnZSh1MTYgc2VnLCB1OCAqYnUKICAgICBpZiAoICFw
c2VnLT5idXMyYnJpZGdlWypidXNdLm1hcCApCiAgICAgICAgIHJldHVybiAwOwogCi0gICAgcmV0
ID0gMTsKLSAgICBzcGluX2xvY2soJnBzZWctPmJ1czJicmlkZ2VfbG9jayk7CisgICAgc3Bpbl9s
b2NrX2lycXNhdmUoJnBzZWctPmJ1czJicmlkZ2VfbG9jaywgZmxhZ3MpOwogICAgIHdoaWxlICgg
cHNlZy0+YnVzMmJyaWRnZVsqYnVzXS5tYXAgKQogICAgIHsKICAgICAgICAgKnNlY2J1cyA9ICpi
dXM7CkBAIC0xMDgwLDcgKzEwODIsNyBAQCBpbnQgZmluZF91cHN0cmVhbV9icmlkZ2UodTE2IHNl
ZywgdTggKmJ1CiAgICAgfQogCiBvdXQ6Ci0gICAgc3Bpbl91bmxvY2soJnBzZWctPmJ1czJicmlk
Z2VfbG9jayk7CisgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcHNlZy0+YnVzMmJyaWRnZV9s
b2NrLCBmbGFncyk7CiAgICAgcmV0dXJuIHJldDsKIH0KIAo=

--=separator--
