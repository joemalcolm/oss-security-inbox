X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5426" "Wednesday" "25" "November" "2015" "15:31:47" "+0000" "Xen.org security team" "security@xen.org" "<E1a1c2t-0003tJ-CN@xenbits.xen.org>" "151" "[oss-security] Xen Security Advisory 161 - WITHDRAWN: missing XSETBV intercept privilege check on AMD SVM" nil nil nil "11" "2015112515:31:47" "[oss-security] Xen Security Advisory 161 - WITHDRAWN: missing XSETBV intercept privilege check on AMD SVM" (number mark "U       security@xen Nov 25  151/5426  " thread-indent "\"[oss-security] Xen Security Advisory 161 - WITHDRAWN: missing XSETBV intercept privilege check on AMD SVM\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1408 invoked by uid 550); 25 Nov 2015 15:32:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1347 invoked from network); 25 Nov 2015 15:32:06 -0000
Date: Wed, 25 Nov 2015 15:31:47 +0000
Message-Id: <E1a1c2t-0003tJ-CN@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 161 - WITHDRAWN: missing XSETBV intercept
 privilege check on AMD SVM

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

                    Xen Security Advisory XSA-161
                              version 2

    WITHDRAWN: missing XSETBV intercept privilege check on AMD SVM

UPDATES IN VERSION 2
====================

Upon further inspection the necessary privilege level check is present
in the generic code which handles XSETBV and therefore there is no
vulnerability in any version of Xen.

This advisory is therefore withdrawn. The previous text is retained
below for reference.

Thanks to Andrew Cooper for pointing out this oversight.

ISSUE DESCRIPTION
=================

*** NOTE: This advisory has been withdrawn ***

XSETBV is a privileged instruction, i.e. should result in #GP when
issued by code running at other than the most privileged level (CPL 0).
Unlike other privileged and intercepted instructions in AMD SVM, XSETBV
has the privilege level check done after the intercept check, resulting
in the need for software to do the checking instead. This software
check was missing.

IMPACT
======

*** NOTE: This advisory has been withdrawn ***

User mode code of HVM guests running on AVX-capable AMD hardware may
effect changes to the set of enabled AVX sub-features in the guest,
potentially confusing the guest kernel, likely resulting in crash and
hence a Denial of Service to the guest. Other attacks, namely privilege
escalation (again inside the guest only), cannot be ruled out.

VULNERABLE SYSTEMS
==================

*** NOTE: This advisory has been withdrawn, no versions are vulnerable ***

Xen versions from 4.1 onwards are affected.

Only x86 AMD systems supporting AVX are affected. Intel systems as
well as ARM ones are unaffected.

Only HVM guest user mode code can leverage this vulnerability.

MITIGATION
==========

Running only PV guests will avoid this vulnerability.

Running HVM guests on only Intel hardware will also avoid this
vulnerability.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa161.patch         xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa161*
aa205960410c2feaa2a45127a1837a64212dd322d8edf884aa3231dd10c8a884  xsa161.patch
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

iQEcBAEBAgAGBQJWVdPmAAoJEIP+FMlX6CvZ6IgH/RNKOBcIYc2BTxacwhIh/9Uj
lxXT1XfR3xksFzsW1T7rp6OAYQ1Lpsh+yAQLF8qAEEE+jUi7TWTb1U87K6tS9yYp
ppqwWfp6YS63uhtTu0SiMdvM0hOHTHC2ZfNehpX/iAtzpsdzqcYeWkIjjMBq6z95
isxXnuJq1EmfaI+Sx56c8yRntJwAqDx4twD7gJWC1feRltJn+kSR+pyGpcw4IeM3
ThfgW5Q1s2N4IX/yHlvPGhWDjBwfCP13de23UvUQwiSzLF6m42OnDtSLozvA/h56
yA7JDi/RYDsyL30qYllHKpW8lfrlsq6Xkyakrkw49sm1cJvaYu4vjLDZ9byVvmU=
=wPwa
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa161.patch"
Content-Disposition: attachment; filename="xsa161.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvU1ZNOiBYU0VUQlYgaW50ZXJjZXB0IG5lZWRzIHRvIGNoZWNrIENQ
TAoKT3RoZXIgdGhhbiBtb3N0IChhbGw/KSBvdGhlciBpbnRlcmNlcHRzLCBi
YXNpYyBjaGVja3MgLSBuYW1lbHkgdGhlIENQTApvbmUgLSBkb24ndCBnZXQg
ZG9uZSBiZWZvcmUgY2hlY2tpbmcgZm9yIHRoZSBpbnRlcmNlcHQgdG8gYmUg
ZW5hYmxlZC4KClRoaXMgaXMgWFNBLTE2MS4KClNpZ25lZC1vZmYtYnk6IEph
biBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KCi0tLSBhL3hlbi9hcmNo
L3g4Ni9odm0vc3ZtL3N2bS5jCisrKyBiL3hlbi9hcmNoL3g4Ni9odm0vc3Zt
L3N2bS5jCkBAIC0yNjA5LDEwICsyNjA5LDExIEBAIHZvaWQgc3ZtX3ZtZXhp
dF9oYW5kbGVyKHN0cnVjdCBjcHVfdXNlcl8KICAgICAgICAgYnJlYWs7CiAK
ICAgICBjYXNlIFZNRVhJVF9YU0VUQlY6Ci0gICAgICAgIGlmICggKGluc3Rf
bGVuID0gX19nZXRfaW5zdHJ1Y3Rpb25fbGVuZ3RoKGN1cnJlbnQsIElOU1RS
X1hTRVRCVikpPT0wICkKLSAgICAgICAgICAgIGJyZWFrOwotICAgICAgICBp
ZiAoIGh2bV9oYW5kbGVfeHNldGJ2KHJlZ3MtPmVjeCwKLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAocmVncy0+cmR4IDw8IDMyKSB8IHJlZ3Mt
Pl9lYXgpID09IDAgKQorICAgICAgICBpZiAoIHZtY2JfZ2V0X2NwbCh2bWNi
KSApCisgICAgICAgICAgICBodm1faW5qZWN0X2h3X2V4Y2VwdGlvbihUUkFQ
X2dwX2ZhdWx0LCAwKTsKKyAgICAgICAgZWxzZSBpZiAoIChpbnN0X2xlbiA9
IF9fZ2V0X2luc3RydWN0aW9uX2xlbmd0aCh2LCBJTlNUUl9YU0VUQlYpKSAm
JgorICAgICAgICAgICAgICAgICAgaHZtX2hhbmRsZV94c2V0YnYocmVncy0+
ZWN4LAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHJl
Z3MtPnJkeCA8PCAzMikgfCByZWdzLT5fZWF4KSA9PSAwICkKICAgICAgICAg
ICAgIF9fdXBkYXRlX2d1ZXN0X2VpcChyZWdzLCBpbnN0X2xlbik7CiAgICAg
ICAgIGJyZWFrOwogCg==

--=separator--
