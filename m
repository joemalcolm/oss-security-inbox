X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6687" "Tuesday" "2" "May" "2017" "12:00:21" "+0000" "Xen.org security team" "security@xen.org" "<E1d5WTd-0005Ku-JX@xenbits.xenproject.org>" "169" "[oss-security] Xen Security Advisory 214 - grant transfer allows PV guest to elevate privileges" nil nil nil "5" "2017050212:00:21" "[oss-security] Xen Security Advisory 214 - grant transfer allows PV guest to elevate privileges" (number mark "U       security@xen May  2  169/6687  " thread-indent "\"[oss-security] Xen Security Advisory 214 - grant transfer allows PV guest to elevate privileges\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3266 invoked by uid 550); 2 May 2017 12:00:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3191 invoked from network); 2 May 2017 12:00:46 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1d5WTd-0005Ku-JX@xenbits.xenproject.org>
Date: Tue, 02 May 2017 12:00:21 +0000
Subject: [oss-security] Xen Security Advisory 214 - grant transfer allows PV guest to
 elevate privileges

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

                    Xen Security Advisory XSA-214
                              version 2

         grant transfer allows PV guest to elevate privileges

UPDATES IN VERSION 2
====================

Public release.

Added email header syntax to patches, for e.g. git-am.

ISSUE DESCRIPTION
=================

The GNTTABOP_transfer operation allows one guest to transfer a page to
another guest.  The internal processing of this, however, does not
include zapping the previous type of the page being transferred.  This
makes it possible for a PV guest to transfer a page previously used as
part of a segment descriptor table to another guest while retaining the
"contains segment descriptors" property.

If the destination guest is a PV one of different bitness, it may gain
access to segment descriptors it is not normally allowed to have, like
64-bit code segments in a 32-bit PV guest.

If the destination guest is a HVM one, that guest may freely alter the
page contents and then hand the page back to the same or another PV
guest.

In either case, if the destination PV guest then inserts that page into
one of its own descriptor tables, the page still having the designated
type results in validation of its contents being skipped.

IMPACT
======

A malicious pair of guests may be able to access all of system memory,
allowing for all of privilege escalation, host crashes, and information
leaks.

VULNERABLE SYSTEMS
==================

All Xen versions are vulnerable.

Only x86 systems are affected.  ARM systems are not vulnerable.

MITIGATION
==========

Running only one out of the three relevant classes of guest (namely:
32-bit PV; 64-bit PV; HVM) on any given host will avoid the
vulnerability.  (Note that this must also include any nonprivileged
service domains such as stub device model domains.)

The vulnerability can also be avoided if all guest kernels are
controlled by the host rather than guest administrator, provided that
further steps are taken to prevent the guest administrator from loading
code into the kernel (e.g. by disabling loadable modules etc) or from
using other mechanisms which allow them to run code at kernel privilege.

CREDITS
=======

This issue was discovered by Jann Horn of Google Project Zero.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa124.patch           xen-unstable, Xen 4.8.x, 4.7.x, 4.6.x, 4.5.x

$ sha256sum xsa214*
1c038c3927d08e6abdf3ce320bb8b0b68a106e6ac86b4e8194035dc5e4726d64  xsa214.patch
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

iQEcBAEBCAAGBQJZCGsBAAoJEIP+FMlX6CvZtvQH/i2VsJ5AIku19/0AfiuVA6WN
WOu6TBGsaLTAXZHM/CPAOYuPHJ2dQlXRB+avo/Wu8MpuYIVrSarlfED8puDgwO2t
vZp8k5KMV4hWY7EYWYuhMvJVgNK2kjRIsM8g4T56Tc8waQdFBVH1ODEFLOdTT2jf
gVuEjV9vpdzW994N38QRLYuaaQwLGPf9yAx1pgcMr1K3qzcOOBiNqCtb1amYo84i
e/xXSV7Y87/mZxsq23ZhrRgTogiIeZO3LnLnYyYqplTGNKZli6RyvlpLzADQNdae
lpvLGHLRuIiLEFBqhINVDshRHu2cp346dOTTS8bjEfFD/d5NBUYjddP2QogqCqo=
=g4Jg
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa214.patch"
Content-Disposition: attachment; filename="xsa214.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODY6IGRpc2NhcmQgdHlwZSBpbmZvcm1hdGlvbiB3aGVuIHN0ZWFsaW5n
IHBhZ2VzCgpXaGlsZSBhIHBhZ2UgaGF2aW5nIGp1c3QgYSBzaW5nbGUgZ2Vu
ZXJhbCByZWZlcmVuY2UgbGVmdCBuZWNlc3NhcmlseQpoYXMgYSB6ZXJvIHR5
cGUgcmVmZXJlbmNlIGNvdW50IHRvbywgaXRzIHR5cGUgbWF5IHN0aWxsIGJl
IHZhbGlkIChhbmQKaW4gdmFsaWRhdGVkIHN0YXRlOyBhdCBwcmVzZW50IHRo
aXMgaXMgb25seSBwb3NzaWJsZSBhbmQgcmVsZXZhbnQgZm9yClBHVF9zZWdf
ZGVzY19wYWdlLCBhcyBwYWdlIHRhYmxlcyBoYXZlIHRoZWlyIHR5cGUgZm9y
Y2libHkgemFwcGVkIHdoZW4KdGhlaXIgdHlwZSByZWZlcmVuY2UgY291bnQg
ZHJvcHMgdG8gemVybywgYW5kClBHVF97d3JpdGFibGUsc2hhcmVkfV9wYWdl
IHBhZ2VzIGRvbid0IHJlcXVpcmUgYW55IHZhbGlkYXRpb24pLiBJbgpzdWNo
IGEgY2FzZSB3aGVuIHRoZSBwYWdlIGlzIGJlaW5nIHJlLXVzZWQgd2l0aCB0
aGUgc2FtZSB0eXBlIGFnYWluLAp2YWxpZGF0aW9uIGlzIGJlaW5nIHNraXBw
ZWQuIEFzIHZhbGlkYXRpb24gY3JpdGVyaWEgZGlmZmVyIGJldHdlZW4KMzIt
IGFuZCA2NC1iaXQgZ3Vlc3RzLCBwYWdlcyB0byBiZSB0cmFuc2ZlcnJlZCBi
ZXR3ZWVuIGd1ZXN0cyBuZWVkIHRvCmhhdmUgdGhlaXIgdmFsaWRhdGlvbiBp
bmRpY2F0b3IgemFwcGVkIChhbmQgd2l0aCBpdCB3ZSB6YXAgYWxsIG90aGVy
CnR5cGUgaW5mb3JtYXRpb24gYXQgb25jZSkuCgpUaGlzIGlzIFhTQS0yMTQu
CgpSZXBvcnRlZC1ieTogSmFubiBIb3JuIDxqYW5uaEBnb29nbGUuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+
ClJldmlld2VkLWJ5OiBBbmRyZXcgQ29vcGVyIDxhbmRyZXcuY29vcGVyM0Bj
aXRyaXguY29tPgoKLS0tIGEveGVuL2FyY2gveDg2L21tLmMKKysrIGIveGVu
L2FyY2gveDg2L21tLmMKQEAgLTQ0NjYsNiArNDQ2NiwxNyBAQCBpbnQgc3Rl
YWxfcGFnZSgKICAgICAgICAgeSA9IGNtcHhjaGcoJnBhZ2UtPmNvdW50X2lu
Zm8sIHgsIHggJiB+UEdDX2NvdW50X21hc2spOwogICAgIH0gd2hpbGUgKCB5
ICE9IHggKTsKIAorICAgIC8qCisgICAgICogV2l0aCB0aGUgc29sZSByZWZl
cmVuY2UgZHJvcHBlZCB0ZW1wb3JhcmlseSwgbm8tb25lIGNhbiB1cGRhdGUg
dHlwZQorICAgICAqIGluZm9ybWF0aW9uLiBUeXBlIGNvdW50IGFsc28gbmVl
ZHMgdG8gYmUgemVybyBpbiB0aGlzIGNhc2UsIGJ1dCBlLmcuCisgICAgICog
UEdUX3NlZ19kZXNjX3BhZ2UgbWF5IHN0aWxsIGhhdmUgUEdUX3ZhbGlkYXRl
ZCBzZXQsIHdoaWNoIHdlIG5lZWQgdG8KKyAgICAgKiBjbGVhciBiZWZvcmUg
dHJhbnNmZXJyaW5nIG93bmVyc2hpcCAoYXMgdmFsaWRhdGlvbiBjcml0ZXJp
YSB2YXJ5CisgICAgICogZGVwZW5kaW5nIG9uIGRvbWFpbiB0eXBlKS4KKyAg
ICAgKi8KKyAgICBCVUdfT04ocGFnZS0+dS5pbnVzZS50eXBlX2luZm8gJiAo
UEdUX2NvdW50X21hc2sgfCBQR1RfbG9ja2VkIHwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgUEdUX3Bpbm5lZCkpOworICAgIHBh
Z2UtPnUuaW51c2UudHlwZV9pbmZvID0gMDsKKwogICAgIC8qIFN3aXp6bGUg
dGhlIG93bmVyIHRoZW4gcmVpbnN0YXRlIHRoZSBQR0NfYWxsb2NhdGVkIHJl
ZmVyZW5jZS4gKi8KICAgICBwYWdlX3NldF9vd25lcihwYWdlLCBOVUxMKTsK
ICAgICB5ID0gcGFnZS0+Y291bnRfaW5mbzsK

--=separator--
