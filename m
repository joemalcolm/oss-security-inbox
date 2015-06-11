X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4505" "Thursday" "11" "June" "2015" "12:30:15" "+0000" "Xen.org security team" "security@xen.org" "<E1Z31cd-0002ro-EG@xenbits.xen.org>" "133" "[oss-security] Xen Security Advisory 136 (CVE-2015-4164) - vulnerability in the iret hypercall handler" nil nil nil "6" "2015061112:30:15" "[oss-security] Xen Security Advisory 136 (CVE-2015-4164) - vulnerability in the iret hypercall handler" (number mark "        security@xen Jun 11  133/4505  " thread-indent "\"[oss-security] Xen Security Advisory 136 (CVE-2015-4164) - vulnerability in the iret hypercall handler\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28649 invoked by uid 550); 11 Jun 2015 12:30:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28168 invoked from network); 11 Jun 2015 12:30:32 -0000
Message-Id: <E1Z31cd-0002ro-EG@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Thu, 11 Jun 2015 12:30:15 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 136 (CVE-2015-4164) - vulnerability in the
 iret hypercall handler
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-4164 / XSA-136
                              version 3

              vulnerability in the iret hypercall handler

UPDATES IN VERSION 3
====================

Public release.

Added email header syntax to patches, for e.g. git-am.

ISSUE DESCRIPTION
=================

A buggy loop in Xen's compat_iret() function iterates the wrong way
around a 32-bit index.  Any 32-bit PV guest kernel can trigger this
vulnerability by attempting a hypercall_iret with EFLAGS.VM set.

Given the use of __get/put_user(), and that the virtual addresses in
question are contained within the lower canonical half, the guest
cannot clobber any hypervisor data.  Instead, Xen will take up to 2^33
pagefaults, in sequence, effectively hanging the host.

IMPACT
======

Malicious guest administrators can cause a denial of service affecting
the whole system.

VULNERABLE SYSTEMS
==================

Only 64-bit x86 (ARCH=x86_64) builds of Xen are vulnerable.  32-bit
builds (ARCH=x86_32) (necessarily of Xen 4.2 or earlier), are not
affected.

Xen versions 3.1 or later are vulnerable.

ARM systems are not vulnerable.

Only 32-bit PV guests can exploit the vulnerability.

MITIGATION
==========

Systems which only need to run 32-bit guests and are running Xen 4.2
or earlier can avoid the vulnerability by using a 32-bit build of Xen
instead of a 64-bit build.  (The dom0 operating system would have to
be 32-bit too.)

If the boot process and kernel for the guest can be controlled,
forcing it to use a 64-bit kernel will avoid the vulnerability.

CREDITS
=======

This issue was discovered by Andrew Cooper of Citrix.

RESOLUTION
==========

Applying the attached patch resolves this issue.

$ sha256sum xsa136*.patch
b54a71cf41d333345a9b8fd5f3f1aa644000a24e20343b54e5a41cd51d14af04  xsa136.patch
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

iQEcBAEBAgAGBQJVeX73AAoJEIP+FMlX6CvZwMsIAIkHonCdvStKAJZ6WpWFaAeo
dgEBdQ0tHCkuEu3PNBNy0YPklBdATwQNOjt+XZj6qDJv0HvBykZNoam0E9UCqH85
BYS0ASvjxUQrd61PrTWGmdh9XKMj2FJRGmpumr4XnNzcOalwOLuwUmfIauEIQaMy
0yxrgcoWk2C3oWIO54m/vObwdttNlbGInrBK1bDyrOtAX0UrHByLU7dPCe0TlE5l
IIa7QH/FcKLp7+RhxIEOQGBvuMSnw2bcXSqCIwleGo1RpnzcA/N1P+8FNs9rWmm/
toGYLeaQus8h9fEe51zGKOTQrf+WWuKhSjwkxSFr/HEH6xHEl+oCYvwlyB5CviM=
=yJg0
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa136.patch"
Content-Disposition: attachment; filename="xsa136.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KU3ViamVjdDogeDg2L3RyYXBzOiBsb29wIGluIHRoZSBjb3JyZWN0IGRp
cmVjdGlvbiBpbiBjb21wYXRfaXJldCgpCgpUaGlzIGlzIFhTQS0xMzYuCgpT
aWduZWQtb2ZmLWJ5OiBBbmRyZXcgQ29vcGVyIDxhbmRyZXcuY29vcGVyM0Bj
aXRyaXguY29tPgpSZXZpZXdlZC1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNo
QHN1c2UuY29tPgoKLS0tIGEveGVuL2FyY2gveDg2L3g4Nl82NC9jb21wYXQv
dHJhcHMuYworKysgYi94ZW4vYXJjaC94ODYveDg2XzY0L2NvbXBhdC90cmFw
cy5jCkBAIC0xMTksNyArMTE5LDcgQEAgdW5zaWduZWQgaW50IGNvbXBhdF9p
cmV0KHZvaWQpCiAgICAgICAgIH0KICAgICAgICAgZWxzZSBpZiAoIGtzcCA+
IHJlZ3MtPl9lc3AgKQogICAgICAgICB7Ci0gICAgICAgICAgICBmb3IgKGkg
PSA5OyBpID4gMDsgKytpKQorICAgICAgICAgICAgZm9yICggaSA9IDk7IGkg
PiAwOyAtLWkgKQogICAgICAgICAgICAgewogICAgICAgICAgICAgICAgIHJj
IHw9IF9fZ2V0X3VzZXIoeCwgKHUzMiAqKXJlZ3MtPnJzcCArIGkpOwogICAg
ICAgICAgICAgICAgIHJjIHw9IF9fcHV0X3VzZXIoeCwgKHUzMiAqKSh1bnNp
Z25lZCBsb25nKWtzcCArIGkpOwo=

--=separator--
