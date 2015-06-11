X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4419" "Thursday" "11" "June" "2015" "12:29:29" "+0000" "Xen.org security team" "security@xen.org" "<E1Z31bs-0002MZ-TR@xenbits.xen.org>" "127" "[oss-security] Xen Security Advisory 134 (CVE-2015-4163) - GNTTABOP_swap_grant_ref operation misbehavior" nil nil nil "6" "2015061112:29:29" "[oss-security] Xen Security Advisory 134 (CVE-2015-4163) - GNTTABOP_swap_grant_ref operation misbehavior" (number mark "        security@xen Jun 11  127/4419  " thread-indent "\"[oss-security] Xen Security Advisory 134 (CVE-2015-4163) - GNTTABOP_swap_grant_ref operation misbehavior\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23678 invoked by uid 550); 11 Jun 2015 12:29:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23645 invoked from network); 11 Jun 2015 12:29:47 -0000
Message-Id: <E1Z31bs-0002MZ-TR@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Thu, 11 Jun 2015 12:29:29 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 134 (CVE-2015-4163) - GNTTABOP_swap_grant_ref
 operation misbehavior
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-4163 / XSA-134
                              version 3

             GNTTABOP_swap_grant_ref operation misbehavior

UPDATES IN VERSION 3
====================

Public release.

Added email header syntax to patches, for e.g. git-am.

ISSUE DESCRIPTION
=================

With the introduction of version 2 grant table operations, a version
check became necessary for most grant table related hypercalls.  The
GNTTABOP_swap_grant_ref call was lacking such a check.  As a result,
the subsequent code behaved as if version 2 was in use, when a guest
issued this hypercall without a prior GNTTABOP_setup_table or
GNTTABOP_set_version.

The effect is a possible NULL pointer dereferences.  However, this
cannot be exploited to elevate privileges of the attacking domain, as
the maximum memory address that can be wrongly accessed this way is
bounded to far below the start of hypervisor memory.

IMPACT
======

Malicious or buggy guest domain kernels can mount a denial of service
attack which, if successful, can affect the whole system.

VULNERABLE SYSTEMS
==================

Xen versions from 4.2 onwards are vulnerable.

MITIGATION
==========

There is no mitigation available.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa134.patch        xen-unstable, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x, Xen 4.2.x

$ sha256sum xsa134*.patch
fff911a994a5031831cabd574bcba281eff438559706414a1886502eaa05ee12  xsa134.patch
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

iQEcBAEBAgAGBQJVeX71AAoJEIP+FMlX6CvZ67gIALM9l5JdS8BN9b1/CsXSr246
kwuTcDX/dmvVeoMMU5tYag5H6HbpFaI4GX5rvTIVS1fqHRygyRCGJmgQQQf2EmOh
E6PKeCzfYoUh6t8YoV5RtYFcUA8qPG6AmXjQGU5tbrCgM7kGYcHU+dFHUu7VEoBH
7Rjzwkht/u64nFRJOU7zBLiCc0/yB1K0JystM1m5przdcTTfawl1bdknG3wGxAuk
+jSQk6+rBATZgRY3r2mjvUnXvSJfsV/UklRhJCRXT0jz4O+gdgP4AU33RtGx8Evc
64wIORu50Imvo5ZR4yCwElw/TnIJeyY3Nbq6vltMvWhhqxhyNhG+a+t2BrsD8Sc=
=sqdZ
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa134.patch"
Content-Disposition: attachment; filename="xsa134.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiBnbnR0YWI6IGFkZCBtaXNzaW5nIHZlcnNpb24gY2hlY2sgdG8gR05UVEFC
T1Bfc3dhcF9ncmFudF9yZWYgaGFuZGxpbmcKCi4uLiBhdm9pZGluZyBOVUxM
IGRlcmVmcyB3aGVuIHRoZSB2ZXJzaW9uIHRvIHVzZSB3YXNuJ3Qgc2V0IHll
dCAodmlhCkdOVFRBQk9QX3NldHVwX3RhYmxlIG9yIEdOVFRBQk9QX3NldF92
ZXJzaW9uKS4KClRoaXMgaXMgWFNBLTEzNC4KClNpZ25lZC1vZmYtYnk6IEph
biBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KQWNrZWQtYnk6IElhbiBD
YW1wYmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5jb20+CgotLS0gYS94ZW4v
Y29tbW9uL2dyYW50X3RhYmxlLmMKKysrIGIveGVuL2NvbW1vbi9ncmFudF90
YWJsZS5jCkBAIC0yNTkyLDYgKzI1OTIsOSBAQCBfX2dudHRhYl9zd2FwX2dy
YW50X3JlZihncmFudF9yZWZfdCByZWZfCiAKICAgICBzcGluX2xvY2soJmd0
LT5sb2NrKTsKIAorICAgIGlmICggZ3QtPmd0X3ZlcnNpb24gPT0gMCApCisg
ICAgICAgIFBJTl9GQUlMKG91dCwgR05UU1RfZ2VuZXJhbF9lcnJvciwgImdy
YW50IHRhYmxlIG5vdCB5ZXQgc2V0IHVwXG4iKTsKKwogICAgIC8qIEJvdW5k
cyBjaGVjayBvbiB0aGUgZ3JhbnQgcmVmcyAqLwogICAgIGlmICggdW5saWtl
bHkocmVmX2EgPj0gbnJfZ3JhbnRfZW50cmllcyhkLT5ncmFudF90YWJsZSkp
KQogICAgICAgICBQSU5fRkFJTChvdXQsIEdOVFNUX2JhZF9nbnRyZWYsICJC
YWQgcmVmLWEgKCVkKS5cbiIsIHJlZl9hKTsK

--=separator--
