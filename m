X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7160" "Friday" "10" "February" "2017" "12:43:17" "+0000" "Xen.org security team" "security@xen.org" "<E1ccAXl-0000Q3-Dy@xenbits.xenproject.org>" "171" "[oss-security] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy" nil nil nil "2" "2017021012:43:17" "[oss-security] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy" (number mark "U       security@xen Feb 10  171/7160  " thread-indent "\"[oss-security] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10029 invoked by uid 550); 10 Feb 2017 12:43:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10007 invoked from network); 10 Feb 2017 12:43:45 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1ccAXl-0000Q3-Dy@xenbits.xenproject.org>
Date: Fri, 10 Feb 2017 12:43:17 +0000
Subject: [oss-security] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus
 bitblt copy

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2017-2615 / XSA-208

                   oob access in cirrus bitblt copy

ISSUE DESCRIPTION
=================

When doing bitblt copy backwards, qemu should negate the blit width.
This avoids an oob access before the start of video memory.

IMPACT
======

A malicious guest administrator can cause an out of bounds memory
access, possibly leading to information disclosure or privilege
escalation.

VULNERABLE SYSTEMS
==================

Versions of qemu shipped with all Xen versions are vulnerable.

Xen systems running on x86 with HVM guests, with the qemu process
running in dom0 are vulnerable.

Only guests provided with the "cirrus" emulated video card can exploit
the vulnerability.  The non-default "stdvga" emulated video card is
not vulnerable.  (With xl the emulated video card is controlled by the
"stdvga=" and "vga=" domain configuration options.)

ARM systems are not vulnerable.  Systems using only PV guests are not
vulnerable.

For VMs whose qemu process is running in a stub domain, a successful
attacker will only gain the privileges of that stubdom, which should
be only over the guest itself.

Both upstream-based versions of qemu (device_model_version="qemu-xen")
and `traditional' qemu (device_model_version="qemu-xen-traditional")
are vulnerable.

MITIGATION
==========

Running only PV guests will avoid the issue.

Running HVM guests with the device model in a stubdomain will mitigate
the issue.

Changing the video card emulation to stdvga (stdvga=1, vga="stdvga",
in the xl domain configuration) will avoid the vulnerability.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa208-qemuu.patch    qemu-xen, mainline qemu
xsa208-qemut.patch    qemu-xen-traditional

$ sha256sum xsa208*
4369cce9b72daf2418a1b9dd7be6529c312b447b814c44d634bab462e80a15f5  xsa208-qemut.patch
1e516e3df1091415b6ba34aaf54fa67eac91e22daceaad569b11baa2316c78ba  xsa208-qemuu.patch
$


NOTE REGARDING LACK OF EMBARGO
==============================

This issue has already been publicly disclosed.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYnbVQAAoJEIP+FMlX6CvZs2sIAKtkU1ptqojrE6GpgdMegdIS
hMcCcEVdDoYt47z9BxXcNA87kyjGLbIaliACF3GQclhBy8f6Ytm6MLQMvh79YO/l
8AvZELKSo5U/Z1El/HQ/ezzWTV15FHwdG64HvDf7SdlRquVyS0fxWLuiq8gmWXRd
bpGcbAwwdRHvrvguMpajif89ZfTWPSHRq8onS1C96SBJW8aUXxzzyKWoX1EvNWN3
vnKC5eXQ5uhLERmh6meIZo2OwB7PlMTuasgVJan915/CGF8CS+B5wqQmiL0uxfRT
fnTBVTfXHC/TzkkREJtnwgHIEv/E+Vygheeg/2P9bEaNkiN3CG5kK/ZOxgWNYU4=
=eEKh
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa208-qemut.patch"
Content-Disposition: attachment; filename="xsa208-qemut.patch"
Content-Transfer-Encoding: base64

RnJvbTogTGkgUWlhbmcgPGFkZHJlc3NAaGlkZGVuPgoKV2hlbiBkb2luZyBi
aXRibHQgY29weSBpbiBiYWNrd2FyZCBtb2RlLCB3ZSBzaG91bGQgbWludXMg
dGhlCmJsdCB3aWR0aCBmaXJzdCBqdXN0IGxpa2UgdGhlIGFkZGluZyBpbiB0
aGUgZm9yd2FyZCBtb2RlLiBUaGlzCmNhbiBhdm9pZCB0aGUgb29iIGFjY2Vz
cyBvZiB0aGUgZnJvbnQgb2YgdmdhJ3MgdnJhbS4KClNpZ25lZC1vZmYtYnk6
IExpIFFpYW5nIDxhZGRyZXNzQGhpZGRlbj4KTWVzc2FnZS1pZDogYWRkcmVz
c0BoaWRkZW4KCnsga3JheGVsOiB3aXRoIGJhY2t3YXJkIGJsaXRzIChuZWdh
dGl2ZSBwaXRjaCkgYWRkciBpcyB0aGUgdG9wbW9zdAogICAgICAgICAgYWRk
cmVzcywgc28gY2hlY2sgaXQgYXMtaXMgYWdhaW5zdCB2cmFtIHNpemUgXQoK
WyBUaGlzIGlzIENWRS0yMDE3LTI2MTUgLyBYU0EtMjA4ICAtIElhbiBKYWNr
c29uIF0KCkNjOiBhZGRyZXNzQGhpZGRlbgpDYzogUCBKIFAgPGFkZHJlc3NA
aGlkZGVuPgpDYzogTGFzemxvIEVyc2VrIDxhZGRyZXNzQGhpZGRlbj4KQ2M6
IFBhb2xvIEJvbnppbmkgPGFkZHJlc3NAaGlkZGVuPgpDYzogV29sZmdhbmcg
QnVtaWxsZXIgPGFkZHJlc3NAaGlkZGVuPgpGaXhlczogZDM1MzJhMGRiMDIy
OTZlNjg3NzExYjhjZGM3NzkxOTI0ZWZjY2VhMCAoQ1ZFLTIwMTQtODEwNikK
U2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8YWRkcmVzc0BoaWRkZW4+
ClNpZ25lZC1vZmYtYnk6IElhbiBKYWNrc29uIDxpYW4uamFja3NvbkBldS5j
aXRyaXguY29tPgotLS0KIGh3L2Rpc3BsYXkvY2lycnVzX3ZnYS5jIHwgNyAr
KystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2h3L2Rpc3BsYXkvY2lycnVzX3Zn
YS5jIGIvaHcvZGlzcGxheS9jaXJydXNfdmdhLmMKaW5kZXggYmRiMDkyZS4u
M2JiZTNkNSAxMDA2NDQKLS0tIGEvaHcvZGlzcGxheS9jaXJydXNfdmdhLmMK
KysrIGIvaHcvZGlzcGxheS9jaXJydXNfdmdhLmMKQEAgLTMwNywxMSArMzA3
LDkgQEAgc3RhdGljIGJvb2wgYmxpdF9yZWdpb25faXNfdW5zYWZlKHN0cnVj
dCBDaXJydXNWR0FTdGF0ZSAqcywKIHsKICAgICBpZiAocGl0Y2ggPCAwKSB7
CiAgICAgICAgIGludDY0X3QgbWluID0gYWRkcgotICAgICAgICAgICAgKyAo
KGludDY0X3Qpcy0+Y2lycnVzX2JsdF9oZWlnaHQtMSkgKiBwaXRjaDsKLSAg
ICAgICAgaW50MzJfdCBtYXggPSBhZGRyCi0gICAgICAgICAgICArIHMtPmNp
cnJ1c19ibHRfd2lkdGg7Ci0gICAgICAgIGlmIChtaW4gPCAwIHx8IG1heCA+
PSBzLT52cmFtX3NpemUpIHsKKyAgICAgICAgICAgICsgKChpbnQ2NF90KXMt
PmNpcnJ1c19ibHRfaGVpZ2h0IC0gMSkgKiBwaXRjaAorICAgICAgICAgICAg
LSBzLT5jaXJydXNfYmx0X3dpZHRoOworICAgICAgICBpZiAobWluIDwgLTEg
fHwgYWRkciA+PSBzLT52cmFtX3NpemUpIHsKICAgICAgICAgICAgIHJldHVy
biB0cnVlOwogICAgICAgICB9CiAgICAgfSBlbHNlIHsK

--=separator
Content-Type: application/octet-stream; name="xsa208-qemuu.patch"
Content-Disposition: attachment; filename="xsa208-qemuu.patch"
Content-Transfer-Encoding: base64

RnJvbTogTGkgUWlhbmcgPGFkZHJlc3NAaGlkZGVuPgoKV2hlbiBkb2luZyBi
aXRibHQgY29weSBpbiBiYWNrd2FyZCBtb2RlLCB3ZSBzaG91bGQgbWludXMg
dGhlCmJsdCB3aWR0aCBmaXJzdCBqdXN0IGxpa2UgdGhlIGFkZGluZyBpbiB0
aGUgZm9yd2FyZCBtb2RlLiBUaGlzCmNhbiBhdm9pZCB0aGUgb29iIGFjY2Vz
cyBvZiB0aGUgZnJvbnQgb2YgdmdhJ3MgdnJhbS4KClNpZ25lZC1vZmYtYnk6
IExpIFFpYW5nIDxhZGRyZXNzQGhpZGRlbj4KTWVzc2FnZS1pZDogYWRkcmVz
c0BoaWRkZW4KCnsga3JheGVsOiB3aXRoIGJhY2t3YXJkIGJsaXRzIChuZWdh
dGl2ZSBwaXRjaCkgYWRkciBpcyB0aGUgdG9wbW9zdAogICAgICAgICAgYWRk
cmVzcywgc28gY2hlY2sgaXQgYXMtaXMgYWdhaW5zdCB2cmFtIHNpemUgXQoK
WyBUaGlzIGlzIENWRS0yMDE3LTI2MTUgLyBYU0EtMjA4ICAtIElhbiBKYWNr
c29uIF0KCkNjOiBhZGRyZXNzQGhpZGRlbgpDYzogUCBKIFAgPGFkZHJlc3NA
aGlkZGVuPgpDYzogTGFzemxvIEVyc2VrIDxhZGRyZXNzQGhpZGRlbj4KQ2M6
IFBhb2xvIEJvbnppbmkgPGFkZHJlc3NAaGlkZGVuPgpDYzogV29sZmdhbmcg
QnVtaWxsZXIgPGFkZHJlc3NAaGlkZGVuPgpGaXhlczogZDM1MzJhMGRiMDIy
OTZlNjg3NzExYjhjZGM3NzkxOTI0ZWZjY2VhMCAoQ1ZFLTIwMTQtODEwNikK
U2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8YWRkcmVzc0BoaWRkZW4+
Ci0tLQogaHcvZGlzcGxheS9jaXJydXNfdmdhLmMgfCA3ICsrKy0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvaHcvZGlzcGxheS9jaXJydXNfdmdhLmMgYi9ody9k
aXNwbGF5L2NpcnJ1c192Z2EuYwppbmRleCBiZGIwOTJlLi4zYmJlM2Q1IDEw
MDY0NAotLS0gYS9ody9kaXNwbGF5L2NpcnJ1c192Z2EuYworKysgYi9ody9k
aXNwbGF5L2NpcnJ1c192Z2EuYwpAQCAtMjc3LDEwICsyNzcsOSBAQCBzdGF0
aWMgYm9vbCBibGl0X3JlZ2lvbl9pc191bnNhZmUoc3RydWN0IENpcnJ1c1ZH
QVN0YXRlICpzLAogICAgIH0KICAgICBpZiAocGl0Y2ggPCAwKSB7CiAgICAg
ICAgIGludDY0X3QgbWluID0gYWRkcgotICAgICAgICAgICAgKyAoKGludDY0
X3Qpcy0+Y2lycnVzX2JsdF9oZWlnaHQtMSkgKiBwaXRjaDsKLSAgICAgICAg
aW50MzJfdCBtYXggPSBhZGRyCi0gICAgICAgICAgICArIHMtPmNpcnJ1c19i
bHRfd2lkdGg7Ci0gICAgICAgIGlmIChtaW4gPCAwIHx8IG1heCA+IHMtPnZn
YS52cmFtX3NpemUpIHsKKyAgICAgICAgICAgICsgKChpbnQ2NF90KXMtPmNp
cnJ1c19ibHRfaGVpZ2h0IC0gMSkgKiBwaXRjaAorICAgICAgICAgICAgLSBz
LT5jaXJydXNfYmx0X3dpZHRoOworICAgICAgICBpZiAobWluIDwgLTEgfHwg
YWRkciA+PSBzLT52Z2EudnJhbV9zaXplKSB7CiAgICAgICAgICAgICByZXR1
cm4gdHJ1ZTsKICAgICAgICAgfQogICAgIH0gZWxzZSB7Ci0tIAoxLjguMy4x
Cg==

--=separator--
