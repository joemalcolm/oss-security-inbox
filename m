Received: (qmail 12201 invoked by uid 550); 17 Dec 2024 12:18:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12177 invoked from network); 17 Dec 2024 12:18:55 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1tNWXC-00E24k-1b@xenbits.xenproject.org>
Date: Tue, 17 Dec 2024 12:18:42 +0000
Subject: [oss-security] Xen Security Advisory 465 v3 (CVE-2024-53240) - Backend can crash
 Linux netfront

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

             Xen Security Advisory CVE-2024-53240 / XSA-465
                                version 3

                   Backend can crash Linux netfront

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

After a suspend/resume cycle of a Linux guest (e.g. via "virsh dompmsuspend"/
"virsh dompmwakeup") a malicious network backend can crash the guest via a
NULL-pointer dereference in the guest's xen-netfront driver.

During the resume operation the xen-netfront driver will release some data
structures used for communication with the backend, in order to reallocate
these data structures with possibly different parameters specified by the
backend. If the backend is triggering a network device removal in the
guest before any network I/O has happened, the NULL-pointer dereference
may happen, causing a crash of the guest.

IMPACT
======

In setups with non-trusted network backends (e.g. when using untrusted
network driver domains) suspend/resume cycles of guests can result in
those guests being crashed by a malicious network backend.

VULNERABLE SYSTEMS
==================

Only systems with non-trusted network backends are vulnerable.

As far as known only Linux guests with the fix for CVE-2022-48969 applied
are vulnerable (this includes all kernel versions from 6.1 onwards).

All guest types (x86 PV, x86 PVH/HVM and Arm32/Arm64) are vulnerable.

MITIGATION
==========

Not doing guest suspend/resume cycles will avoid the vulnerability.

Using emulated NICs instead of PV ones will avoid the vulnerability.

CREDITS
=======

This issue was discovered by Marek Marczykowski-Górecki of Invisible Things Lab.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa465-linux.patch     Linux

$ sha256sum xsa465*
7207a22e1e70d0b00278d90e797313bee9d72a968ddd38464b90f0612667826e  xsa465-linux.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of patches or mitigations is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because the patches need to be applied to the guests and using
emulated NICs is a guest visible configuration change.

Deployment is permitted only AFTER the embargo ends.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmdhaw0MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ1kYH/3u0RtjvoOLf2CTFAPhBfgVXZ0nbaQAVeVY14OXL
3WAOQzrspobwSJtVUqRCg14NllEkM2ityeAlussY++b9BFW7nqxji9yL/rSMpuPh
vsH/sDByBSUYxpaw/LgbkZVvhRq3vbK6E7fnXCw8BO9LYA+uTZRf4P6PRe0JeQtz
t0IyHsECXaPoSWzX18OtSrg1JFYhgBqB9vK4rKMvMjPpqZDIKlEgIpFwNlywZ6jx
H6T3CCKUPUZqmVegxJtXIof3STEr9bzd4StPaUrRXfToOg5ZsknUkari0Nr8xW27
mcTZaFVWgWwfI0irMs9jTp2agfQ6T+yptA8ZfM3J7kGvGcc=
=+A6o
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa465-linux.patch"
Content-Disposition: attachment; filename="xsa465-linux.patch"
Content-Transfer-Encoding: base64

RnJvbSBmOTI0NGZiNTVmMzczNTZmNzVjNzM5YzU3MzIzZDk0MjJkN2FhMGY4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+CkRhdGU6
IFRodSwgNyBOb3YgMjAyNCAxNjoxNzowMCArMDEwMApTdWJqZWN0OiB4ZW4vbmV0ZnJvbnQ6IGZp
eCBjcmFzaCB3aGVuIHJlbW92aW5nIGRldmljZQpNSU1FLVZlcnNpb246IDEuMApDb250ZW50LVR5
cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRGLTgKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzog
OGJpdAoKV2hlbiByZW1vdmluZyBhIG5ldGZyb250IGRldmljZSBkaXJlY3RseSBhZnRlciBhIHN1
c3BlbmQvcmVzdW1lIGN5Y2xlCml0IG1pZ2h0IGhhcHBlbiB0aGF0IHRoZSBxdWV1ZXMgaGF2ZSBu
b3QgYmVlbiBzZXR1cCBhZ2FpbiwgY2F1c2luZyBhCmNyYXNoIGR1cmluZyB0aGUgYXR0ZW1wdCB0
byBzdG9wIHRoZSBxdWV1ZXMgYW5vdGhlciB0aW1lLgoKRml4IHRoYXQgYnkgY2hlY2tpbmcgdGhl
IHF1ZXVlcyBhcmUgZXhpc3RpbmcgYmVmb3JlIHRyeWluZyB0byBzdG9wCnRoZW0uCgpUaGlzIGlz
IFhTQS00NjUgLyBDVkUtMjAyNC01MzI0MC4KClJlcG9ydGVkLWJ5OiBNYXJlayBNYXJjenlrb3dz
a2ktR8OzcmVja2kgPG1hcm1hcmVrQGludmlzaWJsZXRoaW5nc2xhYi5jb20+CkZpeGVzOiBkNTBi
NzkxNGZhZTAgKCJ4ZW4tbmV0ZnJvbnQ6IEZpeCBOVUxMIHNyaW5nIGFmdGVyIGxpdmUgbWlncmF0
aW9uIikKU2lnbmVkLW9mZi1ieTogSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuY29tPgotLS0K
IGRyaXZlcnMvbmV0L3hlbi1uZXRmcm9udC5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3hl
bi1uZXRmcm9udC5jIGIvZHJpdmVycy9uZXQveGVuLW5ldGZyb250LmMKaW5kZXggNDI2NWMxY2Qw
ZmY3Li42M2ZlNTFkMGU2NGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3hlbi1uZXRmcm9udC5j
CisrKyBiL2RyaXZlcnMvbmV0L3hlbi1uZXRmcm9udC5jCkBAIC04NjcsNyArODY3LDcgQEAgc3Rh
dGljIG5ldGRldl90eF90IHhlbm5ldF9zdGFydF94bWl0KHN0cnVjdCBza19idWZmICpza2IsIHN0
cnVjdCBuZXRfZGV2aWNlICpkZXYKIHN0YXRpYyBpbnQgeGVubmV0X2Nsb3NlKHN0cnVjdCBuZXRf
ZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IG5ldGZyb250X2luZm8gKm5wID0gbmV0ZGV2X3ByaXYo
ZGV2KTsKLQl1bnNpZ25lZCBpbnQgbnVtX3F1ZXVlcyA9IGRldi0+cmVhbF9udW1fdHhfcXVldWVz
OworCXVuc2lnbmVkIGludCBudW1fcXVldWVzID0gbnAtPnF1ZXVlcyA/IGRldi0+cmVhbF9udW1f
dHhfcXVldWVzIDogMDsKIAl1bnNpZ25lZCBpbnQgaTsKIAlzdHJ1Y3QgbmV0ZnJvbnRfcXVldWUg
KnF1ZXVlOwogCW5ldGlmX3R4X3N0b3BfYWxsX3F1ZXVlcyhucC0+bmV0ZGV2KTsKQEAgLTg4Miw2
ICs4ODIsOSBAQCBzdGF0aWMgdm9pZCB4ZW5uZXRfZGVzdHJveV9xdWV1ZXMoc3RydWN0IG5ldGZy
b250X2luZm8gKmluZm8pCiB7CiAJdW5zaWduZWQgaW50IGk7CiAKKwlpZiAoIWluZm8tPnF1ZXVl
cykKKwkJcmV0dXJuOworCiAJZm9yIChpID0gMDsgaSA8IGluZm8tPm5ldGRldi0+cmVhbF9udW1f
dHhfcXVldWVzOyBpKyspIHsKIAkJc3RydWN0IG5ldGZyb250X3F1ZXVlICpxdWV1ZSA9ICZpbmZv
LT5xdWV1ZXNbaV07CiAKLS0gCjIuNDMuMAoK

--=separator--
