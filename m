X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11039" "Tuesday" "22" "November" "2016" "12:02:30" "+0000" "Xen.org security team" "security@xen.org" "<E1c99mQ-00087x-6f@xenbits.xenproject.org>" "237" "[oss-security] Xen Security Advisory 194 (CVE-2016-9384) - guest 32-bit ELF symbol table load leaking host data" nil nil nil "11" "2016112212:02:30" "[oss-security] Xen Security Advisory 194 (CVE-2016-9384) - guest 32-bit ELF symbol table load leaking host data" (number mark "U       security@xen Nov 22  237/11039 " thread-indent "\"[oss-security] Xen Security Advisory 194 (CVE-2016-9384) - guest 32-bit ELF symbol table load leaking host data\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30144 invoked by uid 550); 22 Nov 2016 14:50:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32222 invoked from network); 22 Nov 2016 12:02:51 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1c99mQ-00087x-6f@xenbits.xenproject.org>
Date: Tue, 22 Nov 2016 12:02:30 +0000
Subject: [oss-security] Xen Security Advisory 194 (CVE-2016-9384) - guest 32-bit ELF
 symbol table load leaking host data

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-9384 / XSA-194
                              version 3

           guest 32-bit ELF symbol table load leaking host data

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

Along with their main kernel binary, unprivileged guests may arrange
to have their Xen environment load (kernel) symbol tables for their
use.  The ELF image metadata created for this purpose has a few unused
bytes when the symbol table binary is in 32-bit ELF format.  These
unused bytes were not properly cleared during symbol table loading.

IMPACT
======

A malicious unprivileged guest may be able to obtain sensitive
information from the host.

The information leak is small and not under the control of the guest,
so effectively exploiting this vulnerability is probably difficult.

VULNERABLE SYSTEMS
==================

Only Xen version 4.7 is affected.  Xen versions 4.6 and earlier are not
affected.

The vulnerability is not exposed to x86 HVM guests, unless the host
toolstack has configured to load the guest with a non-default loader,
rather than hvmloader.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Roger Pau Monné of Citrix.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa194.patch           xen-unstable, Xen 4.7.x

$ sha256sum xsa194*
4dad65417d9ff3c86e763d3c88cf8de79b58a9981d531f641ae0dd0dcedce911  xsa194.patch
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

iQEcBAEBAgAGBQJYNDLYAAoJEIP+FMlX6CvZqAoH/39GSWwDpYnflz3TcFyQUViM
j36XzzStWya71ewaXiguUbTHHg6mK47pK4EA/3zFwerczz/5yQzhlToitPkP/8WE
5Qbg9Wyg4STylzeKaiTvLzqUK6XSiJ4oKZwLsnU7tFPLcb6FBMm9t3bzg9NECaft
/6zYj1SVCvoLJB/gtgbwrz2MCjVZQZ9Q2+mpirvu0ePQRD73M0cwfj1ncqjUkFd9
ZNdk14gmxOk1/wWAm/oD1QKUWmjpzByT5dbGcMV3OxGs1V2Px+o4c1u1t/agldr0
wC2LvCK9IED9JcBaH/M85TTAGR7GqfU8l9x3ep97GkrUpquX4OGFt7na28M1YUQ=
=Gc8O
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa194.patch"
Content-Disposition: attachment; filename="xsa194.patch"
Content-Transfer-Encoding: base64

RnJvbSA3MTA5NmIwMTZmN2ZkNTRhNzJhZjczNTc2OTQ4Y2IyNWNmNDJlYmNi
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBSb2dlciBQYXUgTW9u
bsOpIDxyb2dlci5wYXVAY2l0cml4LmNvbT5EYXRlOiBXZWQsIDIgTm92IDIw
MTYgMTU6MDI6MDAgKzAwMDAKU3ViamVjdDogW1BBVENIXSBsaWJlbGY6IGZp
eCBzdGFjayBtZW1vcnkgbGVhayB3aGVuIGxvYWRpbmcgMzIgYml0IHN5bWJv
bAogdGFibGVzCgpUaGUgMzIgYml0IEVsZiBzdHJ1Y3RzIGFyZSBzbWFsbGVy
IHRoYW4gdGhlIDY0IGJpdCBvbmVzLCB3aGljaCBtZWFucyB0aGF0CndoZW4g
bG9hZGluZyB0aGVtIHRoZXJlJ3Mgc29tZSBwYWRkaW5nIGxlZnQgdW5pbml0
aWFsaXplZCBhdCB0aGUgZW5kIG9mIGVhY2gKc3RydWN0IChiZWNhdXNlIHRo
ZSBzaXplIGluZGljYXRlZCBpbiBlX2Voc2l6ZSBhbmQgZV9zaGVudHNpemUg
aXMKc21hbGxlciB0aGFuIHRoZSBzaXplIG9mIGVsZl9laGRyIGFuZCBlbGZf
c2hkcikuCgpGaXggdGhpcyBieSBpbnRyb2R1Y2luZyBhIG5ldyBoZWxwZXIg
dGhhdCBpcyB1c2VkIHRvIHNldApbY2FsbGVyX114ZGVzdF97YmFzZS9zaXpl
fSBhbmQgdGhhdCB0YWtlcyBjYXJlIG9mIHBlcmZvcm1pbmcgdGhlIGFwcHJv
cHJpYXRlCm1lbXNldCBvZiB0aGUgcmVnaW9uLiBUaGlzIG5ld2x5IGludHJv
ZHVjZWQgaGVscGVyIGlzIHRoZW4gdXNlZCB0byBzZXQgYW5kCnVuc2V0IHhk
ZXN0X3tiYXNlL3NpemV9IGluIGVsZl9sb2FkX2JzZHN5bXMuIE5vdyB0aGF0
IHRoZSBmdWxsIHN0cnVjdAppcyB6ZXJvZWQsIHRoZXJlJ3Mgbm8gbmVlZCB0
byBzcGVjaWZpY2FsbHkgemVybyB0aGUgdW5kZWZpbmVkIHNlY3Rpb24uCgpU
aGlzIGlzIFhTQS0xOTQuCgpTdWdnZXN0ZWQtYnk6IElhbiBKYWNrc29uIDxp
YW4uamFja3NvbkBldS5jaXRyaXguY29tPgoKQWxzbyByZW1vdmUgdGhlIG9w
ZW4gY29kZWQgKGFuZCByZWR1bmRhbnQgd2l0aCB0aGUgZWFybGllcgplbGZf
bWVtc2V0X3VuY2hlY2tlZCgpKSB1c2Ugb2YgY2FsbGVyX3hkZXN0XyogZnJv
bSBlbGZfaW5pdCgpLgoKU2lnbmVkLW9mZi1ieTogUm9nZXIgUGF1IE1vbm7D
qSA8cm9nZXIucGF1QGNpdHJpeC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbiBC
ZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KU2lnbmVkLW9mZi1ieTogSWFu
IEphY2tzb24gPElhbi5KYWNrc29uQGV1LmNpdHJpeC5jb20+Ci0tLQogeGVu
L2NvbW1vbi9saWJlbGYvbGliZWxmLWxvYWRlci5jIHwgMTQgKysrLS0tLS0t
LS0tLS0KIHhlbi9jb21tb24vbGliZWxmL2xpYmVsZi10b29scy5jICB8IDEx
ICsrKysrKysrKy0tCiB4ZW4vaW5jbHVkZS94ZW4vbGliZWxmLmggICAgICAg
ICAgfCAxNSArKysrKysrKystLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMjEg
aW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
eGVuL2NvbW1vbi9saWJlbGYvbGliZWxmLWxvYWRlci5jIGIveGVuL2NvbW1v
bi9saWJlbGYvbGliZWxmLWxvYWRlci5jCmluZGV4IDRkM2FlNGQuLmJjMWY4
N2IgMTAwNjQ0Ci0tLSBhL3hlbi9jb21tb24vbGliZWxmL2xpYmVsZi1sb2Fk
ZXIuYworKysgYi94ZW4vY29tbW9uL2xpYmVsZi9saWJlbGYtbG9hZGVyLmMK
QEAgLTQzLDggKzQzLDYgQEAgZWxmX2Vycm9yc3RhdHVzIGVsZl9pbml0KHN0
cnVjdCBlbGZfYmluYXJ5ICplbGYsIGNvbnN0IGNoYXIgKmltYWdlX2lucHV0
LCBzaXplX3QKICAgICBlbGYtPmVoZHIgPSBFTEZfTUFLRV9IQU5ETEUoZWxm
X2VoZHIsIChlbGZfcHRydmFsKWltYWdlX2lucHV0KTsKICAgICBlbGYtPmNs
YXNzID0gZWxmX3V2YWxfMzI2NChlbGYsIGVsZi0+ZWhkciwgZTMyLmVfaWRl
bnRbRUlfQ0xBU1NdKTsKICAgICBlbGYtPmRhdGEgPSBlbGZfdXZhbF8zMjY0
KGVsZiwgZWxmLT5laGRyLCBlMzIuZV9pZGVudFtFSV9EQVRBXSk7Ci0gICAg
ZWxmLT5jYWxsZXJfeGRlc3RfYmFzZSA9IE5VTEw7Ci0gICAgZWxmLT5jYWxs
ZXJfeGRlc3Rfc2l6ZSA9IDA7CiAKICAgICAvKiBTYW5pdHkgY2hlY2sgcGhk
ci4gKi8KICAgICBvZmZzZXQgPSBlbGZfdXZhbChlbGYsIGVsZi0+ZWhkciwg
ZV9waG9mZikgKwpAQCAtMjg0LDkgKzI4Miw4IEBAIGRvIHsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXAogI2RlZmluZSBTWU1UQUJfSU5ERVggICAgMQogI2RlZmlu
ZSBTVFJUQUJfSU5ERVggICAgMgogCi0gICAgLyogQWxsb3cgZWxmX21lbWNw
eV9zYWZlIHRvIHdyaXRlIHRvIHN5bWJvbF9oZWFkZXIuICovCi0gICAgZWxm
LT5jYWxsZXJfeGRlc3RfYmFzZSA9ICZoZWFkZXI7Ci0gICAgZWxmLT5jYWxs
ZXJfeGRlc3Rfc2l6ZSA9IHNpemVvZihoZWFkZXIpOworICAgIC8qIEFsbG93
IGVsZl9tZW1jcHlfc2FmZSB0byB3cml0ZSB0byBoZWFkZXIuICovCisgICAg
ZWxmX3NldF94ZGVzdChlbGYsICZoZWFkZXIsIHNpemVvZihoZWFkZXIpKTsK
IAogICAgIC8qCiAgICAgICogQ2FsY3VsYXRlIHRoZSBwb3NpdGlvbiBvZiB0
aGUgdmFyaW91cyBlbGVtZW50cyBpbiBHVUVTVCBNRU1PUlkgU1BBQ0UuCkBA
IC0zMTksMTEgKzMxNiw3IEBAIGRvIHsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAog
ICAgIGVsZl9zdG9yZV9maWVsZF9iaXRuZXNzKGVsZiwgaGVhZGVyX2hhbmRs
ZSwgZV9waGVudHNpemUsIDApOwogICAgIGVsZl9zdG9yZV9maWVsZF9iaXRu
ZXNzKGVsZiwgaGVhZGVyX2hhbmRsZSwgZV9waG51bSwgMCk7CiAKLSAgICAv
KiBaZXJvIHRoZSB1bmRlZmluZWQgc2VjdGlvbi4gKi8KLSAgICBzZWN0aW9u
X2hhbmRsZSA9IEVMRl9NQUtFX0hBTkRMRShlbGZfc2hkciwKLSAgICAgICAg
ICAgICAgICAgICAgIEVMRl9SRUFMUFRSMlBUUlZBTCgmaGVhZGVyLmVsZl9o
ZWFkZXIuc2VjdGlvbltTSE5fVU5ERUZdKSk7CiAgICAgc2hkcl9zaXplID0g
ZWxmX3V2YWwoZWxmLCBlbGYtPmVoZHIsIGVfc2hlbnRzaXplKTsKLSAgICBl
bGZfbWVtc2V0X3NhZmUoZWxmLCBFTEZfSEFORExFX1BUUlZBTChzZWN0aW9u
X2hhbmRsZSksIDAsIHNoZHJfc2l6ZSk7CiAKICAgICAvKgogICAgICAqIFRo
ZSBzeW10YWIgc2VjdGlvbiBoZWFkZXIgaXMgZ29pbmcgdG8gcmVzaWRlIGlu
IHNlY3Rpb25bU1lNVEFCX0lOREVYXSwKQEAgLTQwNCw4ICszOTcsNyBAQCBk
byB7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFwKICAgICB9CiAKICAgICAvKiBSZW1v
dmUgcGVybWlzc2lvbnMgZnJvbSBlbGZfbWVtY3B5X3NhZmUuICovCi0gICAg
ZWxmLT5jYWxsZXJfeGRlc3RfYmFzZSA9IE5VTEw7Ci0gICAgZWxmLT5jYWxs
ZXJfeGRlc3Rfc2l6ZSA9IDA7CisgICAgZWxmX3NldF94ZGVzdChlbGYsIE5V
TEwsIDApOwogCiAjdW5kZWYgU1lNVEFCX0lOREVYCiAjdW5kZWYgU1RSVEFC
X0lOREVYCmRpZmYgLS1naXQgYS94ZW4vY29tbW9uL2xpYmVsZi9saWJlbGYt
dG9vbHMuYyBiL3hlbi9jb21tb24vbGliZWxmL2xpYmVsZi10b29scy5jCmlu
ZGV4IDVhNDc1N2IuLmU3M2U3MjkgMTAwNjQ0Ci0tLSBhL3hlbi9jb21tb24v
bGliZWxmL2xpYmVsZi10b29scy5jCisrKyBiL3hlbi9jb21tb24vbGliZWxm
L2xpYmVsZi10b29scy5jCkBAIC01OSw4ICs1OSw3IEBAIGJvb2wgZWxmX2Fj
Y2Vzc19vayhzdHJ1Y3QgZWxmX2JpbmFyeSAqIGVsZiwKICAgICAgICAgcmV0
dXJuIDE7CiAgICAgaWYgKCBlbGZfcHRydmFsX2luX3JhbmdlKHB0cnZhbCwg
c2l6ZSwgZWxmLT5kZXN0X2Jhc2UsIGVsZi0+ZGVzdF9zaXplKSApCiAgICAg
ICAgIHJldHVybiAxOwotICAgIGlmICggZWxmX3B0cnZhbF9pbl9yYW5nZShw
dHJ2YWwsIHNpemUsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVs
Zi0+Y2FsbGVyX3hkZXN0X2Jhc2UsIGVsZi0+Y2FsbGVyX3hkZXN0X3NpemUp
ICkKKyAgICBpZiAoIGVsZl9wdHJ2YWxfaW5fcmFuZ2UocHRydmFsLCBzaXpl
LCBlbGYtPnhkZXN0X2Jhc2UsIGVsZi0+eGRlc3Rfc2l6ZSkgKQogICAgICAg
ICByZXR1cm4gMTsKICAgICBlbGZfbWFya19icm9rZW4oZWxmLCAib3V0IG9m
IHJhbmdlIGFjY2VzcyIpOwogICAgIHJldHVybiAwOwpAQCAtMzczLDYgKzM3
MiwxNCBAQCBib29sIGVsZl9waGRyX2lzX2xvYWRhYmxlKHN0cnVjdCBlbGZf
YmluYXJ5ICplbGYsIEVMRl9IQU5ETEVfREVDTChlbGZfcGhkcikgcGhkcgog
ICAgIHJldHVybiAoKHBfdHlwZSA9PSBQVF9MT0FEKSAmJiAocF9mbGFncyAm
IChQRl9SIHwgUEZfVyB8IFBGX1gpKSAhPSAwKTsKIH0KIAordm9pZCBlbGZf
c2V0X3hkZXN0KHN0cnVjdCBlbGZfYmluYXJ5ICplbGYsIHZvaWQgKmFkZHIs
IHVpbnQ2NF90IHNpemUpCit7CisgICAgZWxmLT54ZGVzdF9iYXNlID0gYWRk
cjsKKyAgICBlbGYtPnhkZXN0X3NpemUgPSBzaXplOworICAgIGlmICggYWRk
ciAhPSBOVUxMICkKKyAgICAgICAgZWxmX21lbXNldF9zYWZlKGVsZiwgRUxG
X1JFQUxQVFIyUFRSVkFMKGFkZHIpLCAwLCBzaXplKTsKK30KKwogLyoKICAq
IExvY2FsIHZhcmlhYmxlczoKICAqIG1vZGU6IEMKZGlmZiAtLWdpdCBhL3hl
bi9pbmNsdWRlL3hlbi9saWJlbGYuaCBiL3hlbi9pbmNsdWRlL3hlbi9saWJl
bGYuaAppbmRleCA5NWI1MzcwLi5jZjYyYmM3IDEwMDY0NAotLS0gYS94ZW4v
aW5jbHVkZS94ZW4vbGliZWxmLmgKKysrIGIveGVuL2luY2x1ZGUveGVuL2xp
YmVsZi5oCkBAIC0yMTAsMTMgKzIxMCwxMSBAQCBzdHJ1Y3QgZWxmX2JpbmFy
eSB7CiAgICAgdWludDY0X3QgYnNkX3N5bXRhYl9wZW5kOwogCiAgICAgLyoK
LSAgICAgKiBjYWxsZXIncyBvdGhlciBhY2NlcHRhYmxlIGRlc3RpbmF0aW9u
Ci0gICAgICoKLSAgICAgKiBBZ2FpbiwgdGhlc2UgYXJlIHRydXN0ZWQgYW5k
IG11c3QgYmUgdmFsaWQgKG9yIDApIHNvIGxvbmcKLSAgICAgKiBhcyB0aGUg
c3RydWN0IGVsZl9iaW5hcnkgaXMgaW4gdXNlLgorICAgICAqIGNhbGxlcidz
IG90aGVyIGFjY2VwdGFibGUgZGVzdGluYXRpb24uCisgICAgICogU2V0IGJ5
IGVsZl9zZXRfeGRlc3QuICBEbyBub3Qgc2V0IHRoZXNlIGRpcmVjdGx5Lgog
ICAgICAqLwotICAgIHZvaWQgKmNhbGxlcl94ZGVzdF9iYXNlOwotICAgIHVp
bnQ2NF90IGNhbGxlcl94ZGVzdF9zaXplOworICAgIHZvaWQgKnhkZXN0X2Jh
c2U7CisgICAgdWludDY0X3QgeGRlc3Rfc2l6ZTsKIAogI2lmbmRlZiBfX1hF
Tl9fCiAgICAgLyogbWlzYyAqLwpAQCAtNDk0LDUgKzQ5MiwxMCBAQCBzdGF0
aWMgaW5saW5lIHZvaWQgRUxGX0FEVkFOQ0VfREVTVChzdHJ1Y3QgZWxmX2Jp
bmFyeSAqZWxmLCB1aW50NjRfdCBhbW91bnQpCiAgICAgfQogfQogCisvKiBT
cGVjaWZ5IGEgKHNpbmdsZSkgYWRkaXRpb25hbCBkZXN0aW5hdGlvbiwgdG8g
d2hpY2ggdGhlIGltYWdlIG1heQorICogY2F1c2Ugd3JpdGVzLiAgQXMgd2l0
aCBkZXN0X2Jhc2UgYW5kIGRlc3Rfc2l6ZSwgdGhlIHZhbHVlcyBwcm92aWRl
ZAorICogYXJlIHRydXN0ZWQgYW5kIG11c3QgYmUgdmFsaWQgc28gbG9uZyBh
cyB0aGUgc3RydWN0IGVsZl9iaW5hcnkKKyAqIGlzIGluIHVzZSBvciB1bnRp
bCBlbGZfc2V0X3hkZXN0KCwwLDApIGlzIGNhbGxlZC4gKi8KK3ZvaWQgZWxm
X3NldF94ZGVzdChzdHJ1Y3QgZWxmX2JpbmFyeSAqZWxmLCB2b2lkICphZGRy
LCB1aW50NjRfdCBzaXplKTsKIAogI2VuZGlmIC8qIF9fWEVOX0xJQkVMRl9I
X18gKi8KLS0gCjIuMS40Cgo=

--=separator--
