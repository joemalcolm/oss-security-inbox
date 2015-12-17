X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14217" "Thursday" "17" "December" "2015" "12:42:34" "+0000" "Xen.org security team" "security@xen.org" "<E1a9XtC-000204-Gj@xenbits.xen.org>" "306" "[oss-security] Xen Security Advisory 166 - ioreq handling possibly susceptible to multiple read issue" nil nil nil "12" "2015121712:42:34" "[oss-security] Xen Security Advisory 166 - ioreq handling possibly susceptible to multiple read issue" (number mark "U       security@xen Dec 17  306/14217 " thread-indent "\"[oss-security] Xen Security Advisory 166 - ioreq handling possibly susceptible to multiple read issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3965 invoked by uid 550); 17 Dec 2015 12:46:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17721 invoked from network); 17 Dec 2015 12:42:52 -0000
Date: Thu, 17 Dec 2015 12:42:34 +0000
Message-Id: <E1a9XtC-000204-Gj@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 166 - ioreq handling possibly susceptible
 to multiple read issue

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

                    Xen Security Advisory XSA-166
                              version 2

      ioreq handling possibly susceptible to multiple read issue

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Single memory accesses in source code can be translated to multiple
ones in machine code by the compiler, requiring special caution when
accessing shared memory.  Such precaution was missing from the
hypervisor code inspecting the state of I/O requests sent to the device
model for assistance.

Due to the offending field being a bitfield, it is however believed
that there is no issue in practice, since compilers, at least when
optimizing (which is always the case for non-debug builds), should find
it more expensive to extract the bit field value twice than to keep the
calculated value in a register.

IMPACT
======

This vulnerability is exposed to malicious device models.  In
conventional Xen systems this means the qemu which service an HVM
domain.  On such systems this vulnerability can only be exploited if
the attacker has gained control of the device model qemu via another
vulnerability.

Privilege escalation, host crash (Denial of Service), and leaked
information all cannot be excluded.

VULNERABLE SYSTEMS
==================

All Xen versions are affected.

Only x86 variants of Xen are susceptible.  ARM variants are not
affected.

Only HVM guests expose this vulnerability.

MITIGATION
==========

Running only PV guests will avoid this issue.

CREDITS
=======

This issue was discovered by Konrad Rzeszutek Wilk of Oracle and Jan
Beulich of SUSE while investigating the issues arising from XSA-155.
XSA-155 was discovered by Felix Wilhelm of ERNW.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa166.patch           xen-unstable, Xen 4.6.x
xsa166-4.5.patch       Xen 4.5.x
xsa166-4.4.patch       Xen 4.4.x
xsa166-4.3.patch       Xen 4.3.x

$ sha256sum xsa166*
740a28a69524e966ab77f9f5e45067aa7ba2d32ea69b1d3c4b9bf0c86212ad0a  xsa166.patch
109a9eb132d712a56a7ca81214fff3952868a39206eb34f66f5b2265e680b9fc  xsa166-4.3.patch
d63261ca2d40e2723a4f3c94665cc120e0ea488200eebb08c7aa07e1c1a35d42  xsa166-4.4.patch
d5dddce37c644d35ef52ff7230f83bf0969b6b4db9b586241f5f5bd0dc631096  xsa166-4.5.patch
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

NOTE REGARDING SHORT EMBARGO
============================

This issue was encountered by the Security Team during investigations
of the scope and impact of XSA-155.  Accordingly XSA-166 is embargoed
and the embargo will end at the same time as that of XSA-155.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWcqzCAAoJEIP+FMlX6CvZPRIIAIkXhtZYi1ro+T74PMote55o
npXKgR9tvXOokj3O1IsYfzHQnOiX3kQmmGmSXg5Hh/sYxAQIgqn2f9Zf/K+6gx8j
Rd+0QrbhekG7+uA3TrGNtNdBDPevAcKE2xkzGZ7OZknE7Ch9WKua3VtjlY0pG9jr
8PUPE/NZ//MSd9Ds2uPB6G2zaoqFG6oGMgqdYs3zwLM52FR1/VlTzKLZ7sh3mPeK
rPO1f1Agn7mFVnSbO0EkAYx++Mr3rv/w2M1qnK0cQk6T9l6Cg6qKzdV+iTV95CNo
QxWLsm26c4YsRPIU1gBgHoPxi8hGwZThInSY8j8MH0Ed1xV3bPm1HqirrafpHHA=
=Fovo
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa166.patch"
Content-Disposition: attachment; filename="xsa166.patch"
Content-Transfer-Encoding: base64

eDg2L0hWTTogYXZvaWQgcmVhZGluZyBpb3JlcSBzdGF0ZSBtb3JlIHRoYW4g
b25jZQoKT3RoZXJ3aXNlLCBlc3BlY2lhbGx5IHdoZW4gdGhlIGNvbXBpbGVy
IGNob29zZXMgdG8gdHJhbnNsYXRlIHRoZQpzd2l0Y2goKSB0byBhIGp1bXAg
dGFibGUsIHVucHJlZGljdGFibGUgYmVoYXZpb3IgKGFuZCBpbiB0aGUganVt
cCB0YWJsZQpjYXNlIGFyYml0cmFyeSBjb2RlIGV4ZWN1dGlvbikgY2FuIHJl
c3VsdC4KClRoaXMgaXMgWFNBLTE2Ni4KClNpZ25lZC1vZmYtYnk6IEphbiBC
ZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IElhbiBDYW1w
YmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vYXJj
aC94ODYvaHZtL2h2bS5jCisrKyBiL3hlbi9hcmNoL3g4Ni9odm0vaHZtLmMK
QEAgLTQ2MCw3ICs0NjAsMTAgQEAgc3RhdGljIGJvb2xfdCBodm1fd2FpdF9m
b3JfaW8oc3RydWN0IGh2bQogewogICAgIHdoaWxlICggc3YtPnBlbmRpbmcg
KQogICAgIHsKLSAgICAgICAgc3dpdGNoICggcC0+c3RhdGUgKQorICAgICAg
ICB1bnNpZ25lZCBpbnQgc3RhdGUgPSBwLT5zdGF0ZTsKKworICAgICAgICBy
bWIoKTsKKyAgICAgICAgc3dpdGNoICggc3RhdGUgKQogICAgICAgICB7CiAg
ICAgICAgIGNhc2UgU1RBVEVfSU9SRVFfTk9ORToKICAgICAgICAgICAgIC8q
CkBAIC00NzEsMTggKzQ3NCwxNSBAQCBzdGF0aWMgYm9vbF90IGh2bV93YWl0
X2Zvcl9pbyhzdHJ1Y3QgaHZtCiAgICAgICAgICAgICBodm1faW9fYXNzaXN0
KHN2LCB+MHVsKTsKICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICBjYXNl
IFNUQVRFX0lPUkVTUF9SRUFEWTogLyogSU9SRVNQX1JFQURZIC0+IE5PTkUg
Ki8KLSAgICAgICAgICAgIHJtYigpOyAvKiBzZWUgSU9SRVNQX1JFQURZIC90
aGVuLyByZWFkIGNvbnRlbnRzIG9mIGlvcmVxICovCiAgICAgICAgICAgICBw
LT5zdGF0ZSA9IFNUQVRFX0lPUkVRX05PTkU7CiAgICAgICAgICAgICBodm1f
aW9fYXNzaXN0KHN2LCBwLT5kYXRhKTsKICAgICAgICAgICAgIGJyZWFrOwog
ICAgICAgICBjYXNlIFNUQVRFX0lPUkVRX1JFQURZOiAgLyogSU9SRVFfe1JF
QURZLElOUFJPQ0VTU30gLT4gSU9SRVNQX1JFQURZICovCiAgICAgICAgIGNh
c2UgU1RBVEVfSU9SRVFfSU5QUk9DRVNTOgotICAgICAgICAgICAgd2FpdF9v
bl94ZW5fZXZlbnRfY2hhbm5lbChzdi0+aW9yZXFfZXZ0Y2huLAotICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAocC0+c3RhdGUgIT0g
U1RBVEVfSU9SRVFfUkVBRFkpICYmCi0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIChwLT5zdGF0ZSAhPSBTVEFURV9JT1JFUV9JTlBS
T0NFU1MpKTsKKyAgICAgICAgICAgIHdhaXRfb25feGVuX2V2ZW50X2NoYW5u
ZWwoc3YtPmlvcmVxX2V2dGNobiwgcC0+c3RhdGUgIT0gc3RhdGUpOwogICAg
ICAgICAgICAgYnJlYWs7CiAgICAgICAgIGRlZmF1bHQ6Ci0gICAgICAgICAg
ICBnZHByaW50ayhYRU5MT0dfRVJSLCAiV2VpcmQgSFZNIGlvcmVxdWVzdCBz
dGF0ZSAlZC5cbiIsIHAtPnN0YXRlKTsKKyAgICAgICAgICAgIGdkcHJpbnRr
KFhFTkxPR19FUlIsICJXZWlyZCBIVk0gaW9yZXF1ZXN0IHN0YXRlICV1XG4i
LCBzdGF0ZSk7CiAgICAgICAgICAgICBzdi0+cGVuZGluZyA9IDA7CiAgICAg
ICAgICAgICBkb21haW5fY3Jhc2goc3YtPnZjcHUtPmRvbWFpbik7CiAgICAg
ICAgICAgICByZXR1cm4gMDsgLyogYmFpbCAqLwo=

--=separator
Content-Type: application/octet-stream; name="xsa166-4.3.patch"
Content-Disposition: attachment; filename="xsa166-4.3.patch"
Content-Transfer-Encoding: base64

eDg2L0hWTTogYXZvaWQgcmVhZGluZyBpb3JlcSBzdGF0ZSBtb3JlIHRoYW4g
b25jZQoKT3RoZXJ3aXNlLCBlc3BlY2lhbGx5IHdoZW4gdGhlIGNvbXBpbGVy
IGNob29zZXMgdG8gdHJhbnNsYXRlIHRoZQpzd2l0Y2goKSB0byBhIGp1bXAg
dGFibGUsIHVucHJlZGljdGFibGUgYmVoYXZpb3IgKGFuZCBpbiB0aGUganVt
cCB0YWJsZQpjYXNlIGFyYml0cmFyeSBjb2RlIGV4ZWN1dGlvbikgY2FuIHJl
c3VsdC4KClRoaXMgaXMgWFNBLTE2Ni4KClNpZ25lZC1vZmYtYnk6IEphbiBC
ZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IElhbiBDYW1w
YmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vYXJj
aC94ODYvaHZtL2h2bS5jCisrKyBiL3hlbi9hcmNoL3g4Ni9odm0vaHZtLmMK
QEAgLTM0Miw2ICszNDIsNyBAQCB2b2lkIGh2bV9taWdyYXRlX3BpcnFzKHN0
cnVjdCB2Y3B1ICp2KQogdm9pZCBodm1fZG9fcmVzdW1lKHN0cnVjdCB2Y3B1
ICp2KQogewogICAgIGlvcmVxX3QgKnA7CisgICAgdW5zaWduZWQgaW50IHN0
YXRlOwogCiAgICAgcHRfcmVzdG9yZV90aW1lcih2KTsKIApAQCAtMzQ5LDkg
KzM1MCwxMCBAQCB2b2lkIGh2bV9kb19yZXN1bWUoc3RydWN0IHZjcHUgKnYp
CiAKICAgICAvKiBOQi4gT3B0aW1pc2VkIGZvciBjb21tb24gY2FzZSAocC0+
c3RhdGUgPT0gU1RBVEVfSU9SRVFfTk9ORSkuICovCiAgICAgcCA9IGdldF9p
b3JlcSh2KTsKLSAgICB3aGlsZSAoIHAtPnN0YXRlICE9IFNUQVRFX0lPUkVR
X05PTkUgKQorICAgIHdoaWxlICggKHN0YXRlID0gcC0+c3RhdGUpICE9IFNU
QVRFX0lPUkVRX05PTkUgKQogICAgIHsKLSAgICAgICAgc3dpdGNoICggcC0+
c3RhdGUgKQorICAgICAgICBybWIoKTsKKyAgICAgICAgc3dpdGNoICggc3Rh
dGUgKQogICAgICAgICB7CiAgICAgICAgIGNhc2UgU1RBVEVfSU9SRVNQX1JF
QURZOiAvKiBJT1JFU1BfUkVBRFkgLT4gTk9ORSAqLwogICAgICAgICAgICAg
aHZtX2lvX2Fzc2lzdCgpOwpAQCAtMzU5LDExICszNjEsMTAgQEAgdm9pZCBo
dm1fZG9fcmVzdW1lKHN0cnVjdCB2Y3B1ICp2KQogICAgICAgICBjYXNlIFNU
QVRFX0lPUkVRX1JFQURZOiAgLyogSU9SRVFfe1JFQURZLElOUFJPQ0VTU30g
LT4gSU9SRVNQX1JFQURZICovCiAgICAgICAgIGNhc2UgU1RBVEVfSU9SRVFf
SU5QUk9DRVNTOgogICAgICAgICAgICAgd2FpdF9vbl94ZW5fZXZlbnRfY2hh
bm5lbCh2LT5hcmNoLmh2bV92Y3B1Lnhlbl9wb3J0LAotICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAocC0+c3RhdGUgIT0gU1RBVEVf
SU9SRVFfUkVBRFkpICYmCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIChwLT5zdGF0ZSAhPSBTVEFURV9JT1JFUV9JTlBST0NFU1Mp
KTsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcC0+
c3RhdGUgIT0gc3RhdGUpOwogICAgICAgICAgICAgYnJlYWs7CiAgICAgICAg
IGRlZmF1bHQ6Ci0gICAgICAgICAgICBnZHByaW50ayhYRU5MT0dfRVJSLCAi
V2VpcmQgSFZNIGlvcmVxdWVzdCBzdGF0ZSAlZC5cbiIsIHAtPnN0YXRlKTsK
KyAgICAgICAgICAgIGdkcHJpbnRrKFhFTkxPR19FUlIsICJXZWlyZCBIVk0g
aW9yZXF1ZXN0IHN0YXRlICV1XG4iLCBzdGF0ZSk7CiAgICAgICAgICAgICBk
b21haW5fY3Jhc2godi0+ZG9tYWluKTsKICAgICAgICAgICAgIHJldHVybjsg
LyogYmFpbCAqLwogICAgICAgICB9Cg==

--=separator
Content-Type: application/octet-stream; name="xsa166-4.4.patch"
Content-Disposition: attachment; filename="xsa166-4.4.patch"
Content-Transfer-Encoding: base64

eDg2L0hWTTogYXZvaWQgcmVhZGluZyBpb3JlcSBzdGF0ZSBtb3JlIHRoYW4g
b25jZQoKT3RoZXJ3aXNlLCBlc3BlY2lhbGx5IHdoZW4gdGhlIGNvbXBpbGVy
IGNob29zZXMgdG8gdHJhbnNsYXRlIHRoZQpzd2l0Y2goKSB0byBhIGp1bXAg
dGFibGUsIHVucHJlZGljdGFibGUgYmVoYXZpb3IgKGFuZCBpbiB0aGUganVt
cCB0YWJsZQpjYXNlIGFyYml0cmFyeSBjb2RlIGV4ZWN1dGlvbikgY2FuIHJl
c3VsdC4KClRoaXMgaXMgWFNBLTE2Ni4KClNpZ25lZC1vZmYtYnk6IEphbiBC
ZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IElhbiBDYW1w
YmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vYXJj
aC94ODYvaHZtL2h2bS5jCisrKyBiL3hlbi9hcmNoL3g4Ni9odm0vaHZtLmMK
QEAgLTM0OCw2ICszNDgsNyBAQCB2b2lkIGh2bV9taWdyYXRlX3BpcnFzKHN0
cnVjdCB2Y3B1ICp2KQogdm9pZCBodm1fZG9fcmVzdW1lKHN0cnVjdCB2Y3B1
ICp2KQogewogICAgIGlvcmVxX3QgKnA7CisgICAgdW5zaWduZWQgaW50IHN0
YXRlOwogCiAgICAgY2hlY2tfd2FrZXVwX2Zyb21fd2FpdCgpOwogCkBAIC0z
NTgsOSArMzU5LDEwIEBAIHZvaWQgaHZtX2RvX3Jlc3VtZShzdHJ1Y3QgdmNw
dSAqdikKICAgICBpZiAoICEocCA9IGdldF9pb3JlcSh2KSkgKQogICAgICAg
ICBnb3RvIGNoZWNrX2luamVjdF90cmFwOwogCi0gICAgd2hpbGUgKCBwLT5z
dGF0ZSAhPSBTVEFURV9JT1JFUV9OT05FICkKKyAgICB3aGlsZSAoIChzdGF0
ZSA9IHAtPnN0YXRlKSAhPSBTVEFURV9JT1JFUV9OT05FICkKICAgICB7Ci0g
ICAgICAgIHN3aXRjaCAoIHAtPnN0YXRlICkKKyAgICAgICAgcm1iKCk7Cisg
ICAgICAgIHN3aXRjaCAoIHN0YXRlICkKICAgICAgICAgewogICAgICAgICBj
YXNlIFNUQVRFX0lPUkVTUF9SRUFEWTogLyogSU9SRVNQX1JFQURZIC0+IE5P
TkUgKi8KICAgICAgICAgICAgIGh2bV9pb19hc3Npc3QocCk7CkBAIC0zNjgs
MTEgKzM3MCwxMCBAQCB2b2lkIGh2bV9kb19yZXN1bWUoc3RydWN0IHZjcHUg
KnYpCiAgICAgICAgIGNhc2UgU1RBVEVfSU9SRVFfUkVBRFk6ICAvKiBJT1JF
UV97UkVBRFksSU5QUk9DRVNTfSAtPiBJT1JFU1BfUkVBRFkgKi8KICAgICAg
ICAgY2FzZSBTVEFURV9JT1JFUV9JTlBST0NFU1M6CiAgICAgICAgICAgICB3
YWl0X29uX3hlbl9ldmVudF9jaGFubmVsKHYtPmFyY2guaHZtX3ZjcHUueGVu
X3BvcnQsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IChwLT5zdGF0ZSAhPSBTVEFURV9JT1JFUV9SRUFEWSkgJiYKLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHAtPnN0YXRlICE9IFNU
QVRFX0lPUkVRX0lOUFJPQ0VTUykpOworICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBwLT5zdGF0ZSAhPSBzdGF0ZSk7CiAgICAgICAg
ICAgICBicmVhazsKICAgICAgICAgZGVmYXVsdDoKLSAgICAgICAgICAgIGdk
cHJpbnRrKFhFTkxPR19FUlIsICJXZWlyZCBIVk0gaW9yZXF1ZXN0IHN0YXRl
ICVkLlxuIiwgcC0+c3RhdGUpOworICAgICAgICAgICAgZ2RwcmludGsoWEVO
TE9HX0VSUiwgIldlaXJkIEhWTSBpb3JlcXVlc3Qgc3RhdGUgJXVcbiIsIHN0
YXRlKTsKICAgICAgICAgICAgIGRvbWFpbl9jcmFzaCh2LT5kb21haW4pOwog
ICAgICAgICAgICAgcmV0dXJuOyAvKiBiYWlsICovCiAgICAgICAgIH0K

--=separator
Content-Type: application/octet-stream; name="xsa166-4.5.patch"
Content-Disposition: attachment; filename="xsa166-4.5.patch"
Content-Transfer-Encoding: base64

eDg2L0hWTTogYXZvaWQgcmVhZGluZyBpb3JlcSBzdGF0ZSBtb3JlIHRoYW4g
b25jZQoKT3RoZXJ3aXNlLCBlc3BlY2lhbGx5IHdoZW4gdGhlIGNvbXBpbGVy
IGNob29zZXMgdG8gdHJhbnNsYXRlIHRoZQpzd2l0Y2goKSB0byBhIGp1bXAg
dGFibGUsIHVucHJlZGljdGFibGUgYmVoYXZpb3IgKGFuZCBpbiB0aGUganVt
cCB0YWJsZQpjYXNlIGFyYml0cmFyeSBjb2RlIGV4ZWN1dGlvbikgY2FuIHJl
c3VsdC4KClRoaXMgaXMgWFNBLTE2Ni4KClNpZ25lZC1vZmYtYnk6IEphbiBC
ZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IElhbiBDYW1w
YmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vYXJj
aC94ODYvaHZtL2h2bS5jCisrKyBiL3hlbi9hcmNoL3g4Ni9odm0vaHZtLmMK
QEAgLTQwMCwyMyArNDAwLDIzIEBAIGJvb2xfdCBodm1faW9fcGVuZGluZyhz
dHJ1Y3QgdmNwdSAqdikKIAogc3RhdGljIGJvb2xfdCBodm1fd2FpdF9mb3Jf
aW8oc3RydWN0IGh2bV9pb3JlcV92Y3B1ICpzdiwgaW9yZXFfdCAqcCkKIHsK
KyAgICB1bnNpZ25lZCBpbnQgc3RhdGU7CisKICAgICAvKiBOQi4gT3B0aW1p
c2VkIGZvciBjb21tb24gY2FzZSAocC0+c3RhdGUgPT0gU1RBVEVfSU9SRVFf
Tk9ORSkuICovCi0gICAgd2hpbGUgKCBwLT5zdGF0ZSAhPSBTVEFURV9JT1JF
UV9OT05FICkKKyAgICB3aGlsZSAoIChzdGF0ZSA9IHAtPnN0YXRlKSAhPSBT
VEFURV9JT1JFUV9OT05FICkKICAgICB7Ci0gICAgICAgIHN3aXRjaCAoIHAt
PnN0YXRlICkKKyAgICAgICAgcm1iKCk7CisgICAgICAgIHN3aXRjaCAoIHN0
YXRlICkKICAgICAgICAgewogICAgICAgICBjYXNlIFNUQVRFX0lPUkVTUF9S
RUFEWTogLyogSU9SRVNQX1JFQURZIC0+IE5PTkUgKi8KLSAgICAgICAgICAg
IHJtYigpOyAvKiBzZWUgSU9SRVNQX1JFQURZIC90aGVuLyByZWFkIGNvbnRl
bnRzIG9mIGlvcmVxICovCiAgICAgICAgICAgICBodm1faW9fYXNzaXN0KHAp
OwogICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgIGNhc2UgU1RBVEVfSU9S
RVFfUkVBRFk6ICAvKiBJT1JFUV97UkVBRFksSU5QUk9DRVNTfSAtPiBJT1JF
U1BfUkVBRFkgKi8KICAgICAgICAgY2FzZSBTVEFURV9JT1JFUV9JTlBST0NF
U1M6Ci0gICAgICAgICAgICB3YWl0X29uX3hlbl9ldmVudF9jaGFubmVsKHN2
LT5pb3JlcV9ldnRjaG4sCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIChwLT5zdGF0ZSAhPSBTVEFURV9JT1JFUV9SRUFEWSkgJiYK
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHAtPnN0
YXRlICE9IFNUQVRFX0lPUkVRX0lOUFJPQ0VTUykpOworICAgICAgICAgICAg
d2FpdF9vbl94ZW5fZXZlbnRfY2hhbm5lbChzdi0+aW9yZXFfZXZ0Y2huLCBw
LT5zdGF0ZSAhPSBzdGF0ZSk7CiAgICAgICAgICAgICBicmVhazsKICAgICAg
ICAgZGVmYXVsdDoKLSAgICAgICAgICAgIGdkcHJpbnRrKFhFTkxPR19FUlIs
ICJXZWlyZCBIVk0gaW9yZXF1ZXN0IHN0YXRlICVkLlxuIiwgcC0+c3RhdGUp
OworICAgICAgICAgICAgZ2RwcmludGsoWEVOTE9HX0VSUiwgIldlaXJkIEhW
TSBpb3JlcXVlc3Qgc3RhdGUgJXVcbiIsIHN0YXRlKTsKICAgICAgICAgICAg
IGRvbWFpbl9jcmFzaChzdi0+dmNwdS0+ZG9tYWluKTsKICAgICAgICAgICAg
IHJldHVybiAwOyAvKiBiYWlsICovCiAgICAgICAgIH0K

--=separator--
