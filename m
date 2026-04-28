Received: (qmail 1899 invoked by uid 550); 28 Apr 2026 12:02:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1853 invoked from network); 28 Apr 2026 12:02:09 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1wHh8S-006n4i-17@xenbits.xenproject.org>
Date: Tue, 28 Apr 2026 12:01:52 +0000
Subject: [oss-security] Xen Security Advisory 487 v2 (CVE-2026-31787) - Linux kernel
 double free in Xen privcmd driver

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-31787 / XSA-487
                               version 2

            Linux kernel double free in Xen privcmd driver

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

The Linux kernel's privcmd driver can be abused to circumvent kernel
lockdown (secure boot) by causing a double free of kernel memory.

Note that this operation can be performed by root only, so any
further impact on the system (like denial of service) is not security
relevant.

IMPACT
======

An administrator of a domain booted in secure mode is able to perform
actions on the kernel which should not be possible in secure mode.

VULNERABLE SYSTEMS
==================

Linux PVH or HVM domains (x86 or Arm) from kernel 3.8 onwards are
vulnerable.

PV domains or non-Linux domains are not vulnerable.

MITIGATION
==========

There is no mitigation available.

CREDITS
=======

This issue was discovered by Atharva Vartak (@0xAth4rv).

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa487-linux.patch           Linux

$ sha256sum xsa487*
fc7ccf9697203c14ced4364d70175b463b08a17a7559fd8654a12b623b54e5bb  xsa487-linux.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of patches or mitigations is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because the patch needs to be applied to the guest.

Deployment is permitted only AFTER the embargo ends.


(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmnwoQUMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZKRkH/A2DLI9IzMFrmuzksitp7G+MD/AWq3jJe93IAeU1
/QguHV7pQXFyhb1zWR/+DB4zt5tAcGIs75enob8njm3HZ/e5Ht6aSlYq+Rl5ZO6w
kK4aUljpRUxPTOg/PHPKn2sTkZccQxXGxmara5PwhZf0uXb0BBB33dhWbkxQoAR/
FzHSFNHvJKZct/fmmavE38R4AVel0GC3Ufi1jQ44l85xBWtmWN4+ioEno4tDqKkk
d9fmRfCoPta2zCL8DezC3y/LC7x8bbLeL1CMFchnVW+JjJOON22K2R/12dvBFUOF
If+HuBOHviA02fDW86H+sKTn/KnCI1jNjgUto9tCIkdyvSI=
=NY86
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa487-linux.patch"
Content-Disposition: attachment; filename="xsa487-linux.patch"
Content-Transfer-Encoding: base64

RnJvbSA1NTc3YzAwMzAxOGFiYjFhZDkyZGM0MDMyY2M3MWIxNzE4YTgzZGZhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+CkRhdGU6
IEZyaSwgMTAgQXByIDIwMjYgMDk6MjA6MDQgKzAyMDAKU3ViamVjdDogW1BBVENIXSB4ZW4vcHJp
dmNtZDogZml4IGRvdWJsZSBmcmVlIHZpYSBWTUEgc3BsaXR0aW5nCgpwcml2Y21kX3ZtX29wcyBk
ZWZpbmVzIC5jbG9zZSAocHJpdmNtZF9jbG9zZSksIGJ1dCBuZWl0aGVyIC5tYXlfc3BsaXQKbm9y
IC5vcGVuLiBXaGVuIHVzZXJzcGFjZSBkb2VzIGEgcGFydGlhbCBtdW5tYXAoKSBvbiBhIHByaXZj
bWQgbWFwcGluZywKdGhlIGtlcm5lbCBzcGxpdHMgdGhlIFZNQSB2aWEgX19zcGxpdF92bWEoKS4g
U2luY2UgbWF5X3NwbGl0IGlzIE5VTEwsCnRoZSBzcGxpdCBpcyBhbGxvd2VkLiB2bV9hcmVhX2R1
cCgpIGNvcGllcyB2bV9wcml2YXRlX2RhdGEgKGEgcGFnZXMKYXJyYXkgYWxsb2NhdGVkIGluIGFs
bG9jX2VtcHR5X3BhZ2VzKCkpIGludG8gdGhlIG5ldyBWTUEgd2l0aG91dCBhbnkKZml4dXAsIGJl
Y2F1c2UgdGhlcmUgaXMgbm8gLm9wZW4gY2FsbGJhY2suCgpCb3RoIFZNQXMgbm93IHBvaW50IHRv
IHRoZSBzYW1lIHBhZ2VzIGFycmF5LiBXaGVuIHRoZSB1bm1hcHBlZCBwb3J0aW9uCmlzIGNsb3Nl
ZCwgcHJpdmNtZF9jbG9zZSgpIGNhbGxzOgogICAgLSB4ZW5fdW5tYXBfZG9tYWluX2dmbl9yYW5n
ZSgpCiAgICAtIHhlbl9mcmVlX3VucG9wdWxhdGVkX3BhZ2VzKCkKICAgIC0ga3ZmcmVlKHBhZ2Vz
KQoKVGhlIHN1cnZpdmluZyBWTUEgc3RpbGwgaG9sZHMgdGhlIGRhbmdsaW5nIHBvaW50ZXIuIFdo
ZW4gaXQgaXMgbGF0ZXIKZGVzdHJveWVkLCB0aGUgc2FtZSBzZXF1ZW5jZSBydW5zIGFnYWluLCB3
aGljaCBsZWFkcyB0byBhIGRvdWJsZSBmcmVlLgoKRml4IHRoaXMgaXNzdWUgYnkgYWRkaW5nIGEg
Lm1heV9zcGxpdCBjYWxsYmFjayBkZW55aW5nIHRoZSBWTUEgc3BsaXQuCgpUaGlzIGlzIFhTQS00
ODcgLyBDVkUtMjAyNi0zMTc4NwoKRml4ZXM6IGQ3MWY1MTM5ODVjMiAoInhlbjogcHJpdmNtZDog
c3VwcG9ydCBhdXRvdHJhbnNsYXRlZCBwaHlzbWFwIGd1ZXN0cy4iKQpSZXBvcnRlZC1ieTogQXRo
YXJ2YSBWYXJ0YWsgPGF0aGFydmEuYS52YXJ0YWtAZ21haWwuY29tPgpTdWdnZXN0ZWQtYnk6IEF0
aGFydmEgVmFydGFrIDxhdGhhcnZhLmEudmFydGFrQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTog
SnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuY29tPgpSZXZpZXdlZC1ieTogSmFuIEJldWxpY2gg
PGpiZXVsaWNoQHN1c2UuY29tPgotLS0KIGRyaXZlcnMveGVuL3ByaXZjbWQuYyB8IDcgKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
eGVuL3ByaXZjbWQuYyBiL2RyaXZlcnMveGVuL3ByaXZjbWQuYwppbmRleCAxNWJhNTkyMjM2ZTgu
LjcyNWE0OWEwZWVlNyAxMDA2NDQKLS0tIGEvZHJpdmVycy94ZW4vcHJpdmNtZC5jCisrKyBiL2Ry
aXZlcnMveGVuL3ByaXZjbWQuYwpAQCAtMTYyMCw2ICsxNjIwLDEyIEBAIHN0YXRpYyB2b2lkIHBy
aXZjbWRfY2xvc2Uoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCiAJa3ZmcmVlKHBhZ2VzKTsK
IH0KIAorc3RhdGljIGludCBwcml2Y21kX21heV9zcGxpdChzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3Qg
KmFyZWEsIHVuc2lnbmVkIGxvbmcgYWRkcikKK3sKKwkvKiBGb3JiaWQgc3BsaXR0aW5nLCBhdm9p
ZHMgZG91YmxlIGZyZWUgdmlhIHByaXZjbWRfY2xvc2UoKS4gKi8KKwlyZXR1cm4gLUVJTlZBTDsK
K30KKwogc3RhdGljIHZtX2ZhdWx0X3QgcHJpdmNtZF9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZt
ZikKIHsKIAlwcmludGsoS0VSTl9ERUJVRyAicHJpdmNtZF9mYXVsdDogdm1hPSVwICVseC0lbHgs
IHBnb2ZmPSVseCwgdXY9JXBcbiIsCkBAIC0xNjMxLDYgKzE2MzcsNyBAQCBzdGF0aWMgdm1fZmF1
bHRfdCBwcml2Y21kX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IHZtX29wZXJhdGlvbnNfc3RydWN0IHByaXZjbWRfdm1fb3BzID0gewogCS5jbG9zZSA9
IHByaXZjbWRfY2xvc2UsCisJLm1heV9zcGxpdCA9IHByaXZjbWRfbWF5X3NwbGl0LAogCS5mYXVs
dCA9IHByaXZjbWRfZmF1bHQKIH07CiAKLS0gCjIuNTMuMAoK

--=separator--
