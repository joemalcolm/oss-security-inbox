X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7656" "Thursday" "14" "April" "2016" "13:03:47" "+0000" "Xen.org security team" "security@xen.org" "<E1aqgvz-0001Vr-5I@xenbits.xenproject.org>" "188" "[oss-security] Xen Security Advisory 174 (CVE-2016-3961) - hugetlbfs use may crash PV Linux guests" "^CC:" nil nil "4" "2016041413:03:47" "[oss-security] Xen Security Advisory 174 (CVE-2016-3961) - hugetlbfs use may crash PV Linux guests" (number mark "U       security@xen Apr 14  188/7656  " thread-indent "\"[oss-security] Xen Security Advisory 174 (CVE-2016-3961) - hugetlbfs use may crash PV Linux guests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5518 invoked by uid 550); 14 Apr 2016 13:04:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5499 invoked from network); 14 Apr 2016 13:04:12 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
Message-Id: <E1aqgvz-0001Vr-5I@xenbits.xenproject.org>
CC: Xen.org security team <security@xen.org>
Date: Thu, 14 Apr 2016 13:03:47 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 174 (CVE-2016-3961) - hugetlbfs use may
 crash PV Linux guests
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-3961 / XSA-174
                              version 3

                hugetlbfs use may crash PV Linux guests

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

Huge (2Mb) pages are generally unavailable to PV guests.  Since x86
Linux pvops-based kernels are generally multi purpose, they would
normally be built with hugetlbfs support enabled.  Use of that
functionality by an application in a PV guest would cause an
infinite page fault loop, and an OOPS to occur upon an attempt to
terminate the hung application.

IMPACT
======

Depending on the guest kernel configuration, the OOPS could result
in a kernel crash (guest DoS).

VULNERABLE SYSTEMS
==================

All upstream x86 Linux versions operating as PV Xen guests are
vulnerable.

ARM systems are not vulnerable.  x86 HVM guests are not vulnerable.

x86 Linux versions derived from linux-2.6.18-xen.hg (XenoLinux) are not
vulnerable.

Oracle Unbreakable Enterprise Kernels are not vulnerable.

We believe that non-Linux guests are not vulnerable, as we are not
aware of any with an analogous bug.

MITIGATION
==========

Running only HVM guests will avoid this issue.

Not enabling hugetlbfs use, by not altering the boot time default value
of zero in /proc/sys/vm/nr_hugepages (which can only be written by the
root user) will avoid this issue.

It is possible that disabling (or not enabling) the "panic on OOPS"
behavior (via use of the "oops=panic" command line option or the
"panic_on_oops" sysctl) will also avoid this issue, by limiting the
effect to an application crash.  We are not currently sure whether
this is an effective mitigation, as we are not sure whether any locks
or mutexes are held at the point of the crash.

CREDITS
=======

This issue was discovered by Vitaly Kuznetsov from Red Hat.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa174.patch           Linux 4.5.x ... 3.10.x

$ sha256sum xsa174*
cbec70e183f76b4081ebba05c0a8105bd4952d164a2e5c40528c05bf8861ddef  xsa174.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of patches or mitigations is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because such host configuration changes would be user mode
visible, which could lead to the rediscovery of the vulnerability.

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
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJXD5UqAAoJEIP+FMlX6CvZtAEIAKUf33cM1Gs+Y8Yt+s3FLvqR
RW9Ktbz0dqMfL+4govcvfbI5CdtB75ZWp6T4rrjGrtIvljEJWAERasKA0anIW00I
5duFtbFN+nPlmdZUfGIW3G6kpveSstOICVxqKPn0chN7VuTZJvzogc9t9PTtvwpX
+UkzvUvMacu0u8H0mJFjcuS/xFeS5LaosOCrJwAWKP1je6fwc217MrYm8LH6vwGr
K7yJVnEih0XGv5hy9ufwcF5SI0d4CSilcxfFAqKJkRwQ2SSbsF2BXN1j11Eqmua3
ARif+g3qBH6uH+RT6bclUOUO3vCKcReBWjRCF+bbsdDMCmSLwdkQK8xtu7N/Tys=
=u89I
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa174.patch"
Content-Disposition: attachment; filename="xsa174.patch"
Content-Transfer-Encoding: base64

eDg2L3hlbjogc3VwcHJlc3MgaHVnZXRsYmZzIGluIFBWIGd1ZXN0cwoKSHVn
ZSBwYWdlcyBhcmUgbm90IG5vcm1hbGx5IGF2YWlsYWJsZSB0byBQViBndWVz
dHMuIE5vdCBzdXBwcmVzc2luZwpodWdldGxiZnMgdXNlIHJlc3VsdHMgaW4g
YW4gZW5kbGVzcyBsb29wIG9mIHBhZ2UgZmF1bHRzIHdoZW4gdXNlciBtb2Rl
CmNvZGUgdHJpZXMgdG8gYWNjZXNzIGEgaHVnZXRsYmZzIG1hcHBlZCBhcmVh
IChzaW5jZSB0aGUgaHlwZXJ2aXNvcgpkZW5pZXMgc3VjaCBQVEVzIHRvIGJl
IGNyZWF0ZWQsIGJ1dCBlcnJvciBpbmRpY2F0aW9ucyBjYW4ndCBiZQpwcm9w
YWdhdGVkIG91dCBvZiB4ZW5fc2V0X3B0ZV9hdCgpLCBqdXN0IGxpa2UgZm9y
IHZhcmlvdXMgb2YgaXRzCnNpYmxpbmdzKSwgYW5kIC0gb25jZSBraWxsZWQg
aW4gYW4gb29wcyBsaWtlIHRoaXM6CgprZXJuZWwgQlVHIGF0IC4uLi9mcy9o
dWdldGxiZnMvaW5vZGUuYzo0MjghCmludmFsaWQgb3Bjb2RlOiAwMDAwIFsj
MV0gU01QIApNb2R1bGVzIGxpbmtlZCBpbjogLi4uClN1cHBvcnRlZDogWWVz
CkNQVTogMiBQSUQ6IDYwODggQ29tbTogaHVnZXRsYmZzIFRhaW50ZWQ6IEcg
ICAgICAgIFcgICAgICAgICA0LjQuMC0yMDE2LTAxLTIwLXB2ICMyCkhhcmR3
YXJlIG5hbWU6IC4uLgp0YXNrOiBmZmZmODgwODA1OTIwNWMwIHRpOiBmZmZm
ODgwODAzYzg0MDAwIHRhc2sudGk6IGZmZmY4ODA4MDNjODQwMDAKUklQOiBl
MDMwOls8ZmZmZmZmZmY4MTFjMzMzYj5dICBbPGZmZmZmZmZmODExYzMzM2I+
XSByZW1vdmVfaW5vZGVfaHVnZXBhZ2VzKzB4MjViLzB4MzIwClJTUDogZTAy
YjpmZmZmODgwODAzYzg3OWE4ICBFRkxBR1M6IDAwMDEwMjAyClJBWDogMDAw
MDAwMDAwMDc3YTRkYiBSQlg6IGZmZmZlYTAwMWFjZmYwMDAgUkNYOiAwMDAw
MDAwMDc4NDE3ZDM4ClJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAw
MDAwN2UxNTRmYTcgUkRJOiBmZmZmODgwODA1ZDcwOTYwClJCUDogMDAwMDAw
MDAwMDAwMDk2MCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiAwMDAwMDAw
MDAwMDAwMDAwClIxMDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IDAwMDAwMDAw
MDAwMDAwMDEgUjEyOiAwMDAwMDAwMDAwMDAwMDAwClIxMzogZmZmZjg4MDgw
NzQ4NjAxOCBSMTQ6IDAwMDAwMDAwMDAwMDAwMDAgUjE1OiBmZmZmODgwODAz
Yzg3YWYwCkZTOiAgMDAwMDdmODVmYThiODcwMCgwMDAwKSBHUzpmZmZmODgw
ODBiNjQwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKQ1M6ICBl
MDMzIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzYgpD
UjI6IDAwMDA3Zjg1ZmEwMDAwMDAgQ1IzOiAwMDAwMDAwMDAxYTBhMDAwIENS
NDogMDAwMDAwMDAwMDA0MDY2MApTdGFjazoKIGZmZmY4ODAwMDAwMDBmYjAg
ZmZmZjg4MDgwM2M4N2ExOCBmZmZmODgwODAzYzg3YWU4IGZmZmY4ODA4MDU5
MjA1YzAKIGZmZmY4ODA4MDNjODdhZjAgZmZmZjg4MDgwM2M4N2FlOCBmZmZm
ODgwODA3NDg2MDE4IDAwMDAwMDAwMDAwMDAwMDAKIGZmZmZmZmZmODFiZjZl
NjAgZmZmZjg4MDgwNzQ4NjE2OCAwMDAwMDNmZmZmZmZmZmZmIDAwMDAwMDAw
MDNjODc3NTgKQ2FsbCBUcmFjZToKIFs8ZmZmZmZmZmY4MTFjMzQxNT5dIGh1
Z2V0bGJmc19ldmljdF9pbm9kZSsweDE1LzB4NDAKIFs8ZmZmZmZmZmY4MTE2
N2IzZD5dIGV2aWN0KzB4YmQvMHgxYjAKIFs8ZmZmZmZmZmY4MTE2NTE0YT5d
IF9fZGVudHJ5X2tpbGwrMHgxOWEvMHgxZjAKIFs8ZmZmZmZmZmY4MTE2NWIw
ZT5dIGRwdXQrMHgxZmUvMHgyMjAKIFs8ZmZmZmZmZmY4MTE1MDUzNT5dIF9f
ZnB1dCsweDE1NS8weDIwMAogWzxmZmZmZmZmZjgxMDc5ZmMwPl0gdGFza193
b3JrX3J1bisweDYwLzB4YTAKIFs8ZmZmZmZmZmY4MTA2MzUxMD5dIGRvX2V4
aXQrMHgxNjAvMHg0MDAKIFs8ZmZmZmZmZmY4MTA2MzdlYj5dIGRvX2dyb3Vw
X2V4aXQrMHgzYi8weGEwCiBbPGZmZmZmZmZmODEwNmU4YmQ+XSBnZXRfc2ln
bmFsKzB4MWVkLzB4NDcwCiBbPGZmZmZmZmZmODEwMGY4NTQ+XSBkb19zaWdu
YWwrMHgxNC8weDExMAogWzxmZmZmZmZmZjgxMDAzMGU5Pl0gcHJlcGFyZV9l
eGl0X3RvX3VzZXJtb2RlKzB4ZTkvMHhmMAogWzxmZmZmZmZmZjgxNDE3OGE1
Pl0gcmV0aW50X3VzZXIrMHg4LzB4MTMKClRoaXMgaXMgWFNBLTE3NC4KClJl
cG9ydGVkLWJ5OiBWaXRhbHkgS3V6bmV0c292IDx2a3V6bmV0c0ByZWRoYXQu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3Vz
ZS5jb20+CkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCi0tLQp2MjogTWFr
ZSBYZW4taW5zcGVjaWZpYywgYnkgdXNpbmcgY3B1X2hhc19wc2UuCgotLS0g
YS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9odWdldGxiLmgKKysrIGIvYXJjaC94
ODYvaW5jbHVkZS9hc20vaHVnZXRsYi5oCkBAIC00LDYgKzQsNyBAQAogI2lu
Y2x1ZGUgPGFzbS9wYWdlLmg+CiAjaW5jbHVkZSA8YXNtLWdlbmVyaWMvaHVn
ZXRsYi5oPgogCisjZGVmaW5lIGh1Z2VwYWdlc19zdXBwb3J0ZWQoKSBjcHVf
aGFzX3BzZQogCiBzdGF0aWMgaW5saW5lIGludCBpc19odWdlcGFnZV9vbmx5
X3JhbmdlKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLAogCQkJCQkgdW5zaWduZWQg
bG9uZyBhZGRyLAo=

--=separator--
