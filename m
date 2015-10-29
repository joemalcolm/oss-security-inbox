X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5852" "Thursday" "29" "October" "2015" "12:00:14" "+0000" "Xen.org security team" "security@xen.org" "<E1ZrlsM-00021I-Bt@xenbits.xen.org>" "153" "[oss-security] Xen Security Advisory 145 (CVE-2015-7812) - arm: Host crash when preempting a multicall" nil nil nil "10" "2015102912:00:14" "[oss-security] Xen Security Advisory 145 (CVE-2015-7812) - arm: Host crash when preempting a multicall" (number mark "U       security@xen Oct 29  153/5852  " thread-indent "\"[oss-security] Xen Security Advisory 145 (CVE-2015-7812) - arm: Host crash when preempting a multicall\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26177 invoked by uid 550); 29 Oct 2015 12:00:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26084 invoked from network); 29 Oct 2015 12:00:34 -0000
Date: Thu, 29 Oct 2015 12:00:14 +0000
Message-Id: <E1ZrlsM-00021I-Bt@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 145 (CVE-2015-7812) - arm: Host crash when
 preempting a multicall

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7812 / XSA-145
                              version 3

             arm: Host crash when preempting a multicall

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

Early versions of Xen on ARM did not support "multicall" functionality
(the ability to perform multiple operations via a single hypercall)
and therefore stubbed out the functionality needed to support
preemption of multicalls in a manner which crashed the host.

When multicall support was subsequently added these stubs were not
replaced with the correct functionality and therefore exposed to
guests a code path which crashes the host.

Any guest can issue a preemptable hypercall via the multicall interface
to exploit this vulnerability.

IMPACT
======

A malicious guest can crash the host.

VULNERABLE SYSTEMS
==================

Both 32- and 64-bit ARM systems are vulnerable from Xen 4.4 onward.

x86 systems are not vulnerable.

MITIGATION
==========

On systems where the guest kernel is controlled by the host rather
than guest administrator, running only kernels which do not make use
of multicall functionality will prevent untrusted guest users from
exploiting this issue. However untrusted guest administrators can still
trigger it unless further steps are taken to prevent them from loading
code into the kernel (e.g. by disabling loadable modules etc) or from
using other mechanisms which allow them to run code at kernel
privilege.

CREDITS
=======

This issue was discovered by Julien Grall of Citrix.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa145.patch        xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x

$ sha256sum xsa145*.patch
4d4a4724e4d367ddfc9ac1b43dfe81bce873c65fe9bb13f443266dd12c002db1  xsa145.patch
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
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWMgmzAAoJEIP+FMlX6CvZUV0H/2uDN/R1KaR1x2OljM5toEUR
vGrEN1LX/AzQ1f4DADZO4LIvth2BLdFEB6OsaaKThFdnZjJWQ0fbfxIzb6eGOpMR
XzuToUEIBTA01JHKNUo5ovWQ36gePyvxkFWDjk8Ixj22YpbuyUDU5HiHH5UpTovg
0QLfJdKDij7Sp3/r9quQ5KSO86kw9CZqut5qRvMI8VKRa03O2jDch5iKkyDTcuCL
md7r5+k6O3F4/TVPrlET+BAHOqgOtuQd6EMFfqXolsr12OpzzBz2/ntK4srmqlZc
wa7PgAoELAaLnv4nBtFEtIyjg9YI4RIKnMwBbeD9suM305ohi3yDCxDj9eaYJwo=
=eNQ5
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa145.patch"
Content-Disposition: attachment; filename="xsa145.patch"
Content-Transfer-Encoding: base64

eGVuL2FybTogU3VwcG9ydCBoeXBlcmNhbGxfY3JlYXRlX2NvbnRpbnVhdGlv
biBmb3IgbXVsdGljYWxsCgpNdWx0aWNhbGwgZm9yIEFSTSBoYXMgYmVlbiBz
dXBwb3J0ZWQgc2luY2UgY29tbWl0IGYwZGJkYzYgInhlbjogYXJtOiBmdWxs
eQppbXBsZW1lbnQgbXVsdGljYWxsIGludGVyZmFjZS4iLiBBbHRob3VnaCwg
aWYgYW4gaHlwZXJjYWxsIGluIG11bHRpY2FsbApyZXF1aXJlcyBwcmVlbXB0
aW9uLCBpdCB3aWxsIGNyYXNoIHRoZSBob3N0OgoKKFhFTikgWGVuIEJVRyBh
dCBkb21haW4uYzozNDcKKFhFTikgLS0tLVsgWGVuLTQuNy11bnN0YWJsZSAg
YXJtNjQgIGRlYnVnPXkgIFRhaW50ZWQ6ICAgIEMgXS0tLS0KWy4uLl0KKFhF
TikgWGVuIGNhbGwgdHJhY2U6CihYRU4pICAgIFs8MDAwMDAwMDAwMDI0MjBj
Yz5dIGh5cGVyY2FsbF9jcmVhdGVfY29udGludWF0aW9uKzB4NjQvMHgzODAg
KFBDKQooWEVOKSAgICBbPDAwMDAwMDAwMDAyMTcyNzQ+XSBkb19tZW1vcnlf
b3ArMHgxYjAwLzB4MjMzNCAoTFIpCihYRU4pICAgIFs8MDAwMDAwMDAwMDI1
MGQyYz5dIGRvX211bHRpY2FsbF9jYWxsKzB4MTE0LzB4MTI0CihYRU4pICAg
IFs8MDAwMDAwMDAwMDIxN2ZmMD5dIGRvX211bHRpY2FsbCsweDE3Yy8weDIz
YwooWEVOKSAgICBbPDAwMDAwMDAwMDAyNGY5N2M+XSBkb190cmFwX2h5cGVy
Y2FsbCsweDkwLzB4MTJjCihYRU4pICAgIFs8MDAwMDAwMDAwMDI1MWNhOD5d
IGRvX3RyYXBfaHlwZXJ2aXNvcisweGQyYy8weDFiYTQKKFhFTikgICAgWzww
MDAwMDAwMDAwMjU4MmNjPl0gZ3Vlc3Rfc3luYysweDg4LzB4YjgKKFhFTikK
KFhFTikKKFhFTikgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKgooWEVOKSBQYW5pYyBvbiBDUFUgNToKKFhFTikgWGVuIEJVRyBh
dCBkb21haW4uYzozNDcKKFhFTikgKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKgooWEVOKQooWEVOKSBNYW51YWwgcmVzZXQgcmVx
dWlyZWQgKCdub3JlYm9vdCcgc3BlY2lmaWVkKQoKTG9va2luZyB0byB0aGUg
Y29kZSwgdGhlIHN1cHBvcnQgb2YgbXVsdGljYWxsIGxvb2tzIHZhbGlkIHRv
IG1lLCBhcyB3ZSBvbmx5Cm5lZWQgdG8gZmlsbCBjYWxsLmFyZ3NbLi4uXS4g
U28gZHJvcCB0aGUgQlVHKCk7CgpUaGlzIGlzIFhTQS0xNDUuCgpBY2tlZC1i
eTogSWFuIENhbXBiZWxsIDxpYW4uY2FtcGJlbGxAY2l0cml4LmNvbT4KCmRp
ZmYgLS1naXQgYS94ZW4vYXJjaC9hcm0vZG9tYWluLmMgYi94ZW4vYXJjaC9h
cm0vZG9tYWluLmMKaW5kZXggNTc1NzQ1Yy4uNWM1YWM5ZSAxMDA2NDQKLS0t
IGEveGVuL2FyY2gvYXJtL2RvbWFpbi5jCisrKyBiL3hlbi9hcmNoL2FybS9k
b21haW4uYwpAQCAtMzQ0LDggKzM0NCw2IEBAIHVuc2lnbmVkIGxvbmcgaHlw
ZXJjYWxsX2NyZWF0ZV9jb250aW51YXRpb24oCiAKICAgICBpZiAoIHRlc3Rf
Yml0KF9NQ1NGX2luX211bHRpY2FsbCwgJm1jcy0+ZmxhZ3MpICkKICAgICB7
Ci0gICAgICAgIEJVRygpOyAvKiBYWFggbXVsdGljYWxscyBub3QgaW1wbGVt
ZW50ZWQgeWV0LiAqLwotCiAgICAgICAgIF9fc2V0X2JpdChfTUNTRl9jYWxs
X3ByZWVtcHRlZCwgJm1jcy0+ZmxhZ3MpOwogCiAgICAgICAgIGZvciAoIGkg
PSAwOyAqcCAhPSAnXDAnOyBpKysgKQo=

--=separator--
