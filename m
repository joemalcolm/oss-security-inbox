X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9142" "Tuesday" "7" "July" "2020" "12:23:54" "+0000" "Xen.org security team" "security@xen.org" "<E1jsmde-00040K-Bc@xenbits.xenproject.org>" "211" "[oss-security] Xen Security Advisory 327 v3 (CVE-2020-15564) - Missing alignment check in VCPUOP_register_vcpu_info" nil nil nil "7" "2020070712:23:54" "[oss-security] Xen Security Advisory 327 v3 (CVE-2020-15564) - Missing alignment check in VCPUOP_register_vcpu_info" (number mark "U       security@xen Jul  7  211/9142  " thread-indent "\"[oss-security] Xen Security Advisory 327 v3 (CVE-2020-15564) - Missing alignment check in VCPUOP_register_vcpu_info\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 327 v3 (CVE-2020-15564) - Missing alignment check in VCPUOP_register_vcpu_info" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17678 invoked by uid 550); 7 Jul 2020 12:24:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17635 invoked from network); 7 Jul 2020 12:24:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZWlDk5b1NVC6EET/cOV6YdvAXsB2RSRQIeRlFabmc9s=; b=GgqsbibzuG1G6WuLD3aoi4YSAp
	CjXkwfoYWDV6HljfvN+b7aNhE7/UdBrnvT9OiTcCJjg2aPjZ0cCjEm/JQe8l9gr09bgN2gzOmrwrd
	3VZSPQu6H1vt2jCQYXA315Wl30kQ0N9n2at3b5UtwEefe7HW4vVYLnsDPmbDVTxw6CIc=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1jsmde-00040K-Bc@xenbits.xenproject.org>
Date: Tue, 07 Jul 2020 12:23:54 +0000
Subject: [oss-security] Xen Security Advisory 327 v3 (CVE-2020-15564) - Missing alignment
 check in VCPUOP_register_vcpu_info

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2020-15564 / XSA-327
                               version 3

         Missing alignment check in VCPUOP_register_vcpu_info

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

The hypercall VCPUOP_register_vcpu_info is used by a guest to register
a shared region with the hypervisor. The region will be mapped into Xen address
space so it can be directly accessed.

On Arm, the region is accessed with instructions which require a specific
alignment. Unfortunately, there is no check that the address provided by
the guest will be correctly aligned.

As a result, a malicious guest could cause a hypervisor crash by passing
a misaligned address.

IMPACT
======

A malicious guest administrator may cause a hypervisor crash, resulting in a
Denial of Service (DoS).

VULNERABLE SYSTEMS
==================

All Xen versions are vulnerable.

Only Arm systems are vulnerable.  x86 systems are not affected.

MITIGATION
==========

There is no mitigation.

CREDITS
=======

This issue was discovered by Julien Grall of Amazon.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa327.patch           Xen 4.9 - xen-unstable

$ sha256sum xsa327*
f046eefcc1368708bd1fafc88e063d3dbc5c4cdb593d68b3b04917c6cdb7bcb5  xsa327.meta
1d057695d5b74ce2857204103e943caeaf773bc4fb9d91ea78016e01a9147ed7  xsa327.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patch and/or mitigations described above (or
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAl8EaVAMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZcqIIAKpb992pMq1jFStIGPhk6HsaIhxVEGep67eJHq9d
TMaFiyBix125djY0zV8KaznmZmRpM2pNKVsIkGe1XHgtEMcWgMAYARejJLRC4UnW
xHhpunI7rJMQc1vL5ZGxAFbVYF6U/PX0rwESwQb2/Rt0eLBTAmH4m25TQiSEnrkM
3C4Dbk3puCbaeB7VGiyccK07hh6qQhEO8s1FhZTNVTaqqcNWZYqy/SbmRYHiT/in
2dK6XOiBgRhHnjsDDoXj5abSMb00KnJ9PkWu8RC2b7+BVZJUii1557T8zpDo9Fyl
CJ3YXrekd+gQSFxgwCts00BbLr2NUf3uqEtpY1EEV7UKmvQ=
=fPiG
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa327.meta"
Content-Disposition: attachment; filename="xsa327.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAzMjcsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC4xMyIsCiAgICAiNC4xMiIsCiAgICAiNC4xMSIs
CiAgICAiNC4xMCIsCiAgICAiNC45IgogIF0sCiAgIlRyZWVzIjogWwogICAg
InhlbiIKICBdLAogICJSZWNpcGVzIjogewogICAgIjQuMTAiOiB7CiAgICAg
ICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3Rh
YmxlUmVmIjogImZkNmU0OWVjYWUwMzg0MDYxMGZkYzZhNDE2YTYzODU5MGMw
YjY1MzUiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAgIDMx
NywKICAgICAgICAgICAgMzE5LAogICAgICAgICAgICAzMjgsCiAgICAgICAg
ICAgIDMyMQogICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWwog
ICAgICAgICAgICAieHNhMzI3LnBhdGNoIgogICAgICAgICAgXQogICAgICAg
IH0KICAgICAgfQogICAgfSwKICAgICI0LjExIjogewogICAgICAiUmVjaXBl
cyI6IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6
ICIyYjc3NzI5ODg4ZmI4NTFhYjk2ZTdmNzdiYzg1NDEyMjYyNmI0ODYxIiwK
ICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAzMTcsCiAgICAg
ICAgICAgIDMxOSwKICAgICAgICAgICAgMzI4LAogICAgICAgICAgICAzMjEK
ICAgICAgICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6IFsKICAgICAgICAg
ICAgInhzYTMyNy5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAg
IH0KICAgIH0sCiAgICAiNC4xMiI6IHsKICAgICAgIlJlY2lwZXMiOiB7CiAg
ICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAiMDUwZmU0
OGRjOTgxZTA0ODhkZTFmNmM2YzA3ZDgxMTBmM2I3NTIzYiIsCiAgICAgICAg
ICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMzE3LAogICAgICAgICAgICAz
MTksCiAgICAgICAgICAgIDMyOCwKICAgICAgICAgICAgMzIxCiAgICAgICAg
ICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAgICAgICAgICJ4c2Ez
MjcucGF0Y2giCiAgICAgICAgICBdCiAgICAgICAgfQogICAgICB9CiAgICB9
LAogICAgIjQuMTMiOiB7CiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4
ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjogIjlmN2U4YmFjNGNhMjc5
YjNiZmNjYjVmMzczMGZiMmU1Mzk4Yzk1YWIiLAogICAgICAgICAgIlByZXJl
cXMiOiBbCiAgICAgICAgICAgIDMxNywKICAgICAgICAgICAgMzE5LAogICAg
ICAgICAgICAzMjgsCiAgICAgICAgICAgIDMyMQogICAgICAgICAgXSwKICAg
ICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMzI3LnBhdGNo
IgogICAgICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICI0
LjkiOiB7CiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAg
ICAgICAgICAiU3RhYmxlUmVmIjogIjZlNDc3YzJlYTRkNWMyNmE3YTdiMmY4
NTAxNjZhYTc5ZWRjNTIyNWMiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAg
ICAgICAgICAgIDMxOSwKICAgICAgICAgICAgMzI4LAogICAgICAgICAgICAz
MjEKICAgICAgICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6IFsKICAgICAg
ICAgICAgInhzYTMyNy5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAg
ICAgIH0KICAgIH0sCiAgICAibWFzdGVyIjogewogICAgICAiUmVjaXBlcyI6
IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICJl
NGQyMjA3MTY1YjM3OWVjMTNjOGI1MTI5MzZmNjM5ODJhZjYyZDEzIiwKICAg
ICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAzMTcsCiAgICAgICAg
ICAgIDMxOSwKICAgICAgICAgICAgMzI4LAogICAgICAgICAgICAzMjEKICAg
ICAgICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6IFsKICAgICAgICAgICAg
InhzYTMyNy5wYXRjaCIKICAgICAgICAgIF0KICAgICAgICB9CiAgICAgIH0K
ICAgIH0KICB9Cn0=

--=separator
Content-Type: application/octet-stream; name="xsa327.patch"
Content-Disposition: attachment; filename="xsa327.patch"
Content-Transfer-Encoding: base64

RnJvbSAwMzAzMDBlYmJiODZjNDBjMTJkYjAzODcxNDQ3OWQ3NDYxNjdjNzY3
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKdWxpZW4gR3JhbGwg
PGpncmFsbEBhbWF6b24uY29tPgpEYXRlOiBUdWUsIDI2IE1heSAyMDIwIDE4
OjMxOjMzICswMTAwClN1YmplY3Q6IFtQQVRDSF0geGVuOiBDaGVjayB0aGUg
YWxpZ25tZW50IG9mIHRoZSBvZmZzZXQgcGFzZWQgdmlhCiBWQ1BVT1BfcmVn
aXN0ZXJfdmNwdV9pbmZvCgpDdXJyZW50bHkgYSBndWVzdCBpcyBhYmxlIHRv
IHJlZ2lzdGVyIGFueSBndWVzdCBwaHlzaWNhbCBhZGRyZXNzIHRvIHVzZQpm
b3IgdGhlIHZjcHVfaW5mbyBzdHJ1Y3R1cmUgYXMgbG9uZyBhcyB0aGUgc3Ry
dWN0dXJlIGNhbiBmaXRzIGluIHRoZQpyZXN0IG9mIHRoZSBmcmFtZS4KClRo
aXMgbWVhbnMgYSBndWVzdCBjYW4gcHJvdmlkZSBhbiBhZGRyZXNzIHRoYXQg
aXMgbm90IGFsaWduZWQgdG8gdGhlCm5hdHVyYWwgYWxpZ25tZW50IG9mIHRo
ZSBzdHJ1Y3R1cmUuCgpPbiBBcm0gMzItYml0LCB1bmFsaWduZWQgYWNjZXNz
IGFyZSBjb21wbGV0ZWx5IGZvcmJpZGRlbiBieSB0aGUKaHlwZXJ2aXNvci4g
VGhpcyB3aWxsIHJlc3VsdCB0byBhIGRhdGEgYWJvcnQgd2hpY2ggaXMgZmF0
YWwuCgpPbiBBcm0gNjQtYml0LCB1bmFsaWduZWQgYWNjZXNzIGFyZSBvbmx5
IGZvcmJpZGRlbiB3aGVuIHVzZWQgZm9yIGF0b21pYwphY2Nlc3MuIEFzIHRo
ZSBzdHJ1Y3R1cmUgY29udGFpbnMgZmllbGRzIChzdWNoIGFzIGV2dGNobl9w
ZW5kaW5nX3NlbGYpCnRoYXQgYXJlIHVwZGF0ZWQgdXNpbmcgYXRvbWljIG9w
ZXJhdGlvbnMsIGFueSB1bmFsaWduZWQgYWNjZXNzIHdpbGwgYmUKZmF0YWwg
YXMgd2VsbC4KCldoaWxlIHRoZSBtaXNhbGlnbm1lbnQgaXMgb25seSBmYXRh
bCBvbiBBcm0sIGEgZ2VuZXJpYyBjaGVjayBpcyBhZGRlZAphcyBhbiB4ODYg
Z3Vlc3Qgc2hvdWxkbid0IHNlbnNpYmx5IHBhc3MgYW4gdW5hbGlnbmVkIGFk
ZHJlc3MgKHRoaXMKd291bGQgcmVzdWx0IHRvIGEgc3BsaXQgbG9jaykuCgpU
aGlzIGlzIFhTQS0zMjcuCgpSZXBvcnRlZC1ieTogSnVsaWVuIEdyYWxsIDxq
Z3JhbGxAYW1hem9uLmNvbT4KU2lnbmVkLW9mZi1ieTogSnVsaWVuIEdyYWxs
IDxqZ3JhbGxAYW1hem9uLmNvbT4KUmV2aWV3ZWQtYnk6IEFuZHJldyBDb29w
ZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBT
dGVmYW5vIFN0YWJlbGxpbmkgPHNzdGFiZWxsaW5pQGtlcm5lbC5vcmc+Ci0t
LQogeGVuL2NvbW1vbi9kb21haW4uYyB8IDEwICsrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEveGVu
L2NvbW1vbi9kb21haW4uYyBiL3hlbi9jb21tb24vZG9tYWluLmMKaW5kZXgg
N2NjOTUyNjEzOWE2Li5lOWJlMDVmMWQwNWYgMTAwNjQ0Ci0tLSBhL3hlbi9j
b21tb24vZG9tYWluLmMKKysrIGIveGVuL2NvbW1vbi9kb21haW4uYwpAQCAt
MTIyNywxMCArMTIyNywyMCBAQCBpbnQgbWFwX3ZjcHVfaW5mbyhzdHJ1Y3Qg
dmNwdSAqdiwgdW5zaWduZWQgbG9uZyBnZm4sIHVuc2lnbmVkIG9mZnNldCkK
ICAgICB2b2lkICptYXBwaW5nOwogICAgIHZjcHVfaW5mb190ICpuZXdfaW5m
bzsKICAgICBzdHJ1Y3QgcGFnZV9pbmZvICpwYWdlOworICAgIHVuc2lnbmVk
IGludCBhbGlnbjsKIAogICAgIGlmICggb2Zmc2V0ID4gKFBBR0VfU0laRSAt
IHNpemVvZih2Y3B1X2luZm9fdCkpICkKICAgICAgICAgcmV0dXJuIC1FSU5W
QUw7CiAKKyNpZmRlZiBDT05GSUdfQ09NUEFUCisgICAgaWYgKCBoYXNfMzJi
aXRfc2hpbmZvKGQpICkKKyAgICAgICAgYWxpZ24gPSBhbGlnbm9mKG5ld19p
bmZvLT5jb21wYXQpOworICAgIGVsc2UKKyNlbmRpZgorICAgICAgICBhbGln
biA9IGFsaWdub2YoKm5ld19pbmZvKTsKKyAgICBpZiAoIG9mZnNldCAmIChh
bGlnbiAtIDEpICkKKyAgICAgICAgcmV0dXJuIC1FSU5WQUw7CisKICAgICBp
ZiAoICFtZm5fZXEodi0+dmNwdV9pbmZvX21mbiwgSU5WQUxJRF9NRk4pICkK
ICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CiAKLS0gCjIuMTcuMQoK

--=separator--
