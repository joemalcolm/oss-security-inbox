X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5488" "Thursday" "8" "September" "2016" "12:00:50" "+0000" "Xen.org security team" "security@xen.org" "<E1bhy0g-0000t7-JQ@xenbits.xenproject.org>" "151" "[oss-security] Xen Security Advisory 185 (CVE-2016-7092) - x86: Disallow L3 recursive pagetable for 32-bit PV guests" nil nil nil "9" "2016090812:00:50" "[oss-security] Xen Security Advisory 185 (CVE-2016-7092) - x86: Disallow L3 recursive pagetable for 32-bit PV guests" (number mark "U       security@xen Sep  8  151/5488  " thread-indent "\"[oss-security] Xen Security Advisory 185 (CVE-2016-7092) - x86: Disallow L3 recursive pagetable for 32-bit PV guests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26612 invoked by uid 550); 8 Sep 2016 12:01:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26585 invoked from network); 8 Sep 2016 12:01:09 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1bhy0g-0000t7-JQ@xenbits.xenproject.org>
Date: Thu, 08 Sep 2016 12:00:50 +0000
Subject: [oss-security] Xen Security Advisory 185 (CVE-2016-7092) - x86: Disallow L3
 recursive pagetable for 32-bit PV guests

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-7092 / XSA-185
                              version 3

        x86: Disallow L3 recursive pagetable for 32-bit PV guests

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

On real hardware, a 32-bit PAE guest must leave the USER and RW bit
clear in L3 pagetable entries, but the pagetable walk behaves as if
they were set.  (The L3 entries are cached in processor registers, and
don't actually form part of the pagewalk.)

When running a 32-bit PV guest on a 64-bit Xen, Xen must always OR in
the USER and RW bits for L3 updates for the guest to observe
architectural behaviour.  This is unsafe in combination with recursive
pagetables.

As there is no way to construct an L3 recursive pagetable in native
32-bit PAE mode, disallow this option in 32-bit PV guests.

IMPACT
======

A malicious 32-bit PV guest administrator can escalate their privilege
to that of the host.

VULNERABLE SYSTEMS
==================

All versions of Xen are vulnerable.

Only 64-bit builds of the hypervisor are vulnerable.  For Xen 4.3 and
earlier, 32-bit builds of the hypervisor are not vulnerable.

The vulnerability is only exposed to 32-bit PV guests on x86 hardware.

The vulnerability is not exposed to 64-bit PV guests, x86 HVM guests,
or ARM guests.

MITIGATION
==========

Running only 64-bit PV or HVM guests will avoid this vulnerability.

CREDITS
=======

This issue was found in parallel by multiple discoverers, who each
disclosed it to the Xen Project Security Team.

The first report to us was made by Jérémie Boutoille of Quarkslab.
The second report, one working day later, by Shangcong Luan of Alibaba
Cloud.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa185.patch           xen-unstable - Xen 4.4

$ sha256sum xsa185*
3328a1953ecdf4de35462ea8396b0927171d718e95f73a87a7f651427bd8f8b4  xsa185.patch
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
Version: GnuPG v1

iQEcBAEBAgAGBQJX0VLpAAoJEIP+FMlX6CvZ/koH/0hN8oXOpBPVgsr5d+ylYFBU
We948VVN/0uthy9IgI1DBnjM2tjoGgy0w7c7dKWUD3ACTvdIq4hWZywA+6uMIwb5
aneB7hgZZ1i/ie1kAwMl96hdWgPGaXjL1r19WxslgOnr2TkH/9zlAaBvhFkbL+/c
cw2lI+AOmhB/VOtNfXYd81qxdSUBUPz2DfiOEjgVx8e8E+q/S5dJO1L41kqRt1bM
ENG8NtaxBrXAtZzilxOPVPmQmvSSegTjZMshGhx29wIgUy4R/HnsoYW7OklZQDhU
6DV7WUSlrUU5vlIhwQVIZidXpyhzLBLnR5GS0R4CKcYSb6pRQ8FO3TG81TmO/6Q=
=NDX0
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa185.patch"
Content-Disposition: attachment; filename="xsa185.patch"
Content-Transfer-Encoding: base64

RnJvbSAzMGFiYTQ5OTJiMTgyNDVjNDM2ZjE2ZGY3MzI2YTE2YzAxYTUxNTcw
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKYW4gQmV1bGljaCA8
amJldWxpY2hAc3VzZS5jb20+CkRhdGU6IE1vbiwgOCBBdWcgMjAxNiAxMDo1
ODoxMiArMDEwMApTdWJqZWN0OiB4ODYvMzJvbjY0OiBkb24ndCBhbGxvdyBy
ZWN1cnNpdmUgcGFnZSB0YWJsZXMgZnJvbSBMMwoKTDMgZW50cmllcyBhcmUg
c3BlY2lhbCBpbiBQQUUgbW9kZSwgYW5kIGhlbmNlIGNhbid0IHJlYXNvbmFi
bHkgYmUgdXNlZApmb3Igc2V0dGluZyB1cCByZWN1cnNpdmUgKGFuZCBoZW5j
ZSBsaW5lYXIpIHBhZ2UgdGFibGUgbWFwcGluZ3MuIFNpbmNlCmFidXNlIGlz
IHBvc3NpYmxlIHdoZW4gdGhlIGd1ZXN0IGluIGZhY3QgZ2V0cyBydW4gb24g
NC1sZXZlbCBwYWdlCnRhYmxlcywgdGhpcyBuZWVkcyB0byBiZSBleGNsdWRl
ZCBleHBsaWNpdGx5LgoKVGhpcyBpcyBYU0EtMTg1LgoKUmVwb3J0ZWQtYnk6
IErDqXLDqW1pZSBCb3V0b2lsbGUgPGpib3V0b2lsbGVAZXh0LnF1YXJrc2xh
Yi5jb20+ClJlcG9ydGVkLWJ5OiDmoL7lsJrogaoo5aW96aOOKSA8c2hhbmdj
b25nLmxzY0BhbGliYWJhLWluYy5jb20+ClNpZ25lZC1vZmYtYnk6IEphbiBC
ZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KUmV2aWV3ZWQtYnk6IEFuZHJl
dyBDb29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+Ci0tLQogeGVu
L2FyY2gveDg2L21tLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS94ZW4v
YXJjaC94ODYvbW0uYyBiL3hlbi9hcmNoL3g4Ni9tbS5jCmluZGV4IDEwOWI4
YmUuLjY5YjhiOGQgMTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL3g4Ni9tbS5jCisr
KyBiL3hlbi9hcmNoL3g4Ni9tbS5jCkBAIC0xMTIyLDcgKzExMjIsOSBAQCBn
ZXRfcGFnZV9mcm9tX2wzZSgKIAogICAgIHJjID0gZ2V0X3BhZ2VfYW5kX3R5
cGVfZnJvbV9wYWdlbnIoCiAgICAgICAgIGwzZV9nZXRfcGZuKGwzZSksIFBH
VF9sMl9wYWdlX3RhYmxlLCBkLCBwYXJ0aWFsLCAxKTsKLSAgICBpZiAoIHVu
bGlrZWx5KHJjID09IC1FSU5WQUwpICYmIGdldF9sM19saW5lYXJfcGFnZXRh
YmxlKGwzZSwgcGZuLCBkKSApCisgICAgaWYgKCB1bmxpa2VseShyYyA9PSAt
RUlOVkFMKSAmJgorICAgICAgICAgIWlzX3B2XzMyYml0X2RvbWFpbihkKSAm
JgorICAgICAgICAgZ2V0X2wzX2xpbmVhcl9wYWdldGFibGUobDNlLCBwZm4s
IGQpICkKICAgICAgICAgcmMgPSAwOwogCiAgICAgcmV0dXJuIHJjOwotLSAK
Mi4xLjQKCg==

--=separator--
