X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5874" "Tuesday" "8" "December" "2015" "12:02:16" "+0000" "Xen.org security team" "security@xen.org" "<E1a6GyG-0003nX-Mh@xenbits.xen.org>" "152" "[oss-security] Xen Security Advisory 159 (CVE-2015-8339,CVE-2015-8340) - XENMEM_exchange error handling issues" nil nil nil "12" "2015120812:02:16" "[oss-security] Xen Security Advisory 159 (CVE-2015-8339,CVE-2015-8340) - XENMEM_exchange error handling issues" (number mark "U       security@xen Dec  8  152/5874  " thread-indent "\"[oss-security] Xen Security Advisory 159 (CVE-2015-8339,CVE-2015-8340) - XENMEM_exchange error handling issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22473 invoked by uid 550); 8 Dec 2015 12:03:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20383 invoked from network); 8 Dec 2015 12:02:37 -0000
Date: Tue, 08 Dec 2015 12:02:16 +0000
Message-Id: <E1a6GyG-0003nX-Mh@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 159 (CVE-2015-8339,CVE-2015-8340) -
 XENMEM_exchange error handling issues

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

     Xen Security Advisory CVE-2015-8339,CVE-2015-8340 / XSA-159
                              version 4

                 XENMEM_exchange error handling issues

UPDATES IN VERSION 4
====================

Public release.

ISSUE DESCRIPTION
=================

Error handling in the operation may involve handing back pages to
the domain. This operation may fail when in parallel the domain gets
torn down. So far this failure unconditionally resulted in the host
being brought down due to an internal error being assumed. This is
CVE-2015-8339.

Furthermore error handling so far wrongly included the release of a
lock. That lock, however, was either not acquired or already released
on all paths leading to the error handling sequence. This is
CVE-2015-8340.

IMPACT
======

A malicious guest administrator may be able to deny service by
crashing the host or causing a deadlock.

VULNERABLE SYSTEMS
==================

All Xen versions from at least 3.2 onwards are vulnerable.  Older
versions have not been inspected.

MITIGATION
==========

The vulnerability can be avoided if the guest kernel is controlled by
the host rather than guest administrator, provided that further steps
are taken to prevent the guest administrator from loading code into
the kernel (e.g. by disabling loadable modules etc) or from using
other mechanisms which allow them to run code at kernel privilege.  In
Xen HVM, controlling the guest's kernel would involve locking down the
bootloader.

CREDITS
=======

This issue was discovered by Julien Grall of Citrix and
Jan Beulich of SUSE.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa159.patch      xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa159*
05c35871c1430e9cfdbee049411b23fca6c64c5bc9f112d7508afe5cbd289cef  xsa159.patch
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

iQEcBAEBAgAGBQJWZr8HAAoJEIP+FMlX6CvZXp8IAMNhe/G7435bJNiwMbWIT6vt
8piJPArKxhd3yohEiAx0wG7BXTQ7ockAKFCjdSL8ZGPQuaxwuYrdm4wH14ucxRY6
wgHyU2766g5VuP1bJ1eU/XxZpNGWCqDQaaMzbwQLKVO7rhsZc14txY2nYFZ5cvLT
nMDR8rfcNSeGMSCzg9vrdnFhmmslT797fgRXrCnZ2+bEDerTiYu5nDlS+aIZPiSt
WwKbiYN/RJLIo4EThvYfPdbm9SPeSdNYNUws2MVkl50x2h4hm33eqKDNxAtUMgDq
CZzHQGCMjAtrhK/64AQePiXRHO4SHYbX4FmeO9Yrkbgf971PqpEYed79UJ2a0SA=
=sIvq
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa159.patch"
Content-Disposition: attachment; filename="xsa159.patch"
Content-Transfer-Encoding: base64

bWVtb3J5OiBmaXggWEVOTUVNX2V4Y2hhbmdlIGVycm9yIGhhbmRsaW5nCgph
c3NpZ25fcGFnZXMoKSBjYW4gZmFpbCBkdWUgdG8gdGhlIGRvbWFpbiBnZXR0
aW5nIGtpbGxlZCBpbiBwYXJhbGxlbCwKd2hpY2ggc2hvdWxkIG5vdCByZXN1
bHQgaW4gYSBoeXBlcnZpc29yIGNyYXNoLgoKQWxzbyBkZWxldGUgYSByZWR1
bmRhbnQgcHV0X2dmbigpIC0gYWxsIHJlbGV2YW50IHBhdGhzIGxlYWRpbmcg
dG8gdGhlCiJmYWlsIiBsYWJlbCBhbHJlYWR5IGRvIHRoaXMgKGFuZCB0aGVy
ZSBhcmUgYWxzbyBwYXRocyB3aGVyZSBpdCB3YXMKcGxhaW4gd3JvbmcpLiBB
bGwgb2YgdGhlIHB1dF9nZm4oKS1zIGdvdCBpbnRyb2R1Y2VkIGJ5IDUxMDMy
Y2EwNTgKKCJNb2RpZnkgbmFtaW5nIG9mIHF1ZXJpZXMgaW50byB0aGUgcDJt
IiksIGluY2x1ZGluZyB0aGUgb3RoZXJ3aXNlCnVubmVlZGVkIGluaXRpYWxp
emVyIGZvciBrICh3aXRoIGV2ZW4gYSBraW5kIG9mIG1pc2xlYWRpbmcgY29t
bWVudCAtCnRoZSBjb21waWxlciB3YXJuaW5nIGNvdWxkIGFjdHVhbGx5IGhh
dmUgc2VydmVkIGFzIGEgaGludCB0aGF0IHRoZSB1c2UKaXMgd3JvbmcpLgoK
VGhpcyBpcyBYU0EtMTU5LgoKUmVwb3J0ZWQtYnk6IEp1bGllbiBHcmFsbCA8
anVsaWVuLmdyYWxsQGNpdHJpeC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbiBC
ZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IElhbiBDYW1w
YmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vY29t
bW9uL21lbW9yeS5jCisrKyBiL3hlbi9jb21tb24vbWVtb3J5LmMKQEAgLTMz
NCw3ICszMzQsNyBAQCBzdGF0aWMgbG9uZyBtZW1vcnlfZXhjaGFuZ2UoWEVO
X0dVRVNUX0hBCiAgICAgUEFHRV9MSVNUX0hFQUQob3V0X2NodW5rX2xpc3Qp
OwogICAgIHVuc2lnbmVkIGxvbmcgaW5fY2h1bmtfb3JkZXIsIG91dF9jaHVu
a19vcmRlcjsKICAgICB4ZW5fcGZuX3QgICAgIGdwZm4sIGdtZm4sIG1mbjsK
LSAgICB1bnNpZ25lZCBsb25nIGksIGosIGsgPSAwOyAvKiBnY2MgLi4uICov
CisgICAgdW5zaWduZWQgbG9uZyBpLCBqLCBrOwogICAgIHVuc2lnbmVkIGlu
dCAgbWVtZmxhZ3MgPSAwOwogICAgIGxvbmcgICAgICAgICAgcmMgPSAwOwog
ICAgIHN0cnVjdCBkb21haW4gKmQ7CkBAIC01NzIsMTEgKzU3MiwxMiBAQCBz
dGF0aWMgbG9uZyBtZW1vcnlfZXhjaGFuZ2UoWEVOX0dVRVNUX0hBCiAgZmFp
bDoKICAgICAvKiBSZWFzc2lnbiBhbnkgaW5wdXQgcGFnZXMgd2UgbWFuYWdl
ZCB0byBzdGVhbC4gKi8KICAgICB3aGlsZSAoIChwYWdlID0gcGFnZV9saXN0
X3JlbW92ZV9oZWFkKCZpbl9jaHVua19saXN0KSkgKQotICAgIHsKLSAgICAg
ICAgcHV0X2dmbihkLCBnbWZuICsgay0tKTsKICAgICAgICAgaWYgKCBhc3Np
Z25fcGFnZXMoZCwgcGFnZSwgMCwgTUVNRl9ub19yZWZjb3VudCkgKQotICAg
ICAgICAgICAgQlVHKCk7Ci0gICAgfQorICAgICAgICB7CisgICAgICAgICAg
ICBCVUdfT04oIWQtPmlzX2R5aW5nKTsKKyAgICAgICAgICAgIGlmICggdGVz
dF9hbmRfY2xlYXJfYml0KF9QR0NfYWxsb2NhdGVkLCAmcGFnZS0+Y291bnRf
aW5mbykgKQorICAgICAgICAgICAgICAgIHB1dF9wYWdlKHBhZ2UpOworICAg
ICAgICB9CiAKICBkeWluZzoKICAgICByY3VfdW5sb2NrX2RvbWFpbihkKTsK

--=separator--
