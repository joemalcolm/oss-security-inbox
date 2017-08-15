X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14577" "Tuesday" "15" "August" "2017" "12:05:49" "+0000" "Xen.org security team" "security@xen.org" "<E1dhabV-0006du-B7@xenbits.xenproject.org>" "310" "[oss-security] Xen Security Advisory 227 (CVE-2017-12137) - x86: PV privilege escalation via map_grant_ref" nil nil nil "8" "2017081512:05:49" "[oss-security] Xen Security Advisory 227 (CVE-2017-12137) - x86: PV privilege escalation via map_grant_ref" (number mark "U       security@xen Aug 15  310/14577 " thread-indent "\"[oss-security] Xen Security Advisory 227 (CVE-2017-12137) - x86: PV privilege escalation via map_grant_ref\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17669 invoked by uid 550); 15 Aug 2017 12:06:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17647 invoked from network); 15 Aug 2017 12:06:06 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1dhabV-0006du-B7@xenbits.xenproject.org>
Date: Tue, 15 Aug 2017 12:05:49 +0000
Subject: [oss-security] Xen Security Advisory 227 (CVE-2017-12137) - x86: PV privilege
 escalation via map_grant_ref

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-12137 / XSA-227
                               version 3

            x86: PV privilege escalation via map_grant_ref

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

When mapping a grant reference, a guest must inform Xen of where it
would like the grant mapped.  For PV guests, this is done by nominating
an existing linear address, or an L1 pagetable entry, to be altered.

Neither of these PV paths check for alignment of the passed parameter.
The linear address path suitably truncates the linear address when
calculating the L1 entry to use, but the path which uses a directly
nominated L1 entry performs no checks.

This causes Xen to make an incorrectly-aligned update to a pagetable,
which corrupts both the intended entry and the subsequent entry with
values which are largely guest controlled.  If the misaligned value
crosses a page boundary, then an arbitrary other heap page is
corrupted.

IMPACT
======

A PV guest can elevate its privilege to that of the host.

VULNERABLE SYSTEMS
==================

All versions of Xen are vulnerable.

Only x86 systems are vulnerable.

Any system running untrusted PV guests is vulnerable.

The vulnerability is exposed to PV stub qemu serving as the device model
for HVM guests.  Our default assumption is that an HVM guest has
compromised its PV stub qemu.  By extension, it is likely that the
vulnerability is exposed to HVM guests which are served by a PV stub
qemu.

MITIGATION
==========

Running only HVM guests, served by a dom0-based qemu, will avoid this
vulnerability.

CREDITS
=======

This issue was discovered by Andrew Cooper of Citrix.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa227.patch           xen-unstable, Xen 4.9.x, 4.8.x, 4.7.x
xsa227-4.6.patch       Xen 4.6.x
xsa227-4.5.patch       Xen 4.5.x

$ sha256sum xsa227*
c48cc3be47e81a4ceebcf60659b8755516c68916fc5150920ed42c6b61e3f219  xsa227.meta
9923a47e5f86949800887596f098954a08ef73a01d74b1dbe16cab2e6b1fabb2  xsa227.patch
6f83d0d9ff853192840d2b82d26d8fde21473bf4ac1441a153f3ee02efd1dd67  xsa227-4.5.patch
162b991b27b86f210089526a01cae715563d3a069c92f42538b423bba7709fcc  xsa227-4.6.patch
$

(The .meta file is a prototype machine-readable file for describing
which patches are to be applied how.)

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

iQEcBAEBCAAGBQJZkuNOAAoJEIP+FMlX6CvZ9wsH/3/DA8EENxPdhgoNEihvHgPP
rquggFGcmgiJZyuy6+e3PZKUwQmUcVdPuVE5h+8NWYRCTjxa15LC/auAmkMHP170
f7nkSA6oU0zT1mxxqWWjht+CCJ56dmpJN+WGXQMasVEO9PLYR7gOxf90rqDuzqE8
zcQA4OyIOpsEH4Y2k2hjYFeLleWSLZKSPAy8fupZv34FakZDDLgxPMdWSrYQX/pP
r2QmLoVk4pSQYZzy5aAZWgLugR+ewOmgYTntzGYSEB2VqEgl6vtA8STVqB5WsYZ4
eumUUZRBUeo9n2U9TgWPmKr5JtvC9w2/cjV6HysO5vUwuLJUICX25O9BE3VnBs0=
=ulEd
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa227.meta"
Content-Disposition: attachment; filename="xsa227.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAyMjcsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC45IiwKICAgICI0LjgiLAogICAgIjQuNyIsCiAg
ICAiNC42IiwKICAgICI0LjUiCiAgXSwKICAiVHJlZXMiOiBbCiAgICAieGVu
IgogIF0sCiAgIlJlY2lwZXMiOiB7CiAgICAiNC41IjogewogICAgICAiWGVu
VmVyc2lvbiI6ICI0LjUiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAi
eGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICIzMjE3MTI5ZWI2NWMw
ZDQ5OTVlZDA4ZmI4OTE5ZTNjMzM0Y2FkNTQ4IiwKICAgICAgICAgICJQcmVy
ZXFzIjogWwogICAgICAgICAgICAyMjYKICAgICAgICAgIF0sCiAgICAgICAg
ICAiUGF0Y2hlcyI6IFsKICAgICAgICAgICAgInhzYTIyNy00LjUucGF0Y2gi
CiAgICAgICAgICBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAogICAgIjQu
NiI6IHsKICAgICAgIlhlblZlcnNpb24iOiAiNC42IiwKICAgICAgIlJlY2lw
ZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYi
OiAiZDcwOGI2OTVhMzZiNGZkY2Q4ZTQ4ZTZmYzhlNjExZTAxMGY1MjgwYiIs
CiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMjI2CiAgICAg
ICAgICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAgICAgICAgICJ4
c2EyMjctNC42LnBhdGNoIgogICAgICAgICAgXQogICAgICAgIH0KICAgICAg
fQogICAgfSwKICAgICI0LjciOiB7CiAgICAgICJYZW5WZXJzaW9uIjogIjQu
NyIsCiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAg
ICAgICAiU3RhYmxlUmVmIjogIjRmYmZhMzRiMWEwYmIzMjlhYTU3Mjc1NDIx
ZTJlOTAyN2QzMmFhZDUiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAg
ICAgICAgIDIyNgogICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjog
WwogICAgICAgICAgICAieHNhMjI3LnBhdGNoIgogICAgICAgICAgXQogICAg
ICAgIH0KICAgICAgfQogICAgfSwKICAgICI0LjgiOiB7CiAgICAgICJYZW5W
ZXJzaW9uIjogIjQuOCIsCiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4
ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjogIjFlNmM4OGZhZmNiNDY2
NGE1MDEyMzlkMWQ4NjY1YzM0YjUzODQ2NDgiLAogICAgICAgICAgIlByZXJl
cXMiOiBbCiAgICAgICAgICAgIDIyNgogICAgICAgICAgXSwKICAgICAgICAg
ICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjI3LnBhdGNoIgogICAg
ICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICI0LjkiOiB7
CiAgICAgICJYZW5WZXJzaW9uIjogIjQuOSIsCiAgICAgICJSZWNpcGVzIjog
ewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjogIjBm
YWRhMDU5YTc5NDgxNTM5NzZjYzE1MmUzNjYzM2RlZTNkNWIyNzMiLAogICAg
ICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAgIDIyNgogICAgICAgICAg
XSwKICAgICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjI3
LnBhdGNoIgogICAgICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwK
ICAgICJtYXN0ZXIiOiB7CiAgICAgICJYZW5WZXJzaW9uIjogIm1hc3RlciIs
CiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAg
ICAiU3RhYmxlUmVmIjogIjU1OTI0YmFmMjIxMWRkY2Y1YmE4ZjcwMmM5YTRj
MDc3MzBlMGM4ZTgiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAg
ICAgIDIyNgogICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWwog
ICAgICAgICAgICAieHNhMjI3LnBhdGNoIgogICAgICAgICAgXQogICAgICAg
IH0KICAgICAgfQogICAgfQogIH0KfQ==

--=separator
Content-Type: application/octet-stream; name="xsa227.patch"
Content-Disposition: attachment; filename="xsa227.patch"
Content-Transfer-Encoding: base64

RnJvbSBmYTcyNjhiOTRmOGEwYTc3OTJlZTEyZDViOGUyM2E2MGU1MmEzYTg0
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBUdWUsIDIwIEp1
biAyMDE3IDE5OjE4OjU0ICswMTAwClN1YmplY3Q6IFtQQVRDSF0geDg2L2dy
YW50OiBEaXNhbGxvdyBtaXNhbGlnbmVkIFBURXMKClBhZ2V0YWJsZSBlbnRy
aWVzIG11c3QgYmUgYWxpZ25lZCB0byBmdW5jdGlvbiBjb3JyZWN0bHkuICBE
aXNhbGxvdyBhdHRlbXB0cwpmcm9tIHRoZSBndWVzdCB0byBoYXZlIGEgZ3Jh
bnQgUFRFIGNyZWF0ZWQgYXQgYSBtaXNhbGlnbmVkIGFkZHJlc3MsIHdoaWNo
CndvdWxkIHJlc3VsdCBpbiBjb3JydXB0aW9uIG9mIHRoZSBMMSB0YWJsZSB3
aXRoIGxhcmdlbHktZ3Vlc3QtY29udHJvbGxlZAp2YWx1ZXMuCgpUaGlzIGlz
IFhTQS0yMjcKClNpZ25lZC1vZmYtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJl
dy5jb29wZXIzQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGlj
aCA8amJldWxpY2hAc3VzZS5jb20+Ci0tLQogeGVuL2FyY2gveDg2L21tLmMg
fCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL3hlbi9hcmNoL3g4Ni9tbS5jIGIveGVu
L2FyY2gveDg2L21tLmMKaW5kZXggOTdiM2I0Yi4uMDBmNTE3YSAxMDA2NDQK
LS0tIGEveGVuL2FyY2gveDg2L21tLmMKKysrIGIveGVuL2FyY2gveDg2L21t
LmMKQEAgLTM3NjMsNiArMzc2Myw5IEBAIHN0YXRpYyBpbnQgY3JlYXRlX2dy
YW50X3B0ZV9tYXBwaW5nKAogICAgIGwxX3BnZW50cnlfdCBvbDFlOwogICAg
IHN0cnVjdCBkb21haW4gKmQgPSB2LT5kb21haW47CiAKKyAgICBpZiAoICFJ
U19BTElHTkVEKHB0ZV9hZGRyLCBzaXplb2YobmwxZSkpICkKKyAgICAgICAg
cmV0dXJuIEdOVFNUX2dlbmVyYWxfZXJyb3I7CisKICAgICBhZGp1c3RfZ3Vl
c3RfbDFlKG5sMWUsIGQpOwogCiAgICAgZ21mbiA9IHB0ZV9hZGRyID4+IFBB
R0VfU0hJRlQ7CkBAIC0zODE5LDYgKzM4MjIsMTYgQEAgc3RhdGljIGludCBk
ZXN0cm95X2dyYW50X3B0ZV9tYXBwaW5nKAogICAgIHN0cnVjdCBwYWdlX2lu
Zm8gKnBhZ2U7CiAgICAgbDFfcGdlbnRyeV90IG9sMWU7CiAKKyAgICAvKgor
ICAgICAqIGFkZHIgY29tZXMgZnJvbSBYZW4ncyBhY3RpdmVfZW50cnkgdHJh
Y2tpbmcgc28gaXNuJ3QgZ3Vlc3QgY29udHJvbGxlZCwKKyAgICAgKiBidXQg
aXQgaGFkIHN0aWxsIGJldHRlciBiZSBQVEUtYWxpZ25lZC4KKyAgICAgKi8K
KyAgICBpZiAoICFJU19BTElHTkVEKGFkZHIsIHNpemVvZihvbDFlKSkgKQor
ICAgIHsKKyAgICAgICAgQVNTRVJUX1VOUkVBQ0hBQkxFKCk7CisgICAgICAg
IHJldHVybiBHTlRTVF9nZW5lcmFsX2Vycm9yOworICAgIH0KKwogICAgIGdt
Zm4gPSBhZGRyID4+IFBBR0VfU0hJRlQ7CiAgICAgcGFnZSA9IGdldF9wYWdl
X2Zyb21fZ2ZuKGQsIGdtZm4sIE5VTEwsIFAyTV9BTExPQyk7CiAKLS0gCjIu
MS40Cgo=

--=separator
Content-Type: application/octet-stream; name="xsa227-4.5.patch"
Content-Disposition: attachment; filename="xsa227-4.5.patch"
Content-Transfer-Encoding: base64

RnJvbSAzYWFiODgxYzczMzFjZjkzZmZkOGQyZjJkZDlhZGZkMThlZDRmYzk5
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBUdWUsIDIwIEp1
biAyMDE3IDE5OjE4OjU0ICswMTAwClN1YmplY3Q6IFtQQVRDSF0geDg2L2dy
YW50OiBEaXNhbGxvdyBtaXNhbGlnbmVkIFBURXMKClBhZ2V0YWJsZSBlbnRy
aWVzIG11c3QgYmUgYWxpZ25lZCB0byBmdW5jdGlvbiBjb3JyZWN0bHkuICBE
aXNhbGxvdyBhdHRlbXB0cwpmcm9tIHRoZSBndWVzdCB0byBoYXZlIGEgZ3Jh
bnQgUFRFIGNyZWF0ZWQgYXQgYSBtaXNhbGlnbmVkIGFkZHJlc3MsIHdoaWNo
CndvdWxkIHJlc3VsdCBpbiBjb3JydXB0aW9uIG9mIHRoZSBMMSB0YWJsZSB3
aXRoIGxhcmdlbHktZ3Vlc3QtY29udHJvbGxlZAp2YWx1ZXMuCgpUaGlzIGlz
IFhTQS0yMjcKClNpZ25lZC1vZmYtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJl
dy5jb29wZXIzQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGlj
aCA8amJldWxpY2hAc3VzZS5jb20+Ci0tLQogeGVuL2FyY2gveDg2L21tLmMg
ICAgICAgIHwgMTMgKysrKysrKysrKysrKwogeGVuL2luY2x1ZGUveGVuL2Nv
bmZpZy5oIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL3hlbi9hcmNoL3g4Ni9tbS5jIGIveGVuL2Fy
Y2gveDg2L21tLmMKaW5kZXggNzBiZjUyZjYwYS4uNzBkZmVjNWFmMSAxMDA2
NDQKLS0tIGEveGVuL2FyY2gveDg2L21tLmMKKysrIGIveGVuL2FyY2gveDg2
L21tLmMKQEAgLTM3ODEsNiArMzc4MSw5IEBAIHN0YXRpYyBpbnQgY3JlYXRl
X2dyYW50X3B0ZV9tYXBwaW5nKAogICAgIGwxX3BnZW50cnlfdCBvbDFlOwog
ICAgIHN0cnVjdCBkb21haW4gKmQgPSB2LT5kb21haW47CiAKKyAgICBpZiAo
ICFJU19BTElHTkVEKHB0ZV9hZGRyLCBzaXplb2YobmwxZSkpICkKKyAgICAg
ICAgcmV0dXJuIEdOVFNUX2dlbmVyYWxfZXJyb3I7CisKICAgICBhZGp1c3Rf
Z3Vlc3RfbDFlKG5sMWUsIGQpOwogCiAgICAgZ21mbiA9IHB0ZV9hZGRyID4+
IFBBR0VfU0hJRlQ7CkBAIC0zODM4LDYgKzM4NDEsMTYgQEAgc3RhdGljIGlu
dCBkZXN0cm95X2dyYW50X3B0ZV9tYXBwaW5nKAogICAgIHN0cnVjdCBwYWdl
X2luZm8gKnBhZ2U7CiAgICAgbDFfcGdlbnRyeV90IG9sMWU7CiAKKyAgICAv
KgorICAgICAqIGFkZHIgY29tZXMgZnJvbSBYZW4ncyBhY3RpdmVfZW50cnkg
dHJhY2tpbmcgc28gaXNuJ3QgZ3Vlc3QgY29udHJvbGxlZCwKKyAgICAgKiBi
dXQgaXQgaGFkIHN0aWxsIGJldHRlciBiZSBQVEUtYWxpZ25lZC4KKyAgICAg
Ki8KKyAgICBpZiAoICFJU19BTElHTkVEKGFkZHIsIHNpemVvZihvbDFlKSkg
KQorICAgIHsKKyAgICAgICAgQVNTRVJUX1VOUkVBQ0hBQkxFKCk7CisgICAg
ICAgIHJldHVybiBHTlRTVF9nZW5lcmFsX2Vycm9yOworICAgIH0KKwogICAg
IGdtZm4gPSBhZGRyID4+IFBBR0VfU0hJRlQ7CiAgICAgcGFnZSA9IGdldF9w
YWdlX2Zyb21fZ2ZuKGQsIGdtZm4sIE5VTEwsIFAyTV9BTExPQyk7CiAKZGlm
ZiAtLWdpdCBhL3hlbi9pbmNsdWRlL3hlbi9jb25maWcuaCBiL3hlbi9pbmNs
dWRlL3hlbi9jb25maWcuaAppbmRleCA3YmVmOGE2NDhkLi5hM2FhMWQ0ODMy
IDEwMDY0NAotLS0gYS94ZW4vaW5jbHVkZS94ZW4vY29uZmlnLmgKKysrIGIv
eGVuL2luY2x1ZGUveGVuL2NvbmZpZy5oCkBAIC04Miw2ICs4Miw4IEBACiAK
ICNlbmRpZiAvKiAhX19BU1NFTUJMWV9fICovCiAKKyNkZWZpbmUgSVNfQUxJ
R05FRCh2YWwsIGFsaWduKSAoKCh2YWwpICYgKChhbGlnbikgLSAxKSkgPT0g
MCkKKwogI2RlZmluZSBfX1NUUiguLi4pICNfX1ZBX0FSR1NfXwogI2RlZmlu
ZSBTVFIoLi4uKSBfX1NUUihfX1ZBX0FSR1NfXykKIAotLSAKMi4xMy4yCgo=

--=separator
Content-Type: application/octet-stream; name="xsa227-4.6.patch"
Content-Disposition: attachment; filename="xsa227-4.6.patch"
Content-Transfer-Encoding: base64

RnJvbSA2OTdlZGM0MTQzNTJlODlmMjljYTNkZTc0NGE3NmMxNjI1YzA0NjZj
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXcgQ29vcGVy
IDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpEYXRlOiBUdWUsIDIwIEp1
biAyMDE3IDE5OjE4OjU0ICswMTAwClN1YmplY3Q6IFtQQVRDSF0geDg2L2dy
YW50OiBEaXNhbGxvdyBtaXNhbGlnbmVkIFBURXMKClBhZ2V0YWJsZSBlbnRy
aWVzIG11c3QgYmUgYWxpZ25lZCB0byBmdW5jdGlvbiBjb3JyZWN0bHkuICBE
aXNhbGxvdyBhdHRlbXB0cwpmcm9tIHRoZSBndWVzdCB0byBoYXZlIGEgZ3Jh
bnQgUFRFIGNyZWF0ZWQgYXQgYSBtaXNhbGlnbmVkIGFkZHJlc3MsIHdoaWNo
CndvdWxkIHJlc3VsdCBpbiBjb3JydXB0aW9uIG9mIHRoZSBMMSB0YWJsZSB3
aXRoIGxhcmdlbHktZ3Vlc3QtY29udHJvbGxlZAp2YWx1ZXMuCgpUaGlzIGlz
IFhTQS0yMjcKClNpZ25lZC1vZmYtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJl
dy5jb29wZXIzQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGlj
aCA8amJldWxpY2hAc3VzZS5jb20+Ci0tLQogeGVuL2FyY2gveDg2L21tLmMg
ICAgICAgIHwgMTMgKysrKysrKysrKysrKwogeGVuL2luY2x1ZGUveGVuL2Nv
bmZpZy5oIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL3hlbi9hcmNoL3g4Ni9tbS5jIGIveGVuL2Fy
Y2gveDg2L21tLmMKaW5kZXggMjEzYjUyYS4uM2JmNzI4YiAxMDA2NDQKLS0t
IGEveGVuL2FyY2gveDg2L21tLmMKKysrIGIveGVuL2FyY2gveDg2L21tLmMK
QEAgLTM4NzgsNiArMzg3OCw5IEBAIHN0YXRpYyBpbnQgY3JlYXRlX2dyYW50
X3B0ZV9tYXBwaW5nKAogICAgIGwxX3BnZW50cnlfdCBvbDFlOwogICAgIHN0
cnVjdCBkb21haW4gKmQgPSB2LT5kb21haW47CiAKKyAgICBpZiAoICFJU19B
TElHTkVEKHB0ZV9hZGRyLCBzaXplb2YobmwxZSkpICkKKyAgICAgICAgcmV0
dXJuIEdOVFNUX2dlbmVyYWxfZXJyb3I7CisKICAgICBhZGp1c3RfZ3Vlc3Rf
bDFlKG5sMWUsIGQpOwogCiAgICAgZ21mbiA9IHB0ZV9hZGRyID4+IFBBR0Vf
U0hJRlQ7CkBAIC0zOTM1LDYgKzM5MzgsMTYgQEAgc3RhdGljIGludCBkZXN0
cm95X2dyYW50X3B0ZV9tYXBwaW5nKAogICAgIHN0cnVjdCBwYWdlX2luZm8g
KnBhZ2U7CiAgICAgbDFfcGdlbnRyeV90IG9sMWU7CiAKKyAgICAvKgorICAg
ICAqIGFkZHIgY29tZXMgZnJvbSBYZW4ncyBhY3RpdmVfZW50cnkgdHJhY2tp
bmcgc28gaXNuJ3QgZ3Vlc3QgY29udHJvbGxlZCwKKyAgICAgKiBidXQgaXQg
aGFkIHN0aWxsIGJldHRlciBiZSBQVEUtYWxpZ25lZC4KKyAgICAgKi8KKyAg
ICBpZiAoICFJU19BTElHTkVEKGFkZHIsIHNpemVvZihvbDFlKSkgKQorICAg
IHsKKyAgICAgICAgQVNTRVJUX1VOUkVBQ0hBQkxFKCk7CisgICAgICAgIHJl
dHVybiBHTlRTVF9nZW5lcmFsX2Vycm9yOworICAgIH0KKwogICAgIGdtZm4g
PSBhZGRyID4+IFBBR0VfU0hJRlQ7CiAgICAgcGFnZSA9IGdldF9wYWdlX2Zy
b21fZ2ZuKGQsIGdtZm4sIE5VTEwsIFAyTV9BTExPQyk7CiAKZGlmZiAtLWdp
dCBhL3hlbi9pbmNsdWRlL3hlbi9jb25maWcuaCBiL3hlbi9pbmNsdWRlL3hl
bi9jb25maWcuaAppbmRleCBmNzI1OGM3Li5kZWQ4MTU2IDEwMDY0NAotLS0g
YS94ZW4vaW5jbHVkZS94ZW4vY29uZmlnLmgKKysrIGIveGVuL2luY2x1ZGUv
eGVuL2NvbmZpZy5oCkBAIC03Miw2ICs3Miw4IEBACiAjZGVmaW5lIE1CKF9t
YikgICAgIChfQUMoX21iLCBVTEwpIDw8IDIwKQogI2RlZmluZSBHQihfZ2Ip
ICAgICAoX0FDKF9nYiwgVUxMKSA8PCAzMCkKIAorI2RlZmluZSBJU19BTElH
TkVEKHZhbCwgYWxpZ24pICgoKHZhbCkgJiAoKGFsaWduKSAtIDEpKSA9PSAw
KQorCiAjZGVmaW5lIF9fU1RSKC4uLikgI19fVkFfQVJHU19fCiAjZGVmaW5l
IFNUUiguLi4pIF9fU1RSKF9fVkFfQVJHU19fKQogCi0tIAoyLjEuNAoK

--=separator--
