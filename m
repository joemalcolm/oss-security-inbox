X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6771" "Tuesday" "8" "January" "2019" "16:44:12" "+0000" "Xen.org security team" "security@xen.org" "<E1gguU8-0006Vj-Pi@xenbits.xenproject.org>" "169" "[oss-security] Xen Security Advisory 277 v3 (CVE-2018-19964) - x86: incorrect error handling for guest p2m page removals" nil nil nil "1" "2019010816:44:12" "[oss-security] Xen Security Advisory 277 v3 (CVE-2018-19964) - x86: incorrect error handling for guest p2m page removals" (number mark "U       security@xen Jan  8  169/6771  " thread-indent "\"[oss-security] Xen Security Advisory 277 v3 (CVE-2018-19964) - x86: incorrect error handling for guest p2m page removals\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24152 invoked by uid 550); 8 Jan 2019 16:44:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24130 invoked from network); 8 Jan 2019 16:44:39 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.508 (Entity 5.508)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1gguU8-0006Vj-Pi@xenbits.xenproject.org>
Date: Tue, 08 Jan 2019 16:44:12 +0000
Subject: [oss-security] Xen Security Advisory 277 v3 (CVE-2018-19964) - x86: incorrect
 error handling for guest p2m page removals

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2018-19964 / XSA-277
                              version 3

       x86: incorrect error handling for guest p2m page removals

UPDATES IN VERSION 3
====================

CVE assigned.

ISSUE DESCRIPTION
=================

The internal function querying a domain's p2m table grabs the p2m lock
by default, so that the answer to the query remains true until the
caller can act on that information; it is up to the caller then to
release the lock.  Unfortunately, certain failure paths don't release
the lock.

IMPACT
======

A malicious or buggy guest may cause a deadlock, resulting in a DoS
(Denial of Service) affecting the entire host.

VULNERABLE SYSTEMS
==================

Xen 4.11 and onward are vulnerable.

Only x86 systems are vulnerable.  ARM systems are not vulnerable.

Only systems running untrusted HVM or PVH guests are vulnerable.
Systems running only PV guests are not vulnerable.

MITIGATION
==========

Running only PV guests will avoid this vulnerability.

CREDITS
=======

This issue was discovered by Paul Durrant of Citrix.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa277.patch           xen-unstable, Xen 4.11.x

$ sha256sum xsa277*
576cdc05975e43698624b88f7290119dd702b3db8f30f3219754d992d7fef0c6  xsa277.meta
c9025e1daaec4081a61f1ed7b96e69cfe8e35bdd5b4fcc0fadc98f71c2e243e2  xsa277.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAlw00y8MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZN+YH/2HCZYKrgxQzQIfNMO+2magHgzrlY0YCzmmgSpJD
StrtQ//XSg4KbBsdRJbMZLPcAhXFRBPWueW+p/Tv2ANyPc95hLh1mrhS8DshbJ4v
C2istb+FLiGKCuhqKbdxmvR7f73Htu7lcZ10J1EDbtwYufXnsDMfkzLLeHaKDCnV
Cw0igX3yL2Puj3DhNZg7HrD77wKvkaX2eDNUGsivq/PhnhYD4wuP0Jo6QVO749nI
ugDBhvavnV3JODFhfS+4g6M8NMwjLMedsmbCv5pGsd4hBj/lb4hgkMXanKy+bRUv
Te2YiJZ4gwpkVKgpyG0uzIb9xg14uTYfemFE+fVNhO+zUQE=
=Anj0
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa277.meta"
Content-Disposition: attachment; filename="xsa277.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAyNzcsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC4xMSIKICBdLAogICJUcmVlcyI6IFsKICAgICJ4
ZW4iCiAgXSwKICAiUmVjaXBlcyI6IHsKICAgICI0LjExIjogewogICAgICAi
UmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJs
ZVJlZiI6ICI4YWQ0NjJhMzRmMDY1NGMyNTZjMTk3NDA2NTg3Njg2ZmU0MjI4
NTQ2IiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAyNzUs
CiAgICAgICAgICAgIDI3NgogICAgICAgICAgXSwKICAgICAgICAgICJQYXRj
aGVzIjogWwogICAgICAgICAgICAieHNhMjc3LnBhdGNoIgogICAgICAgICAg
XQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICJtYXN0ZXIiOiB7CiAg
ICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAi
U3RhYmxlUmVmIjogImNlMmY0MjYwNTg4OGYxOGY2M2ZmOWZlMGQ0NWRkNjlh
ZTgzMDQ1YmIiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAg
IDI3NSwKICAgICAgICAgICAgMjc2CiAgICAgICAgICBdLAogICAgICAgICAg
IlBhdGNoZXMiOiBbCiAgICAgICAgICAgICJ4c2EyNzcucGF0Y2giCiAgICAg
ICAgICBdCiAgICAgICAgfQogICAgICB9CiAgICB9CiAgfQp9

--=separator
Content-Type: application/octet-stream; name="xsa277.patch"
Content-Disposition: attachment; filename="xsa277.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KU3ViamVjdDogeDg2L21tOiBQdXQgdGhlIGdmbiBvbiBhbGwgcGF0aHMg
YWZ0ZXIgZ2V0X2dmbl9xdWVyeSgpCgpjL3MgNzg2NzE4MWIyICJ4ODYvUG9E
OiBjb3JyZWN0bHkgaGFuZGxlIG5vbi1vcmRlci0wIGRlY3JlYXNlLXJlc2Vy
dmF0aW9uCnJlcXVlc3RzIiBpbnRyb2R1Y2VkIGFuIGVhcmx5IGV4aXQgaW4g
Z3Vlc3RfcmVtb3ZlX3BhZ2UoKSBmb3IgdW5leHBlY3RlZCBwMm0KdHlwZXMu
ICBIb3dldmVyLCBnZXRfZ2ZuX3F1ZXJ5KCkgaW50ZXJuYWxseSB0YWtlcyB0
aGUgcDJtIGxvY2ssIGFuZCBtdXN0IGJlCm1hdGNoZWQgd2l0aCBhIHB1dF9n
Zm4oKSBjYWxsIGxhdGVyLgoKRml4IHRoZSBlcnJvbmVvdXMgY29tbWVudCBi
ZXNpZGUgdGhlIGRlY2xhcmF0aW9uIG9mIGdldF9nZm5fcXVlcnkoKS4KClRo
aXMgaXMgWFNBLTI3Ny4KClJlcG9ydGVkLWJ5OiBQYXVsIER1cnJhbnQgPHBh
dWwuZHVycmFudEBjaXRyaXguY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXcg
Q29vcGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgoKZGlmZiAtLWdp
dCBhL3hlbi9jb21tb24vbWVtb3J5LmMgYi94ZW4vY29tbW9uL21lbW9yeS5j
CmluZGV4IDk4NzM5NWYuLjI2YjcxMjMgMTAwNjQ0Ci0tLSBhL3hlbi9jb21t
b24vbWVtb3J5LmMKKysrIGIveGVuL2NvbW1vbi9tZW1vcnkuYwpAQCAtMzA1
LDcgKzMwNSwxMSBAQCBpbnQgZ3Vlc3RfcmVtb3ZlX3BhZ2Uoc3RydWN0IGRv
bWFpbiAqZCwgdW5zaWduZWQgbG9uZyBnbWZuKQogI2lmZGVmIENPTkZJR19Y
ODYKICAgICBtZm4gPSBnZXRfZ2ZuX3F1ZXJ5KGQsIGdtZm4sICZwMm10KTsK
ICAgICBpZiAoIHVubGlrZWx5KHAybXQgPT0gcDJtX2ludmFsaWQpIHx8IHVu
bGlrZWx5KHAybXQgPT0gcDJtX21taW9fZG0pICkKKyAgICB7CisgICAgICAg
IHB1dF9nZm4oZCwgZ21mbik7CisKICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7
CisgICAgfQogCiAgICAgaWYgKCB1bmxpa2VseShwMm1faXNfcGFnaW5nKHAy
bXQpKSApCiAgICAgewpkaWZmIC0tZ2l0IGEveGVuL2luY2x1ZGUvYXNtLXg4
Ni9wMm0uaCBiL3hlbi9pbmNsdWRlL2FzbS14ODYvcDJtLmgKaW5kZXggYWMz
M2Y1MC4uNmQ4NDlhNSAxMDA2NDQKLS0tIGEveGVuL2luY2x1ZGUvYXNtLXg4
Ni9wMm0uaAorKysgYi94ZW4vaW5jbHVkZS9hc20teDg2L3AybS5oCkBAIC00
NDgsMTAgKzQ0OCw3IEBAIHN0YXRpYyBpbmxpbmUgbWZuX3QgX19ub25udWxs
KDMpIGdldF9nZm5fdHlwZSgKICAgICByZXR1cm4gZ2V0X2dmbl90eXBlX2Fj
Y2VzcyhwMm1fZ2V0X2hvc3RwMm0oZCksIGdmbiwgdCwgJmEsIHEsIE5VTEwp
OwogfQogCi0vKiBTeW50YWN0aWMgc3VnYXI6IG1vc3QgY2FsbGVycyB3aWxs
IHVzZSBvbmUgb2YgdGhlc2UuIAotICogTi5CLiBnZXRfZ2ZuX3F1ZXJ5KCkg
aXMgdGhlIF9vbmx5XyBvbmUgZ3VhcmFudGVlZCBub3QgdG8gdGFrZSB0aGUK
LSAqIHAybSBsb2NrOyBub25lIG9mIHRoZSBvdGhlcnMgY2FuIGJlIGNhbGxl
ZCB3aXRoIHRoZSBwMm0gb3IgcGFnaW5nCi0gKiBsb2NrIGhlbGQuICovCisv
KiBTeW50YWN0aWMgc3VnYXI6IG1vc3QgY2FsbGVycyB3aWxsIHVzZSBvbmUg
b2YgdGhlc2UuICovCiAjZGVmaW5lIGdldF9nZm4oZCwgZywgdCkgICAgICAg
ICBnZXRfZ2ZuX3R5cGUoKGQpLCAoZyksICh0KSwgUDJNX0FMTE9DKQogI2Rl
ZmluZSBnZXRfZ2ZuX3F1ZXJ5KGQsIGcsIHQpICAgZ2V0X2dmbl90eXBlKChk
KSwgKGcpLCAodCksIDApCiAjZGVmaW5lIGdldF9nZm5fdW5zaGFyZShkLCBn
LCB0KSBnZXRfZ2ZuX3R5cGUoKGQpLCAoZyksICh0KSwgXAo=

--=separator--
