Received: (qmail 30149 invoked by uid 550); 12 Nov 2024 12:06:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30125 invoked from network); 12 Nov 2024 12:06:00 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1tApeV-001S2c-2H@xenbits.xenproject.org>
Date: Tue, 12 Nov 2024 12:05:47 +0000
Subject: [oss-security] Xen Security Advisory 464 v2 (CVE-2024-45819) - libxl leaks data
 to PVH guests via ACPI tables

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2024-45819 / XSA-464
                               version 2

            libxl leaks data to PVH guests via ACPI tables

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

PVH guests have their ACPI tables constructed by the toolstack.  The
construction involves building the tables in local memory, which are
then copied into guest memory.  While actually used parts of the local
memory are filled in correctly, excess space that is being allocated is
left with its prior contents.

IMPACT
======

An unprivileged guest may be able to access sensitive information
pertaining to the host, control domain, or other guests.

VULNERABLE SYSTEMS
==================

Xen versions 4.8 and onwards are vulnerable.  Xen 4.7 and older are not
vulnerable.

Only x86 systems running PVH guests are vulnerable.  Architectures other
than x86 are not vulnerable.

Only PVH guests can leverage the vulnerability.  HVM and PV guests
cannot leverage the vulnerability.  Note that PV guests when run inside
the (PVH) shim can't leverage the vulnerability.

MITIGATION
==========

Running only PV or HVM guests will avoid this vulnerability.

CREDITS
=======

This issue was discovered by Jason Andryuk of AMD.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa464.patch           xen-unstable - Xen 4.16.x

$ sha256sum xsa464*
16bca39d6136141e030276f588f1e77f634fce8301b42fb0848ddf2b611d835a  xsa464.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmczRE4MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZTG8H+wV+jRjwQcgPa2OQBuedO8V0Lpu1DqQnANU//oZK
4p5ntCeMJ9MnMlWGZhdOAwSQNgwYf17G2DezNK0XvRacfvB0/pUTH94EmKmyRkVl
vGgs302HkNb0Il84JN/HA9TtK5+g2kSa5J5prV9tu+nGvRZ1zZPnBEFohXvXdjr7
/KGSrbHbi5+6DdBZmmEUu65PLvQAochHvQLEHpoRp0MCVE8g0FQPFikmST39TLpJ
6SFfVZjdmYfOUN1BYcH6AYCuCXZfbUOlqm9y1Z2EX6N0chQXsBDbOFx7/0ey23fw
Wy9l49G//xaTR4X4uXTRiiXC7qxpclD0VKGlHKz1AUyUw6c=
=lRfn
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa464.patch"
Content-Disposition: attachment; filename="xsa464.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFzb24gQW5kcnl1ayA8amFzb24uYW5kcnl1a0BhbWQuY29tPgpTdWJqZWN0OiBsaWJ4
bDogVXNlIHplcm8tZWQgbWVtb3J5IGZvciBQVkggYWNwaSB0YWJsZXMKCnhsL2xpYnhsIG1lbW9y
eSBpcyBsZWFraW5nIGludG8gYSBQVkggZ3Vlc3QgdGhyb3VnaCB1bmluaXRpYWxpemVkCnBvcnRp
b25zIG9mIHRoZSBBQ1BJIHRhYmxlcy4KClVzZSBsaWJ4bF96YWxsb2MoKSB0byBvYnRhaW4gemVy
by1lZCBtZW1vcnkgdG8gYXZvaWQgdGhpcyBpc3N1ZS4KClRoaXMgaXMgWFNBLTQ2NCAvIENWRS0y
MDI0LTQ1ODE5LgoKU2lnbmVkLW9mZi1ieTogSmFzb24gQW5kcnl1ayA8amFzb24uYW5kcnl1a0Bh
bWQuY29tPgpGaXhlczogMTRjMGQzMjhkYTJiICgibGlieGwvYWNwaTogQnVpbGQgQUNQSSB0YWJs
ZXMgZm9yIEhWTWxpdGUgZ3Vlc3RzIikKUmV2aWV3ZWQtYnk6IEphbiBCZXVsaWNoIDxqYmV1bGlj
aEBzdXNlLmNvbT4KCi0tLSBhL3Rvb2xzL2xpYnMvbGlnaHQvbGlieGxfeDg2X2FjcGkuYworKysg
Yi90b29scy9saWJzL2xpZ2h0L2xpYnhsX3g4Nl9hY3BpLmMKQEAgLTE3NiwxMCArMTc2LDExIEBA
IGludCBsaWJ4bF9fZG9tX2xvYWRfYWNwaShsaWJ4bF9fZ2MgKmdjLAogICAgICAgICBnb3RvIG91
dDsKICAgICB9CiAKLSAgICBjb25maWcucnNkcCA9ICh1bnNpZ25lZCBsb25nKWxpYnhsX19tYWxs
b2MoZ2MsIGxpYnhsX2N0eHQucGFnZV9zaXplKTsKLSAgICBjb25maWcuaW5mb3AgPSAodW5zaWdu
ZWQgbG9uZylsaWJ4bF9fbWFsbG9jKGdjLCBsaWJ4bF9jdHh0LnBhZ2Vfc2l6ZSk7CisgICAgLyog
VGhlc2UgYXJlIGFsbCBjb3BpZWQgaW50byBndWVzdCBtZW1vcnksIHNvIHVzZSB6ZXJvLWVkIG1l
bW9yeS4gKi8KKyAgICBjb25maWcucnNkcCA9ICh1bnNpZ25lZCBsb25nKWxpYnhsX196YWxsb2Mo
Z2MsIGxpYnhsX2N0eHQucGFnZV9zaXplKTsKKyAgICBjb25maWcuaW5mb3AgPSAodW5zaWduZWQg
bG9uZylsaWJ4bF9femFsbG9jKGdjLCBsaWJ4bF9jdHh0LnBhZ2Vfc2l6ZSk7CiAgICAgLyogUGFn
ZXMgdG8gaG9sZCBBQ1BJIHRhYmxlcyAqLwotICAgIGxpYnhsX2N0eHQuYnVmID0gbGlieGxfX21h
bGxvYyhnYywgTlVNX0FDUElfUEFHRVMgKgorICAgIGxpYnhsX2N0eHQuYnVmID0gbGlieGxfX3ph
bGxvYyhnYywgTlVNX0FDUElfUEFHRVMgKgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBsaWJ4bF9jdHh0LnBhZ2Vfc2l6ZSk7CiAKICAgICAvKgo=

--=separator--
