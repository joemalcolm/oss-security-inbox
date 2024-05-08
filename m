Received: (qmail 11617 invoked by uid 550); 8 May 2024 11:04:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11577 invoked from network); 8 May 2024 11:04:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=6d+yGvKAp/ietMPZl7Ya/IGpIx85yuZHje+WdkXJkGk=; b=yrH6e/TTf/PeSSaP5rafYXKFiW
	2ARQx7toKnniWwOpGiOJcHHrj7hMGADfEcuq128Q3UiNv6crEHIR9wunmHNhFn5viuUmWFznVTgDO
	e0D8hn90KIOH+/uXar/DBMZeTpGV1QncR95n1WmXTiPHRTLHcYJ3QlL6LpvZtKW+fbf0=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1s4f5w-0005EO-KC@xenbits.xenproject.org>
Date: Wed, 08 May 2024 11:04:20 +0000
Subject: [oss-security] Xen Security Advisory 457 v2 - Linux/xen-netfront: Memory leak
 due to missing cleanup function

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

                    Xen Security Advisory XSA-457
                              version 2

    Linux/xen-netfront: Memory leak due to missing cleanup function

UPDATES IN VERSION 2
====================

* Clarify the XSA is in netfront and *not* netback
* Clarify the impact: only the guest may crash

ISSUE DESCRIPTION
=================

In netfront, xennet_alloc_one_rx_buffer() failed to call the
appropriate clean-up function, resulting in a memory leak.

IMPACT
======

A malicious guest userspace process can exhaust memory resources
within the guest kernel, potentially leading to a guest crash (Denial
of Service). It is not known whether it can be triggered remotely.

VULNERABLE SYSTEMS
==================

Systems with guests running Linux 5.9 and later with Xen PV network
devices are affected.

MITIGATION
==========

For HVM guests, using emulated network devices will avoid this issue.

RESOLUTION
==========

The following patch in Linux resolves the issue:

https://git.kernel.org/torvalds/c/037965402a010898d34f4e35327d22c0a95cd51f

A copy of which is attached.

xsa457.patch           Linux 5.9

$ sha256sum xsa457*
9d6ae3da27f1ff92f9f45c800822beecda603d6dea6726207cee6c768416114c  xsa457.patch
$


NOTE ON THE LACK OF EMBARGO
===========================

The issue was reported initially on a public bug tracker and fixed in
public before it was realized that there was a security aspect.
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmY7W/gMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZnPQIAIPhOEXsSKutZJF776KKDmoNDmZ00SikkfZ9tZW8
LyiNNJ7l7tDN3A5EVJn4l8Xos+PFaadNIXdaLKemRt17nP4Qw+UzjvBTiTbou+m7
OGUGsRMCNkfpv8OEi/U91o3W3uEE/tL7ahws/wAnOzEfcbTFl5alTDfuDfrtOaiA
1Uz37QO0GNQSD+n91SyosqAljfbAvWNQMLJ+Iz9YB6BonVwsWWNeHjF1N9zDWv3k
pD+DVOa60FYIA3xxeJveZO3ZLA6oBo5wyKiQ8p3bun9X9W5+i6PrzWewnsWCvya+
Yyi0xTZ2YBzo+eNFpQ9OKqjDVoSREx9l9Ef0YvSStR0/aBw=
=/9cg
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa457.patch"
Content-Disposition: attachment; filename="xsa457.patch"
Content-Transfer-Encoding: base64

RnJvbSAwMzc5NjU0MDJhMDEwODk4ZDM0ZjRlMzUzMjdkMjJjMGE5NWNkNTFm
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKZXNwZXIgRGFuZ2Fh
cmQgQnJvdWVyIDxoYXdrQGtlcm5lbC5vcmc+CkRhdGU6IFdlZCwgMjcgTWFy
IDIwMjQgMTM6MTQ6NTYgKzAxMDAKU3ViamVjdDogeGVuLW5ldGZyb250OiBB
ZGQgbWlzc2luZyBza2JfbWFya19mb3JfcmVjeWNsZQoKTm90aWNlIHRoYXQg
c2tiX21hcmtfZm9yX3JlY3ljbGUoKSBpcyBpbnRyb2R1Y2VkIGxhdGVyIHRo
YW4gZml4ZXMgdGFnIGluCmNvbW1pdCA2YTViY2Q4NGU4ODYgKCJwYWdlX3Bv
b2w6IEFsbG93IGRyaXZlcnMgdG8gaGludCBvbiBTS0IgcmVjeWNsaW5nIiku
CgpJdCBpcyBiZWxpZXZlZCB0aGF0IGZpeGVzIHRhZyB3ZXJlIG1pc3Npbmcg
YSBjYWxsIHRvIHBhZ2VfcG9vbF9yZWxlYXNlX3BhZ2UoKQpiZXR3ZWVuIHY1
LjkgdG8gdjUuMTQsIGFmdGVyIHdoaWNoIGlzIHNob3VsZCBoYXZlIHVzZWQg
c2tiX21hcmtfZm9yX3JlY3ljbGUoKS4KU2luY2UgdjYuNiB0aGUgY2FsbCBw
YWdlX3Bvb2xfcmVsZWFzZV9wYWdlKCkgd2VyZSByZW1vdmVkIChpbgpjb21t
aXQgNTM1YjljNjFiZGVmICgibmV0OiBwYWdlX3Bvb2w6IGhpZGUgcGFnZV9w
b29sX3JlbGVhc2VfcGFnZSgpIikKYW5kIHJlbWFpbmluZyBjYWxsZXJzIGNv
bnZlcnRlZCAoaW4gY29tbWl0IDZiZmVmMmVjMDE3MiAoIk1lcmdlIGJyYW5j
aAonbmV0LXBhZ2VfcG9vbC1yZW1vdmUtcGFnZV9wb29sX3JlbGVhc2VfcGFn
ZSciKSkuCgpUaGlzIGxlYWsgYmVjYW1lIHZpc2libGUgaW4gdjYuOCB2aWEg
Y29tbWl0IGRiYTFiOGE3YWI2OCAoIm1tL3BhZ2VfcG9vbDogY2F0Y2gKcGFn
ZV9wb29sIG1lbW9yeSBsZWFrcyIpLgoKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcKRml4ZXM6IDZjNWFhNmZjNGRlZiAoInhlbiBuZXR3b3JraW5nOiBh
ZGQgYmFzaWMgWERQIHN1cHBvcnQgZm9yIHhlbi1uZXRmcm9udCIpClJlcG9y
dGVkLWJ5OiBMZW9uaWRhcyBTcHlyb3BvdWxvcyA8YXJ0YWZpbmRlQGFyY2hs
aW51eC5jb20+Ckxpbms6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MjE4NjU0ClJlcG9ydGVkLWJ5OiBBcnRodXIgQm9y
c2Jvb20gPGFydGh1cmJvcnNib29tQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1i
eTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8aGF3a0BrZXJuZWwub3JnPgpM
aW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzE3MTE1NDE2NzQ0Ni4y
NjcxMDYyLjkxMjcxMDUzODQ1OTEyMzczNjMuc3RnaXRAZmlyZXNvdWwKU2ln
bmVkLW9mZi1ieTogSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4K
LS0tCiBkcml2ZXJzL25ldC94ZW4tbmV0ZnJvbnQuYyB8IDEgKwogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQveGVuLW5ldGZyb250LmMgYi9kcml2ZXJzL25ldC94ZW4tbmV0ZnJv
bnQuYwppbmRleCBhZDI5ZjM3MDAzNGU0Zi4uOGQyYWVlODg1MjZjNjkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3hlbi1uZXRmcm9udC5jCisrKyBiL2Ry
aXZlcnMvbmV0L3hlbi1uZXRmcm9udC5jCkBAIC0yODUsNiArMjg1LDcgQEAg
c3RhdGljIHN0cnVjdCBza19idWZmICp4ZW5uZXRfYWxsb2Nfb25lX3J4X2J1
ZmZlcihzdHJ1Y3QgbmV0ZnJvbnRfcXVldWUgKnF1ZXVlKQogCQlyZXR1cm4g
TlVMTDsKIAl9CiAJc2tiX2FkZF9yeF9mcmFnKHNrYiwgMCwgcGFnZSwgMCwg
MCwgUEFHRV9TSVpFKTsKKwlza2JfbWFya19mb3JfcmVjeWNsZShza2IpOwog
CiAJLyogQWxpZ24gaXAgaGVhZGVyIHRvIGEgMTYgYnl0ZXMgYm91bmRhcnkg
Ki8KIAlza2JfcmVzZXJ2ZShza2IsIE5FVF9JUF9BTElHTik7Ci0tIApjZ2l0
IDEuMi4zLWtvcmcKCg==

--=separator--
