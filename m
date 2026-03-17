Received: (qmail 20056 invoked by uid 550); 17 Mar 2026 12:05:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20007 invoked from network); 17 Mar 2026 12:05:22 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1w2TAa-00DbYI-1T@xenbits.xenproject.org>
Date: Tue, 17 Mar 2026 12:05:08 +0000
Subject: [oss-security] Xen Security Advisory 481 v2 (CVE-2026-23555) - Xenstored DoS by
 unprivileged domain

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-23555 / XSA-481
                               version 2

                 Xenstored DoS by unprivileged domain

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Any guest issuing a Xenstore command accessing a node using the
(illegal) node path "/local/domain/", will crash xenstored due to a
clobbered error indicator in xenstored when verifying the node path.

Note that the crash is forced via a failing assert() statement in
xenstored. In case xenstored is being built with NDEBUG #defined,
an unprivileged guest trying to access the node path "/local/domain/"
will result in it no longer being serviced by xenstored, other guests
(including dom0) will still be serviced, but xenstored will use up
all cpu time it can get.

IMPACT
======

Any unprivileged domain can cause xenstored to crash, causing a
DoS (denial of service) for any Xenstore action. This will result
in an inability to perform further domain administration on the host.

In case xenstored has been built with NDEBUG defined, an unprivileged
domain can force xenstored to be 100% busy, but without harming
xenstored functionality for other guests otherwise.

VULNERABLE SYSTEMS
==================

All Xen systems from Xen 4.18 onwards are vulnerable. Systems up to
Xen 4.17 are not vulnerable.

Systems using the C variant of xenstored are vulnerable. Systems using
xenstore-stubdom or the OCaml variant of Xenstore (oxenstored) are not
vulnerable.

MITIGATION
==========

There is no known mitigation available.

CREDITS
=======

This issue was discovered by Marek Marczykowski-Góreckiof
Invisible Things Lab.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa481.patch         xen-unstable - Xen 4.18.x

$ sha256sum xsa481*
148147e4545a4670578c0f24aa136f67bc203c7b18ec980b8cc80cfbb04ace68  xsa481.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patch described above (or
others which are substantially similar) is permitted during the
embargo, even on public-facing systems with untrusted guest users and
administrators.

But: Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, please contact the Xen Project Security
Team.

Switching xenstored with oxenstored or xenstore-stubdom is not permitted
as a mitigation, as this is a guest visible change of the configuration.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmm5Q1sMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZKmYIAKOrz2ZWyIQyEJCuci+pavN6zG8/qgBhoRhzB2gJ
piwk6CDr0gB2LseEePPLbl+yoGmNxNVtXjgCNyWVbCA2HaCnPsENOOkZkUhwffN/
fXVMJHC43YdiaknKTKc8QoRn0poiPLIBQE2eXpIMVo9J7FoPkqQZYM1DS6B5x/q3
FWyKjHWwnGRv2pzRAm6mx22bu6wNpzYsfD2qCUe4d08njC3+iFLn1az+9XwF+Yw6
nS51gB2KjzRoGNhfepwzHC9R2cysYQdySFbAbskcGBTTD2FI9D+k6fBbXc7Tuj4T
v+JqgQMkmQitJepE875VWxfFAR2PTRcBbL2ev6tQvA1x5mQ=
=Bv72
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa481.patch"
Content-Disposition: attachment; filename="xsa481.patch"
Content-Transfer-Encoding: base64

RnJvbSAwY2ZmMTZmMGE5OTdmMWIwODcxYjYyMWExZDYwNTA2NTI1MzBlNWQ5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+CkRhdGU6
IFRodSwgMTIgRmViIDIwMjYgMDg6Mjk6MzggKzAxMDAKU3ViamVjdDogW1BBVENIXSB0b29scy94
ZW5zdG9yZWQ6IGZpeCBjYW5vbmljYWxpemUoKSBlcnJvciB0ZXN0aW5nCk1JTUUtVmVyc2lvbjog
MS4wCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250ZW50LVRyYW5z
ZmVyLUVuY29kaW5nOiA4Yml0CgpUaGUgc2V0dGluZyBvZiBlcnJubyBpbiBjYW5vbmljYWxpemUo
KSBpcyByYXRoZXIgZnJhZ2lsZSBhbmQgc2VlbXMgdG8KYmUgZXZlbiB3cm9uZyBpbiBvbmUgY29y
bmVyIGNhc2U6IHdoZW4gdGhlIGludmFsaWQgcGF0aCAiL2xvY2FsL2RvbWFpbi8iCmlzIHBhc3Nl
ZCwgc3NjYW5mKCkgd2lsbCBzZXQgZXJybm8gdG8gMCwgcmVzdWx0aW5nIGluIGNhbm9uaWNhbGl6
ZSgpIHRvCnJldHVybiBOVUxMIHdpdGggZXJybm8gYmVpbmcgMC4gVGhpcyBjYW4gcmVzdWx0IGlu
IHRyaWdnZXJpbmcgdGhlCmFzc2VydChjb25uLT5pbiA9PSBOVUxMKSBpbiBjb25zaWRlcl9tZXNz
YWdlKCkuCgpEb24ndCBhc3N1bWUgdGhlIGluaXRpYWwgc2V0dGluZyBvZiBlcnJubyB0byAiRUlO
VkFMIiB3aWxsIHN0YXkgdmFsaWQKaW4gYWxsIGNhc2VzIGFuZCBzZXQgaXQgdG8gRUlOVkFMIG9u
bHkgd2hlbiByZXR1cm5pbmcgTlVMTCBkdWUgdG8gYW4KaW52YWxpZCBwYXRoLgoKVGhpcyBpcyBY
U0EtNDgxL0NWRS0yMDI2LTIzNTU1CgpSZXBvcnRlZC1ieTogTWFyZWsgTWFyY3p5a293c2tpLUfD
s3JlY2tpIDxtYXJtYXJla0BpbnZpc2libGV0aGluZ3NsYWIuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
dWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+ClJldmlld2VkLWJ5OiBKdWxpZW4gR3JhbGwg
PGp1bGllbkB4ZW4ub3JnPgotLS0KIHRvb2xzL3hlbnN0b3JlZC9jb3JlLmMgfCA1ICsrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3Rvb2xzL3hlbnN0b3JlZC9jb3JlLmMgYi90b29scy94ZW5zdG9yZWQvY29yZS5jCmluZGV4
IDY0YzQ3OGE4MDEuLjJlODI2Zjk5ZWIgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3hlbnN0b3JlZC9jb3Jl
LmMKKysrIGIvdG9vbHMveGVuc3RvcmVkL2NvcmUuYwpAQCAtMTI0MCwxMSArMTI0MCwxMCBAQCBj
b25zdCBjaGFyICpjYW5vbmljYWxpemUoc3RydWN0IGNvbm5lY3Rpb24gKmNvbm4sIGNvbnN0IHZv
aWQgKmN0eCwKIAkgKiAtIGlsbGVnYWwgY2hhcmFjdGVyIGluIG5vZGUKIAkgKiAtIHN0YXJ0cyB3
aXRoICdAJyBidXQgbm8gc3BlY2lhbCBub2RlIGFsbG93ZWQKIAkgKi8KLQllcnJubyA9IEVJTlZB
TDsKIAlpZiAoIW5vZGUgfHwKIAkgICAgIXZhbGlkX2NoYXJzKG5vZGUpIHx8CiAJICAgIChub2Rl
WzBdID09ICdAJyAmJiAhYWxsb3dfc3BlY2lhbCkpCi0JCXJldHVybiBOVUxMOworCQlnb3RvIGlu
dmFsOwogCiAJaWYgKG5vZGVbMF0gIT0gJy8nICYmIG5vZGVbMF0gIT0gJ0AnKSB7CiAJCW5hbWUg
PSB0YWxsb2NfYXNwcmludGYoY3R4LCAiJXMvJXMiLCBnZXRfaW1wbGljaXRfcGF0aChjb25uKSwK
QEAgLTEyNzIsNiArMTI3MSw4IEBAIGNvbnN0IGNoYXIgKmNhbm9uaWNhbGl6ZShzdHJ1Y3QgY29u
bmVjdGlvbiAqY29ubiwgY29uc3Qgdm9pZCAqY3R4LAogCWlmIChuYW1lICE9IG5vZGUpCiAJCXRh
bGxvY19mcmVlKG5hbWUpOwogCisgaW52YWw6CisJZXJybm8gPSBFSU5WQUw7CiAJcmV0dXJuIE5V
TEw7CiB9CiAKLS0gCjIuNTMuMAoK

--=separator--
