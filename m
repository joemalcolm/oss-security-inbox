X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10836" "Monday" "23" "May" "2016" "17:09:34" "+0000" "Xen.org security team" "security@xen.org" "<E1b4tME-0003x1-2c@xenbits.xenproject.org>" "234" "[oss-security] Xen Security Advisory 180 (CVE-2014-3672) - Unrestricted qemu logging" nil nil nil "5" "2016052317:09:34" "[oss-security] Xen Security Advisory 180 (CVE-2014-3672) - Unrestricted qemu logging" (number mark "U       security@xen May 23  234/10836 " thread-indent "\"[oss-security] Xen Security Advisory 180 (CVE-2014-3672) - Unrestricted qemu logging\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15935 invoked by uid 550); 23 May 2016 17:10:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15915 invoked from network); 23 May 2016 17:09:59 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1b4tME-0003x1-2c@xenbits.xenproject.org>
Date: Mon, 23 May 2016 17:09:34 +0000
Subject: [oss-security] Xen Security Advisory 180 (CVE-2014-3672) - Unrestricted qemu logging

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2014-3672 / XSA-180

                       Unrestricted qemu logging

ISSUE DESCRIPTION
=================

When the libxl toolstack launches qemu for HVM guests, it pipes the
output of stderr to a file in /var/log/xen.  This output is not
rate-limited in any way.  The guest can easily cause qemu to print
messages to stderr, causing this file to become arbitrarily large.

IMPACT
======

The disk containing the logfile can be exausted, possibly causing a
denial-of-service (DoS).

VULNERABLE SYSTEMS
==================

All versions of Xen are affected.

Only x86 systems are affected; ARM systems are not affected.

Only systems running HVM guests are affected; systems running only PV
guests are not affected.

Both qemu-upstream and qemu-traditional are affected.

MITIGATION
==========

Running only PV guests will avoid this vulnerability.

CREDITS
=======

This issue was discovered by Andrew Sorensen of leviathansecurity.com.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

The patches adopt a simple and rather crude approach which is
effective at resolving the security issue in the context of a Xen
device model.  They may not be appropriate for adoption upstream or in
other contexts.

xsa180-qemut.patch       qemu-xen-traditional (all supported versions)
xsa180-qemuu.patch       qemu-xen (upstream) Xen unstable

$ sha256sum xsa180*
7733fd57868c4313c7c47ccde3aba21e9ed5002ee8a937b20997fb3d2282a5d7  xsa180-qemut.patch
7a92bbd3b6368f91e694400c8e850567972e14852e4f61fbb61cc3b7b98f14ef  xsa180-qemuu.patch
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

iQEcBAEBAgAGBQJXQzkrAAoJEIP+FMlX6CvZjkYIAMJRhIzcKP7P8Q075WKw29e2
PpLFy+eOM/946SOnKxrN/1Pq+yYl5Jn1rN/TMRre4n6pYdGlGY/+MFa4N2tfKhBv
8dYcE2BMD9tbLi4SpbvoIMUtmLM1y0lVSmtHbMaw/zQDpT0uM1Kh+P0VjTeBADo/
PgRgePGfV7r+4nVjxjdSiNah8XAR5P/hoHNGOaM2kuIT19FwyDK7uQONE+HL2SdI
ccA+JAMZFlHs1/hcjeCLny7Soedy4GPfGfqUpu/zRkaaDmCkG1E+gfcox5S2myYc
Kogj7oiVWjRTcYh5cUOIfSmC4TDM8pqWnMmFftGShOvWqRJH3tUWt3TkaU669X8=
=SczG
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa180-qemut.patch"
Content-Disposition: attachment; filename="xsa180-qemut.patch"
Content-Transfer-Encoding: base64

RnJvbSA3NDkwZGFiNWMxYTAxYjE2MjNlOWQ4N2JkYzY1M2NiNGY5NjNkZDhh
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJYW4gSmFja3NvbiA8
aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4KRGF0ZTogVGh1LCAxOSBNYXkg
MjAxNiAxOTozODozNSArMDEwMApTdWJqZWN0OiBbUEFUQ0hdIG1haW4gbG9v
cDogQmlnIGhhbW1lciB0byBmaXggbG9nZmlsZSBkaXNrIERvUyBpbiBYZW4g
c2V0dXBzCgpFYWNoIHRpbWUgcm91bmQgdGhlIG1haW4gbG9vcCwgd2Ugbm93
IGZzdGF0IHN0ZGVyci4gIElmIGl0IGlzIHRvbyBiaWcsCndlIGR1cDIgL2Rl
di9udWxsIG9udG8gaXQuICBUaGlzIGlzIG5vdCBhIHZlcnkgcHJldHR5IHBh
dGNoIGJ1dCBpdCBpcwp2ZXJ5IHNpbXBsZSwgZWFzeSB0byBzZWUgdGhhdCBp
dCdzIGNvcnJlY3QsIGFuZCBoYXMgYSBsb3cgcmlzayBvZgpjb2xsYXRlcmFs
IGRhbWFnZS4KClRoZSBsaW1pdCBpcyAxTWJ5IGJ5IGRlZmF1bHQgYnV0IGNh
biBiZSBhZGp1c3RlZCBieSBzZXR0aW5nIGEgbmV3CmVudmlyb25tZW50IHZh
cmlhYmxlLgoKVGhpcyBmaXhlcyBDVkUtMjAxNC0zNjcyLgoKU2lnbmVkLW9m
Zi1ieTogSWFuIEphY2tzb24gPElhbi5KYWNrc29uQGV1LmNpdHJpeC5jb20+
ClRlc3RlZC1ieTogSWFuIEphY2tzb24gPElhbi5KYWNrc29uQGV1LmNpdHJp
eC5jb20+Ci0tLQogdmwuYyB8ICAgNDYgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ2
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS92bC5jIGIvdmwuYwppbmRl
eCBjODY0ZTdkLi5kN2VmNzQyIDEwMDY0NAotLS0gYS92bC5jCisrKyBiL3Zs
LmMKQEAgLTM3NTIsNiArMzc1Miw1MCBAQCBzdGF0aWMgdm9pZCBob3N0X21h
aW5fbG9vcF93YWl0KGludCAqdGltZW91dCkKIH0KICNlbmRpZgogCitzdGF0
aWMgdm9pZCBjaGVja19jdmVfMjAxNF8zNjcyX3hlbih2b2lkKQoreworICAg
IHN0YXRpYyB1bnNpZ25lZCBsb25nIGxpbWl0ID0gfjBVTDsKKyAgICBjb25z
dCBpbnQgZmQgPSAyOworICAgIHN0cnVjdCBzdGF0IHN0YWI7CisKKyAgICBp
ZiAobGltaXQgPT0gfjBVTCkgeworICAgICAgICBjb25zdCBjaGFyICpzID0g
Z2V0ZW52KCJYRU5fUUVNVV9DT05TT0xFX0xJTUlUIik7CisgICAgICAgIC8q
IFhFTl9RRU1VX0NPTlNPTEVfTElNSVQ9MCBtZWFucyBubyBsaW1pdCAqLwor
ICAgICAgICBsaW1pdCA9IHMgPyBzdHJ0b3VsKHMsMCwwKSA6IDEqMTAyNCox
MDI0OworICAgIH0KKyAgICBpZiAobGltaXQgPT0gMCkKKyAgICAgICAgcmV0
dXJuOworCisgICAgaW50IHIgPSBmc3RhdChmZCwgJnN0YWIpOworICAgIGlm
IChyKSB7CisgICAgICAgIHBlcnJvcigiZnN0YXQgc3RkZXJyIChmb3IgQ1ZF
LTIwMTQtMzY3MiBjaGVjaykiKTsKKyAgICAgICAgZXhpdCgtMSk7CisgICAg
fQorICAgIGlmICghU19JU1JFRyhzdGFiLnN0X21vZGUpKQorICAgICAgICBy
ZXR1cm47CisgICAgaWYgKHN0YWIuc3Rfc2l6ZSA8PSBsaW1pdCkKKyAgICAg
ICAgcmV0dXJuOworCisgICAgLyogb2ggZGVhciAqLworICAgIGZwcmludGYo
c3RkZXJyLCJcclxuIgorICAgICAgICAgICAgIkNsb3Npbmcgc3RkZXJyIGR1
ZSB0byBDVkUtMjAxNC0zNjcyIGxpbWl0LiAiCisgICAgICAgICAgICAiIFNl
dCBYRU5fUUVNVV9DT05TT0xFX0xJTUlUIHRvIG51bWJlciBvZiBieXRlcyB0
byBvdmVycmlkZSwiCisgICAgICAgICAgICAiIG9yIDAgZm9yIG5vIGxpbWl0
LlxuIik7CisgICAgZmZsdXNoKHN0ZGVycik7CisKKyAgICBpbnQgbmZkID0g
b3BlbigiL2Rldi9udWxsIiwgT19XUk9OTFkpOworICAgIGlmIChuZmQgPCAw
KSB7CisgICAgICAgIHBlcnJvcigib3BlbiAvZGV2L251bGwgKGZvciBDVkUt
MjAxNC0zNjcyIGNoZWNrKSIpOworICAgICAgICBleGl0KC0xKTsKKyAgICB9
CisgICAgciA9IGR1cDIobmZkLCBmZCk7CisgICAgaWYgKHIgIT0gZmQpIHsK
KyAgICAgICAgcGVycm9yKCJkdXAyIC9kZXYvbnVsbCAoZm9yIENWRS0yMDE0
LTM2NzIgY2hlY2spIik7CisgICAgICAgIGV4aXQoLTEpOworICAgIH0KKyAg
ICBjbG9zZShuZmQpOworfQorCiB2b2lkIG1haW5fbG9vcF93YWl0KGludCB0
aW1lb3V0KQogewogICAgIElPSGFuZGxlclJlY29yZCAqaW9oOwpAQCAtMzc2
Myw2ICszODA3LDggQEAgdm9pZCBtYWluX2xvb3Bfd2FpdChpbnQgdGltZW91
dCkKIAogICAgIGhvc3RfbWFpbl9sb29wX3dhaXQoJnRpbWVvdXQpOwogCisg
ICAgY2hlY2tfY3ZlXzIwMTRfMzY3Ml94ZW4oKTsKKwogICAgIC8qIHBvbGwg
YW55IGV2ZW50cyAqLwogICAgIC8qIFhYWDogc2VwYXJhdGUgZGV2aWNlIGhh
bmRsZXJzIGZyb20gc3lzdGVtIG9uZXMgKi8KICAgICBuZmRzID0gLTE7Ci0t
IAoxLjcuMTAuNAoK

--=separator
Content-Type: application/octet-stream; name="xsa180-qemuu.patch"
Content-Disposition: attachment; filename="xsa180-qemuu.patch"
Content-Transfer-Encoding: base64

RnJvbSBmNGViZGYwOGYzZWFhZjIwMjZhZGVhZWU1YjhlNTIwYjA4YmI1ZTEx
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJYW4gSmFja3NvbiA8
aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4KRGF0ZTogVGh1LCAxOSBNYXkg
MjAxNiAxNTo0MzozMyArMDEwMApTdWJqZWN0OiBbUEFUQ0hdIG1haW4gbG9v
cDogQmlnIGhhbW1lciB0byBmaXggbG9nZmlsZSBkaXNrIERvUyBpbiBYZW4g
c2V0dXBzCgpFYWNoIHRpbWUgcm91bmQgdGhlIG1haW4gbG9vcCwgd2Ugbm93
IGZzdGF0IHN0ZGVyci4gIElmIGl0IGlzIHRvbyBiaWcsCndlIGR1cDIgL2Rl
di9udWxsIG9udG8gaXQuICBUaGlzIGlzIG5vdCBhIHZlcnkgcHJldHR5IHBh
dGNoIGJ1dCBpdCBpcwp2ZXJ5IHNpbXBsZSwgZWFzeSB0byBzZWUgdGhhdCBp
dCdzIGNvcnJlY3QsIGFuZCBoYXMgYSBsb3cgcmlzayBvZgpjb2xsYXRlcmFs
IGRhbWFnZS4KClRoZSBsaW1pdCBpcyAxTWJ5IGJ5IGRlZmF1bHQgYnV0IGNh
biBiZSBhZGp1c3RlZCBieSBzZXR0aW5nIGEgbmV3CmVudmlyb25tZW50IHZh
cmlhYmxlLgoKVGhpcyBmaXhlcyBDVkUtMjAxNC0zNjcyLgoKU2lnbmVkLW9m
Zi1ieTogSWFuIEphY2tzb24gPElhbi5KYWNrc29uQGV1LmNpdHJpeC5jb20+
ClRlc3RlZC1ieTogSWFuIEphY2tzb24gPElhbi5KYWNrc29uQGV1LmNpdHJp
eC5jb20+Ci0tLQp2MjogTWFrZSBpdCBhY3R1YWxseSBjb21waWxlLiAgRml4
IGEgdHlwbyBpbiB0aGUgbWVzc2FnZS4KICAgIE1vdmUgdGhlIGNoZWNrX2N2
ZV8yMDE0XzM2NzJfeGVuIHVwIGluIHRoZSBmaWxlLCBzbyB0aGF0IHdlIGNh
bjoKICAgIENhbGwgY2hlY2tfY3ZlXzIwMTRfMzY3Ml94ZW4gaW4gdGhlIG90
aGVyIGNvcHkgb2YgdGhlIG1haW4gbG9vcCAoISkKLS0tCiBtYWluLWxvb3Au
YyB8ICAgNDggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL21haW4tbG9vcC5jIGIvbWFpbi1sb29wLmMKaW5k
ZXggMzk5NzA0My4uNGFjMDg5ZSAxMDA2NDQKLS0tIGEvbWFpbi1sb29wLmMK
KysrIGIvbWFpbi1sb29wLmMKQEAgLTE2NCw2ICsxNjQsNTAgQEAgaW50IHFl
bXVfaW5pdF9tYWluX2xvb3AoRXJyb3IgKiplcnJwKQogICAgIHJldHVybiAw
OwogfQogCitzdGF0aWMgdm9pZCBjaGVja19jdmVfMjAxNF8zNjcyX3hlbih2
b2lkKQoreworICAgIHN0YXRpYyB1bnNpZ25lZCBsb25nIGxpbWl0ID0gfjBV
TDsKKyAgICBjb25zdCBpbnQgZmQgPSAyOworICAgIHN0cnVjdCBzdGF0IHN0
YWI7CisKKyAgICBpZiAobGltaXQgPT0gfjBVTCkgeworICAgICAgICBjb25z
dCBjaGFyICpzID0gZ2V0ZW52KCJYRU5fUUVNVV9DT05TT0xFX0xJTUlUIik7
CisgICAgICAgIC8qIFhFTl9RRU1VX0NPTlNPTEVfTElNSVQ9MCBtZWFucyBu
byBsaW1pdCAqLworICAgICAgICBsaW1pdCA9IHMgPyBzdHJ0b3VsKHMsMCww
KSA6IDEqMTAyNCoxMDI0OworICAgIH0KKyAgICBpZiAobGltaXQgPT0gMCkK
KyAgICAgICAgcmV0dXJuOworCisgICAgaW50IHIgPSBmc3RhdChmZCwgJnN0
YWIpOworICAgIGlmIChyKSB7CisgICAgICAgIHBlcnJvcigiZnN0YXQgc3Rk
ZXJyIChmb3IgQ1ZFLTIwMTQtMzY3MiBjaGVjaykiKTsKKyAgICAgICAgZXhp
dCgtMSk7CisgICAgfQorICAgIGlmICghU19JU1JFRyhzdGFiLnN0X21vZGUp
KQorICAgICAgICByZXR1cm47CisgICAgaWYgKHN0YWIuc3Rfc2l6ZSA8PSBs
aW1pdCkKKyAgICAgICAgcmV0dXJuOworCisgICAgLyogb2ggZGVhciAqLwor
ICAgIGZwcmludGYoc3RkZXJyLCJcclxuIgorICAgICAgICAgICAgIkNsb3Np
bmcgc3RkZXJyIGR1ZSB0byBDVkUtMjAxNC0zNjcyIGxpbWl0LiAiCisgICAg
ICAgICAgICAiIFNldCBYRU5fUUVNVV9DT05TT0xFX0xJTUlUIHRvIG51bWJl
ciBvZiBieXRlcyB0byBvdmVycmlkZSwiCisgICAgICAgICAgICAiIG9yIDAg
Zm9yIG5vIGxpbWl0LlxuIik7CisgICAgZmZsdXNoKHN0ZGVycik7CisKKyAg
ICBpbnQgbmZkID0gb3BlbigiL2Rldi9udWxsIiwgT19XUk9OTFkpOworICAg
IGlmIChuZmQgPCAwKSB7CisgICAgICAgIHBlcnJvcigib3BlbiAvZGV2L251
bGwgKGZvciBDVkUtMjAxNC0zNjcyIGNoZWNrKSIpOworICAgICAgICBleGl0
KC0xKTsKKyAgICB9CisgICAgciA9IGR1cDIobmZkLCBmZCk7CisgICAgaWYg
KHIgIT0gZmQpIHsKKyAgICAgICAgcGVycm9yKCJkdXAyIC9kZXYvbnVsbCAo
Zm9yIENWRS0yMDE0LTM2NzIgY2hlY2spIik7CisgICAgICAgIGV4aXQoLTEp
OworICAgIH0KKyAgICBjbG9zZShuZmQpOworfQorCiBzdGF0aWMgaW50IG1h
eF9wcmlvcml0eTsKIAogI2lmbmRlZiBfV0lOMzIKQEAgLTIxNiw2ICsyNjAs
OCBAQCBzdGF0aWMgaW50IG9zX2hvc3RfbWFpbl9sb29wX3dhaXQoaW50NjRf
dCB0aW1lb3V0KQogICAgIGludCByZXQ7CiAgICAgc3RhdGljIGludCBzcGlu
X2NvdW50ZXI7CiAKKyAgICBjaGVja19jdmVfMjAxNF8zNjcyX3hlbigpOwor
CiAgICAgZ2xpYl9wb2xsZmRzX2ZpbGwoJnRpbWVvdXQpOwogCiAgICAgLyog
SWYgdGhlIEkvTyB0aHJlYWQgaXMgdmVyeSBidXN5IG9yIHdlIGFyZSBpbmNv
cnJlY3RseSBidXN5IHdhaXRpbmcgaW4KQEAgLTQwNyw2ICs0NTMsOCBAQCBz
dGF0aWMgaW50IG9zX2hvc3RfbWFpbl9sb29wX3dhaXQoaW50NjRfdCB0aW1l
b3V0KQogICAgIGZkX3NldCByZmRzLCB3ZmRzLCB4ZmRzOwogICAgIGludCBu
ZmRzOwogCisgICAgY2hlY2tfY3ZlXzIwMTRfMzY3Ml94ZW4oKTsKKwogICAg
IC8qIFhYWDogbmVlZCB0byBzdXBwcmVzcyBwb2xsaW5nIGJ5IGJldHRlciB1
c2luZyB3aW4zMiBldmVudHMgKi8KICAgICByZXQgPSAwOwogICAgIGZvciAo
cGUgPSBmaXJzdF9wb2xsaW5nX2VudHJ5OyBwZSAhPSBOVUxMOyBwZSA9IHBl
LT5uZXh0KSB7Ci0tIAoxLjcuMTAuNAoK

--=separator--
