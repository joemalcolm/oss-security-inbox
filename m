X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10381" "Wednesday" "11" "December" "2019" "12:09:33" "+0000" "Xen.org security team" "security@xen.org" nil "233" nil nil nil nil "12" nil nil (number mark "U       security@xen Dec 11  233/10381 " thread-indent "\"[oss-security] Xen Security Advisory 308 v3 (CVE-2019-19583) - VMX: VMentry failure with debug exceptions and blocked states\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 308 v3 (CVE-2019-19583) - VMX: VMentry failure with debug exceptions and blocked states" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14207 invoked by uid 550); 11 Dec 2019 12:09:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14098 invoked from network); 11 Dec 2019 12:09:50 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.508 (Entity 5.508)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1if0o9-0001dU-9U@xenbits.xenproject.org>
Date: Wed, 11 Dec 2019 12:09:33 +0000
Subject: [oss-security] Xen Security Advisory 308 v3 (CVE-2019-19583) - VMX: VMentry
 failure with debug exceptions and blocked states

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2019-19583 / XSA-308
                               version 3

     VMX: VMentry failure with debug exceptions and blocked states

UPDATES IN VERSION 3
====================

Public release.

Updated metadata to add 4.13, update StableRef's

ISSUE DESCRIPTION
=================

Please see XSA-260 for background on the MovSS shadow:
  http://xenbits.xen.org/xsa/advisory-260.html

Please see XSA-156 for background on the need for #DB interception:
  http://xenbits.xen.org/xsa/advisory-156.html

The VMX VMEntry checks does not like the exact combination of state
which occurs when #DB in intercepted, Single Stepping is active, and
blocked by STI/MovSS is active, despite this being a legitimate state to
be in.  The resulting VMEntry failure is fatal to the guest.

IMPACT
======

HVM/PVH guest userspace code may be able to crash the guest, resulting
in a guest Denial of Service.

VULNERABLE SYSTEMS
==================

All versions of Xen are affected.

Only systems supporting VMX hardware virtual extensions (Intel, Cyrix or
Zhaoxin CPUs) are affected. Arm and AMD systems are unaffected.

Only HVM/PVH guests are affected.  PV guests cannot leverage the
vulnerability.

MITIGATION
==========

Running only PV guests will avoid this vulnerability.

Running HVM guests on only AMD hardware will also avoid this
vulnerability.

CREDITS
=======

This issue was discovered by Håkon Alstadheim and diagnosed as a
security issue by Andrew Cooper of Citrix.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa308.patch           xen-unstable, Xen 4.13.x .. Xen 4.8.x

$ sha256sum xsa308*
4aa06d21478d9debb12388ff14d8abc31982e18895db40d0cec78fcc9fe68ef2  xsa308.meta
7e782b09b16f7534c8db52042f7bb3bd730d108571c8b10af184ae0b02fdae9d  xsa308.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAl3w3FsMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZWHwIAIfuiZE/IyxMwTAkZL3EugBnlxxHodoBuj6imn+n
c9DvMk3TCi3vSgvZQtVpP0eNuuLN5285hVyI95lRE0LTmtRLc7jATktStRTgGkua
znW8U1sqkVRWJcVuN4uAM2zIY60pMZnFjZxdJW12+wpcA13LInE1cDWnlRv+cdD9
7DtVkGUWXjfbcm3KXGZw8YpKvTgVp983VpywR/1lzXZ+MexWzKuEco8fZFayw0ne
3nT/23Y1ofjCflNFjc7HoeJZl+zy493J/rqHS8yYI3d4vTdIfjue3rZ/X6305el9
zjCG5zXygrWVAoKGWVnPZweX1jw8rd6BlsPTqQb53UH94zc=
=yTxW
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa308.meta"
Content-Disposition: attachment; filename="xsa308.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAzMDgsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC4xMyIsCiAgICAiNC4xMiIsCiAgICAiNC4xMSIs
CiAgICAiNC4xMCIsCiAgICAiNC45IiwKICAgICI0LjgiCiAgXSwKICAiVHJl
ZXMiOiBbCiAgICAieGVuIgogIF0sCiAgIlJlY2lwZXMiOiB7CiAgICAiNC4x
MCI6IHsKICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAg
ICAgICAgICJTdGFibGVSZWYiOiAiZTQ4OTk1NTBmZjc4MzRlMWVhNWRmYmJm
YjFjNjE4ZjY0ZTI0Nzc2MSIsCiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAg
ICAgICAgICAgMzA3CiAgICAgICAgICBdLAogICAgICAgICAgIlBhdGNoZXMi
OiBbCiAgICAgICAgICAgICJ4c2EzMDgucGF0Y2giCiAgICAgICAgICBdCiAg
ICAgICAgfQogICAgICB9CiAgICB9LAogICAgIjQuMTEiOiB7CiAgICAgICJS
ZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3RhYmxl
UmVmIjogIjIzOWQzN2U1MTRjOTNlMjlkNTBkNzFmNzM0YjFkYzQ1M2IyMjM2
YTYiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAgIDMwNwog
ICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAg
ICAieHNhMzA4LnBhdGNoIgogICAgICAgICAgXQogICAgICAgIH0KICAgICAg
fQogICAgfSwKICAgICI0LjEyIjogewogICAgICAiUmVjaXBlcyI6IHsKICAg
ICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICIyMTJiODUw
MGNiMzk0YjNhNjY0NjU1Zjc5Y2EwYmRjYjMxMjQ2ZmY3IiwKICAgICAgICAg
ICJQcmVyZXFzIjogWwogICAgICAgICAgICAzMDcKICAgICAgICAgIF0sCiAg
ICAgICAgICAiUGF0Y2hlcyI6IFsKICAgICAgICAgICAgInhzYTMwOC5wYXRj
aCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAgIH0KICAgIH0sCiAgICAi
NC4xMyI6IHsKICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsK
ICAgICAgICAgICJTdGFibGVSZWYiOiAiZmQ5YmZhYmY2OWVhNTlmMjI4MGMx
NzAzNTAwNzkzZmExNWU4MTk1NiIsCiAgICAgICAgICAiUHJlcmVxcyI6IFtd
LAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAgICAgICAgICJ4c2EzMDgu
cGF0Y2giCiAgICAgICAgICBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAog
ICAgIjQuOCI6IHsKICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAgInhlbiI6
IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAiYTI2MGU5M2RiNzk0ZjU2MDUw
MmU4OTg1OWFhZjExMWQxNzhlODBlNCIsCiAgICAgICAgICAiUHJlcmVxcyI6
IFsKICAgICAgICAgICAgMzA3CiAgICAgICAgICBdLAogICAgICAgICAgIlBh
dGNoZXMiOiBbCiAgICAgICAgICAgICJ4c2EzMDgucGF0Y2giCiAgICAgICAg
ICBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAogICAgIjQuOSI6IHsKICAg
ICAgIlJlY2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAgICAgICAgICJT
dGFibGVSZWYiOiAiOGQxZWU5ZjJjNDczZmVjNTRiNTAxOGMwMWFkNTU2ZDdh
ZmQ2MmMxNyIsCiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAg
MzA3CiAgICAgICAgICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAg
ICAgICAgICJ4c2EzMDgucGF0Y2giCiAgICAgICAgICBdCiAgICAgICAgfQog
ICAgICB9CiAgICB9LAogICAgIm1hc3RlciI6IHsKICAgICAgIlJlY2lwZXMi
OiB7CiAgICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAi
YjczYWFkNGM4YjZhNzY3Y2UxNWNjOGNiNjVmOWVlYWI3YmZjY2RhZSIsCiAg
ICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMzA3CiAgICAgICAg
ICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAgICAgICAgICJ4c2Ez
MDgucGF0Y2giCiAgICAgICAgICBdCiAgICAgICAgfQogICAgICB9CiAgICB9
CiAgfQp9

--=separator
Content-Type: application/octet-stream; name="xsa308.patch"
Content-Disposition: attachment; filename="xsa308.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KU3ViamVjdDogeDg2L3Z0eDogV29yayBhcm91bmQgU2luZ2xlU3RlcCAr
IFNUSS9Nb3ZTUyBWTUVudHJ5IGZhaWx1cmVzCgpTZWUgcGF0Y2ggY29tbWVu
dCBmb3IgdGVjaG5pY2FsIGRldGFpbHMuCgpDb25jZXJuaW5nIHRoZSB0aW1l
bGluZSwgdGhpcyB3YXMgZmlyc3QgZGlzY292ZXJlZCBpbiB0aGUgYWZ0ZXJt
YXRoIG9mClhTQS0xNTYgd2hpY2ggY2F1c2VkICNEQiB0byBiZSBpbnRlcmNl
cHRlZCB1bmNvbmRpdGlvbmFsbHksIGJ1dCBvbmx5IGluCml0cyBTaW5nbGVT
dGVwICsgU1RJIGZvcm0gd2hpY2ggaXMgcmVzdHJpY3RlZCB0byBwcml2aWxl
Z2VkIHNvZnR3YXJlLgoKQWZ0ZXIgd29ya2luZyB3aXRoIEludGVsIGFuZCBp
ZGVudGlmeWluZyB0aGUgcHJvYmxlbWF0aWMgdm1lbnRyeSBjaGVjaywKdGhp
cyB3b3JrYXJvdW5kIHdhcyBzdWdnZXN0ZWQsIGFuZCB0aGUgcGF0Y2ggd2Fz
IHBvc3RlZCBpbiBhbiBSRkMKc2VyaWVzLiAgT3V0c3RhbmRpbmcgd29yayBm
b3IgdGhhdCBzZXJpZXMgKG5vdCBicmVha2luZyBJbnRyb3NwZWN0aW9uKQpp
cyBzdGlsbCBwZW5kaW5nLCBhbmQgdGhpcyBmaXggZnJvbSBpdCAod2hpY2gg
d291bGRuJ3QgaGF2ZSBiZWVuIGdvb2QKZW5vdWdoIGluIGl0cyBvcmlnaW5h
bCBmb3JtKSB3YXNuJ3QgY29tbWl0dGVkLgoKQSB2bWVudHJ5IGZhaWx1cmUg
d2FzIHJlcG9ydGVkIHRvIHhlbi1kZXZlbCwgYW5kIGRlYnVnZ2luZyBpZGVu
dGlmaWVkCnRoaXMgYnVnIGluIGl0cyBTaW5nbGVTdGVwICsgTW92U1MgZm9y
bSBieSB3YXkgb2YgSU5UMSwgd2hpY2ggZG9lcyBub3QKaW52b2x2ZSB0aGUg
dXNlIG9mIGFueSBwcml2aWxlZ2VkIGluc3RydWN0aW9ucywgYW5kIHByb3Zp
bmcgdGhpcyB0byBiZSBhCnNlY3VyaXR5IGlzc3VlLgoKVGhpcyBpcyBYU0Et
MzA4CgpSZXBvcnRlZC1ieTogSMOla29uIEFsc3RhZGhlaW0gPGhha29uQGFs
c3RhZGhlaW0ucHJpdi5ubz4KU2lnbmVkLW9mZi1ieTogQW5kcmV3IENvb3Bl
ciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEph
biBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IEtldmlu
IFRpYW4gPGtldmluLnRpYW5AaW50ZWwuY29tPgoKZGlmZiAtLWdpdCBhL3hl
bi9hcmNoL3g4Ni9odm0vdm14L3ZteC5jIGIveGVuL2FyY2gveDg2L2h2bS92
bXgvdm14LmMKaW5kZXggNmE1ZWViNWMxMy4uNTliODM2ZjQzZiAxMDA2NDQK
LS0tIGEveGVuL2FyY2gveDg2L2h2bS92bXgvdm14LmMKKysrIGIveGVuL2Fy
Y2gveDg2L2h2bS92bXgvdm14LmMKQEAgLTM4MTYsNiArMzgxNiw0MiBAQCB2
b2lkIHZteF92bWV4aXRfaGFuZGxlcihzdHJ1Y3QgY3B1X3VzZXJfcmVncyAq
cmVncykKICAgICAgICAgICAgIEhWTVRSQUNFXzFEKFRSQVBfREVCVUcsIGV4
aXRfcXVhbGlmaWNhdGlvbik7CiAgICAgICAgICAgICBfX3Jlc3RvcmVfZGVi
dWdfcmVnaXN0ZXJzKHYpOwogICAgICAgICAgICAgd3JpdGVfZGVidWdyZWco
NiwgZXhpdF9xdWFsaWZpY2F0aW9uIHwgRFJfU1RBVFVTX1JFU0VSVkVEX09O
RSk7CisKKyAgICAgICAgICAgIC8qCisgICAgICAgICAgICAgKiBXb3JrIGFy
b3VuZCBTaW5nbGVTdGVwICsgU1RJL01vdlNTIFZNRW50cnkgZmFpbHVyZXMu
CisgICAgICAgICAgICAgKgorICAgICAgICAgICAgICogV2UgaW50ZXJjZXB0
ICNEQiB1bmNvbmRpdGlvbmFsbHkgdG8gd29yayBhcm91bmQgQ1ZFLTIwMTUt
ODEwNCAvCisgICAgICAgICAgICAgKiBYU0EtMTU2IChndWVzdC1rZXJuZWwg
aW5kdWNlZCBob3N0IERvUykuCisgICAgICAgICAgICAgKgorICAgICAgICAg
ICAgICogU1RJL01vdlNTIHNoYWRvd3MgYmxvY2svZGVmZXIgaW50ZXJydXB0
cy9leGNlcHRpb25zIChleGFjdAorICAgICAgICAgICAgICogZGV0YWlscyBh
cmUgY29tcGxpY2F0ZWQgYW5kIHBvb3JseSBkb2N1bWVudGVkKS4gIERlYnVn
CisgICAgICAgICAgICAgKiBleGNlcHRpb25zIGRlbGF5ZWQgZm9yIGFueSBy
ZWFzb24gYXJlIHN0b3JlZCBpbiB0aGUKKyAgICAgICAgICAgICAqIFBFTkRJ
TkdfREJHX0VYQ0VQVElPTlMgZmllbGQuCisgICAgICAgICAgICAgKgorICAg
ICAgICAgICAgICogVGhlIGZhbGxpbmcgZWRnZSBvZiBQRU5ESU5HX0RCRyBj
YXVzZXMgI0RCIHRvIGJlIGRlbGl2ZXJlZCwKKyAgICAgICAgICAgICAqIHJl
c3VsdGluZyBpbiBhIFZNRXhpdCwgYXMgI0RCIGlzIGludGVyY2VwdGVkLiAg
VGhlIFZNQ1Mgc3RpbGwKKyAgICAgICAgICAgICAqIHJlcG9ydHMgYmxvY2tl
ZC1ieS1TVEkvTW92U1MuCisgICAgICAgICAgICAgKgorICAgICAgICAgICAg
ICogVGhlIFZNRW50cnkgY2hlY2tzIHdoZW4gRUZMQUdTLlRGIGlzIHNldCBk
b24ndCBsaWtlIGEgVk1DUyBpbgorICAgICAgICAgICAgICogdGhpcyBzdGF0
ZS4gIERlc3BpdGUgYSAjREIgcXVldWVkIGluIFZNRU5UUllfSU5UUl9JTkZP
LCB0aGUKKyAgICAgICAgICAgICAqIHN0YXRlIGlzIHJlamVjdGVkIGFzIERS
Ni5CUyBpc24ndCBwZW5kaW5nLiAgRml4IHRoaXMgdXAuCisgICAgICAgICAg
ICAgKi8KKyAgICAgICAgICAgIGlmICggdW5saWtlbHkocmVncy0+ZWZsYWdz
ICYgWDg2X0VGTEFHU19URikgKQorICAgICAgICAgICAgeworICAgICAgICAg
ICAgICAgIHVuc2lnbmVkIGxvbmcgaW50X2luZm87CisKKyAgICAgICAgICAg
ICAgICBfX3ZtcmVhZChHVUVTVF9JTlRFUlJVUFRJQklMSVRZX0lORk8sICZp
bnRfaW5mbyk7CisKKyAgICAgICAgICAgICAgICBpZiAoIGludF9pbmZvICYg
KFZNWF9JTlRSX1NIQURPV19TVEkgfCBWTVhfSU5UUl9TSEFET1dfTU9WX1NT
KSApCisgICAgICAgICAgICAgICAgeworICAgICAgICAgICAgICAgICAgICB1
bnNpZ25lZCBsb25nIHBlbmRpbmdfZGJnOworCisgICAgICAgICAgICAgICAg
ICAgIF9fdm1yZWFkKEdVRVNUX1BFTkRJTkdfREJHX0VYQ0VQVElPTlMsICZw
ZW5kaW5nX2RiZyk7CisgICAgICAgICAgICAgICAgICAgIF9fdm13cml0ZShH
VUVTVF9QRU5ESU5HX0RCR19FWENFUFRJT05TLAorICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcGVuZGluZ19kYmcgfCBEUl9TVEVQKTsKKyAgICAg
ICAgICAgICAgICB9CisgICAgICAgICAgICB9CisKICAgICAgICAgICAgIGlm
ICggIXYtPmRvbWFpbi0+ZGVidWdnZXJfYXR0YWNoZWQgKQogICAgICAgICAg
ICAgewogICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgaW5zbl9sZW4g
PSAwOwo=

--=separator--
