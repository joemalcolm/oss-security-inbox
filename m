X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14244" "Thursday" "23" "February" "2017" "15:52:31" "+0000" "Xen.org security team" "security@xen.org" "<E1cgvh1-00026E-Rs@xenbits.xenproject.org>" "299" "[oss-security] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe" nil nil nil "2" "2017022315:52:31" "[oss-security] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe" (number mark "U       security@xen Feb 23  299/14244 " thread-indent "\"[oss-security] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32297 invoked by uid 550); 23 Feb 2017 15:53:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32242 invoked from network); 23 Feb 2017 15:52:59 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1cgvh1-00026E-Rs@xenbits.xenproject.org>
Date: Thu, 23 Feb 2017 15:52:31 +0000
Subject: [oss-security] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo
 does not check if memory region is safe

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2017-2620 / XSA-209
                              version 4

   cirrus_bitblt_cputovideo does not check if memory region is safe

UPDATES IN VERSION 4
====================

Include a prerequisite patch for qemu-upstream, correct statement
regarding the availability of a qemu-traditional patch.

ISSUE DESCRIPTION
=================

In CIRRUS_BLTMODE_MEMSYSSRC mode the bitblit copy routine
cirrus_bitblt_cputovideo fails to check wethehr the specified memory
region is safe.

IMPACT
======

A malicious guest administrator can cause an out of bounds memory
write, very likely exploitable as a privilege escalation.

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

CREDITS
=======

This issue was discovered by Gerd Hoffmann of Red Hat.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa209-qemuu/*.patch     qemu-xen, qemu upstream
xsa209-qemut.patch       qemu-xen-traditional

$ sha256sum xsa209* xsa209*/*
167af9ed7163fa7cf4abb52f865290ced3163c7684151bdc1324eb5e534faf13  xsa209-qemut.patch
e698b73d8de24af0fe33968a43561e5e1d094f4caf2443caa447b552677d2683  xsa209-qemuu/0001-display-cirrus-ignore-source-pitch-value-as-needed-i.patch
50c60e45151ef2265cce4f92b204e9fd75f8bc8952f097e77ab4fe1c1446bc98  xsa209-qemuu/0002-cirrus-add-blit_is_unsafe-call-to-cirrus_bitblt_cput.patch

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches described above (or others which are
substantially similar) is permitted during the embargo, even on
public-facing systems with untrusted guest users and administrators.

However, deployment of the "stdvga" mitigation (changing the video
card emulation to stdvga) is NOT permitted (except where all the
affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.  This is because this produces a guest-visible
change which will indicate which component contains the vulnerability.

Additionally, distribution of updated software is prohibited (except
to other members of the predisclosure list).

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

iQEcBAEBAgAGBQJYrwN/AAoJEIP+FMlX6CvZQoQIAK9UiN9VwXv1I0E7X1TL2TjE
P9SNXkI5wKiwCq22pbz9pjBO//ia3M5UoxpDMwaMAQzn9bEThHnki8x2njRxIEF7
frxm6B8DpHLCoRHiqgwi018JHLLcSbr+KQrZqBns1j5BfOF0in89A8cgBmQrziyX
bj9853Q8dHSUNW1vi8vZkMacIwxMCg4sBLjSRUoqiWmoyfU6XodRwZ3LoglsofTj
/jk/G5OiitqXDBPzvclPRddQ53xiN9eN3fV8IdG6QpX6F+C2qQVDyS8kAqqFmmm6
Vn6yl9UxrmP0OmvQ5CgUw8GWQoY3OqObjiPgfNUdbN+CLjdhdGfF3kGuYIniqd4=
=I92f
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa209-qemut.patch"
Content-Disposition: attachment; filename="xsa209-qemut.patch"
Content-Transfer-Encoding: base64

RnJvbTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+ClN1Ympl
Y3Q6IFtQQVRDSCAzLzNdIGNpcnJ1czogYWRkIGJsaXRfaXNfdW5zYWZlIGNh
bGwgdG8gY2lycnVzX2JpdGJsdF9jcHV0b3ZpZGVvCgpDSVJSVVNfQkxUTU9E
RV9NRU1TWVNTUkMgYmxpdHMgZG8gTk9UIGNoZWNrIGJsaXQgZGVzdGluYXRp
b24KYW5kIGJsaXQgd2lkdGgsIGF0IGFsbC4gIE9vcHMuICBGaXggaXQuCgpT
ZWN1cml0eSBpbXBhY3Q6IGhpZ2guCgpUaGUgbWlzc2luZyBibGl0IGRlc3Rp
bmF0aW9uIGNoZWNrIGFsbG93cyB0byB3cml0ZSB0byBob3N0IG1lbW9yeS4K
QmFzaWNhbGx5IHNhbWUgYXMgQ1ZFLTIwMTQtODEwNiBmb3IgdGhlIG90aGVy
IGJsaXQgdmFyaWFudHMuCgpUaGUgbWlzc2luZyBibGl0IHdpZHRoIGNoZWNr
IGFsbG93cyB0byBvdmVyZmxvdyBjaXJydXNfYmx0YnVmLAp3aXRoIHRoZSBh
dHRyYWN0aXZlIHRhcmdldCBjaXJydXNfc3JjcHRyIChjdXJyZW50IGNpcnJ1
c19ibHRidWYgd3JpdGUKcG9zaXRpb24pIGJlaW5nIGxvY2F0ZWQgcmlnaHQg
YWZ0ZXIgY2lycnVzX2JsdGJ1ZiBpbiBDaXJydXNWR0FTdGF0ZS4KCkR1ZSB0
byBjaXJydXMgZW11bGF0aW9uIHdyaXRpbmcgY2lycnVzX2JsdGJ1ZiBieXRl
d2lzZSB0aGUgYXR0YWNrZXIKaGFzbid0IGZ1bGwgY29udHJvbCBvdmVyIGNp
cnJ1c19zcmNwdHIgdGhvdWdoLCBvbmx5IG9uZSBieXRlIGNhbiBiZQpjaGFu
Z2VkLiAgT25jZSB0aGUgZmlyc3QgYnl0ZSBoYXMgYmVlbiBtb2RpZmllZCBm
dXJ0aGVyIHdyaXRlcyBsYW5kCmVsc2V3aGVyZS4KClsgVGhpcyBpcyBDVkUt
MjAxNy0yNjIwIC8gWFNBLTIwOSAgLSBJYW4gSmFja3NvbiBdCgpGaXhlZCBj
b21waWxhdGlvbiBieSByZW1vdmluZyBleHRyYSBwYXJhbWV0ZXIgdG8gYmxp
dF9pc191bnNhZmUuIC1pd2oKClJlcG9ydGVkLWJ5OiBHZXJkIEhvZmZtYW5u
IDxnaG9mZm1hbkByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBHZXJkIEhv
ZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogSWFu
IEphY2tzb24gPGlhbi5qYWNrc29uQGV1LmNpdHJpeC5jb20+Ci0tLQpkaWZm
IC0tZ2l0IGEvaHcvY2lycnVzX3ZnYS5jIGIvaHcvY2lycnVzX3ZnYS5jCmlu
ZGV4IGU2YzM4OTMuLjQ1ZmFjYjYgMTAwNjQ0Ci0tLSBhL2h3L2NpcnJ1c192
Z2EuYworKysgYi9ody9jaXJydXNfdmdhLmMKQEAgLTkwMCw2ICs5MDAsMTAg
QEAgc3RhdGljIGludCBjaXJydXNfYml0Ymx0X2NwdXRvdmlkZW8oQ2lycnVz
VkdBU3RhdGUgKiBzKQogewogICAgIGludCB3OwogCisgICAgaWYgKGJsaXRf
aXNfdW5zYWZlKHMpKSB7CisgICAgICAgIHJldHVybiAwOworICAgIH0KKwog
ICAgIHMtPmNpcnJ1c19ibHRfbW9kZSAmPSB+Q0lSUlVTX0JMVE1PREVfTUVN
U1lTU1JDOwogICAgIHMtPmNpcnJ1c19zcmNwdHIgPSAmcy0+Y2lycnVzX2Js
dGJ1ZlswXTsKICAgICBzLT5jaXJydXNfc3JjcHRyX2VuZCA9ICZzLT5jaXJy
dXNfYmx0YnVmWzBdOwpAQCAtOTI1LDYgKzkyOSwxMCBAQCBzdGF0aWMgaW50
IGNpcnJ1c19iaXRibHRfY3B1dG92aWRlbyhDaXJydXNWR0FTdGF0ZSAqIHMp
CiAJfQogICAgICAgICBzLT5jaXJydXNfc3JjY291bnRlciA9IHMtPmNpcnJ1
c19ibHRfc3JjcGl0Y2ggKiBzLT5jaXJydXNfYmx0X2hlaWdodDsKICAgICB9
CisKKyAgICAvKiB0aGUgYmxpdF9pc191bnNhZmUgY2FsbCBhYm92ZSBzaG91
bGQgY2F0Y2ggdGhpcyAqLworICAgIGFzc2VydChzLT5jaXJydXNfYmx0X3Ny
Y3BpdGNoIDw9IENJUlJVU19CTFRCVUZTSVpFKTsKKwogICAgIHMtPmNpcnJ1
c19zcmNwdHIgPSBzLT5jaXJydXNfYmx0YnVmOwogICAgIHMtPmNpcnJ1c19z
cmNwdHJfZW5kID0gcy0+Y2lycnVzX2JsdGJ1ZiArIHMtPmNpcnJ1c19ibHRf
c3JjcGl0Y2g7CiAgICAgY2lycnVzX3VwZGF0ZV9tZW1vcnlfYWNjZXNzKHMp
Owo=

--=separator
Content-Type: application/octet-stream;
 name="xsa209-qemuu/0001-display-cirrus-ignore-source-pitch-value-as-needed-i.patch"
Content-Disposition: attachment;
 filename="xsa209-qemuu/0001-display-cirrus-ignore-source-pitch-value-as-needed-i.patch"
Content-Transfer-Encoding: base64

RnJvbSA1MmI3ZjQzYzhmYTE4NWFiODU2YmNhYWNkYTdhYmM5YTZmYzA3Zjg0
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBCcnVjZSBSb2dlcnMg
PGJyb2dlcnNAc3VzZS5jb20+CkRhdGU6IFR1ZSwgMjEgRmViIDIwMTcgMTA6
NTQ6MzggLTA4MDAKU3ViamVjdDogW1BBVENIIDEvMl0gZGlzcGxheTogY2ly
cnVzOiBpZ25vcmUgc291cmNlIHBpdGNoIHZhbHVlIGFzIG5lZWRlZCBpbgog
YmxpdF9pc191bnNhZmUKCkNvbW1pdCA0Mjk5YjkwIGFkZGVkIGEgY2hlY2sg
d2hpY2ggaXMgdG9vIGJyb2FkLCBnaXZlbiB0aGF0IHRoZSBzb3VyY2UKcGl0
Y2ggdmFsdWUgaXMgbm90IHJlcXVpcmVkIHRvIGJlIGluaXRpYWxpemVkIGZv
ciBzb2xpZCBmaWxsIG9wZXJhdGlvbnMuClRoaXMgcGF0Y2ggcmVmaW5lcyB0
aGUgYmxpdF9pc191bnNhZmUoKSBjaGVjayB0byBpZ25vcmUgc291cmNlIHBp
dGNoIGluCnRoYXQgY2FzZS4gQWZ0ZXIgYXBwbHlpbmcgdGhlIGFib3ZlIGNv
bW1pdCBhcyBhIHNlY3VyaXR5IHBhdGNoLCB3ZQpub3RpY2VkIHRoZSBTTEVT
IDExIFNQNCBndWVzdCBndWkgZmFpbGVkIHRvIGluaXRpYWxpemUgcHJvcGVy
bHkuCgpTaWduZWQtb2ZmLWJ5OiBCcnVjZSBSb2dlcnMgPGJyb2dlcnNAc3Vz
ZS5jb20+Ck1lc3NhZ2UtaWQ6IDIwMTcwMTA5MjAzNTIwLjU2MTktMS1icm9n
ZXJzQHN1c2UuY29tClNpZ25lZC1vZmYtYnk6IEdlcmQgSG9mZm1hbm4gPGty
YXhlbEByZWRoYXQuY29tPgotLS0KIGh3L2Rpc3BsYXkvY2lycnVzX3ZnYS5j
IHwgMTEgKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaHcvZGlzcGxh
eS9jaXJydXNfdmdhLmMgYi9ody9kaXNwbGF5L2NpcnJ1c192Z2EuYwppbmRl
eCA3YmYzNzA3Li4zNGE2OTAwIDEwMDY0NAotLS0gYS9ody9kaXNwbGF5L2Np
cnJ1c192Z2EuYworKysgYi9ody9kaXNwbGF5L2NpcnJ1c192Z2EuYwpAQCAt
Mjg4LDcgKzI4OCw3IEBAIHN0YXRpYyBib29sIGJsaXRfcmVnaW9uX2lzX3Vu
c2FmZShzdHJ1Y3QgQ2lycnVzVkdBU3RhdGUgKnMsCiAgICAgcmV0dXJuIGZh
bHNlOwogfQogCi1zdGF0aWMgYm9vbCBibGl0X2lzX3Vuc2FmZShzdHJ1Y3Qg
Q2lycnVzVkdBU3RhdGUgKnMpCitzdGF0aWMgYm9vbCBibGl0X2lzX3Vuc2Fm
ZShzdHJ1Y3QgQ2lycnVzVkdBU3RhdGUgKnMsIGJvb2wgZHN0X29ubHkpCiB7
CiAgICAgLyogc2hvdWxkIGJlIHRoZSBjYXNlLCBzZWUgY2lycnVzX2JpdGJs
dF9zdGFydCAqLwogICAgIGFzc2VydChzLT5jaXJydXNfYmx0X3dpZHRoID4g
MCk7CkBAIC0zMDIsNiArMzAyLDkgQEAgc3RhdGljIGJvb2wgYmxpdF9pc191
bnNhZmUoc3RydWN0IENpcnJ1c1ZHQVN0YXRlICpzKQogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcy0+Y2lycnVzX2JsdF9kc3RhZGRyICYgcy0+
Y2lycnVzX2FkZHJfbWFzaykpIHsKICAgICAgICAgcmV0dXJuIHRydWU7CiAg
ICAgfQorICAgIGlmIChkc3Rfb25seSkgeworICAgICAgICByZXR1cm4gZmFs
c2U7CisgICAgfQogICAgIGlmIChibGl0X3JlZ2lvbl9pc191bnNhZmUocywg
cy0+Y2lycnVzX2JsdF9zcmNwaXRjaCwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHMtPmNpcnJ1c19ibHRfc3JjYWRkciAmIHMtPmNpcnJ1c19h
ZGRyX21hc2spKSB7CiAgICAgICAgIHJldHVybiB0cnVlOwpAQCAtNjY3LDcg
KzY3MCw3IEBAIHN0YXRpYyBpbnQgY2lycnVzX2JpdGJsdF9jb21tb25fcGF0
dGVybmNvcHkoQ2lycnVzVkdBU3RhdGUgKiBzLAogCiAgICAgZHN0ID0gcy0+
dmdhLnZyYW1fcHRyICsgKHMtPmNpcnJ1c19ibHRfZHN0YWRkciAmIHMtPmNp
cnJ1c19hZGRyX21hc2spOwogCi0gICAgaWYgKGJsaXRfaXNfdW5zYWZlKHMp
KQorICAgIGlmIChibGl0X2lzX3Vuc2FmZShzLCBmYWxzZSkpCiAgICAgICAg
IHJldHVybiAwOwogCiAgICAgKCpzLT5jaXJydXNfcm9wKSAocywgZHN0LCBz
cmMsCkBAIC02ODUsNyArNjg4LDcgQEAgc3RhdGljIGludCBjaXJydXNfYml0
Ymx0X3NvbGlkZmlsbChDaXJydXNWR0FTdGF0ZSAqcywgaW50IGJsdF9yb3Ap
CiB7CiAgICAgY2lycnVzX2ZpbGxfdCByb3BfZnVuYzsKIAotICAgIGlmIChi
bGl0X2lzX3Vuc2FmZShzKSkgeworICAgIGlmIChibGl0X2lzX3Vuc2FmZShz
LCB0cnVlKSkgewogICAgICAgICByZXR1cm4gMDsKICAgICB9CiAgICAgcm9w
X2Z1bmMgPSBjaXJydXNfZmlsbFtyb3BfdG9faW5kZXhbYmx0X3JvcF1dW3Mt
PmNpcnJ1c19ibHRfcGl4ZWx3aWR0aCAtIDFdOwpAQCAtNzg0LDcgKzc4Nyw3
IEBAIHN0YXRpYyB2b2lkIGNpcnJ1c19kb19jb3B5KENpcnJ1c1ZHQVN0YXRl
ICpzLCBpbnQgZHN0LCBpbnQgc3JjLCBpbnQgdywgaW50IGgpCiAKIHN0YXRp
YyBpbnQgY2lycnVzX2JpdGJsdF92aWRlb3RvdmlkZW9fY29weShDaXJydXNW
R0FTdGF0ZSAqIHMpCiB7Ci0gICAgaWYgKGJsaXRfaXNfdW5zYWZlKHMpKQor
ICAgIGlmIChibGl0X2lzX3Vuc2FmZShzLCBmYWxzZSkpCiAgICAgICAgIHJl
dHVybiAwOwogCiAgICAgY2lycnVzX2RvX2NvcHkocywgcy0+Y2lycnVzX2Js
dF9kc3RhZGRyIC0gcy0+dmdhLnN0YXJ0X2FkZHIsCi0tIAoyLjEuNAoK

--=separator
Content-Type: application/octet-stream;
 name="xsa209-qemuu/0002-cirrus-add-blit_is_unsafe-call-to-cirrus_bitblt_cput.patch"
Content-Disposition: attachment;
 filename="xsa209-qemuu/0002-cirrus-add-blit_is_unsafe-call-to-cirrus_bitblt_cput.patch"
Content-Transfer-Encoding: base64

RnJvbSAxNTI2OGY5MWZiZTc1YjM4YTg1MWM0NThhZWY3NGU2OTNkNjQ2ZWE1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBHZXJkIEhvZmZtYW5u
IDxrcmF4ZWxAcmVkaGF0LmNvbT4KRGF0ZTogVHVlLCAyMSBGZWIgMjAxNyAx
MDo1NDo1OSAtMDgwMApTdWJqZWN0OiBbUEFUQ0ggMi8yXSBjaXJydXM6IGFk
ZCBibGl0X2lzX3Vuc2FmZSBjYWxsIHRvCiBjaXJydXNfYml0Ymx0X2NwdXRv
dmlkZW8KCkNJUlJVU19CTFRNT0RFX01FTVNZU1NSQyBibGl0cyBkbyBOT1Qg
Y2hlY2sgYmxpdCBkZXN0aW5hdGlvbgphbmQgYmxpdCB3aWR0aCwgYXQgYWxs
LiAgT29wcy4gIEZpeCBpdC4KClNlY3VyaXR5IGltcGFjdDogaGlnaC4KClRo
ZSBtaXNzaW5nIGJsaXQgZGVzdGluYXRpb24gY2hlY2sgYWxsb3dzIHRvIHdy
aXRlIHRvIGhvc3QgbWVtb3J5LgpCYXNpY2FsbHkgc2FtZSBhcyBDVkUtMjAx
NC04MTA2IGZvciB0aGUgb3RoZXIgYmxpdCB2YXJpYW50cy4KClRoZSBtaXNz
aW5nIGJsaXQgd2lkdGggY2hlY2sgYWxsb3dzIHRvIG92ZXJmbG93IGNpcnJ1
c19ibHRidWYsCndpdGggdGhlIGF0dHJhY3RpdmUgdGFyZ2V0IGNpcnJ1c19z
cmNwdHIgKGN1cnJlbnQgY2lycnVzX2JsdGJ1ZiB3cml0ZQpwb3NpdGlvbikg
YmVpbmcgbG9jYXRlZCByaWdodCBhZnRlciBjaXJydXNfYmx0YnVmIGluIENp
cnJ1c1ZHQVN0YXRlLgoKRHVlIHRvIGNpcnJ1cyBlbXVsYXRpb24gd3JpdGlu
ZyBjaXJydXNfYmx0YnVmIGJ5dGV3aXNlIHRoZSBhdHRhY2tlcgpoYXNuJ3Qg
ZnVsbCBjb250cm9sIG92ZXIgY2lycnVzX3NyY3B0ciB0aG91Z2gsIG9ubHkg
b25lIGJ5dGUgY2FuIGJlCmNoYW5nZWQuICBPbmNlIHRoZSBmaXJzdCBieXRl
IGhhcyBiZWVuIG1vZGlmaWVkIGZ1cnRoZXIgd3JpdGVzIGxhbmQKZWxzZXdo
ZXJlLgoKWyBUaGlzIGlzIENWRS0yMDE3LTI2MjAgLyBYU0EtMjA5ICAtIElh
biBKYWNrc29uIF0KClJlcG9ydGVkLWJ5OiBHZXJkIEhvZmZtYW5uIDxnaG9m
Zm1hbkByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBHZXJkIEhvZmZtYW5u
IDxrcmF4ZWxAcmVkaGF0LmNvbT4KLS0tCiBody9kaXNwbGF5L2NpcnJ1c192
Z2EuYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9ody9kaXNwbGF5L2NpcnJ1c192Z2EuYyBi
L2h3L2Rpc3BsYXkvY2lycnVzX3ZnYS5jCmluZGV4IDM0YTY5MDAuLjU5MDEy
NTAgMTAwNjQ0Ci0tLSBhL2h3L2Rpc3BsYXkvY2lycnVzX3ZnYS5jCisrKyBi
L2h3L2Rpc3BsYXkvY2lycnVzX3ZnYS5jCkBAIC04NjUsNiArODY1LDEwIEBA
IHN0YXRpYyBpbnQgY2lycnVzX2JpdGJsdF9jcHV0b3ZpZGVvKENpcnJ1c1ZH
QVN0YXRlICogcykKIHsKICAgICBpbnQgdzsKIAorICAgIGlmIChibGl0X2lz
X3Vuc2FmZShzLCB0cnVlKSkgeworICAgICAgICByZXR1cm4gMDsKKyAgICB9
CisKICAgICBzLT5jaXJydXNfYmx0X21vZGUgJj0gfkNJUlJVU19CTFRNT0RF
X01FTVNZU1NSQzsKICAgICBzLT5jaXJydXNfc3JjcHRyID0gJnMtPmNpcnJ1
c19ibHRidWZbMF07CiAgICAgcy0+Y2lycnVzX3NyY3B0cl9lbmQgPSAmcy0+
Y2lycnVzX2JsdGJ1ZlswXTsKQEAgLTg5MCw2ICs4OTQsMTAgQEAgc3RhdGlj
IGludCBjaXJydXNfYml0Ymx0X2NwdXRvdmlkZW8oQ2lycnVzVkdBU3RhdGUg
KiBzKQogCX0KICAgICAgICAgcy0+Y2lycnVzX3NyY2NvdW50ZXIgPSBzLT5j
aXJydXNfYmx0X3NyY3BpdGNoICogcy0+Y2lycnVzX2JsdF9oZWlnaHQ7CiAg
ICAgfQorCisgICAgLyogdGhlIGJsaXRfaXNfdW5zYWZlIGNhbGwgYWJvdmUg
c2hvdWxkIGNhdGNoIHRoaXMgKi8KKyAgICBhc3NlcnQocy0+Y2lycnVzX2Js
dF9zcmNwaXRjaCA8PSBDSVJSVVNfQkxUQlVGU0laRSk7CisKICAgICBzLT5j
aXJydXNfc3JjcHRyID0gcy0+Y2lycnVzX2JsdGJ1ZjsKICAgICBzLT5jaXJy
dXNfc3JjcHRyX2VuZCA9IHMtPmNpcnJ1c19ibHRidWYgKyBzLT5jaXJydXNf
Ymx0X3NyY3BpdGNoOwogICAgIGNpcnJ1c191cGRhdGVfbWVtb3J5X2FjY2Vz
cyhzKTsKLS0gCjIuMS40Cgo=

--=separator--
