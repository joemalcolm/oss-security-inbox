X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13107" "Tuesday" "22" "November" "2016" "12:02:38" "+0000" "Xen.org security team" "security@xen.org" "<E1c99mY-0008BI-Mf@xenbits.xenproject.org>" "281" "[oss-security] Xen Security Advisory 196 (CVE-2016-9377,CVE-2016-9378) - x86 software interrupt injection mis-handled" nil nil nil "11" "2016112212:02:38" "[oss-security] Xen Security Advisory 196 (CVE-2016-9377,CVE-2016-9378) - x86 software interrupt injection mis-handled" (number mark "U       security@xen Nov 22  281/13107 " thread-indent "\"[oss-security] Xen Security Advisory 196 (CVE-2016-9377,CVE-2016-9378) - x86 software interrupt injection mis-handled\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7322 invoked by uid 550); 22 Nov 2016 14:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32326 invoked from network); 22 Nov 2016 12:03:01 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1c99mY-0008BI-Mf@xenbits.xenproject.org>
Date: Tue, 22 Nov 2016 12:02:38 +0000
Subject: [oss-security] Xen Security Advisory 196 (CVE-2016-9377,CVE-2016-9378) - x86
 software interrupt injection mis-handled

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

     Xen Security Advisory CVE-2016-9377,CVE-2016-9378 / XSA-196
                              version 3

             x86 software interrupt injection mis-handled

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

There are two closely-related bugs.

When Xen emulates instructions which generate software interrupts it
needs to perform a privilege check involving an IDT lookup.  This
check is sometimes erroneously conducted as if the IDT had the format
for a 32-bit guest, when in fact it is in the 64-bit format.  Xen will
then read the wrong part of the IDT and interpret it in an unintended
manner.  (CVE-2016-9377)

When Xen emulates instructions which generate software interrupts, and
chooses to deliver the software interrupt, it may try to use the
method intended for injecting exceptions.  This is incorrect, and
results in a guest crash.  (CVE-2016-9378)

These instructions are not ususally handled by the emulator.
Exploiting the bug requires ability to force use of the emulator.

IMPACT
======

An unprivileged guest user program may be able to crash the guest.

VULNERABLE SYSTEMS
==================

Xen versions 4.5 and newer are vulnerable.  Older versions are not
vulnerable.

The vulnerability is only exposed on AMD hardware lacking the NRip
feature.  AMD hardware with the NRip feature, and all Intel hardware,
is not vulnerable.

Xen prints information about CPU features on boot.  If you see this:
    (XEN) SVM: Supported advanced features:
    ...
    (XEN)  - Next-RIP Saved on #VMEXIT
then you are not vulnerable because you have an AMD CPU with NRip.
If you see this:
    (XEN) VMX: Supported advanced features:
then you are not vulnerable because you have an Intel CPU.

The vulnerability is only exposed on HVM guests.

ARM systems are NOT vulnerable.

MITIGATION
==========

Running only PV guests will avoid this issue.

CREDITS
=======

This issue was discovered by Andrew Cooper of Citrix.

RESOLUTION
==========

Applying the attached patches resolves this issue.

xsa196-000*.patch      xen-unstable, Xen 4.7.x, Xen 4.6.x, Xen 4.5.x

$ sha256sum xsa196*
c4122280f3786416231ae5f0660123446d29e9ac5cd3ffb92784ed36edeec8b7  xsa196-0001-x86-emul-Correct-the-IDT-entry-calculation-in-inject.patch
25671c44c746d4d0e8f7e2b109926c013b440e0bf225156282052ec38536e347  xsa196-0002-x86-svm-Fix-injection-of-software-interrupts.patch
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

iQEcBAEBAgAGBQJYNDMVAAoJEIP+FMlX6CvZZ7MH/36KnwbAxmRHtUDIpQF/Syoh
Lc8s6gNV1oOzcCpFgz+gSyIOMzp7KWieKQiVX1HbI0lnLYK/sRa77VNV/Y9bUt+Y
y9b9QOZRDHoO92dZ4Ym/hzdtaNkdOQX/JAfy+E5pCGuqPtH/Jy5NuwVL8W7V8PNM
QTHmvbgB4/Y2U6QqWpIP+S7oC0A9iuIf9eekd6ZTpqTadPFylTe2WX22mns1TEtN
3Z0NX737AjQLyUVnUoJ32sITCBk6tGutvvEmOc2Y+4eMrUvKSoafVy+5IZcTGwLp
3ke5sDNN1tOpzmqbXgWXBsVkpjWf2i0NW0dl5jh8/tN5FtrTuByd193dJGSKzEE=
=IE45
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream;
 name="xsa196-0001-x86-emul-Correct-the-IDT-entry-calculation-in-inject.patch"
Content-Disposition: attachment;
 filename="xsa196-0001-x86-emul-Correct-the-IDT-entry-calculation-in-inject.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KU3ViamVjdDogeDg2L2VtdWw6IENvcnJlY3QgdGhlIElEVCBlbnRyeSBj
YWxjdWxhdGlvbiBpbiBpbmplY3Rfc3dpbnQoKQoKVGhlIGxvZ2ljLCBhcyBp
bnRyb2R1Y2VkIGluIGMvcyAzNmViZjE0ZWJlICJ4ODYvZW11bGF0ZTogc3Vw
cG9ydCBmb3IgZW11bGF0aW5nCnNvZnR3YXJlIGV2ZW50IGluamVjdGlvbiIg
aXMgYnVnZ3kuICBUaGUgc2l6ZSBvZiBhbiBJRFQgZW50cnkgZGVwZW5kcyBv
biBsb25nCm1vZGUgYmVpbmcgYWN0aXZlLCBub3QgdGhlIHdpZHRoIG9mIHRo
ZSBjb2RlIHNlZ21lbnQgY3VycmVudGx5IGluIHVzZS4KCkluIHBhcnRpY3Vs
YXIsIHRoaXMgbWVhbnMgdGhhdCBhIGNvbXBhdGliaWxpdHkgY29kZSBzZWdt
ZW50IHdoaWNoIGhpdHMKZW11bGF0aW9uIGZvciBzb2Z0d2FyZSBldmVudCBp
bmplY3Rpb24gd2lsbCBlbmQgdXAgdXNpbmcgYW4gaW5jb3JyZWN0IG9mZnNl
dAppbiB0aGUgSURUIGZvciBEUEwvUHJlc2VuY2UgY2hlY2tpbmcuICBJbiBw
cmFjdGljZSwgdGhpcyBvbmx5IG9jY3VycyBvbiBvbGQKQU1EIGhhcmR3YXJl
IGxhY2tpbmcgTlJpcCBzdXBwb3J0OyBhbGwgbmV3ZXIgQU1EIGhhcmR3YXJl
LCBhbmQgYWxsIEludGVsCmhhcmR3YXJlIGJ5cGFzcyB0aGlzIHBhdGggaW4g
dGhlIGVtdWxhdG9yLgoKV2hpbGUgaGVyZSwgZml4IGEgbWlub3IgaXNzdWUg
d2l0aCByZWFkaW5nIHRoZSBJRFQgZW50cnkuICBUaGUgcmV0dXJuIHZhbHVl
CmZyb20gb3BzLT5yZWFkKCkgd2Fzbid0IGNoZWNrZWQsIGJ1dCBpbiByZWFs
aXR5IHRoZSBvbmx5IGZhaWx1cmUgY2FzZSBpcyBpZiBhCnBhZ2VmYXVsdCBv
Y2N1cnMuICBUaGlzIGlzIG5vdCBhIHJlYWxpc3RpYyBwcm9ibGVtIGFzIHRo
ZSBrZXJuZWwgd2lsbCBhbG1vc3QKY2VydGFpbmx5IGNyYXNoIHdpdGggYSBk
b3VibGUgZmF1bHQgaWYgdGhpcyBzZXR1cCBhY3R1YWxseSBvY2N1cmVkLgoK
VGhpcyBpcyBwYXJ0IG9mIFhTQS0xOTYuCgpTaWduZWQtb2ZmLWJ5OiBBbmRy
ZXcgQ29vcGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpSZXZpZXdl
ZC1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgotLS0KIHhl
bi9hcmNoL3g4Ni94ODZfZW11bGF0ZS94ODZfZW11bGF0ZS5jIHwgMTUgKysr
KysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS94ZW4vYXJjaC94ODYv
eDg2X2VtdWxhdGUveDg2X2VtdWxhdGUuYyBiL3hlbi9hcmNoL3g4Ni94ODZf
ZW11bGF0ZS94ODZfZW11bGF0ZS5jCmluZGV4IDdhNzA3ZGMuLmY3NGFhOGYg
MTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL3g4Ni94ODZfZW11bGF0ZS94ODZfZW11
bGF0ZS5jCisrKyBiL3hlbi9hcmNoL3g4Ni94ODZfZW11bGF0ZS94ODZfZW11
bGF0ZS5jCkBAIC0xNjMwLDEwICsxNjMwLDE2IEBAIHN0YXRpYyBpbnQgaW5q
ZWN0X3N3aW50KGVudW0geDg2X3N3aW50X3R5cGUgdHlwZSwKICAgICB7CiAg
ICAgICAgIGlmICggIWluX3JlYWxtb2RlKGN0eHQsIG9wcykgKQogICAgICAg
ICB7Ci0gICAgICAgICAgICB1bnNpZ25lZCBpbnQgaWR0ZV9zaXplID0gKGN0
eHQtPmFkZHJfc2l6ZSA9PSA2NCkgPyAxNiA6IDg7Ci0gICAgICAgICAgICB1
bnNpZ25lZCBpbnQgaWR0ZV9vZmZzZXQgPSB2ZWN0b3IgKiBpZHRlX3NpemU7
CisgICAgICAgICAgICB1bnNpZ25lZCBpbnQgaWR0ZV9zaXplLCBpZHRlX29m
ZnNldDsKICAgICAgICAgICAgIHN0cnVjdCBzZWdtZW50X3JlZ2lzdGVyIGlk
dHI7CiAgICAgICAgICAgICB1aW50MzJfdCBpZHRlX2N0bDsKKyAgICAgICAg
ICAgIGludCBsbSA9IGluX2xvbmdtb2RlKGN0eHQsIG9wcyk7CisKKyAgICAg
ICAgICAgIGlmICggbG0gPCAwICkKKyAgICAgICAgICAgICAgICByZXR1cm4g
WDg2RU1VTF9VTkhBTkRMRUFCTEU7CisKKyAgICAgICAgICAgIGlkdGVfc2l6
ZSA9IGxtID8gMTYgOiA4OworICAgICAgICAgICAgaWR0ZV9vZmZzZXQgPSB2
ZWN0b3IgKiBpZHRlX3NpemU7CiAKICAgICAgICAgICAgIC8qIGljZWJwIHNl
dHMgdGhlIEV4dGVybmFsIEV2ZW50IGJpdCBkZXNwaXRlIGJlaW5nIGFuIGlu
c3RydWN0aW9uLiAqLwogICAgICAgICAgICAgZXJyb3JfY29kZSA9ICh2ZWN0
b3IgPDwgMykgfCBFQ09ERV9JRFQgfApAQCAtMTY2MSw4ICsxNjY3LDkgQEAg
c3RhdGljIGludCBpbmplY3Rfc3dpbnQoZW51bSB4ODZfc3dpbnRfdHlwZSB0
eXBlLAogICAgICAgICAgICAgICogU2hvdWxkIHN0cmljdGx5IHNwZWFraW5n
IHJlYWQgYWxsIDgvMTYgYnl0ZXMgb2YgYW4gZW50cnksCiAgICAgICAgICAg
ICAgKiBidXQgd2UgY3VycmVudGx5IG9ubHkgY2FyZSBhYm91dCB0aGUgZHBs
IGFuZCBwcmVzZW50IGJpdHMuCiAgICAgICAgICAgICAgKi8KLSAgICAgICAg
ICAgIG9wcy0+cmVhZCh4ODZfc2VnX25vbmUsIGlkdHIuYmFzZSArIGlkdGVf
b2Zmc2V0ICsgNCwKLSAgICAgICAgICAgICAgICAgICAgICAmaWR0ZV9jdGws
IHNpemVvZihpZHRlX2N0bCksIGN0eHQpOworICAgICAgICAgICAgaWYgKCAo
cmMgPSBvcHMtPnJlYWQoeDg2X3NlZ19ub25lLCBpZHRyLmJhc2UgKyBpZHRl
X29mZnNldCArIDQsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAmaWR0ZV9jdGwsIHNpemVvZihpZHRlX2N0bCksIGN0eHQpKSApCisgICAg
ICAgICAgICAgICAgZ290byBkb25lOwogCiAgICAgICAgICAgICAvKiBJcyB0
aGlzIGVudHJ5IHByZXNlbnQ/ICovCiAgICAgICAgICAgICBpZiAoICEoaWR0
ZV9jdGwgJiAoMXUgPDwgMTUpKSApCg==

--=separator
Content-Type: application/octet-stream;
 name="xsa196-0002-x86-svm-Fix-injection-of-software-interrupts.patch"
Content-Disposition: attachment;
 filename="xsa196-0002-x86-svm-Fix-injection-of-software-interrupts.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KU3ViamVjdDogeDg2L3N2bTogRml4IGluamVjdGlvbiBvZiBzb2Z0d2Fy
ZSBpbnRlcnJ1cHRzCgpUaGUgbm9uLU5leHRSaXAgbG9naWMgaW4gYy9zIDM2
ZWJmMTRlYiAieDg2L2VtdWxhdGU6IHN1cHBvcnQgZm9yIGVtdWxhdGluZwpz
b2Z0d2FyZSBldmVudCBpbmplY3Rpb24iIHdhcyBiYXNlZCBvbiBhbiBvbGRl
ciB2ZXJzaW9uIG9mIHRoZSBBTUQgc29mdHdhcmUKbWFudWFsLiAgVGhlIG1h
bnVhbCB3YXMgbGF0ZXIgY29ycmVjdGVkLCBmb2xsb3dpbmcgZmluZGluZ3Mg
ZnJvbSB0aGF0IHNlcmllcy4KCkkgdG9vayB0aGUgb3JpZ2luYWwgd29yZGlu
ZyBvZiAibm90IHN1cHBvcnRlZCB3aXRob3V0IE5leHRSSVAiIHRvIG1lYW4g
dGhhdApYODZfRVZFTlRUWVBFX1NXX0lOVEVSUlVQVCB3YXMgbm90IGVsaWdp
YmxlIGZvciB1c2UuICBJdCB0dXJucyBvdXQgdGhhdCB0aGlzCmlzIG5vdCB0
aGUgY2FzZSwgYW5kIHRoZSBuZXcgd29yZGluZyBpcyBjbGVhcmVyIG9uIHRo
ZSBtYXR0ZXIuCgpEZXNwaXRlIHRlc3RpbmcgdGhlIG9yaWdpbmFsIHBhdGNo
IHNlcmllcyBvbiBub24tTlJpcCBoYXJkd2FyZSwgdGhlCnN3aW50LWVtdWxh
dGlvbiBYVEYgdGVzdCBjYXNlIGZvY3VzZXMgb24gdGhlIGRlYnVnIHZlY3Rv
cnM7IGl0IG5ldmVyIGVuZGVkIHVwCmV4ZWN1dGluZyBhbiBgaW50ICRuYCBp
bnN0cnVjdGlvbiBmb3IgYSB2ZWN0b3Igd2hpY2ggd2Fzbid0IGFsc28gYW4g
ZXhjZXB0aW9uLgoKRHVyaW5nIGEgdm1lbnRyeSwgdGhlIHVzZSBvZiBYODZf
RVZFTlRUWVBFX0hXX0VYQ0VQVElPTiBjb21lcyB3aXRoIGEgdmVjdG9yCmNo
ZWNrIHRvIGVuc3VyZSB0aGF0IGl0IGlzIG9ubHkgdXNlZCB3aXRoIGV4Y2Vw
dGlvbiB2ZWN0b3JzLiAgWGVuJ3MgdXNlIG9mClg4Nl9FVkVOVFRZUEVfSFdf
RVhDRVBUSU9OIGZvciBgaW50ICRuYCBpbmplY3Rpb24gaGFzIGFsd2F5cyBi
ZWVuIGJ1Z2d5IG9uIEFNRApoYXJkd2FyZS4KCkZpeCB0aGlzIGJ5IGFsd2F5
cyB1c2luZyBYODZfRVZFTlRUWVBFX1NXX0lOVEVSUlVQVC4KClByaW50IGFu
ZCBkZWNvZGUgdGhlIGV2ZW50aW5qIGluZm9ybWF0aW9uIGluIHN2bV92bWNi
X2R1bXAoKSwgYXMgaXQgaGFzCnNldmVyYWwgaW52YWxpZCBjb21iaW5hdGlv
bnMgd2hpY2ggY2F1c2Ugdm1lbnRyeSBmYWlsdXJlcy4KClRoaXMgaXMgcGFy
dCBvZiBYU0EtMTk2LgoKU2lnbmVkLW9mZi1ieTogQW5kcmV3IENvb3BlciA8
YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEphbiBC
ZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KLS0tCiB4ZW4vYXJjaC94ODYv
aHZtL3N2bS9zdm0uYyAgICAgIHwgMTMgKysrKystLS0tLS0tLQogeGVuL2Fy
Y2gveDg2L2h2bS9zdm0vc3ZtZGVidWcuYyB8ICA0ICsrKysKIDIgZmlsZXMg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3hlbi9hcmNoL3g4Ni9odm0vc3ZtL3N2bS5jIGIveGVuL2Fy
Y2gveDg2L2h2bS9zdm0vc3ZtLmMKaW5kZXggNDM5MTc0NC4uNzZlZmMzZSAx
MDA2NDQKLS0tIGEveGVuL2FyY2gveDg2L2h2bS9zdm0vc3ZtLmMKKysrIGIv
eGVuL2FyY2gveDg2L2h2bS9zdm0vc3ZtLmMKQEAgLTEyMzEsMTcgKzEyMzEs
MTQgQEAgc3RhdGljIHZvaWQgc3ZtX2luamVjdF90cmFwKGNvbnN0IHN0cnVj
dCBodm1fdHJhcCAqdHJhcCkKICAgICB7CiAgICAgY2FzZSBYODZfRVZFTlRU
WVBFX1NXX0lOVEVSUlVQVDogLyogaW50ICRuICovCiAgICAgICAgIC8qCi0g
ICAgICAgICAqIEluamVjdGlvbiB0eXBlIDQgKHNvZnR3YXJlIGludGVycnVw
dCkgaXMgb25seSBzdXBwb3J0ZWQgd2l0aAotICAgICAgICAgKiBOZXh0UklQ
IHN1cHBvcnQuICBXaXRob3V0IE5leHRSSVAsIHRoZSBlbXVsYXRvciB3aWxs
IGhhdmUgcGVyZm9ybWVkCi0gICAgICAgICAqIERQTCBhbmQgcHJlc2VuY2Ug
Y2hlY2tzIGZvciB1cy4KKyAgICAgICAgICogU29mdHdhcmUgaW50ZXJydXB0
cyAodHlwZSA0KSBjYW5ub3QgYmUgcHJvcGVybHkgaW5qZWN0ZWQgaWYgdGhl
CisgICAgICAgICAqIHByb2Nlc3NvciBkb2Vzbid0IHN1cHBvcnQgTmV4dFJJ
UC4gIFdpdGhvdXQgTmV4dFJJUCwgdGhlIGVtdWxhdG9yCisgICAgICAgICAq
IHdpbGwgaGF2ZSBwZXJmb3JtZWQgRFBMIGFuZCBwcmVzZW5jZSBjaGVja3Mg
Zm9yIHVzLCBhbmQgd2lsbCBoYXZlCisgICAgICAgICAqIG1vdmVkIGVpcCBm
b3J3YXJkIGlmIGFwcHJvcHJpYXRlLgogICAgICAgICAgKi8KICAgICAgICAg
aWYgKCBjcHVfaGFzX3N2bV9ucmlwcyApCi0gICAgICAgIHsKICAgICAgICAg
ICAgIHZtY2ItPm5leHRyaXAgPSByZWdzLT5laXAgKyBfdHJhcC5pbnNuX2xl
bjsKLSAgICAgICAgICAgIGV2ZW50LmZpZWxkcy50eXBlID0gWDg2X0VWRU5U
VFlQRV9TV19JTlRFUlJVUFQ7Ci0gICAgICAgIH0KLSAgICAgICAgZWxzZQot
ICAgICAgICAgICAgZXZlbnQuZmllbGRzLnR5cGUgPSBYODZfRVZFTlRUWVBF
X0hXX0VYQ0VQVElPTjsKKyAgICAgICAgZXZlbnQuZmllbGRzLnR5cGUgPSBY
ODZfRVZFTlRUWVBFX1NXX0lOVEVSUlVQVDsKICAgICAgICAgYnJlYWs7CiAK
ICAgICBjYXNlIFg4Nl9FVkVOVFRZUEVfUFJJX1NXX0VYQ0VQVElPTjogLyog
aWNlYnAgKi8KZGlmZiAtLWdpdCBhL3hlbi9hcmNoL3g4Ni9odm0vc3ZtL3N2
bWRlYnVnLmMgYi94ZW4vYXJjaC94ODYvaHZtL3N2bS9zdm1kZWJ1Zy5jCmlu
ZGV4IGRlZDVkMTkuLmY5M2RmZWQgMTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL3g4
Ni9odm0vc3ZtL3N2bWRlYnVnLmMKKysrIGIveGVuL2FyY2gveDg2L2h2bS9z
dm0vc3ZtZGVidWcuYwpAQCAtNDgsNiArNDgsMTAgQEAgdm9pZCBzdm1fdm1j
Yl9kdW1wKGNvbnN0IGNoYXIgKmZyb20sIHN0cnVjdCB2bWNiX3N0cnVjdCAq
dm1jYikKICAgICAgICAgICAgdm1jYi0+dGxiX2NvbnRyb2wsCiAgICAgICAg
ICAgICh1bnNpZ25lZCBsb25nIGxvbmcpdm1jYi0+X3ZpbnRyLmJ5dGVzLAog
ICAgICAgICAgICAodW5zaWduZWQgbG9uZyBsb25nKXZtY2ItPmludGVycnVw
dF9zaGFkb3cpOworICAgIHByaW50aygiZXZlbnRpbmogJTAxNiJQUkl4NjQi
LCB2YWxpZD8gJWQsIGVjPyAlZCwgdHlwZSAldSwgdmVjdG9yICUjeFxuIiwK
KyAgICAgICAgICAgdm1jYi0+ZXZlbnRpbmouYnl0ZXMsIHZtY2ItPmV2ZW50
aW5qLmZpZWxkcy52LAorICAgICAgICAgICB2bWNiLT5ldmVudGluai5maWVs
ZHMuZXYsIHZtY2ItPmV2ZW50aW5qLmZpZWxkcy50eXBlLAorICAgICAgICAg
ICB2bWNiLT5ldmVudGluai5maWVsZHMudmVjdG9yKTsKICAgICBwcmludGso
ImV4aXRjb2RlID0gJSNMeCBleGl0aW50aW5mbyA9ICUjTHhcbiIsCiAgICAg
ICAgICAgICh1bnNpZ25lZCBsb25nIGxvbmcpdm1jYi0+ZXhpdGNvZGUsCiAg
ICAgICAgICAgICh1bnNpZ25lZCBsb25nIGxvbmcpdm1jYi0+ZXhpdGludGlu
Zm8uYnl0ZXMpOwo=

--=separator--
