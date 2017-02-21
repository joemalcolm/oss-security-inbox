X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9834" "Tuesday" "21" "February" "2017" "12:00:03" "+0000" "Xen.org security team" "security@xen.org" "<E1cg96x-0006uk-4m@xenbits.xenproject.org>" "227" "[oss-security] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe" nil nil nil "2" "2017022112:00:03" "[oss-security] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe" (number mark "U       security@xen Feb 21  227/9834  " thread-indent "\"[oss-security] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo does not check if memory region is safe\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29838 invoked by uid 550); 21 Feb 2017 12:00:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28567 invoked from network); 21 Feb 2017 12:00:23 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1cg96x-0006uk-4m@xenbits.xenproject.org>
Date: Tue, 21 Feb 2017 12:00:03 +0000
Subject: [oss-security] Xen Security Advisory 209 (CVE-2017-2620) - cirrus_bitblt_cputovideo
 does not check if memory region is safe

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2017-2620 / XSA-209
                              version 3

   cirrus_bitblt_cputovideo does not check if memory region is safe

UPDATES IN VERSION 3
====================

Public release.

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

xsa209-qemuu.patch       qemu-xen, qemu upstream
(no backport yet)        qemu-xen-traditional

$ sha256sum xsa209*
167af9ed7163fa7cf4abb52f865290ced3163c7684151bdc1324eb5e534faf13  xsa209-qemut.patch
297578aa43c3e6b21333f1b859fd1d3e68aaaae77b3cadbadd20cfeca8426df3  xsa209-qemuu.patch
$

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

iQEcBAEBAgAGBQJYrBl3AAoJEIP+FMlX6CvZ6LMIALETwnX9w8SifkvuYY3jotwp
nQWY8ztJkMnai9X10RN6SeVf2dCpXLhATPuPGORgRiZJEuBaGHEsHa00i63FQBSL
PaOAgzN1GY+u16Ygv2e3vPcN8mO55A6zcFErF2oLsrfdNsG4pJTwn7bMEjZiqSyG
R9xIC6KiA1nojsZO+ynmRvHxFP6epySRayO0PZAGS75LdmEKVxClE3dAeMW77WNv
dAs3Qi14hB5BmdryK5f1STk8r2b3UsN1pbvao8odiEWFaB9tPo273gj5RdfnEV3t
EzTvH37Q3C4YFoTFx8p6fY5ejHNh4AeSyi9yE7lWtKhDZw56UhdfMmYIgDaKpig=
=RBpg
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
Content-Type: application/octet-stream; name="xsa209-qemuu.patch"
Content-Disposition: attachment; filename="xsa209-qemuu.patch"
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
MjAxNy0yNjIwIC8gWFNBLTIwOSAgLSBJYW4gSmFja3NvbiBdCgpSZXBvcnRl
ZC1ieTogR2VyZCBIb2ZmbWFubiA8Z2hvZmZtYW5AcmVkaGF0LmNvbT4KU2ln
bmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+
Ci0tLQogaHcvZGlzcGxheS9jaXJydXNfdmdhLmMgfCA4ICsrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
aHcvZGlzcGxheS9jaXJydXNfdmdhLmMgYi9ody9kaXNwbGF5L2NpcnJ1c192
Z2EuYwppbmRleCAwZTQ3Y2Y4Li5hMDkzZGM4IDEwMDY0NAotLS0gYS9ody9k
aXNwbGF5L2NpcnJ1c192Z2EuYworKysgYi9ody9kaXNwbGF5L2NpcnJ1c192
Z2EuYwpAQCAtODk5LDYgKzg5OSwxMCBAQCBzdGF0aWMgaW50IGNpcnJ1c19i
aXRibHRfY3B1dG92aWRlbyhDaXJydXNWR0FTdGF0ZSAqIHMpCiB7CiAgICAg
aW50IHc7CiAKKyAgICBpZiAoYmxpdF9pc191bnNhZmUocywgdHJ1ZSkpIHsK
KyAgICAgICAgcmV0dXJuIDA7CisgICAgfQorCiAgICAgcy0+Y2lycnVzX2Js
dF9tb2RlICY9IH5DSVJSVVNfQkxUTU9ERV9NRU1TWVNTUkM7CiAgICAgcy0+
Y2lycnVzX3NyY3B0ciA9ICZzLT5jaXJydXNfYmx0YnVmWzBdOwogICAgIHMt
PmNpcnJ1c19zcmNwdHJfZW5kID0gJnMtPmNpcnJ1c19ibHRidWZbMF07CkBA
IC05MjQsNiArOTI4LDEwIEBAIHN0YXRpYyBpbnQgY2lycnVzX2JpdGJsdF9j
cHV0b3ZpZGVvKENpcnJ1c1ZHQVN0YXRlICogcykKIAl9CiAgICAgICAgIHMt
PmNpcnJ1c19zcmNjb3VudGVyID0gcy0+Y2lycnVzX2JsdF9zcmNwaXRjaCAq
IHMtPmNpcnJ1c19ibHRfaGVpZ2h0OwogICAgIH0KKworICAgIC8qIHRoZSBi
bGl0X2lzX3Vuc2FmZSBjYWxsIGFib3ZlIHNob3VsZCBjYXRjaCB0aGlzICov
CisgICAgYXNzZXJ0KHMtPmNpcnJ1c19ibHRfc3JjcGl0Y2ggPD0gQ0lSUlVT
X0JMVEJVRlNJWkUpOworCiAgICAgcy0+Y2lycnVzX3NyY3B0ciA9IHMtPmNp
cnJ1c19ibHRidWY7CiAgICAgcy0+Y2lycnVzX3NyY3B0cl9lbmQgPSBzLT5j
aXJydXNfYmx0YnVmICsgcy0+Y2lycnVzX2JsdF9zcmNwaXRjaDsKICAgICBj
aXJydXNfdXBkYXRlX21lbW9yeV9hY2Nlc3Mocyk7Ci0tIAoxLjguMy4xCgo=

--=separator--
