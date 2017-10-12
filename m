X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11698" "Thursday" "12" "October" "2017" "12:16:32" "+0000" "Xen.org security team" "security@xen.org" "<E1e2cPg-0007Ct-RO@xenbits.xenproject.org>" "254" "[oss-security] Xen Security Advisory 242 - page type reference leak on x86" nil nil nil "10" "2017101212:16:32" "[oss-security] Xen Security Advisory 242 - page type reference leak on x86" (number mark "U       security@xen Oct 12  254/11698 " thread-indent "\"[oss-security] Xen Security Advisory 242 - page type reference leak on x86\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30212 invoked by uid 550); 12 Oct 2017 12:59:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19586 invoked from network); 12 Oct 2017 12:16:56 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1e2cPg-0007Ct-RO@xenbits.xenproject.org>
Date: Thu, 12 Oct 2017 12:16:32 +0000
Subject: [oss-security] Xen Security Advisory 242 - page type reference leak on x86

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

                    Xen Security Advisory XSA-242
                              version 2

                    page type reference leak on x86

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

The page type system of Xen requires cleanup when the last reference
for a given page is being dropped.  In order to exclude simultaneous
updates to a given page by multiple parties, pages which are updated
are locked beforehand.  This locking includes temporarily increasing
the type reference count by one.  When the page is later unlocked, the
context precludes cleanup, so the reference that is then dropped must
not be the last one.  This was not properly enforced.

IMPACT
======

A malicious or buggy PV guest may cause a memory leak upon shutdown
of the guest, ultimately perhaps resulting in Denial of Service (DoS)
affecting the entire host.

VULNERABLE SYSTEMS
==================

All Xen versions from 3.4 onwards are vulnerable.  Xen versions 3.3 and
earlier are not vulnerable.

Only x86 systems are affected.  ARM systems are not affected.

Only x86 PV guests can leverage the vulnerability.  x86 HVM guests
cannot leverage the vulnerability.

MITIGATION
==========

Running only HVM guests will avoid this vulnerability.

For PV guests, the vulnerability can be avoided if the guest kernel is
controlled by the host rather than guest administrator, provided that
further steps are taken to prevent the guest administrator from loading
code into the kernel (e.g. by disabling loadable modules etc) or from
using other mechanisms which allow them to run code at kernel privilege.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa242.patch           xen-unstable
xsa242-4.9.patch       Xen 4.9.x, Xen 4.8.x, Xen 4.7.x, Xen 4.6.x, Xen 4.5.x

$ sha256sum xsa242*
168db3aef00806025afa255dee35cd0c042706a27a0256744e4d63f3ee86a2e8  xsa242.meta
16848f71311c2fd6a38afd7602e59211c89a3daf29b874097dba0b1e31ba6eec  xsa242.patch
5e66b6b1d1cd400905d3abd3478144539c3afa24f5a744a11809d9c5eb517b98  xsa242-4.9.patch
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

iQEcBAEBCAAGBQJZ31wBAAoJEIP+FMlX6CvZs4YH+QH5lTpge4JLyHQRJbLry52Z
70oB+1vZIsoWg9/XONE9/l1kei0WOGPh4Pt2AWUZOXy8I/euHlMUeGZchl7cQ73M
6EOPjQ1+EXv+vIePwyjZiZmjKQJYQDZ5IsNZ3lz2oV27SkppSW6KKPFlj9G3Dc+E
Fv0JwawHNBruGQu9RYWukLbCKn9g4Z0OD/4OwpzF0PY3c/zqk9aYjg318i2Na5zu
tWDI9+srfzgvT9N2+om/hVBQYHp48OOIUIGtMz7M4A33LBySsETigpBaCiNmyNeG
+l3ONWKF8XNeJbpYGtd3jClgXLg8Hy5MgalSCKOyB2XAgl0y2BSX3tyhOnQZKcs=
=tqOh
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa242.meta"
Content-Disposition: attachment; filename="xsa242.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAyNDIsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC45IiwKICAgICI0LjgiLAogICAgIjQuNyIsCiAg
ICAiNC42IiwKICAgICI0LjUiCiAgXSwKICAiVHJlZXMiOiBbCiAgICAieGVu
IgogIF0sCiAgIlJlY2lwZXMiOiB7CiAgICAiNC41IjogewogICAgICAiWGVu
VmVyc2lvbiI6ICI0LjUiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAi
eGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICI4MzcyNGQ5ZjNhZTIx
YTNiOTYzNjI3NDJlMmYwNTJiMTlkOWY1NTlhIiwKICAgICAgICAgICJQcmVy
ZXFzIjogWwogICAgICAgICAgICAyMzcsCiAgICAgICAgICAgIDIzOCwKICAg
ICAgICAgICAgMjM5LAogICAgICAgICAgICAyNDAsCiAgICAgICAgICAgIDI0
MQogICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWwogICAgICAg
ICAgICAieHNhMjQyLTQuOS5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9
CiAgICAgIH0KICAgIH0sCiAgICAiNC42IjogewogICAgICAiWGVuVmVyc2lv
biI6ICI0LjYiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAieGVuIjog
ewogICAgICAgICAgIlN0YWJsZVJlZiI6ICIxNjU4YTg3NjkwYWM4MzllODVk
YjEyYmJmNDA5YmU2MmJiOTM4NjQwIiwKICAgICAgICAgICJQcmVyZXFzIjog
WwogICAgICAgICAgICAyMzcsCiAgICAgICAgICAgIDIzOCwKICAgICAgICAg
ICAgMjM5LAogICAgICAgICAgICAyNDAsCiAgICAgICAgICAgIDI0MQogICAg
ICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAi
eHNhMjQyLTQuOS5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAg
IH0KICAgIH0sCiAgICAiNC43IjogewogICAgICAiWGVuVmVyc2lvbiI6ICI0
LjciLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAg
ICAgICAgIlN0YWJsZVJlZiI6ICJjNzc4M2Q5YzI2ZmMxOTE4NjJkOTg4M2Rh
MjIzODczNDBiMWZhYjE4IiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAg
ICAgICAgICAyMzcsCiAgICAgICAgICAgIDIzOCwKICAgICAgICAgICAgMjM5
LAogICAgICAgICAgICAyNDAsCiAgICAgICAgICAgIDI0MQogICAgICAgICAg
XSwKICAgICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjQy
LTQuOS5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAgIH0KICAg
IH0sCiAgICAiNC44IjogewogICAgICAiWGVuVmVyc2lvbiI6ICI0LjgiLAog
ICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAgICAgICAg
IlN0YWJsZVJlZiI6ICIzNjg5OGViMTI1NzJmMGExZjg1Y2I1NGQ0YTllOTBh
ZmNiNmY3MDQ1IiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAg
ICAyMzcsCiAgICAgICAgICAgIDIzOCwKICAgICAgICAgICAgMjM5LAogICAg
ICAgICAgICAyNDAsCiAgICAgICAgICAgIDI0MQogICAgICAgICAgXSwKICAg
ICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjQyLTQuOS5w
YXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAgIH0KICAgIH0sCiAg
ICAiNC45IjogewogICAgICAiWGVuVmVyc2lvbiI6ICI0LjkiLAogICAgICAi
UmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJs
ZVJlZiI6ICIyY2MzZDMyZjQwYzcxY2IyNDI0NzdhM2Y4OTM4MDc0ZDRmYzM2
ODI5IiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAyMzcs
CiAgICAgICAgICAgIDIzOCwKICAgICAgICAgICAgMjM5LAogICAgICAgICAg
ICAyNDAsCiAgICAgICAgICAgIDI0MQogICAgICAgICAgXSwKICAgICAgICAg
ICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjQyLTQuOS5wYXRjaCIK
ICAgICAgICAgIF0KICAgICAgICB9CiAgICAgIH0KICAgIH0sCiAgICAibWFz
dGVyIjogewogICAgICAiWGVuVmVyc2lvbiI6ICJtYXN0ZXIiLAogICAgICAi
UmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJs
ZVJlZiI6ICJhOGVhNmUyNjg4MTE4YTNlMTllMjliMzllMzE2ZmFhNWY5NmFi
OWQxIiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAyMzcs
CiAgICAgICAgICAgIDIzOCwKICAgICAgICAgICAgMjM5LAogICAgICAgICAg
ICAyNDAsCiAgICAgICAgICAgIDI0MQogICAgICAgICAgXSwKICAgICAgICAg
ICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjQyLnBhdGNoIgogICAg
ICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfQogIH0KfQ==

--=separator
Content-Type: application/octet-stream; name="xsa242.patch"
Content-Disposition: attachment; filename="xsa242.patch"
Content-Transfer-Encoding: base64

RnJvbSBiMmQyNDVjMGU3MjkwNjE0Nzk4OTY5NDExNjE0YzE5MDIzMDBhYWZi
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKYW4gQmV1bGljaCA8
amJldWxpY2hAc3VzZS5jb20+CkRhdGU6IFdlZCwgMjcgU2VwIDIwMTcgMTE6
MDA6NTYgKzAxMDAKU3ViamVjdDogW1BBVENIXSB4ODY6IGRvbid0IGFsbG93
IHBhZ2VfdW5sb2NrKCkgdG8gZHJvcCB0aGUgbGFzdCB0eXBlCiByZWZlcmVu
Y2UKCk9ubHkgX3B1dF9wYWdlX3R5cGUoKSBkb2VzIHRoZSBuZWNlc3Nhcnkg
Y2xlYW51cCwgYW5kIGhlbmNlIG5vdCBhbGwKZG9tYWluIHBhZ2VzIGNhbiBi
ZSByZWxlYXNlZCBkdXJpbmcgZ3Vlc3QgY2xlYW51cCAobGVhdmluZyBhcm91
bmQKem9tYmllIGRvbWFpbnMpIGlmIHdlIGdldCB0aGlzIHdyb25nLgoKVGhp
cyBpcyBYU0EtMjQyLgoKU2lnbmVkLW9mZi1ieTogSmFuIEJldWxpY2ggPGpi
ZXVsaWNoQHN1c2UuY29tPgotLS0KIHhlbi9hcmNoL3g4Ni9tbS5jIHwgMTUg
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL3hlbi9hcmNoL3g4Ni9tbS5jIGIveGVuL2Fy
Y2gveDg2L21tLmMKaW5kZXggYWI4ZjkzOTM1Yy4uZDg4M2YxZDY0OCAxMDA2
NDQKLS0tIGEveGVuL2FyY2gveDg2L21tLmMKKysrIGIveGVuL2FyY2gveDg2
L21tLmMKQEAgLTE3MDUsNyArMTcwNSwxMSBAQCB2b2lkIHBhZ2VfdW5sb2Nr
KHN0cnVjdCBwYWdlX2luZm8gKnBhZ2UpCiAKICAgICBkbyB7CiAgICAgICAg
IHggPSB5OworICAgICAgICBBU1NFUlQoKHggJiBQR1RfY291bnRfbWFzaykg
JiYgKHggJiBQR1RfbG9ja2VkKSk7CisKICAgICAgICAgbnggPSB4IC0gKDEg
fCBQR1RfbG9ja2VkKTsKKyAgICAgICAgLyogV2UgbXVzdCBub3QgZHJvcCB0
aGUgbGFzdCByZWZlcmVuY2UgaGVyZS4gKi8KKyAgICAgICAgQVNTRVJUKG54
ICYgUEdUX2NvdW50X21hc2spOwogICAgIH0gd2hpbGUgKCAoeSA9IGNtcHhj
aGcoJnBhZ2UtPnUuaW51c2UudHlwZV9pbmZvLCB4LCBueCkpICE9IHggKTsK
IH0KIApAQCAtMjMwOCw2ICsyMzEyLDE3IEBAIHN0YXRpYyBpbnQgX3B1dF9w
YWdlX3R5cGUoc3RydWN0IHBhZ2VfaW5mbyAqcGFnZSwgYm9vbCBwcmVlbXB0
aWJsZSwKIAogICAgICAgICAgICAgc2V0X3RsYmZsdXNoX3RpbWVzdGFtcChw
YWdlKTsKICAgICAgICAgfQorICAgICAgICBlbHNlIGlmICggdW5saWtlbHko
KG54ICYgKFBHVF9sb2NrZWQgfCBQR1RfY291bnRfbWFzaykpID09CisgICAg
ICAgICAgICAgICAgICAgICAgICAgICAoUEdUX2xvY2tlZCB8IDEpKSApCisg
ICAgICAgIHsKKyAgICAgICAgICAgIC8qCisgICAgICAgICAgICAgKiBXZSBt
dXN0IG5vdCBkcm9wIHRoZSBzZWNvbmQgdG8gbGFzdCByZWZlcmVuY2Ugd2hl
biB0aGUgcGFnZSBpcworICAgICAgICAgICAgICogbG9ja2VkLCBhcyBwYWdl
X3VubG9jaygpIGRvZXNuJ3QgZG8gYW55IGNsZWFudXAgb2YgdGhlIHR5cGUu
CisgICAgICAgICAgICAgKi8KKyAgICAgICAgICAgIGNwdV9yZWxheCgpOwor
ICAgICAgICAgICAgeSA9IHBhZ2UtPnUuaW51c2UudHlwZV9pbmZvOworICAg
ICAgICAgICAgY29udGludWU7CisgICAgICAgIH0KIAogICAgICAgICBpZiAo
IGxpa2VseSgoeSA9IGNtcHhjaGcoJnBhZ2UtPnUuaW51c2UudHlwZV9pbmZv
LCB4LCBueCkpID09IHgpICkKICAgICAgICAgICAgIGJyZWFrOwotLSAKMi4x
NC4xCgo=

--=separator
Content-Type: application/octet-stream; name="xsa242-4.9.patch"
Content-Disposition: attachment; filename="xsa242-4.9.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODY6IGRvbid0IGFsbG93IHBhZ2VfdW5sb2NrKCkgdG8gZHJvcCB0aGUg
bGFzdCB0eXBlIHJlZmVyZW5jZQoKT25seSBfcHV0X3BhZ2VfdHlwZSgpIGRv
ZXMgdGhlIG5lY2Vzc2FyeSBjbGVhbnVwLCBhbmQgaGVuY2Ugbm90IGFsbApk
b21haW4gcGFnZXMgY2FuIGJlIHJlbGVhc2VkIGR1cmluZyBndWVzdCBjbGVh
bnVwIChsZWF2aW5nIGFyb3VuZAp6b21iaWUgZG9tYWlucykgaWYgd2UgZ2V0
IHRoaXMgd3JvbmcuCgpUaGlzIGlzIFhTQS0yNDIuCgpTaWduZWQtb2ZmLWJ5
OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+CgotLS0gYS94ZW4v
YXJjaC94ODYvbW0uYworKysgYi94ZW4vYXJjaC94ODYvbW0uYwpAQCAtMTky
Myw3ICsxOTIzLDExIEBAIHZvaWQgcGFnZV91bmxvY2soc3RydWN0IHBhZ2Vf
aW5mbyAqcGFnZSkKIAogICAgIGRvIHsKICAgICAgICAgeCA9IHk7CisgICAg
ICAgIEFTU0VSVCgoeCAmIFBHVF9jb3VudF9tYXNrKSAmJiAoeCAmIFBHVF9s
b2NrZWQpKTsKKwogICAgICAgICBueCA9IHggLSAoMSB8IFBHVF9sb2NrZWQp
OworICAgICAgICAvKiBXZSBtdXN0IG5vdCBkcm9wIHRoZSBsYXN0IHJlZmVy
ZW5jZSBoZXJlLiAqLworICAgICAgICBBU1NFUlQobnggJiBQR1RfY291bnRf
bWFzayk7CiAgICAgfSB3aGlsZSAoICh5ID0gY21weGNoZygmcGFnZS0+dS5p
bnVzZS50eXBlX2luZm8sIHgsIG54KSkgIT0geCApOwogfQogCkBAIC0yNjEx
LDYgKzI2MTUsMTcgQEAgc3RhdGljIGludCBfcHV0X3BhZ2VfdHlwZShzdHJ1
Y3QgcGFnZV9pbgogICAgICAgICAgICAgICAgICAgIChwYWdlLT5jb3VudF9p
bmZvICYgUEdDX3BhZ2VfdGFibGUpKSApCiAgICAgICAgICAgICAgICAgcGFn
ZV9zZXRfdGxiZmx1c2hfdGltZXN0YW1wKHBhZ2UpOwogICAgICAgICB9Cisg
ICAgICAgIGVsc2UgaWYgKCB1bmxpa2VseSgobnggJiAoUEdUX2xvY2tlZCB8
IFBHVF9jb3VudF9tYXNrKSkgPT0KKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgIChQR1RfbG9ja2VkIHwgMSkpICkKKyAgICAgICAgeworICAgICAgICAg
ICAgLyoKKyAgICAgICAgICAgICAqIFdlIG11c3Qgbm90IGRyb3AgdGhlIHNl
Y29uZCB0byBsYXN0IHJlZmVyZW5jZSB3aGVuIHRoZSBwYWdlIGlzCisgICAg
ICAgICAgICAgKiBsb2NrZWQsIGFzIHBhZ2VfdW5sb2NrKCkgZG9lc24ndCBk
byBhbnkgY2xlYW51cCBvZiB0aGUgdHlwZS4KKyAgICAgICAgICAgICAqLwor
ICAgICAgICAgICAgY3B1X3JlbGF4KCk7CisgICAgICAgICAgICB5ID0gcGFn
ZS0+dS5pbnVzZS50eXBlX2luZm87CisgICAgICAgICAgICBjb250aW51ZTsK
KyAgICAgICAgfQogCiAgICAgICAgIGlmICggbGlrZWx5KCh5ID0gY21weGNo
ZygmcGFnZS0+dS5pbnVzZS50eXBlX2luZm8sIHgsIG54KSkgPT0geCkgKQog
ICAgICAgICAgICAgYnJlYWs7Cg==

--=separator--
