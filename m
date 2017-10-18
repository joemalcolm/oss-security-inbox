X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11673" "Wednesday" "18" "October" "2017" "12:08:27" "+0000" "Xen.org security team" "security@xen.org" "<E1e4n99-0001G3-P0@xenbits.xenproject.org>" "253" "[oss-security] Xen Security Advisory 239 (CVE-2017-15589) - hypervisor stack leak in x86 I/O intercept code" nil nil nil "10" "2017101812:08:27" "[oss-security] Xen Security Advisory 239 (CVE-2017-15589) - hypervisor stack leak in x86 I/O intercept code" (number mark "U       security@xen Oct 18  253/11673 " thread-indent "\"[oss-security] Xen Security Advisory 239 (CVE-2017-15589) - hypervisor stack leak in x86 I/O intercept code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28559 invoked by uid 550); 18 Oct 2017 12:09:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28427 invoked from network); 18 Oct 2017 12:08:58 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1e4n99-0001G3-P0@xenbits.xenproject.org>
Date: Wed, 18 Oct 2017 12:08:27 +0000
Subject: [oss-security] Xen Security Advisory 239 (CVE-2017-15589) - hypervisor stack
 leak in x86 I/O intercept code

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-15589 / XSA-239
                              version 3

            hypervisor stack leak in x86 I/O intercept code

UPDATES IN VERSION 3
====================

CVE assigned.

ISSUE DESCRIPTION
=================

Intercepted I/O operations may deal with less than a full machine
word's worth of data.  While read paths had been the subject of earlier
XSAs (and hence have been fixed), at least one write path was found
where the data stored into an internal structure could contain bits
from an uninitialized hypervisor stack slot.  A subsequent emulated
read would then be able to retrieve these bits.

IMPACT
======

A malicious unprivileged x86 HVM guest may be able to obtain sensitive
information from the host or other guests.

VULNERABLE SYSTEMS
==================

All Xen versions are vulnerable.

Only x86 systems are affected.  ARM systems are not affected.

Only HVM guests can leverage this vulnerability.  PV guests cannot
leverage this vulnerability.

MITIGATION
==========

Running only PV guests will avoid this issue.

CREDITS
=======

This issue was discovered by Roger Pau Monné of Citrix.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa239.patch           xen-unstable, Xen 4.9.x, Xen 4.8.x, Xen 4.7.x, Xen 4.6.x
xsa239-4.5.patch       Xen 4.5.x

$ sha256sum xsa239*
eb7971be89199eb3ff510f4f5650fd5a8ec588b9fcb8f89230216fac4214ef21  xsa239.meta
087a8b3cf7ecbdbde593033c127cbcf6c37f532bf33d90f72c19e493970a799c  xsa239.patch
b91a68fe67240f2a5bb9460c5b650e9595364afa180f8702aef783815e3d7dcd  xsa239-4.5.patch
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
Version: GnuPG v1

iQEcBAEBCAAGBQJZ50QiAAoJEIP+FMlX6CvZ9+EH/3FDnPzVeA+Rd8rblNpLh7VQ
oyQ0B0olLYPZHLHQ2yzNJAg/1wv1ar7K2Rs0E1kovSqFZWdrTeo0DFKy418+rD6j
TvSxYq0ktC0ir5cUSeExhHRDkBGDlEAuugdC381e0g89KT7Sv+kQz8t06yBV9KIP
hnWPWcGvzeIKQX//Gd5i4618zhqGHI29LBuFJyMdrDcHSdD8f5B81n+pWojZ8JDP
gYbhLHr0MLev2CH0URiegc7FIvbEPbW4rAzuEAKbMLfLMMwPg+eLJsM25WCTWuE7
AiQUvx3zyD76EZ7gjVIDV/AazOWmMpZHrS1Rd+LwNYTeuV77JDebSI6KJ+X0jHc=
=v3zp
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa239.meta"
Content-Disposition: attachment; filename="xsa239.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAyMzksCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC45IiwKICAgICI0LjgiLAogICAgIjQuNyIsCiAg
ICAiNC42IiwKICAgICI0LjUiCiAgXSwKICAiVHJlZXMiOiBbCiAgICAieGVu
IgogIF0sCiAgIlJlY2lwZXMiOiB7CiAgICAiNC41IjogewogICAgICAiWGVu
VmVyc2lvbiI6ICI0LjUiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAi
eGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICI4MzcyNGQ5ZjNhZTIx
YTNiOTYzNjI3NDJlMmYwNTJiMTlkOWY1NTlhIiwKICAgICAgICAgICJQcmVy
ZXFzIjogWwogICAgICAgICAgICAyMzcsCiAgICAgICAgICAgIDIzOAogICAg
ICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAi
eHNhMjM5LTQuNS5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAg
IH0KICAgIH0sCiAgICAiNC42IjogewogICAgICAiWGVuVmVyc2lvbiI6ICI0
LjYiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAg
ICAgICAgIlN0YWJsZVJlZiI6ICIxNjU4YTg3NjkwYWM4MzllODVkYjEyYmJm
NDA5YmU2MmJiOTM4NjQwIiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAg
ICAgICAgICAyMzcsCiAgICAgICAgICAgIDIzOAogICAgICAgICAgXSwKICAg
ICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjM5LnBhdGNo
IgogICAgICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICI0
LjciOiB7CiAgICAgICJYZW5WZXJzaW9uIjogIjQuNyIsCiAgICAgICJSZWNp
cGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVm
IjogImM3NzgzZDljMjZmYzE5MTg2MmQ5ODgzZGEyMjM4NzM0MGIxZmFiMTgi
LAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAgIDIzNywKICAg
ICAgICAgICAgMjM4CiAgICAgICAgICBdLAogICAgICAgICAgIlBhdGNoZXMi
OiBbCiAgICAgICAgICAgICJ4c2EyMzkucGF0Y2giCiAgICAgICAgICBdCiAg
ICAgICAgfQogICAgICB9CiAgICB9LAogICAgIjQuOCI6IHsKICAgICAgIlhl
blZlcnNpb24iOiAiNC44IiwKICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAg
InhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAiMzY4OThlYjEyNTcy
ZjBhMWY4NWNiNTRkNGE5ZTkwYWZjYjZmNzA0NSIsCiAgICAgICAgICAiUHJl
cmVxcyI6IFsKICAgICAgICAgICAgMjM3LAogICAgICAgICAgICAyMzgKICAg
ICAgICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6IFsKICAgICAgICAgICAg
InhzYTIzOS5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAgIH0K
ICAgIH0sCiAgICAiNC45IjogewogICAgICAiWGVuVmVyc2lvbiI6ICI0Ljki
LAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAgICAg
ICAgIlN0YWJsZVJlZiI6ICIyY2MzZDMyZjQwYzcxY2IyNDI0NzdhM2Y4OTM4
MDc0ZDRmYzM2ODI5IiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAg
ICAgICAyMzcsCiAgICAgICAgICAgIDIzOAogICAgICAgICAgXSwKICAgICAg
ICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjM5LnBhdGNoIgog
ICAgICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICJtYXN0
ZXIiOiB7CiAgICAgICJYZW5WZXJzaW9uIjogIm1hc3RlciIsCiAgICAgICJS
ZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3RhYmxl
UmVmIjogImE4ZWE2ZTI2ODgxMThhM2UxOWUyOWIzOWUzMTZmYWE1Zjk2YWI5
ZDEiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAgIDIzNywK
ICAgICAgICAgICAgMjM4CiAgICAgICAgICBdLAogICAgICAgICAgIlBhdGNo
ZXMiOiBbCiAgICAgICAgICAgICJ4c2EyMzkucGF0Y2giCiAgICAgICAgICBd
CiAgICAgICAgfQogICAgICB9CiAgICB9CiAgfQp9

--=separator
Content-Type: application/octet-stream; name="xsa239.patch"
Content-Disposition: attachment; filename="xsa239.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvSFZNOiBwcmVmaWxsIHBhcnRpYWxseSB1c2VkIHZhcmlhYmxlIG9u
IGVtdWxhdGlvbiBwYXRocwoKQ2VydGFpbiBoYW5kbGVycyBpZ25vcmUgdGhl
IGFjY2VzcyBzaXplICh2aW9hcGljX3dyaXRlKCkgYmVpbmcgdGhlCmV4YW1w
bGUgdGhpcyB3YXMgZm91bmQgd2l0aCksIHBlcmhhcHMgbGVhZGluZyB0byBz
dWJzZXF1ZW50IHJlYWRzCnNlZWluZyBkYXRhIHRoYXQgd2Fzbid0IGFjdHVh
bGx5IHdyaXR0ZW4gYnkgdGhlIGd1ZXN0LiBGb3IKY29uc2lzdGVuY3kgYW5k
IGV4dHJhIHNhZmV0eSBhbHNvIGRvIHRoaXMgb24gdGhlIHJlYWQgcGF0aCBv
Zgpodm1fcHJvY2Vzc19pb19pbnRlcmNlcHQoKSwgZXZlbiBpZiB0aGlzIGRv
ZXNuJ3QgZGlyZWN0bHkgYWZmZWN0IHdoYXQKZ3Vlc3RzIGdldCB0byBzZWUs
IGFzIHdlJ3ZlIHN1cHBvc2VkbHkgYWxyZWFkeSBkZWFsdCB3aXRoIHJlYWQg
aGFuZGxlcnMKbGVhdmluZyBkYXRhIGNvbXBsZXRlbHkgdW5pdGlhbGl6ZWQu
CgpUaGlzIGlzIFhTQS0yMzkuCgpSZXBvcnRlZC1ieTogUm9nZXIgUGF1IE1v
bm7DqSA8cm9nZXIucGF1QGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBSb2dl
ciBQYXUgTW9ubsOpIDxyb2dlci5wYXVAY2l0cml4LmNvbT4KU2lnbmVkLW9m
Zi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgoKLS0tIGEv
eGVuL2FyY2gveDg2L2h2bS9lbXVsYXRlLmMKKysrIGIveGVuL2FyY2gveDg2
L2h2bS9lbXVsYXRlLmMKQEAgLTEyOSw3ICsxMjksNyBAQCBzdGF0aWMgaW50
IGh2bWVtdWxfZG9faW8oCiAgICAgICAgIC5jb3VudCA9ICpyZXBzLAogICAg
ICAgICAuZGlyID0gZGlyLAogICAgICAgICAuZGYgPSBkZiwKLSAgICAgICAg
LmRhdGEgPSBkYXRhLAorICAgICAgICAuZGF0YSA9IGRhdGFfaXNfYWRkciA/
IGRhdGEgOiAwLAogICAgICAgICAuZGF0YV9pc19wdHIgPSBkYXRhX2lzX2Fk
ZHIsIC8qIGlvcmVxX3QgZmllbGQgbmFtZSBpcyBtaXNsZWFkaW5nICovCiAg
ICAgICAgIC5zdGF0ZSA9IFNUQVRFX0lPUkVRX1JFQURZLAogICAgIH07Ci0t
LSBhL3hlbi9hcmNoL3g4Ni9odm0vaW50ZXJjZXB0LmMKKysrIGIveGVuL2Fy
Y2gveDg2L2h2bS9pbnRlcmNlcHQuYwpAQCAtMTI3LDYgKzEyNyw3IEBAIGlu
dCBodm1fcHJvY2Vzc19pb19pbnRlcmNlcHQoY29uc3Qgc3RydWMKICAgICAg
ICAgICAgIGFkZHIgPSAocC0+dHlwZSA9PSBJT1JFUV9UWVBFX0NPUFkpID8K
ICAgICAgICAgICAgICAgICAgICBwLT5hZGRyICsgc3RlcCAqIGkgOgogICAg
ICAgICAgICAgICAgICAgIHAtPmFkZHI7CisgICAgICAgICAgICBkYXRhID0g
MDsKICAgICAgICAgICAgIHJjID0gb3BzLT5yZWFkKGhhbmRsZXIsIGFkZHIs
IHAtPnNpemUsICZkYXRhKTsKICAgICAgICAgICAgIGlmICggcmMgIT0gWDg2
RU1VTF9PS0FZICkKICAgICAgICAgICAgICAgICBicmVhazsKQEAgLTE2MSw2
ICsxNjIsNyBAQCBpbnQgaHZtX3Byb2Nlc3NfaW9faW50ZXJjZXB0KGNvbnN0
IHN0cnVjCiAgICAgICAgIHsKICAgICAgICAgICAgIGlmICggcC0+ZGF0YV9p
c19wdHIgKQogICAgICAgICAgICAgeworICAgICAgICAgICAgICAgIGRhdGEg
PSAwOwogICAgICAgICAgICAgICAgIHN3aXRjaCAoIGh2bV9jb3B5X2Zyb21f
Z3Vlc3RfcGh5cygmZGF0YSwgcC0+ZGF0YSArIHN0ZXAgKiBpLAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
LT5zaXplKSApCiAgICAgICAgICAgICAgICAgewo=

--=separator
Content-Type: application/octet-stream; name="xsa239-4.5.patch"
Content-Disposition: attachment; filename="xsa239-4.5.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvSFZNOiBwcmVmaWxsIHBhcnRpYWxseSB1c2VkIHZhcmlhYmxlIG9u
IGVtdWxhdGlvbiBwYXRocwoKQ2VydGFpbiBoYW5kbGVycyBpZ25vcmUgdGhl
IGFjY2VzcyBzaXplICh2aW9hcGljX3dyaXRlKCkgYmVpbmcgdGhlCmV4YW1w
bGUgdGhpcyB3YXMgZm91bmQgd2l0aCksIHBlcmhhcHMgbGVhZGluZyB0byBz
dWJzZXF1ZW50IHJlYWRzCnNlZWluZyBkYXRhIHRoYXQgd2Fzbid0IGFjdHVh
bGx5IHdyaXR0ZW4gYnkgdGhlIGd1ZXN0LiBGb3IKY29uc2lzdGVuY3kgYW5k
IGV4dHJhIHNhZmV0eSBhbHNvIGRvIHRoaXMgb24gdGhlIHJlYWQgcGF0aCBv
Zgpodm1fcHJvY2Vzc19pb19pbnRlcmNlcHQoKSwgZXZlbiBpZiB0aGlzIGRv
ZXNuJ3QgZGlyZWN0bHkgYWZmZWN0IHdoYXQKZ3Vlc3RzIGdldCB0byBzZWUs
IGFzIHdlJ3ZlIHN1cHBvc2VkbHkgYWxyZWFkeSBkZWFsdCB3aXRoIHJlYWQg
aGFuZGxlcnMKbGVhdmluZyBkYXRhIGNvbXBsZXRlbHkgdW5pdGlhbGl6ZWQu
CgpUaGlzIGlzIFhTQS0yMzkuCgpSZXBvcnRlZC1ieTogUm9nZXIgUGF1IE1v
bm7DqSA8cm9nZXIucGF1QGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBSb2dl
ciBQYXUgTW9ubsOpIDxyb2dlci5wYXVAY2l0cml4LmNvbT4KU2lnbmVkLW9m
Zi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgoKLS0tIGEv
eGVuL2FyY2gveDg2L2h2bS9pbnRlcmNlcHQuYworKysgYi94ZW4vYXJjaC94
ODYvaHZtL2ludGVyY2VwdC5jCkBAIC01NSw2ICs1NSw3IEBAIHN0YXRpYyBp
bnQgaHZtX21taW9fYWNjZXNzKHN0cnVjdCB2Y3B1ICoKICAgICB7CiAgICAg
ICAgIGlmICggcC0+ZGlyID09IElPUkVRX1JFQUQgKQogICAgICAgICB7Cisg
ICAgICAgICAgICBkYXRhID0gMDsKICAgICAgICAgICAgIGlmICggdmlvLT5t
bWlvX3JldHJ5aW5nICkKICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAg
ICBpZiAoIHZpby0+bW1pb19sYXJnZV9yZWFkX2J5dGVzICE9IHAtPnNpemUg
KQpAQCAtNzYsNiArNzcsNyBAQCBzdGF0aWMgaW50IGh2bV9tbWlvX2FjY2Vz
cyhzdHJ1Y3QgdmNwdSAqCiAgICAgewogICAgICAgICBmb3IgKCBpID0gMDsg
aSA8IHAtPmNvdW50OyBpKysgKQogICAgICAgICB7CisgICAgICAgICAgICBk
YXRhID0gMDsKICAgICAgICAgICAgIGlmICggdmlvLT5tbWlvX3JldHJ5aW5n
ICkKICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICBpZiAoIHZpby0+
bW1pb19sYXJnZV9yZWFkX2J5dGVzICE9IHAtPnNpemUgKQpAQCAtMTI0LDYg
KzEyNiw3IEBAIHN0YXRpYyBpbnQgaHZtX21taW9fYWNjZXNzKHN0cnVjdCB2
Y3B1ICoKICAgICB7CiAgICAgICAgIGZvciAoIGkgPSAwOyBpIDwgcC0+Y291
bnQ7IGkrKyApCiAgICAgICAgIHsKKyAgICAgICAgICAgIGRhdGEgPSAwOwog
ICAgICAgICAgICAgc3dpdGNoICggaHZtX2NvcHlfZnJvbV9ndWVzdF9waHlz
KCZkYXRhLCBwLT5kYXRhICsgc3RlcCAqIGksCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcC0+c2l6ZSkgKQogICAg
ICAgICAgICAgewpAQCAtMjIyLDYgKzIyNSw3IEBAIHN0YXRpYyBpbnQgcHJv
Y2Vzc19wb3J0aW9faW50ZXJjZXB0KHBvcnQKICAgICB7CiAgICAgICAgIGlm
ICggcC0+ZGlyID09IElPUkVRX1JFQUQgKQogICAgICAgICB7CisgICAgICAg
ICAgICBkYXRhID0gMDsKICAgICAgICAgICAgIGlmICggdmlvLT5tbWlvX3Jl
dHJ5aW5nICkKICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICBpZiAo
IHZpby0+bW1pb19sYXJnZV9yZWFkX2J5dGVzICE9IHAtPnNpemUgKQpAQCAt
MjQ2LDYgKzI1MCw3IEBAIHN0YXRpYyBpbnQgcHJvY2Vzc19wb3J0aW9faW50
ZXJjZXB0KHBvcnQKICAgICB7CiAgICAgICAgIGZvciAoIGkgPSAwOyBpIDwg
cC0+Y291bnQ7IGkrKyApCiAgICAgICAgIHsKKyAgICAgICAgICAgIGRhdGEg
PSAwOwogICAgICAgICAgICAgaWYgKCB2aW8tPm1taW9fcmV0cnlpbmcgKQog
ICAgICAgICAgICAgewogICAgICAgICAgICAgICAgIGlmICggdmlvLT5tbWlv
X2xhcmdlX3JlYWRfYnl0ZXMgIT0gcC0+c2l6ZSApCg==

--=separator--
