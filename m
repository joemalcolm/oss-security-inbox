X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11448" "Monday" "13" "February" "2017" "18:14:27" "+0000" "Xen.org security team" "security@xen.org" "<E1cdL8t-0007j3-EY@xenbits.xenproject.org>" "250" "[oss-security] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy" nil nil nil "2" "2017021318:14:27" "[oss-security] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy" (number mark "U       security@xen Feb 13  250/11448 " thread-indent "\"[oss-security] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus bitblt copy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3725 invoked by uid 550); 13 Feb 2017 18:14:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3704 invoked from network); 13 Feb 2017 18:14:50 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1cdL8t-0007j3-EY@xenbits.xenproject.org>
Date: Mon, 13 Feb 2017 18:14:27 +0000
Subject: [oss-security] Xen Security Advisory 208 (CVE-2017-2615) - oob access in cirrus
 bitblt copy

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2017-2615 / XSA-208
                              version 2

                   oob access in cirrus bitblt copy

UPDATES IN VERSION 2
====================

Included backport for qemu-xen versions 4.7 (and earlier); fixed
qemu-xen-traditional patch.  Also included proper (non-obscured)
e-mail addresses from upstream patch.

Removed "possibly" from Impact.

3 patches updated

ISSUE DESCRIPTION
=================

When doing bitblt copy backwards, qemu should negate the blit width.
This avoids an oob access before the start of video memory.

IMPACT
======

A malicious guest administrator can cause an out of bounds memory
access, leading to information disclosure or privilege escalation.

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

xsa208-qemuu.patch       mainline qemu, qemu-xen master,4.8
xsa208-qemuu-4.7.patch   qemu-xen 4.4, 4.5, 4.6, 4.7
xsa208-qemut.patch       qemu-xen-traditional

$ sha256sum xsa208*
afde3e9d4bf5225f92c36dec9ff673b0b1b0bad4452d406f0c12edc85e2fec72  xsa208-qemut.patch
e492d528141be5899d46c2ac0bcd0c40ca9d9bfc40906a8e7a565361f17ce38d  xsa208-qemuu.patch
09471b66c9d9fc5616e7b96ab67bbb51987e7d9520d1b81cb27cbbb168659ad5  xsa208-qemuu-4.7.patch
$


NOTE REGARDING LACK OF EMBARGO
==============================

This issue has already been publicly disclosed.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYofdiAAoJEIP+FMlX6CvZ3UEIAMJUV177OqZ0O7436zYpM9S+
fEku8b/G7npRcm0L9PtD8PG39IVtqrtIDHIpzMxHA0qbMx3PqWp1G3iBVwFnj21e
ALtKjdNaoDA8nqFEQ3/AbyZ7jn91oYWwmJ7+pKGds+Q+juFof6FVOXCjhNp0XSA6
EDvsz8vOI4fWTtEuVGbg1GnvgEAjKLE9/bE/4zdkWo2WSiWRRCj/yEAr5n0v0R5n
0EEvk21H0XESk2zBk0/UxompNuqbHwOZhBkQ65DxNSkWMIA9hUgqyinR674luHKC
mDkAq8bXar6n1TBQCbWq5f/+50FOApEs0EvJuzWAG7MEkFPaeDSilFb6obhxHjo=
=294C
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa208-qemut.patch"
Content-Disposition: attachment; filename="xsa208-qemut.patch"
Content-Transfer-Encoding: base64

RnJvbSA4ZjYzMjY1ZWZlYjZmOTJlNjNmN2U3NDljYjI2MTMxYjY4YjIwZGY3
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBMaSBRaWFuZyA8bGlx
aWFuZzYtc0AzNjAuY24+CkRhdGU6IE1vbiwgMTMgRmViIDIwMTcgMTU6MjI6
MTUgKzAwMDAKU3ViamVjdDogW1BBVENIXSBjaXJydXM6IGZpeCBvb2IgYWNj
ZXNzIGlzc3VlIChDVkUtMjAxNy0yNjE1KQoKV2hlbiBkb2luZyBiaXRibHQg
Y29weSBpbiBiYWNrd2FyZCBtb2RlLCB3ZSBzaG91bGQgbWludXMgdGhlCmJs
dCB3aWR0aCBmaXJzdCBqdXN0IGxpa2UgdGhlIGFkZGluZyBpbiB0aGUgZm9y
d2FyZCBtb2RlLiBUaGlzCmNhbiBhdm9pZCB0aGUgb29iIGFjY2VzcyBvZiB0
aGUgZnJvbnQgb2YgdmdhJ3MgdnJhbS4KClRoaXMgaXMgWFNBLTIwOC4KCnVw
c3RyZWFtLWNvbW1pdC1pZDogNjJkNGM2YmQ1MjYzYmI4NDEzYTA2YzgwMTQ0
ZmM2NzhkZjZkZmI2NAoKU2lnbmVkLW9mZi1ieTogTGkgUWlhbmcgPGxpcWlh
bmc2LXNAMzYwLmNuPgoKeyBrcmF4ZWw6IHdpdGggYmFja3dhcmQgYmxpdHMg
KG5lZ2F0aXZlIHBpdGNoKSBhZGRyIGlzIHRoZSB0b3Btb3N0CiAgICAgICAg
ICBhZGRyZXNzLCBzbyBjaGVjayBpdCBhcy1pcyBhZ2FpbnN0IHZyYW0gc2l6
ZSBdCgpbIFRoaXMgaXMgQ1ZFLTIwMTctMjYxNSAvIFhTQS0yMDggIC0gSWFu
IEphY2tzb24gXQoKQ2M6IHFlbXUtc3RhYmxlQG5vbmdudS5vcmcKQ2M6IFAg
SiBQIDxwcGFuZGl0QHJlZGhhdC5jb20+CkNjOiBMYXN6bG8gRXJzZWsgPGxl
cnNla0ByZWRoYXQuY29tPgpDYzogUGFvbG8gQm9uemluaSA8cGJvbnppbmlA
cmVkaGF0LmNvbT4KQ2M6IFdvbGZnYW5nIEJ1bWlsbGVyIDx3LmJ1bWlsbGVy
QHByb3htb3guY29tPgpGaXhlczogZDM1MzJhMGRiMDIyOTZlNjg3NzExYjhj
ZGM3NzkxOTI0ZWZjY2VhMCAoQ1ZFLTIwMTQtODEwNikKU2lnbmVkLW9mZi1i
eTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+Ck1lc3NhZ2Ut
aWQ6IDE0ODU5MzgxMDEtMjY2MDItMS1naXQtc2VuZC1lbWFpbC1rcmF4ZWxA
cmVkaGF0LmNvbQpSZXZpZXdlZC1ieTogTGFzemxvIEVyc2VrIDxsZXJzZWtA
cmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogU3RlZmFubyBTdGFiZWxsaW5p
IDxzc3RhYmVsbGluaUBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBJYW4g
SmFja3NvbiA8aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4KLS0tCiBody9j
aXJydXNfdmdhLmMgfCA3ICsrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaHcv
Y2lycnVzX3ZnYS5jIGIvaHcvY2lycnVzX3ZnYS5jCmluZGV4IGU2YzM4OTMu
LjM2NGUyMmQgMTAwNjQ0Ci0tLSBhL2h3L2NpcnJ1c192Z2EuYworKysgYi9o
dy9jaXJydXNfdmdhLmMKQEAgLTMwOCwxMCArMzA4LDkgQEAgc3RhdGljIGJv
b2wgYmxpdF9yZWdpb25faXNfdW5zYWZlKHN0cnVjdCBDaXJydXNWR0FTdGF0
ZSAqcywKIHsKICAgICBpZiAocGl0Y2ggPCAwKSB7CiAgICAgICAgIGludDY0
X3QgbWluID0gYWRkcgotICAgICAgICAgICAgKyAoKGludDY0X3Qpcy0+Y2ly
cnVzX2JsdF9oZWlnaHQtMSkgKiBwaXRjaDsKLSAgICAgICAgaW50MzJfdCBt
YXggPSBhZGRyCi0gICAgICAgICAgICArIHMtPmNpcnJ1c19ibHRfd2lkdGg7
Ci0gICAgICAgIGlmIChtaW4gPCAwIHx8IG1heCA+PSBzLT52cmFtX3NpemUp
IHsKKyAgICAgICAgICAgICsgKChpbnQ2NF90KXMtPmNpcnJ1c19ibHRfaGVp
Z2h0IC0gMSkgKiBwaXRjaAorICAgICAgICAgICAgLSBzLT5jaXJydXNfYmx0
X3dpZHRoOworICAgICAgICBpZiAobWluIDwgLTEgfHwgYWRkciA+PSBzLT52
cmFtX3NpemUpIHsKICAgICAgICAgICAgIHJldHVybiB0cnVlOwogICAgICAg
ICB9CiAgICAgfSBlbHNlIHsKLS0gCjIuMS40Cgo=

--=separator
Content-Type: application/octet-stream; name="xsa208-qemuu.patch"
Content-Disposition: attachment; filename="xsa208-qemuu.patch"
Content-Transfer-Encoding: base64

RnJvbSA4ZjYzMjY1ZWZlYjZmOTJlNjNmN2U3NDljYjI2MTMxYjY4YjIwZGY3
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBMaSBRaWFuZyA8bGlx
aWFuZzYtc0AzNjAuY24+CkRhdGU6IE1vbiwgMTMgRmViIDIwMTcgMTU6MjI6
MTUgKzAwMDAKU3ViamVjdDogW1BBVENIXSBjaXJydXM6IGZpeCBvb2IgYWNj
ZXNzIGlzc3VlIChDVkUtMjAxNy0yNjE1KQoKV2hlbiBkb2luZyBiaXRibHQg
Y29weSBpbiBiYWNrd2FyZCBtb2RlLCB3ZSBzaG91bGQgbWludXMgdGhlCmJs
dCB3aWR0aCBmaXJzdCBqdXN0IGxpa2UgdGhlIGFkZGluZyBpbiB0aGUgZm9y
d2FyZCBtb2RlLiBUaGlzCmNhbiBhdm9pZCB0aGUgb29iIGFjY2VzcyBvZiB0
aGUgZnJvbnQgb2YgdmdhJ3MgdnJhbS4KClRoaXMgaXMgWFNBLTIwOC4KCnVw
c3RyZWFtLWNvbW1pdC1pZDogNjJkNGM2YmQ1MjYzYmI4NDEzYTA2YzgwMTQ0
ZmM2NzhkZjZkZmI2NAoKU2lnbmVkLW9mZi1ieTogTGkgUWlhbmcgPGxpcWlh
bmc2LXNAMzYwLmNuPgoKeyBrcmF4ZWw6IHdpdGggYmFja3dhcmQgYmxpdHMg
KG5lZ2F0aXZlIHBpdGNoKSBhZGRyIGlzIHRoZSB0b3Btb3N0CiAgICAgICAg
ICBhZGRyZXNzLCBzbyBjaGVjayBpdCBhcy1pcyBhZ2FpbnN0IHZyYW0gc2l6
ZSBdCgpbIFRoaXMgaXMgQ1ZFLTIwMTctMjYxNSAvIFhTQS0yMDggIC0gSWFu
IEphY2tzb24gXQoKQ2M6IHFlbXUtc3RhYmxlQG5vbmdudS5vcmcKQ2M6IFAg
SiBQIDxwcGFuZGl0QHJlZGhhdC5jb20+CkNjOiBMYXN6bG8gRXJzZWsgPGxl
cnNla0ByZWRoYXQuY29tPgpDYzogUGFvbG8gQm9uemluaSA8cGJvbnppbmlA
cmVkaGF0LmNvbT4KQ2M6IFdvbGZnYW5nIEJ1bWlsbGVyIDx3LmJ1bWlsbGVy
QHByb3htb3guY29tPgpGaXhlczogZDM1MzJhMGRiMDIyOTZlNjg3NzExYjhj
ZGM3NzkxOTI0ZWZjY2VhMCAoQ1ZFLTIwMTQtODEwNikKU2lnbmVkLW9mZi1i
eTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+Ck1lc3NhZ2Ut
aWQ6IDE0ODU5MzgxMDEtMjY2MDItMS1naXQtc2VuZC1lbWFpbC1rcmF4ZWxA
cmVkaGF0LmNvbQpSZXZpZXdlZC1ieTogTGFzemxvIEVyc2VrIDxsZXJzZWtA
cmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogU3RlZmFubyBTdGFiZWxsaW5p
IDxzc3RhYmVsbGluaUBrZXJuZWwub3JnPgotLS0KIGh3L2Rpc3BsYXkvY2ly
cnVzX3ZnYS5jIHwgNyArKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2h3L2Rp
c3BsYXkvY2lycnVzX3ZnYS5jIGIvaHcvZGlzcGxheS9jaXJydXNfdmdhLmMK
aW5kZXggYmRiMDkyZS4uM2JiZTNkNSAxMDA2NDQKLS0tIGEvaHcvZGlzcGxh
eS9jaXJydXNfdmdhLmMKKysrIGIvaHcvZGlzcGxheS9jaXJydXNfdmdhLmMK
QEAgLTI3NywxMCArMjc3LDkgQEAgc3RhdGljIGJvb2wgYmxpdF9yZWdpb25f
aXNfdW5zYWZlKHN0cnVjdCBDaXJydXNWR0FTdGF0ZSAqcywKICAgICB9CiAg
ICAgaWYgKHBpdGNoIDwgMCkgewogICAgICAgICBpbnQ2NF90IG1pbiA9IGFk
ZHIKLSAgICAgICAgICAgICsgKChpbnQ2NF90KXMtPmNpcnJ1c19ibHRfaGVp
Z2h0LTEpICogcGl0Y2g7Ci0gICAgICAgIGludDMyX3QgbWF4ID0gYWRkcgot
ICAgICAgICAgICAgKyBzLT5jaXJydXNfYmx0X3dpZHRoOwotICAgICAgICBp
ZiAobWluIDwgMCB8fCBtYXggPiBzLT52Z2EudnJhbV9zaXplKSB7CisgICAg
ICAgICAgICArICgoaW50NjRfdClzLT5jaXJydXNfYmx0X2hlaWdodCAtIDEp
ICogcGl0Y2gKKyAgICAgICAgICAgIC0gcy0+Y2lycnVzX2JsdF93aWR0aDsK
KyAgICAgICAgaWYgKG1pbiA8IC0xIHx8IGFkZHIgPj0gcy0+dmdhLnZyYW1f
c2l6ZSkgewogICAgICAgICAgICAgcmV0dXJuIHRydWU7CiAgICAgICAgIH0K
ICAgICB9IGVsc2UgewotLSAKMS44LjMuMQo=

--=separator
Content-Type: application/octet-stream; name="xsa208-qemuu-4.7.patch"
Content-Disposition: attachment; filename="xsa208-qemuu-4.7.patch"
Content-Transfer-Encoding: base64

RnJvbSA4ZjYzMjY1ZWZlYjZmOTJlNjNmN2U3NDljYjI2MTMxYjY4YjIwZGY3
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBMaSBRaWFuZyA8bGlx
aWFuZzYtc0AzNjAuY24+CkRhdGU6IE1vbiwgMTMgRmViIDIwMTcgMTU6MjI6
MTUgKzAwMDAKU3ViamVjdDogW1BBVENIXSBjaXJydXM6IGZpeCBvb2IgYWNj
ZXNzIGlzc3VlIChDVkUtMjAxNy0yNjE1KQoKV2hlbiBkb2luZyBiaXRibHQg
Y29weSBpbiBiYWNrd2FyZCBtb2RlLCB3ZSBzaG91bGQgbWludXMgdGhlCmJs
dCB3aWR0aCBmaXJzdCBqdXN0IGxpa2UgdGhlIGFkZGluZyBpbiB0aGUgZm9y
d2FyZCBtb2RlLiBUaGlzCmNhbiBhdm9pZCB0aGUgb29iIGFjY2VzcyBvZiB0
aGUgZnJvbnQgb2YgdmdhJ3MgdnJhbS4KClRoaXMgaXMgWFNBLTIwOC4KCnVw
c3RyZWFtLWNvbW1pdC1pZDogNjJkNGM2YmQ1MjYzYmI4NDEzYTA2YzgwMTQ0
ZmM2NzhkZjZkZmI2NAoKU2lnbmVkLW9mZi1ieTogTGkgUWlhbmcgPGxpcWlh
bmc2LXNAMzYwLmNuPgoKeyBrcmF4ZWw6IHdpdGggYmFja3dhcmQgYmxpdHMg
KG5lZ2F0aXZlIHBpdGNoKSBhZGRyIGlzIHRoZSB0b3Btb3N0CiAgICAgICAg
ICBhZGRyZXNzLCBzbyBjaGVjayBpdCBhcy1pcyBhZ2FpbnN0IHZyYW0gc2l6
ZSBdCgpDYzogcWVtdS1zdGFibGVAbm9uZ251Lm9yZwpDYzogUCBKIFAgPHBw
YW5kaXRAcmVkaGF0LmNvbT4KQ2M6IExhc3psbyBFcnNlayA8bGVyc2VrQHJl
ZGhhdC5jb20+CkNjOiBQYW9sbyBCb256aW5pIDxwYm9uemluaUByZWRoYXQu
Y29tPgpDYzogV29sZmdhbmcgQnVtaWxsZXIgPHcuYnVtaWxsZXJAcHJveG1v
eC5jb20+CkZpeGVzOiBkMzUzMmEwZGIwMjI5NmU2ODc3MTFiOGNkYzc3OTE5
MjRlZmNjZWEwIChDVkUtMjAxNC04MTA2KQpTaWduZWQtb2ZmLWJ5OiBHZXJk
IEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KTWVzc2FnZS1pZDogMTQ4
NTkzODEwMS0yNjYwMi0xLWdpdC1zZW5kLWVtYWlsLWtyYXhlbEByZWRoYXQu
Y29tClJldmlld2VkLWJ5OiBMYXN6bG8gRXJzZWsgPGxlcnNla0ByZWRoYXQu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBTdGVmYW5vIFN0YWJlbGxpbmkgPHNzdGFi
ZWxsaW5pQGtlcm5lbC5vcmc+Ci0tLQogaHcvZGlzcGxheS9jaXJydXNfdmdh
LmMgfCA3ICsrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaHcvZGlzcGxheS9j
aXJydXNfdmdhLmMgYi9ody9kaXNwbGF5L2NpcnJ1c192Z2EuYwppbmRleCA1
MTk4MDM3Li43YmYzNzA3IDEwMDY0NAotLS0gYS9ody9kaXNwbGF5L2NpcnJ1
c192Z2EuYworKysgYi9ody9kaXNwbGF5L2NpcnJ1c192Z2EuYwpAQCAtMjcy
LDEwICsyNzIsOSBAQCBzdGF0aWMgYm9vbCBibGl0X3JlZ2lvbl9pc191bnNh
ZmUoc3RydWN0IENpcnJ1c1ZHQVN0YXRlICpzLAogewogICAgIGlmIChwaXRj
aCA8IDApIHsKICAgICAgICAgaW50NjRfdCBtaW4gPSBhZGRyCi0gICAgICAg
ICAgICArICgoaW50NjRfdClzLT5jaXJydXNfYmx0X2hlaWdodC0xKSAqIHBp
dGNoOwotICAgICAgICBpbnQzMl90IG1heCA9IGFkZHIKLSAgICAgICAgICAg
ICsgcy0+Y2lycnVzX2JsdF93aWR0aDsKLSAgICAgICAgaWYgKG1pbiA8IDAg
fHwgbWF4ID49IHMtPnZnYS52cmFtX3NpemUpIHsKKyAgICAgICAgICAgICsg
KChpbnQ2NF90KXMtPmNpcnJ1c19ibHRfaGVpZ2h0IC0gMSkgKiBwaXRjaAor
ICAgICAgICAgICAgLSBzLT5jaXJydXNfYmx0X3dpZHRoOworICAgICAgICBp
ZiAobWluIDwgLTEgfHwgYWRkciA+PSBzLT52Z2EudnJhbV9zaXplKSB7CiAg
ICAgICAgICAgICByZXR1cm4gdHJ1ZTsKICAgICAgICAgfQogICAgIH0gZWxz
ZSB7Ci0tIAoyLjEuNAoK

--=separator--
