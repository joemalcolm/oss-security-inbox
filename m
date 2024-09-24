Received: (qmail 32191 invoked by uid 550); 24 Sep 2024 12:14:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32173 invoked from network); 24 Sep 2024 12:14:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=Pikb5xGF7Yi594aVvQQ4PAPf66I5y1EIaZtzhUUSOlk=; b=Jn4C93CUQsFNZdVUvjh57+fVvi
	APFu4294TgL6hsimOjBiL6sxQ+JN2brDn0FiKUpg5Si5kwws0s5K/eegXgN/LK7uhmidmYouKhjK0
	9VWA88KyaVM4nS39D1SNUvIroFS7dOVJ3A/sU60PEothV/BnKTDw/IZfxxzjqk+5xOwM=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1st4QL-0005gb-N8@xenbits.xenproject.org>
Date: Tue, 24 Sep 2024 12:13:45 +0000
Subject: [oss-security] Xen Security Advisory 462 v2 (CVE-2024-45817) - x86: Deadlock in
 vlapic_error()

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2024-45817 / XSA-462
                               version 2

                    x86: Deadlock in vlapic_error()

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

In x86's APIC (Advanced Programmable Interrupt Controller) architecture,
error conditions are reported in a status register.  Furthermore, the OS
can opt to receive an interrupt when a new error occurs.

It is possible to configure the error interrupt with an illegal vector,
which generates an error when an error interrupt is raised.

This case causes Xen to recurse through vlapic_error().  The recursion
itself is bounded; errors accumulate in the the status register and only
generate an interrupt when a new status bit becomes set.

However, the lock protecting this state in Xen will try to be taken
recursively, and deadlock.

IMPACT
======

A buggy or malicious HVM or PVH guest can deadlock Xen, leading to a
DoS.

VULNERABLE SYSTEMS
==================

Xen 4.5 and onwards are vulnerable.  Xen 4.4 and older are not vulnerable.

Only x86 systems running HVM or PVH guests are vulnerable.
Architectures other than x86 are not vulnerable.

Only HVM or PVH guests can leverage the vulnerability.  PV guests cannot
leverage the vulnerability.

MITIGATION
==========

Not running untrusted HVM or PVH VMs will avoid this vulnerability.

CREDITS
=======

This issue was discovered after a BUGSENG team working on MISRA C
compliance of Xen pointed attention to ECLAIR reports for MISRA C Rule
17.2 (Functions shall not call themselves, either directly or
indirectly).

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa462.patch           xen-unstable - Xen 4.16.x

$ sha256sum xsa462*
c8cb03fdcfffa7e043b1d82643efde0f93bff5ce484887c6f59207777ee95be7  xsa462.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmbymG8MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ+MYIALQiqD84Ryme+mKRunKqDuH3P3pTX9bvxFp8sRZd
B0A3ysBKsC+eSJHsuH+vaTPG25e72+cqSs1Wr1PHs+p99UA4QxG8vT8pbAIAyr3f
lHVJvHfqMYA3xxNwS82us2Hjiv0t4spBBDje9TgcRvJf8nAcrPrQ+k6eycTTTGiz
kMT5pjkaiKTf0+uZ13krzHHCTyDwYKYJJly0FOv4TbNH+Bxj0i7b630BUtxGibMT
Cm5ay+CK3QSIJUGG6OjSAfFQWxZJ0W7gg1RNsH/ExsvsMw9sE2mX0YbHKaYD6yWf
wEmwQvAwYeaa91fcRnkr9dTZMYy5ObeUQLqJz1EJJ1indyU=
=dr22
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa462.patch"
Content-Disposition: attachment; filename="xsa462.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0OiB4ODYvdkxBUElD
OiBwcmV2ZW50IHVuZHVlIHJlY3Vyc2lvbiBvZiB2bGFwaWNfZXJyb3IoKQoKV2l0aCB0aGUgZXJy
b3IgdmVjdG9yIHNldCB0byBhbiBpbGxlZ2FsIHZhbHVlLCB0aGUgZnVuY3Rpb24gaW52b2tpbmcK
dmxhcGljX3NldF9pcnEoKSB3b3VsZCBicmluZyBleGVjdXRpb24gYmFjayBoZXJlLCB3aXRoIHRo
ZSBub24tcmVjdXJzaXZlCmxvY2sgYWxyZWFkeSBoZWxkLiBBdm9pZCB0aGUgY2FsbCBpbiB0aGlz
IGNhc2UsIG1lcmVseSBmdXJ0aGVyIHVwZGF0aW5nCkVTUiAoaWYgbmVjZXNzYXJ5KS4KClRoaXMg
aXMgWFNBLTQ2MiAvIENWRS0yMDI0LTQ1ODE3LgoKRml4ZXM6IDVmMzJkMTg2YThiMSAoIng4Ni92
bGFwaWM6IGRvbid0IHNpbGVudGx5IGFjY2VwdCBiYWQgdmVjdG9ycyIpClJlcG9ydGVkLWJ5OiBG
ZWRlcmljbyBTZXJhZmluaSA8ZmVkZXJpY28uc2VyYWZpbmlAYnVnc2VuZy5jb20+ClJlcG9ydGVk
LWJ5OiBBbmRyZXcgQ29vcGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpTaWduZWQtb2Zm
LWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+ClNpZ25lZC1vZmYtYnk6IEFuZHJl
dyBDb29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBBbmRyZXcg
Q29vcGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgoKZGlmZiAtLWdpdCBhL3hlbi9hcmNo
L3g4Ni9odm0vdmxhcGljLmMgYi94ZW4vYXJjaC94ODYvaHZtL3ZsYXBpYy5jCmluZGV4IDJlYzk1
OTQyNzEzZS4uODc1OGM0MjE3ZmFiIDEwMDY0NAotLS0gYS94ZW4vYXJjaC94ODYvaHZtL3ZsYXBp
Yy5jCisrKyBiL3hlbi9hcmNoL3g4Ni9odm0vdmxhcGljLmMKQEAgLTExMiw5ICsxMTIsMjQgQEAg
c3RhdGljIHZvaWQgdmxhcGljX2Vycm9yKHN0cnVjdCB2bGFwaWMgKnZsYXBpYywgdW5zaWduZWQg
aW50IGVycm1hc2spCiAgICAgaWYgKCAoZXNyICYgZXJybWFzaykgIT0gZXJybWFzayApCiAgICAg
ewogICAgICAgICB1aW50MzJfdCBsdnRlcnIgPSB2bGFwaWNfZ2V0X3JlZyh2bGFwaWMsIEFQSUNf
TFZURVJSKTsKKyAgICAgICAgYm9vbCBpbmogPSBmYWxzZTsKIAotICAgICAgICB2bGFwaWNfc2V0
X3JlZyh2bGFwaWMsIEFQSUNfRVNSLCBlc3IgfCBlcnJtYXNrKTsKICAgICAgICAgaWYgKCAhKGx2
dGVyciAmIEFQSUNfTFZUX01BU0tFRCkgKQorICAgICAgICB7CisgICAgICAgICAgICAvKgorICAg
ICAgICAgICAgICogSWYgTFZURVJSIGlzIHVubWFza2VkIGFuZCBoYXMgYW4gaWxsZWdhbCB2ZWN0
b3IsIHZsYXBpY19zZXRfaXJxKCkKKyAgICAgICAgICAgICAqIHdpbGwgZW5kIHVwIGJhY2sgaGVy
ZS4gIEJyZWFrIHRoZSBjeWNsZSBieSBvbmx5IGluamVjdGluZyBMVlRFUlIKKyAgICAgICAgICAg
ICAqIGlmIGl0IHdpbGwgc3VjY2VlZCwgYW5kIGZvbGRpbmcgaW4gUkVDVklMTCBvdGhlcndpc2Uu
CisgICAgICAgICAgICAgKi8KKyAgICAgICAgICAgIGlmICggKGx2dGVyciAmIEFQSUNfVkVDVE9S
X01BU0spID49IDE2ICkKKyAgICAgICAgICAgICAgICAgaW5qID0gdHJ1ZTsKKyAgICAgICAgICAg
IGVsc2UKKyAgICAgICAgICAgICAgICAgZXJybWFzayB8PSBBUElDX0VTUl9SRUNWSUxMOworICAg
ICAgICB9CisKKyAgICAgICAgdmxhcGljX3NldF9yZWcodmxhcGljLCBBUElDX0VTUiwgZXNyIHwg
ZXJybWFzayk7CisKKyAgICAgICAgaWYgKCBpbmogKQogICAgICAgICAgICAgdmxhcGljX3NldF9p
cnEodmxhcGljLCBsdnRlcnIgJiBBUElDX1ZFQ1RPUl9NQVNLLCAwKTsKICAgICB9CiAgICAgc3Bp
bl91bmxvY2tfaXJxcmVzdG9yZSgmdmxhcGljLT5lc3JfbG9jaywgZmxhZ3MpOwo=

--=separator--
