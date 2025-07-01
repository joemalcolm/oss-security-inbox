Received: (qmail 14245 invoked by uid 550); 1 Jul 2025 12:00:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14208 invoked from network); 1 Jul 2025 12:00:49 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1uWZf3-004MTf-2x@xenbits.xenproject.org>
Date: Tue, 01 Jul 2025 12:00:29 +0000
Subject: [oss-security] Xen Security Advisory 470 v2 (CVE-2025-27465) - x86: Incorrect
 stubs exception handling for flags recovery

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2025-27465 / XSA-470
                               version 2

       x86: Incorrect stubs exception handling for flags recovery

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Certain instructions need intercepting and emulating by Xen.  In some
cases Xen emulates the instruction by replaying it, using an executable
stub.  Some instructions may raise an exception, which is supposed to be
handled gracefully.  Certain replayed instructions have additional logic
to set up and recover the changes to the arithmetic flags.

For replayed instructions where the flags recovery logic is used, the
metadata for exception handling was incorrect, preventing Xen from
handling the the exception gracefully, treating it as fatal instead.

IMPACT
======

An unprivileged guest can cause a hypervisor crash, causing a Denial of
Service (DoS) of the entire host.

VULNERABLE SYSTEMS
==================

Xen 4.9 and onwards are vulnerable.  Xen 4.8 and older are not
vulnerable.

Only x86 systems are vulnerable.  ARM systems are not vulnerable.

Only HVM or PVH guests can leverage the vulnerability.  PV guests cannot
leverage the vulnerability.

MITIGATION
==========

There are no mitigations.

CREDITS
=======

This issue was discovered by Andrew Cooper of XenServer.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa470.patch           xen-unstable - Xen 4.18.x
xsa470-4.17.patch      Xen 4.17.x

$ sha256sum xsa470*
99d7fbe6acb27aa13c586acbc8d15d00b04bb040bb0cb5f8feca495f0f414a10  xsa470.patch
2c6490978bd1ba1578a4c1102a521cf4d01d99792a363708bb1e6a1b879b1f5c  xsa470-4.17.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmhjzN0MHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ6skIAMivsvi9wpvpoaQubdbG3iUFoK4ocOZHdywJbfOQ
OjUK23585BZo45xIp/myqbbmIjQ4PsN4JFh9D9F3xv3xVfSD1RYS8qMPm/pcpY60
dDrk2SeLqqhQzdxguDrQ97qiPtanfDEvkwBUzu2Z7rDgbv/7hBCDURVgwaprs/d6
hvF/K+FIT7rBFFfPJmCzO8RCMO7o3iKia77q7QScFSmm4AeJ+E9NQdPsa2Po9aJG
reHCDEeWaPgktVV/M8nS0an/K6Oavf2jI18hkoweSnok2xAz0t9Me5gQ3UcaOdlz
iNk3ItZ/41ja2+3xO6dFlwOdVSnk3KvWZJxjJMySeWLRTQI=
=uDlQ
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa470.patch"
Content-Disposition: attachment; filename="xsa470.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4KU3ViamVjdDog
eDg2L2VtdWw6IEZpeCBleHRhYmxlIHJlZ2lzdHJhdGlvbiBpbiBpbnZva2Vfc3R1YigpCgpGb3Ig
ZXhjZXB0aW9uIHJlY292ZXJ5IGluIHRoZSBzdHVicywgdGhlIHJlZ2lzdGVyZWQgYWRkcmVzcyBm
b3IgZml4dXAgaXMgdGhlCnJldHVybiBhZGRyZXNzIG9mIHRoZSBDQUxMIGVudGVyaW5nIHRoZSBz
dHViLgoKSW4gaW52b2tlX3N0dWIoKSwgdGhlICcuTHJldCU9OicgbGFiZWwgaXMgdGhlIHdyb25n
IHNpZGUgb2YgdGhlICdwb3N0JwpwYXJhbWV0ZXIuICBUaGUgJ3Bvc3QnIHBhcmFtZXRlciBpcyBu
b24tZW1wdHkgaW4gY2FzZXMgd2hlcmUgdGhlIGFyaXRobWV0aWMKZmxhZ3Mgb2YgdGhlIG9wZXJh
dGlvbiBuZWVkIHJlY292ZXJpbmcuCgpTcGxpdCB0aGUgbGluZSB0byBzZXBhcmF0ZSAncHJlJyBh
bmQgJ3Bvc3QnLCBtYWtpbmcgaXQgbW9yZSBvYnZpb3VzIHRoYXQgdGhlCnJldHVybiBhZGRyZXNz
IGxhYmVsIHdhcyBpbiB0aGUgd3JvbmcgcG9zaXRpb24uCgpIb3dldmVyLCBpbiB0aGUgY2FzZSB0
aGF0IGFuIGV4Y2VwdGlvbiBkaWQgb2NjdXIsIHdlIHdhbnQgdG8gc2tpcCAncG9zdCcgYXMKaXQn
cyBsb2dpY2FsbHkgcGFydCBvZiB0aGUgb3BlcmF0aW9uIHdoaWNoIGhhZCBhbHJlYWR5IGZhaWxl
ZC4gIFRoZXJlZm9yZSwgYWRkCmEgbmV3IHNraXAgbGFiZWwgYW5kIHVzZSB0aGF0IGZvciB0aGUg
ZXhjZXB0aW9uIHJlY292ZXJ5IHBhdGguCgpUaGlzIGlzIFhTQS00NzAgLyBDVkUtMjAyNS0yNzQ2
NQoKRml4ZXM6IDc5OTAzZTUwZGJhOSAoIng4NmVtdWw6IGNhdGNoIGV4Y2VwdGlvbnMgb2NjdXJy
aW5nIGluIHN0dWJzIikKU2lnbmVkLW9mZi1ieTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3Bl
cjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNv
bT4KCmRpZmYgLS1naXQgYS94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUvcHJpdmF0ZS5oIGIveGVu
L2FyY2gveDg2L3g4Nl9lbXVsYXRlL3ByaXZhdGUuaAppbmRleCA0NjdiY2UzYzg0YjguLmE0YmEx
YjNjMzkxOSAxMDA2NDQKLS0tIGEveGVuL2FyY2gveDg2L3g4Nl9lbXVsYXRlL3ByaXZhdGUuaAor
KysgYi94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUvcHJpdmF0ZS5oCkBAIC03MTQsMTIgKzcxNCwx
NSBAQCBzdHJ1Y3Qgc3R1Yl9leG4gewogICAgIHN0dWJfZXhuLmluZm8gPSAodW5pb24gc3R1Yl9l
eGNlcHRpb25fdG9rZW4pIHsgLnJhdyA9IH4wIH07ICAgICAgICAgXAogICAgIHN0dWJfZXhuLmxp
bmUgPSBfX0xJTkVfXzsgLyogVXRpbGl0eSBvdXR3ZWlnaHMgbGl2ZXBhdGNoaW5nIGNvc3QgKi8g
XAogICAgIGJsb2NrX3NwZWN1bGF0aW9uKCk7IC8qIFNDU0IgKi8gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXAotICAgIGFzbSB2b2xhdGlsZSAoIHByZSAiXG5cdElORElSRUNU
X0NBTEwgJVtzdHViXVxuXHQiIHBvc3QgIlxuIiAgICAgICAgXAorICAgIGFzbSB2b2xhdGlsZSAo
IHByZSAiXG5cdCIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAor
ICAgICAgICAgICAgICAgICAgICJJTkRJUkVDVF9DQUxMICVbc3R1Yl1cbiIgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgICIuTHJldCU9OlxuXHQiICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAorICAgICAgICAgICAgICAgICAgIHBv
c3QgIlxuXHQiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAorICAg
ICAgICAgICAgICAgICAgICIuTHNraXAlPTpcblx0IiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgICIucHVzaHNlY3Rpb24gLmZpeHVwLFwi
YXhcIlxuIiAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgICIuTGZp
eCU9OlxuXHQiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAg
ICAgICAgICAgICAgICJwb3AgJVtleG5dXG5cdCIgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXAotICAgICAgICAgICAgICAgICAgICJqbXAgLkxyZXQlPVxuXHQiICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXAorICAgICAgICAgICAgICAgICAgICJqbXAgLkxz
a2lwJT1cblx0IiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAg
ICAgICAgICAgICIucG9wc2VjdGlvblxuXHQiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXAogICAgICAgICAgICAgICAgICAgIF9BU01fRVhUQUJMRSguTHJldCU9LCAuTGZpeCU9
KSAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgIDogW2V4bl0gIitn
IiAoc3R1Yl9leG4uaW5mbykgQVNNX0NBTExfQ09OU1RSQUlOVCwgICAgXAo=

--=separator
Content-Type: application/octet-stream; name="xsa470-4.17.patch"
Content-Disposition: attachment; filename="xsa470-4.17.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4KU3ViamVjdDog
eDg2L2VtdWw6IEZpeCBleHRhYmxlIHJlZ2lzdHJhdGlvbiBpbiBpbnZva2Vfc3R1YigpCgpGb3Ig
ZXhjZXB0aW9uIHJlY292ZXJ5IGluIHRoZSBzdHVicywgdGhlIHJlZ2lzdGVyZWQgYWRkcmVzcyBm
b3IgZml4dXAgaXMgdGhlCnJldHVybiBhZGRyZXNzIG9mIHRoZSBDQUxMIGVudGVyaW5nIHRoZSBz
dHViLgoKSW4gaW52b2tlX3N0dWIoKSwgdGhlICcuTHJldCU9OicgbGFiZWwgaXMgdGhlIHdyb25n
IHNpZGUgb2YgdGhlICdwb3N0JwpwYXJhbWV0ZXIuICBUaGUgJ3Bvc3QnIHBhcmFtZXRlciBpcyBu
b24tZW1wdHkgaW4gY2FzZXMgd2hlcmUgdGhlIGFyaXRobWV0aWMKZmxhZ3Mgb2YgdGhlIG9wZXJh
dGlvbiBuZWVkIHJlY292ZXJpbmcuCgpTcGxpdCB0aGUgbGluZSB0byBzZXBhcmF0ZSAncHJlJyBh
bmQgJ3Bvc3QnLCBtYWtpbmcgaXQgbW9yZSBvYnZpb3VzIHRoYXQgdGhlCnJldHVybiBhZGRyZXNz
IGxhYmVsIHdhcyBpbiB0aGUgd3JvbmcgcG9zaXRpb24uCgpIb3dldmVyLCBpbiB0aGUgY2FzZSB0
aGF0IGFuIGV4Y2VwdGlvbiBkaWQgb2NjdXIsIHdlIHdhbnQgdG8gc2tpcCAncG9zdCcgYXMKaXQn
cyBsb2dpY2FsbHkgcGFydCBvZiB0aGUgb3BlcmF0aW9uIHdoaWNoIGhhZCBhbHJlYWR5IGZhaWxl
ZC4gIFRoZXJlZm9yZSwgYWRkCmEgbmV3IHNraXAgbGFiZWwgYW5kIHVzZSB0aGF0IGZvciB0aGUg
ZXhjZXB0aW9uIHJlY292ZXJ5IHBhdGguCgpUaGlzIGlzIFhTQS00NzAgLyBDVkUtMjAyNS0yNzQ2
NQoKRml4ZXM6IDc5OTAzZTUwZGJhOSAoIng4NmVtdWw6IGNhdGNoIGV4Y2VwdGlvbnMgb2NjdXJy
aW5nIGluIHN0dWJzIikKU2lnbmVkLW9mZi1ieTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3Bl
cjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNv
bT4KCmRpZmYgLS1naXQgYS94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2X2VtdWxhdGUuYyBi
L3hlbi9hcmNoL3g4Ni94ODZfZW11bGF0ZS94ODZfZW11bGF0ZS5jCmluZGV4IGI1ZWNhMTM0MTBj
ZC4uNWE2MWJhNjEzNjBkIDEwMDY0NAotLS0gYS94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2
X2VtdWxhdGUuYworKysgYi94ZW4vYXJjaC94ODYveDg2X2VtdWxhdGUveDg2X2VtdWxhdGUuYwpA
QCAtMTI1OCwxMiArMTI1OCwxNSBAQCBzdGF0aWMgaW5saW5lIGludCBta2VjKHVpbnQ4X3QgZSwg
aW50MzJfdCBlYywgLi4uKQogICAgIHN0dWJfZXhuLmluZm8gPSAodW5pb24gc3R1Yl9leGNlcHRp
b25fdG9rZW4pIHsgLnJhdyA9IH4wIH07ICAgICAgICAgXAogICAgIHN0dWJfZXhuLmxpbmUgPSBf
X0xJTkVfXzsgLyogVXRpbGl0eSBvdXR3ZWlnaHMgbGl2ZXBhdGNoaW5nIGNvc3QgKi8gXAogICAg
IGJsb2NrX3NwZWN1bGF0aW9uKCk7IC8qIFNDU0IgKi8gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXAotICAgIGFzbSB2b2xhdGlsZSAoIHByZSAiXG5cdElORElSRUNUX0NBTEwg
JVtzdHViXVxuXHQiIHBvc3QgIlxuIiAgICAgICAgXAorICAgIGFzbSB2b2xhdGlsZSAoIHByZSAi
XG5cdCIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAorICAgICAg
ICAgICAgICAgICAgICJJTkRJUkVDVF9DQUxMICVbc3R1Yl1cbiIgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgICIuTHJldCU9OlxuXHQiICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXAorICAgICAgICAgICAgICAgICAgIHBvc3QgIlxu
XHQiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAorICAgICAgICAg
ICAgICAgICAgICIuTHNraXAlPTpcblx0IiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXAogICAgICAgICAgICAgICAgICAgICIucHVzaHNlY3Rpb24gLmZpeHVwLFwiYXhcIlxu
IiAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgICIuTGZpeCU9Olxu
XHQiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAg
ICAgICAgICJwb3AgJVtleG5dXG5cdCIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXAotICAgICAgICAgICAgICAgICAgICJqbXAgLkxyZXQlPVxuXHQiICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXAorICAgICAgICAgICAgICAgICAgICJqbXAgLkxza2lwJT1c
blx0IiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAg
ICAgICIucG9wc2VjdGlvblxuXHQiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
XAogICAgICAgICAgICAgICAgICAgIF9BU01fRVhUQUJMRSguTHJldCU9LCAuTGZpeCU9KSAgICAg
ICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgIDogW2V4bl0gIitnIiAoc3R1
Yl9leG4uaW5mbykgQVNNX0NBTExfQ09OU1RSQUlOVCwgICAgXAo=

--=separator--
