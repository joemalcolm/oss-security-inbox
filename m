X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11237" "Wednesday" "25" "August" "2021" "12:01:36" "+0000" "Xen.org security team" "security@xen.org" nil "249" "[oss-security] Xen Security Advisory 383 v2 (CVE-2021-28700) - xen/arm: No memory limit for dom0less domUs" nil nil nil "8" nil nil (number mark "U       security@xen Aug 25  249/11237 " thread-indent "\"[oss-security] Xen Security Advisory 383 v2 (CVE-2021-28700) - xen/arm: No memory limit for dom0less domUs\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 383 v2 (CVE-2021-28700) - xen/arm: No memory limit for dom0less domUs" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29923 invoked by uid 550); 25 Aug 2021 12:01:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29857 invoked from network); 25 Aug 2021 12:01:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=JDVq8Dw9Ukp4zFg8GJobFYmXrBqe70M6l8JjimItV6I=; b=6WFw9HBDG+6VcoWGguaX4h91AZ
	aHfwSjcpMZi1DK6yrYepvGRqs0mIFqToRFGGj6ePmx4EE4SBjRel6J255vOe3Shf54i74gOjAcpGK
	dGiCFJRyor5upMRi6WBG/K8+68S4ECfDmExJPni0yIPxjfYWYidk4QMifVva7I2zUoCA=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1mIrb6-00067W-Nc@xenbits.xenproject.org>
Date: Wed, 25 Aug 2021 12:01:36 +0000
Subject: [oss-security] Xen Security Advisory 383 v2 (CVE-2021-28700) - xen/arm: No
 memory limit for dom0less domUs

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2021-28700 / XSA-383
                               version 2

              xen/arm: No memory limit for dom0less domUs

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

The dom0less feature allows an administrator to create multiple
unprivileged domains directly from Xen.  Unfortunately, the
memory limit from them is not set. This allow a domain to allocate
memory beyond what an administrator originally configured.

IMPACT
======

Malicious dom0less guest could drive Xen out of memory and may
result to a Denial of Service (DoS) attack affecting the entire
system.

VULNERABLE SYSTEMS
==================

Only Arm systems are vulnerable. Only domains created using the
dom0less feature are affected.

Only domains created using the dom0less feature can leverage the
vulnerability.

All versions of Xen since 4.12 are vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by Julien Grall of Amazon.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa383.patch           xen-unstable - Xen 4.13.x
xsa383-4.12.patch      Xen 4.12.x

$ sha256sum xsa383*
773fe38d5d182ce43b5552fcdf6ed08c33126ed728e40d94c5050f89bfb3bd4d  xsa383.meta
cfd0632d250cc36d88269ae08e19e742c6bd07ba130c2604d51a10ba64d4e413  xsa383.patch
d18f72fa595f330fa8ed13c9412a36fba58a8baf9ad30b9fc2fd4e4533c0ee1a  xsa383-4.12.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmEmMPYMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZmboIALCcOpac8K7jPXZ+D5S5S1kGExOHYCLDBCZ6LyPt
jUmuR3r7xnkpJmcwSqGBHF5/PR6Sug+AjiggR8WHAFYiKod7yt1NjR4dm92Jy89x
t4mpyQ2ZX7PIMOiTfxlsmzsDspBxjk9sV6Pt7w4o25MiWdmY41hEkE+qtJ0OBto0
btzbaInKko6SXZWPGGpAToKlKPnwcApe2DehGYO98xl8eUZ8Ql/1lieHjuSK60Nx
RlboPeGDZwDgDroRj8GFNGxl2hESULVof0tG3w2IXPmYoa9iTKNUnO3KFL4kAJ/p
ZWzyRuHbX9FjQXBFnJJ5pyTHrc1aYzXJCwxAoSt436aRX2c=
=NGUO
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa383.meta"
Content-Disposition: attachment; filename="xsa383.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAzODMsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC4xNSIsCiAgICAiNC4xNCIsCiAgICAiNC4xMyIs
CiAgICAiNC4xMiIKICBdLAogICJUcmVlcyI6IFsKICAgICJ4ZW4iCiAgXSwK
ICAiUmVjaXBlcyI6IHsKICAgICI0LjEyIjogewogICAgICAiUmVjaXBlcyI6
IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICJl
YTIwZWVlOTdlOWUwODYxMTI3YTgwNzBjYzdiOWFlMzU1N2IwOWZiIiwKICAg
ICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAzNzgsCiAgICAgICAg
ICAgIDM3OSwKICAgICAgICAgICAgMzgwLAogICAgICAgICAgICAzODIKICAg
ICAgICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6IFsKICAgICAgICAgICAg
InhzYTM4My00LjEyLnBhdGNoIgogICAgICAgICAgXQogICAgICAgIH0KICAg
ICAgfQogICAgfSwKICAgICI0LjEzIjogewogICAgICAiUmVjaXBlcyI6IHsK
ICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICIzMmQ1
ODA5MDJiOTU5MDAwZDc5ZDUxZGZmMDNhMzU2MDY1M2M0ZmNiIiwKICAgICAg
ICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAzNzgsCiAgICAgICAgICAg
IDM3OSwKICAgICAgICAgICAgMzgwLAogICAgICAgICAgICAzODIKICAgICAg
ICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6IFsKICAgICAgICAgICAgInhz
YTM4My5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAgIH0KICAg
IH0sCiAgICAiNC4xNCI6IHsKICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAg
InhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAiNDkyOTljNDgxM2I3
ODQ3ZDI5ZGYwN2JmNzkwZjU0ODkwNjBmMmE5YyIsCiAgICAgICAgICAiUHJl
cmVxcyI6IFsKICAgICAgICAgICAgMzc4LAogICAgICAgICAgICAzNzksCiAg
ICAgICAgICAgIDM4MCwKICAgICAgICAgICAgMzgyCiAgICAgICAgICBdLAog
ICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAgICAgICAgICJ4c2EzODMucGF0
Y2giCiAgICAgICAgICBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAogICAg
IjQuMTUiOiB7CiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7
CiAgICAgICAgICAiU3RhYmxlUmVmIjogImRiYTc3NDg5NmY3ZGQ3NDc3M2Mx
NGQ1Mzc2NDNiN2Q3NDc3ZmVmY2QiLAogICAgICAgICAgIlByZXJlcXMiOiBb
CiAgICAgICAgICAgIDM3OCwKICAgICAgICAgICAgMzc5LAogICAgICAgICAg
ICAzODAsCiAgICAgICAgICAgIDM4MgogICAgICAgICAgXSwKICAgICAgICAg
ICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMzgzLnBhdGNoIgogICAg
ICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICJtYXN0ZXIi
OiB7CiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAg
ICAgICAiU3RhYmxlUmVmIjogIjI1ZGE5NDU1ZjFiYjhhNmQzMzAzOTU3NWE3
YjI4YmRmYzRlM2ZjZmUiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAg
ICAgICAgIDM3OCwKICAgICAgICAgICAgMzc5LAogICAgICAgICAgICAzODAs
CiAgICAgICAgICAgIDM4MgogICAgICAgICAgXSwKICAgICAgICAgICJQYXRj
aGVzIjogWwogICAgICAgICAgICAieHNhMzgzLnBhdGNoIgogICAgICAgICAg
XQogICAgICAgIH0KICAgICAgfQogICAgfQogIH0KfQ==

--=separator
Content-Type: application/octet-stream; name="xsa383.patch"
Content-Disposition: attachment; filename="xsa383.patch"
Content-Transfer-Encoding: base64

RnJvbTogSnVsaWVuIEdyYWxsIDxqZ3JhbGxAYW1hem9uLmNvbT4KRGF0ZTog
U2F0LCAzIEp1bCAyMDIxIDE0OjAzOjM2ICswMTAwClN1YmplY3Q6IFtQQVRD
SF0geGVuL2FybTogUmVzdHJpY3QgdGhlIGFtb3VudCBvZiBtZW1vcnkgdGhh
dCBkb20wbGVzcyBkb21VIGFuZAogZG9tMCBjYW4gYWxsb2NhdGUKCkN1cnJl
bnRseSwgYm90aCBkb20wbGVzcyBkb21VcyBhbmQgZG9tMCBjYW4gYWxsb2Nh
dGUgYW4gInVubGltaXRlZCIKYW1vdW50IG9mIG1lbW9yeSBiZWNhdXNlIGQt
Pm1heF9wYWdlcyBpcyBzZXQgdG8gfjBVLgoKSW4gcGFydGljdWxhciwgdGhl
IGZvcm1lciBhcmUgbWVhbnQgdG8gYmUgdW5wcml2aWxlZ2VkLiBUaGVyZWZv
cmUgdGhlCm1lbW9yeSB0aGV5IGNvdWxkIGFsbG9jYXRlIHNob3VsZCBiZSBi
b3VuZGVkLiBBcyB0aGUgZG9tYWluIGFyZSBub3QgeWV0Cm9mZmljaWFsbHkg
YXdhcmUgb2YgWGVuICh3ZSBkb24ndCBleHBvc2UgYWR2ZXJ0aXNlIGl0IGlu
IHRoZSBEVCwgeWV0CnRoZSBoeXBlcmNhbGxzIGFyZSBhY2Nlc3NpYmxlKSwg
dGhleSBzaG91bGQgbm90IG5lZWQgdG8gYWxsb2NhdGUgbW9yZQp0aGFuIHRo
ZSBpbml0aWFsIGFtb3VudC4gU28gY2FwIHNldCBkLT5tYXhfcGFnZXMgZGly
ZWN0bHkgdGhlIGFtb3VudCBvZgptZW1vcnkgd2UgYXJlIG1lYW50IHRvIGFs
bG9jYXRlLgoKVGFrZSB0aGUgb3Bwb3J0dW5pdHkgdG8gYWxzbyByZXN0cmlj
dCB0aGUgbWVtb3J5IGZvciBkb20wIGFzIHRoZQpkb21haW4gaXMgZGlyZWN0
IG1hcHBlZCAoZS5nLiBNRk4gPT0gR0ZOKSBhbmQgdGhlcmVmb3JlIGNhbm5v
dAphbGxvY2F0ZSBvdXRzaWRlIG9mIHRoZSBwcmUtYWxsb2NhdGVkIHJlZ2lv
bi4KClRoaXMgaXMgQ1ZFLTIwMjEtMjg3MDAgLyBYU0EtMzgzLgoKUmVwb3J0
ZWQtYnk6IEp1bGllbiBHcmFsbCA8amdyYWxsQGFtYXpvbi5jb20+ClNpZ25l
ZC1vZmYtYnk6IEp1bGllbiBHcmFsbCA8amdyYWxsQGFtYXpvbi5jb20+ClJl
dmlld2VkLWJ5OiBTdGVmYW5vIFN0YWJlbGxpbmkgPHNzdGFiZWxsaW5pQGtl
cm5lbC5vcmc+ClRlc3RlZC1ieTogU3RlZmFubyBTdGFiZWxsaW5pIDxzc3Rh
YmVsbGluaUBrZXJuZWwub3JnPgotLS0KIHhlbi9hcmNoL2FybS9kb21haW5f
YnVpbGQuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEveGVuL2FyY2gv
YXJtL2RvbWFpbl9idWlsZC5jIGIveGVuL2FyY2gvYXJtL2RvbWFpbl9idWls
ZC5jCmluZGV4IDZjODZkNTI3ODEwZi4uMjA2MDM4ZDFjMDIyIDEwMDY0NAot
LS0gYS94ZW4vYXJjaC9hcm0vZG9tYWluX2J1aWxkLmMKKysrIGIveGVuL2Fy
Y2gvYXJtL2RvbWFpbl9idWlsZC5jCkBAIC0yNDQwLDcgKzI0NDAsOCBAQCBz
dGF0aWMgaW50IF9faW5pdCBjb25zdHJ1Y3RfZG9tVShzdHJ1Y3QgZG9tYWlu
ICpkLAogCiAgICAgaWYgKCB2Y3B1X2NyZWF0ZShkLCAwKSA9PSBOVUxMICkK
ICAgICAgICAgcmV0dXJuIC1FTk9NRU07Ci0gICAgZC0+bWF4X3BhZ2VzID0g
fjBVOworCisgICAgZC0+bWF4X3BhZ2VzID0gKChwYWRkcl90KW1lbSAqIFNa
XzFLKSA+PiBQQUdFX1NISUZUOwogCiAgICAga2luZm8uZCA9IGQ7CiAKQEAg
LTI1NDYsNyArMjU0Nyw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGNvbnN0cnVj
dF9kb20wKHN0cnVjdCBkb21haW4gKmQpCiAKICAgICBpb21tdV9od2RvbV9p
bml0KGQpOwogCi0gICAgZC0+bWF4X3BhZ2VzID0gfjBVOworICAgIGQtPm1h
eF9wYWdlcyA9IGRvbTBfbWVtID4+IFBBR0VfU0hJRlQ7CiAKICAgICBraW5m
by51bmFzc2lnbmVkX21lbSA9IGRvbTBfbWVtOwogICAgIGtpbmZvLmQgPSBk
OwotLSAKMi4xNy4xCgo=

--=separator
Content-Type: application/octet-stream; name="xsa383-4.12.patch"
Content-Disposition: attachment; filename="xsa383-4.12.patch"
Content-Transfer-Encoding: base64

RnJvbTogSnVsaWVuIEdyYWxsIDxqZ3JhbGxAYW1hem9uLmNvbT4KRGF0ZTog
U2F0LCAzIEp1bCAyMDIxIDE0OjAzOjM2ICswMTAwClN1YmplY3Q6IFtQQVRD
SF0geGVuL2FybTogUmVzdHJpY3QgdGhlIGFtb3VudCBvZiBtZW1vcnkgdGhh
dCBkb20wbGVzcyBkb21VIGFuZAogZG9tMCBjYW4gYWxsb2NhdGUKCkN1cnJl
bnRseSwgYm90aCBkb20wbGVzcyBkb21VcyBhbmQgZG9tMCBjYW4gYWxsb2Nh
dGUgYW4gInVubGltaXRlZCIKYW1vdW50IG9mIG1lbW9yeSBiZWNhdXNlIGQt
Pm1heF9wYWdlcyBpcyBzZXQgdG8gfjBVLgoKSW4gcGFydGljdWxhciwgdGhl
IGZvcm1lciBhcmUgbWVhbnQgdG8gYmUgdW5wcml2aWxlZ2VkLiBUaGVyZWZv
cmUgdGhlCm1lbW9yeSB0aGV5IGNvdWxkIGFsbG9jYXRlIHNob3VsZCBiZSBi
b3VuZGVkLiBBcyB0aGUgZG9tYWluIGFyZSBub3QgeWV0Cm9mZmljaWFsbHkg
YXdhcmUgb2YgWGVuICh3ZSBkb24ndCBleHBvc2UgYWR2ZXJ0aXNlIGl0IGlu
IHRoZSBEVCwgeWV0CnRoZSBoeXBlcmNhbGxzIGFyZSBhY2Nlc3NpYmxlKSwg
dGhleSBzaG91bGQgbm90IG5lZWQgdG8gYWxsb2NhdGUgbW9yZQp0aGFuIHRo
ZSBpbml0aWFsIGFtb3VudC4gU28gY2FwIHNldCBkLT5tYXhfcGFnZXMgZGly
ZWN0bHkgdGhlIGFtb3VudCBvZgptZW1vcnkgd2UgYXJlIG1lYW50IHRvIGFs
bG9jYXRlLgoKVGFrZSB0aGUgb3Bwb3J0dW5pdHkgdG8gYWxzbyByZXN0cmlj
dCB0aGUgbWVtb3J5IGZvciBkb20wIGFzIHRoZQpkb21haW4gaXMgZGlyZWN0
IG1hcHBlZCAoZS5nLiBNRk4gPT0gR0ZOKSBhbmQgdGhlcmVmb3JlIGNhbm5v
dAphbGxvY2F0ZSBvdXRzaWRlIG9mIHRoZSBwcmUtYWxsb2NhdGVkIHJlZ2lv
bi4KClRoaXMgaXMgQ1ZFLTIwMjEtMjg3MDAgLyBYU0EtMzgzLgoKUmVwb3J0
ZWQtYnk6IEp1bGllbiBHcmFsbCA8amdyYWxsQGFtYXpvbi5jb20+ClNpZ25l
ZC1vZmYtYnk6IEp1bGllbiBHcmFsbCA8amdyYWxsQGFtYXpvbi5jb20+ClJl
dmlld2VkLWJ5OiBTdGVmYW5vIFN0YWJlbGxpbmkgPHNzdGFiZWxsaW5pQGtl
cm5lbC5vcmc+ClRlc3RlZC1ieTogU3RlZmFubyBTdGFiZWxsaW5pIDxzc3Rh
YmVsbGluaUBrZXJuZWwub3JnPgotLS0KIHhlbi9hcmNoL2FybS9kb21haW5f
YnVpbGQuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEveGVuL2FyY2gv
YXJtL2RvbWFpbl9idWlsZC5jIGIveGVuL2FyY2gvYXJtL2RvbWFpbl9idWls
ZC5jCmluZGV4IDZjNWE2ZGIxNDQ2Ni4uYzM1NTNjZTRjNDllIDEwMDY0NAot
LS0gYS94ZW4vYXJjaC9hcm0vZG9tYWluX2J1aWxkLmMKKysrIGIveGVuL2Fy
Y2gvYXJtL2RvbWFpbl9idWlsZC5jCkBAIC0yMDI4LDcgKzIwMjgsOCBAQCBz
dGF0aWMgaW50IF9faW5pdCBjb25zdHJ1Y3RfZG9tVShzdHJ1Y3QgZG9tYWlu
ICpkLAogCiAgICAgaWYgKCB2Y3B1X2NyZWF0ZShkLCAwLCAwKSA9PSBOVUxM
ICkKICAgICAgICAgcmV0dXJuIC1FTk9NRU07Ci0gICAgZC0+bWF4X3BhZ2Vz
ID0gfjBVOworCisgICAgZC0+bWF4X3BhZ2VzID0gKChwYWRkcl90KW1lbSAq
IFNaXzFLKSA+PiBQQUdFX1NISUZUOwogCiAgICAga2luZm8uZCA9IGQ7CiAK
QEAgLTIxMTYsNyArMjExNyw3IEBAIGludCBfX2luaXQgY29uc3RydWN0X2Rv
bTAoc3RydWN0IGRvbWFpbiAqZCkKIAogICAgIGlvbW11X2h3ZG9tX2luaXQo
ZCk7CiAKLSAgICBkLT5tYXhfcGFnZXMgPSB+MFU7CisgICAgZC0+bWF4X3Bh
Z2VzID0gZG9tMF9tZW0gPj4gUEFHRV9TSElGVDsKIAogICAgIGtpbmZvLnVu
YXNzaWduZWRfbWVtID0gZG9tMF9tZW07CiAgICAga2luZm8uZCA9IGQ7Ci0t
IAoyLjE3LjEKCg==

--=separator--
