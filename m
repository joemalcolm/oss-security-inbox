X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5330" "Thursday" "23" "February" "2017" "16:28:18" "+0000" "Xen.org security team" "security@xen.org" "<E1cgwFe-0005Mf-Pk@xenbits.xenproject.org>" "141" "[oss-security] Xen Security Advisory 210 - arm: memory corruption when freeing p2m pages" nil nil nil "2" "2017022316:28:18" "[oss-security] Xen Security Advisory 210 - arm: memory corruption when freeing p2m pages" (number mark "U       security@xen Feb 23  141/5330  " thread-indent "\"[oss-security] Xen Security Advisory 210 - arm: memory corruption when freeing p2m pages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7905 invoked by uid 550); 23 Feb 2017 16:28:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7879 invoked from network); 23 Feb 2017 16:28:41 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1cgwFe-0005Mf-Pk@xenbits.xenproject.org>
Date: Thu, 23 Feb 2017 16:28:18 +0000
Subject: [oss-security] Xen Security Advisory 210 - arm: memory corruption when freeing
 p2m pages

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

                    Xen Security Advisory XSA-210

             arm: memory corruption when freeing p2m pages

ISSUE DESCRIPTION
=================

When freeing pages used for stage-2 page tables, the freeing routine
failed to remove these pages from an internally managed list they were
put on during allocation.  The same list node elements are also
used by the hypervisor's page allocator.  Subsequent manipulation of
ARM's private P2M list could therefore corrupt the lists maintained by
the page allocator.  The buggy code is exposed to guests via the
XENMEM_decrease_reservation hypercall.

IMPACT
======

A malicious or buggy guest may corrupt hypervisor state, commonly
leading to a host crash (Denial of Service).  Privilege escalation or
information leaks cannot be excluded.

VULNERABLE SYSTEMS
==================

Only Xen version 4.8 is affected.  Xen versions 4.7 and earlier are not
vulnerable.

Only ARM systems are vulnerable.  X86 based systems are not vulnerable.

MITIGATION
==========

There is no known mitigation.

NOTE REGARDING LACK OF EMBARGO
==============================

The issue was discussed publicly before being recognized as a security
issue.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa210.patch           xen-unstable, Xen 4.8.x

$ sha256sum xsa210*
10e26c017c916dcac261c6a3c92656831f0ad037f792940e6faf6905c6e23861  xsa210.patch
$

CREDITS
=======

The initial bug was discovered by Vijay Kilari of Cavium and the
security aspect was diagnosed by Julien Grall of ARM.

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

iQEcBAEBAgAGBQJYrw2aAAoJEIP+FMlX6CvZuw4H/34z2io/65h2RLDL3bx4w//A
nWNcrceKrxyvtZmTss56RHrUeiOOKOeuCXWMx5CSihBcSRXqyZa79IDul9t1b7fB
m6NUPerILGueF3uOYTRUvvSiWKWRzVPOCgqSxlCmd7YTrkjHZkq/x2Gb9Acj3hrl
yE0fFdD/hTIN9wZtHWY+gTIXMIGHBJ4/xieZeYZvylbnmu9nDC0WIupTExonWqie
sG0DICl+eKJMt3ioSzaGd9117Xk1P7JWvcr7MJQvzn/2VDTG2TjC4kZE1iDHHVPz
+txQh2G2Luf+jX5VQSqWnlv7I9zuGlqYEpAMQacjrLzGejuqPSC2kbzliOEoCaE=
=1k3w
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa210.patch"
Content-Disposition: attachment; filename="xsa210.patch"
Content-Transfer-Encoding: base64

RnJvbTogSnVsaWVuIEdyYWxsIDxqdWxpZW4uZ3JhbGxAYXJtLmNvbT4KU3Vi
amVjdDogYXJtL3AybTogcmVtb3ZlIHRoZSBwYWdlIGZyb20gcDJtLT5wYWdl
cyBsaXN0IGJlZm9yZSBmcmVlaW5nIGl0CgpUaGUgcDJtIGNvZGUgaXMgdXNp
bmcgdGhlIHBhZ2UgbGlzdCBmaWVsZCB0byBsaW5rIGFsbCB0aGUgcGFnZXMg
dXNlZApmb3IgdGhlIHN0YWdlLTIgcGFnZSB0YWJsZXMuIFRoZSBwYWdlIGlz
IGFkZGVkIGludG8gdGhlIHAybS0+cGFnZXMKbGlzdCBqdXN0IGFmdGVyIHRo
ZSBhbGxvY2F0aW9uIGJ1dCBuZXZlciByZW1vdmVkIGZyb20gdGhlIGxpc3Qu
CgpUaGUgcGFnZSBsaXN0IGZpZWxkIGlzIGFsc28gdXNlZCBieSB0aGUgYWxs
b2NhdG9yLCBub3QgcmVtb3ZpbmcgbWF5CnJlc3VsdCBhIGxhdGVyIFhlbiBj
cmFzaCBkdWUgdG8gaW5jb25zaXN0ZW5jeSAoc2VlIFsxXSkuCgpUaGlzIGJ1
ZyB3YXMgaW50cm9kdWNlZCBieSB0aGUgcmV3b3JraW5nIG9mIHAybSBjb2Rl
IGluIGNvbW1pdCAyZWYzZTM2ZWM3CiJ4ZW4vYXJtOiBwMm06IEludHJvZHVj
ZSBwMm1fc2V0X2VudHJ5IGFuZCBfX3AybV9zZXRfZW50cnkiLgoKWzFdIGh0
dHBzOi8vbGlzdHMueGVucHJvamVjdC5vcmcvYXJjaGl2ZXMvaHRtbC94ZW4t
ZGV2ZWwvMjAxNy0wMi9tc2cwMDUyNC5odG1sCgpSZXBvcnRlZC1ieTogVmlq
YXlhIEt1bWFyIEsgPFZpamF5YS5LdW1hckBjYXZpdW0uY29tPgpTaWduZWQt
b2ZmLWJ5OiBKdWxpZW4gR3JhbGwgPGp1bGllbi5ncmFsbEBhcm0uY29tPgpS
ZXZpZXdlZC1ieTogU3RlZmFubyBTdGFiZWxsaW5pIDxzc3RhYmVsbGluaUBr
ZXJuZWwub3JnPgoKLS0tIGEveGVuL2FyY2gvYXJtL3AybS5jCisrKyBiL3hl
bi9hcmNoL2FybS9wMm0uYwpAQCAtNjYwLDYgKzY2MCw3IEBAIHN0YXRpYyB2
b2lkIHAybV9mcmVlX2VudHJ5KHN0cnVjdCBwMm1fZG9tYWluICpwMm0sCiAg
ICAgdW5zaWduZWQgaW50IGk7CiAgICAgbHBhZV90ICp0YWJsZTsKICAgICBt
Zm5fdCBtZm47CisgICAgc3RydWN0IHBhZ2VfaW5mbyAqcGc7CiAKICAgICAv
KiBOb3RoaW5nIHRvIGRvIGlmIHRoZSBlbnRyeSBpcyBpbnZhbGlkLiAqLwog
ICAgIGlmICggIXAybV92YWxpZChlbnRyeSkgKQpAQCAtNjk3LDcgKzY5OCwx
MCBAQCBzdGF0aWMgdm9pZCBwMm1fZnJlZV9lbnRyeShzdHJ1Y3QgcDJtX2Rv
bWFpbiAqcDJtLAogICAgIG1mbiA9IF9tZm4oZW50cnkucDJtLmJhc2UpOwog
ICAgIEFTU0VSVChtZm5fdmFsaWQobWZuX3gobWZuKSkpOwogCi0gICAgZnJl
ZV9kb21oZWFwX3BhZ2UobWZuX3RvX3BhZ2UobWZuX3gobWZuKSkpOworICAg
IHBnID0gbWZuX3RvX3BhZ2UobWZuX3gobWZuKSk7CisKKyAgICBwYWdlX2xp
c3RfZGVsKHBnLCAmcDJtLT5wYWdlcyk7CisgICAgZnJlZV9kb21oZWFwX3Bh
Z2UocGcpOwogfQogCiBzdGF0aWMgYm9vbCBwMm1fc3BsaXRfc3VwZXJwYWdl
KHN0cnVjdCBwMm1fZG9tYWluICpwMm0sIGxwYWVfdCAqZW50cnksCg==

--=separator--
