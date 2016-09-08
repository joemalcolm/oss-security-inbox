X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3816" "Thursday" "8" "September" "2016" "12:00:56" "+0000" "Xen.org security team" "security@xen.org" "<E1bhy0m-0000vj-TN@xenbits.xenproject.org>" "115" "[oss-security] Xen Security Advisory 188 (CVE-2016-7154) - use after free in FIFO event channel code" nil nil nil "9" "2016090812:00:56" "[oss-security] Xen Security Advisory 188 (CVE-2016-7154) - use after free in FIFO event channel code" (number mark "U       security@xen Sep  8  115/3816  " thread-indent "\"[oss-security] Xen Security Advisory 188 (CVE-2016-7154) - use after free in FIFO event channel code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28271 invoked by uid 550); 8 Sep 2016 12:01:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28172 invoked from network); 8 Sep 2016 12:01:17 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1bhy0m-0000vj-TN@xenbits.xenproject.org>
Date: Thu, 08 Sep 2016 12:00:56 +0000
Subject: [oss-security] Xen Security Advisory 188 (CVE-2016-7154) - use after free in
 FIFO event channel code

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-7154 / XSA-188
                              version 3

               use after free in FIFO event channel code

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

When the EVTCHNOP_init_control operation is called with a bad guest
frame number, it takes an error path which frees a control structure
without also clearing the corresponding pointer.  Certain subsequent
operations (EVTCHNOP_expand_array or another EVTCHNOP_init_control),
upon finding the non-NULL pointer, continue operation assuming it
points to allocated memory.

IMPACT
======

A malicious guest administrator can crash the host, leading to a DoS.
Arbitrary code execution (and therefore privilege escalation), and
information leaks, cannot be excluded.

VULNERABLE SYSTEMS
==================

Only Xen 4.4 is vulnerable.  Xen versions 4.5 and later as well as Xen
versions 4.3 and earlier are not vulnerable.

MITIGATION
==========

There is no mitigation available.

CREDITS
=======

This issue was discovered by Mikhail Gorobets of Advanced Threat
Research, Intel Security.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa188.patch           Xen 4.4.x

$ sha256sum xsa188*
9f374c2e1437ad71369f41275e7b333e7b7691a783ba693ee567c899bd78c722  xsa188.patch
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
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJX0VLuAAoJEIP+FMlX6CvZNjYH/RVxqYegZpfj0aiT5pai/a0i
PgPSoMccGoSSVTXzivXUTZS3fTIqfTpd4SQHu2Q2dUqbb6zcPqd3NzF7Jl9IMwLk
JHZwPYXOsZ0D6thFAMYFpjHOWXv7+1Mw7Np82PaA2yAUad+kxUORiJeL1RAE6zG/
xsAR7PTl2mK1Ae9lqDtKLijn0cnicAYoKiSlta8M0T5Sp79CT3xsfHiBbaWUBCcI
gmOW76RUbfOwn2kmhFJ4X5bwSzEhM93pQu7hJCmuwAADc8ezEEFv2lsUm5W8hkmW
a8V2nuqM+prbxY8JI3XbKJm5YrmHQpnX4FiBn13DZeUsaukT4Q1EltP1z/XvJto=
=jzF5
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa188.patch"
Content-Disposition: attachment; filename="xsa188.patch"
Content-Transfer-Encoding: base64

ZXZ0Y2huLWZpZm86IHByZXZlbnQgdXNlIGFmdGVyIGZyZWUKCmV2dGNobl9m
aWZvX2luaXRfY29udHJvbCgpIGNhbGxzIGV2dGNobl9maWZvX2Rlc3Ryb3ko
KSBvbiBhbiBlcnJvcgpwYXRoLCBsZWFkaW5nIHRvIGNsZWFudXBfZXZlbnRf
YXJyYXkoKSB3aGljaCBmcmVlcyBkLT5ldnRjaG5fZmlmbwp3aXRob3V0IGFs
c28gY2xlYXJpbmcgdGhlIHBvaW50ZXIuIE90b2ggdGhlIGJ1bGsgb2YKZXZ0
Y2huX2ZpZm9faW5pdF9jb250cm9sKCkgaXMgZGVwZW5kZW50IG9uIGQtPmV2
dGNobl9maWZvIGJlaW5nIE5VTEwuCgpUaGlzIGlzIFhTQS0xODguCgpSZXBv
cnRlZC1ieTogTWlraGFpbCBWIEdvcm9iZXRzIDxtaWtoYWlsLnYuZ29yb2Jl
dHNAaW50ZWwuY29tPgpTdWdnZXN0ZWQtYnk6IE1pa2hhaWwgViBHb3JvYmV0
cyA8bWlraGFpbC52Lmdvcm9iZXRzQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgoKLS0tIGEveGVu
L2NvbW1vbi9ldmVudF9maWZvLmMKKysrIGIveGVuL2NvbW1vbi9ldmVudF9m
aWZvLmMKQEAgLTQ4Miw2ICs0ODIsNyBAQCBzdGF0aWMgdm9pZCBjbGVhbnVw
X2V2ZW50X2FycmF5KHN0cnVjdCBkCiAgICAgZm9yICggaSA9IDA7IGkgPCBF
VlRDSE5fRklGT19NQVhfRVZFTlRfQVJSQVlfUEFHRVM7IGkrKyApCiAgICAg
ICAgIHVubWFwX2d1ZXN0X3BhZ2UoZC0+ZXZ0Y2huX2ZpZm8tPmV2ZW50X2Fy
cmF5W2ldKTsKICAgICB4ZnJlZShkLT5ldnRjaG5fZmlmbyk7CisgICAgZC0+
ZXZ0Y2huX2ZpZm8gPSBOVUxMOwogfQogCiBzdGF0aWMgdm9pZCBzZXR1cF9w
b3J0cyhzdHJ1Y3QgZG9tYWluICpkKQo=

--=separator--
