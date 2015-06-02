X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13001" "Tuesday" "2" "June" "2015" "14:04:48" "+0000" "Xen.org security team" "security@xen.org" "<E1YzmoC-0001pV-KC@xenbits.xen.org>" "282" "[oss-security] Xen Security Advisory 130 (CVE-2015-4105) - Guest triggerable qemu MSI-X pass-through error messages" nil nil nil "6" "2015060214:04:48" "[oss-security] Xen Security Advisory 130 (CVE-2015-4105) - Guest triggerable qemu MSI-X pass-through error messages" (number mark "        security@xen Jun  2  282/13001 " thread-indent "\"[oss-security] Xen Security Advisory 130 (CVE-2015-4105) - Guest triggerable qemu MSI-X pass-through error messages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4022 invoked by uid 550); 2 Jun 2015 14:05:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1810 invoked from network); 2 Jun 2015 14:05:05 -0000
Message-Id: <E1YzmoC-0001pV-KC@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Tue, 02 Jun 2015 14:04:48 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 130 (CVE-2015-4105) - Guest triggerable
 qemu MSI-X pass-through error messages
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-4105 / XSA-130
                              version 2

         Guest triggerable qemu MSI-X pass-through error messages

UPDATES IN VERSION 2
====================

Public release.

CVE assigned.

ISSUE DESCRIPTION
=================

Device model code dealing with guest PCI MSI-X interrupt management
activities logs messages on certain (supposedly) invalid guest
operations.

IMPACT
======

A buggy or malicious guest repeatedly invoking such operations may
result in the host disk to fill up, possibly leading to a Denial of
Service.

VULNERABLE SYSTEMS
==================

Xen versions 3.3 and onwards are vulnerable due to supporting PCI
pass-through.

Only x86 systems are vulnerable.  ARM systems are not vulnerable.

Only HVM guests with their device model run in Dom0 can take advantage
of this vulnerability.

Only HVM guests which have been granted access to physical PCI devices
(`PCI passthrough') can take advantage of this vulnerability.

Furthermore, the vulnerability is only applicable when the
passed-through PCI devices are MSI-X capable.  (Many modern devices
are.)

MITIGATION
==========

This issue can be avoided by not assigning MSI-X capable PCI devices to
untrusted HVM guests.

This issue can also be avoided by only using PV guests.

It can also be avoided by configuring HVM guests with their device
model run in a separate (stub) domain.  (When using xl, this can be
requested with "device_model_stubdomain_override=1" in the domain
configuration file.)

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa130-qemuu.patch           qemu-upstream-unstable, Xen 4.5.x, Xen 4.4.x
xsa130-qemuu-4.3.patch       Xen 4.3.x
xsa130-qemut.patch           qemu-xen-unstable, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x, Xen 4.2.x

$ sha256sum xsa130*.patch
0ed6d75b6758c43a3042994f5127cb69d03796acf5c4d305d7ec2486500753da  xsa130-qemut.patch
fd6e835e945c2eee197f9e18501aeefb6e1d33a714f6ce66c16481d5aca8fcd0  xsa130-qemuu-4.3.patch
87fb70041d1fe9c997461c4a6fdaf9157667ec2eff7c77b8db6ee8f9d730753d  xsa130-qemuu.patch
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

iQEcBAEBAgAGBQJVbbdWAAoJEIP+FMlX6CvZhyIH/3VkV4yhOpHsYzHEdkcikqTP
w3KzOsPqtZs2++XWN48Ewpt1Dy12vLkq65hljfvHj9AIWmB0qgWXNC51lkkIFffT
KgcNuUbuJkyy+hNk7K/OWblXbehTrSIAWkl13xKymIQYiS+UN8TYp9kM7QIFkYh2
GGJlCzTljnxeKFZY0z7uW6OKnZzBkdcGmRS5tyH+cqikfAEDSGaV7ffSC0mukd0/
LrTodM+0+8C40znDAyjUiz91YfGXyXtTTEKvmPzdhiv9Fsp3FZ6kMkSGPhcAUUUh
WJmP23QXwm1Tt0qZn9wp1w1DmgihkDoS9Jdw/as29qSCNE2UrfsXaPghGkujQTU=
=KrtH
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa130-qemut.patch"
Content-Disposition: attachment; filename="xsa130-qemut.patch"
Content-Transfer-Encoding: base64

eGVuL01TSS1YOiBkaXNhYmxlIGxvZ2dpbmcgYnkgZGVmYXVsdAoKLi4uIHRv
IGF2b2lkIGFsbG93aW5nIHRoZSBndWVzdCB0byBjYXVzZSB0aGUgY29udHJv
bCBkb21haW4ncyBkaXNrIHRvCmZpbGwuCgpUaGlzIGlzIFhTQS0xMzAuCgpT
aWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+
ClJldmlld2VkLWJ5OiBTdGVmYW5vIFN0YWJlbGxpbmkgPHN0ZWZhbm8uc3Rh
YmVsbGluaUBldS5jaXRyaXguY29tPgoKLS0tIGEvaHcvcGFzcy10aHJvdWdo
LmgKKysrIGIvaHcvcGFzcy10aHJvdWdoLmgKQEAgLTI3LDcgKzI3LDcgQEAK
ICNpbmNsdWRlICJxZW11LXRpbWVyLmgiCiAKIC8qIExvZyBhY2Vzc3MgKi8K
LSNkZWZpbmUgUFRfTE9HR0lOR19FTkFCTEVECisvKiAjZGVmaW5lIFBUX0xP
R0dJTkdfRU5BQkxFRCAqLwogCiAvKiBQcmludCBlcnJvcnMgZXZlbiBpZiBs
b2dnaW5nIGlzIGRpc2FibGVkICovCiAjZGVmaW5lIFBUX0VSUihfZiwgX2Eu
Li4pICAgZnByaW50Zihsb2dmaWxlLCAiJXM6ICIgX2YsIF9fZnVuY19fLCAj
I19hKQo=

--=separator
Content-Type: application/octet-stream; name="xsa130-qemuu-4.3.patch"
Content-Disposition: attachment; filename="xsa130-qemuu-4.3.patch"
Content-Transfer-Encoding: base64

eGVuL01TSS1YOiBsaW1pdCBlcnJvciBtZXNzYWdlcyByZXN1bHRpbmcgZnJv
bSBiYWQgZ3Vlc3QgYmVoYXZpb3IKCi4uLiB0byBhdm9pZCBhbGxvd2luZyB0
aGUgZ3Vlc3QgdG8gY2F1c2UgdGhlIGNvbnRyb2wgZG9tYWluJ3MgZGlzayB0
bwpmaWxsLgoKVGhlIGZpcnN0IG1lc3NhZ2UgaW4gcGNpX21zaXhfd3JpdGUo
KSBjYW4gc2ltcGx5IGJlIGRlbGV0ZWQsIGFzIHRoaXMKaXMgaW5kZWVkIGJh
ZCBndWVzdCBiZWhhdmlvciwgYnV0IHN1Y2ggb3V0IG9mIGJvdW5kcyB3cml0
ZXMgZG9uJ3QKcmVhbGx5IG5lZWQgdG8gYmUgbG9nZ2VkLgoKVGhlIHNlY29u
ZCBvbmUgaXMgbW9yZSBwcm9ibGVtYXRpYywgYXMgdGhlcmUgZ3Vlc3QgYmVo
YXZpb3IgbWF5IG9ubHkKYXBwZWFyIHRvIGJlIHdyb25nOiBGb3Igb25lLCB0
aGUgb2xkIGxvZ2ljIGRpZG4ndCB0YWtlIHRoZSBtYXNrLWFsbCBiaXQKaW50
byBhY2NvdW50LiBBbmQgdGhlbiB0aGlzIHNob3VsZG4ndCBkZXBlbmQgb24g
aG9zdCBkZXZpY2Ugc3RhdGUgKGkuZS4KdGhlIGhvc3QgbWF5IGhhdmUgbWFz
a2VkIHRoZSBlbnRyeSB3aXRob3V0IHRoZSBndWVzdCBoYXZpbmcgZG9uZSBz
bykuClBsdXMgdGhlc2Ugd3JpdGVzIHNob3VsZG4ndCBiZSBkcm9wcGVkIGV2
ZW4gd2hlbiBhbiBlbnRyeSBpcyB1bm1hc2tlZC4KSW5zdGVhZCwgaWYgdGhl
eSBjYW4ndCBiZSBtYWRlIHRha2UgZWZmZWN0IHJpZ2h0IGF3YXksIHRoZXkg
c2hvdWxkIHRha2UKZWZmZWN0IG9uIHRoZSBuZXh0IHVubWFza2luZyBvciBl
bmFibGluZyBvcGVyYXRpb24gLSB0aGUgc3BlY2lmaWNhdGlvbgpleHBsaWNp
dGx5IGRlc2NyaWJlcyBzdWNoIGNhY2hpbmcgYmVoYXZpb3IuIFVudGlsIHdl
IGNhbiB2YWxpZGx5IGRyb3AKdGhlIG1lc3NhZ2UgKGltcGxlbWVudGluZyBz
dWNoIGNhY2hpbmcvbGF0Y2hpbmcgYmVoYXZpb3IpLCBpc3N1ZSB0aGUKbWVz
c2FnZSBqdXN0IG9uY2UgcGVyIE1TSS1YIHRhYmxlIGVudHJ5LgoKTm90ZSB0
aGF0IHRoZSBsb2cgbWVzc2FnZSBpbiBwY2lfbXNpeF9yZWFkKCkgc2ltaWxh
ciB0byB0aGUgb25lIGJlaW5nCnJlbW92ZWQgaGVyZSBpcyBub3QgYW4gaXNz
dWU6ICJhZGRyIiBiZWluZyBvZiB1bnNpZ25lZCB0eXBlLCBhbmQgdGhlCm1h
eGltdW0gc2l6ZSBvZiB0aGUgTVNJLVggdGFibGUgYmVpbmcgMzJrLCBlbnRy
eV9uciBzaW1wbHkgY2FuJ3QgYmUKbmVnYXRpdmUgYW5kIGhlbmNlIHRoZSBj
b25kaXRvbmFsIGd1YXJkaW5nIGlzc3Vpbmcgb2YgdGhlIG1lc3NhZ2Ugd2ls
bApuZXZlciBiZSB0cnVlLgoKVGhpcyBpcyBYU0EtMTMwLgoKU2lnbmVkLW9m
Zi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpSZXZpZXdl
ZC1ieTogU3RlZmFubyBTdGFiZWxsaW5pIDxzdGVmYW5vLnN0YWJlbGxpbmlA
ZXUuY2l0cml4LmNvbT4KCi0tLSBhL2h3L3hlbl9wdC5oCisrKyBiL2h3L3hl
bl9wdC5oCkBAIC0xNzUsNiArMTc1LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgWGVu
UFRNU0lYRW50cnkgewogICAgIHVpbnQzMl90IGRhdGE7CiAgICAgdWludDMy
X3QgdmVjdG9yX2N0cmw7CiAgICAgYm9vbCB1cGRhdGVkOyAvKiBpbmRpY2F0
ZSB3aGV0aGVyIE1TSSBBRERSIG9yIERBVEEgaXMgdXBkYXRlZCAqLworICAg
IGJvb2wgd2FybmVkOyAgLyogYXZvaWQgaXNzdWluZyAoYm9ndXMpIHdhcm5p
bmcgbW9yZSB0aGFuIG9uY2UgKi8KIH0gWGVuUFRNU0lYRW50cnk7CiB0eXBl
ZGVmIHN0cnVjdCBYZW5QVE1TSVggewogICAgIHVpbnQzMl90IGN0cmxfb2Zm
c2V0OwotLS0gYS9ody94ZW5fcHRfbXNpLmMKKysrIGIvaHcveGVuX3B0X21z
aS5jCkBAIC00MzMsMTEgKzQzMywxMCBAQCBzdGF0aWMgdm9pZCBwY2lfbXNp
eF93cml0ZSh2b2lkICpvcGFxdWUsCiAgICAgWGVuUENJUGFzc3Rocm91Z2hT
dGF0ZSAqcyA9IG9wYXF1ZTsKICAgICBYZW5QVE1TSVggKm1zaXggPSBzLT5t
c2l4OwogICAgIFhlblBUTVNJWEVudHJ5ICplbnRyeTsKLSAgICBpbnQgZW50
cnlfbnIsIG9mZnNldDsKKyAgICB1bnNpZ25lZCBpbnQgZW50cnlfbnIsIG9m
ZnNldDsKIAogICAgIGVudHJ5X25yID0gYWRkciAvIFBDSV9NU0lYX0VOVFJZ
X1NJWkU7Ci0gICAgaWYgKGVudHJ5X25yIDwgMCB8fCBlbnRyeV9uciA+PSBt
c2l4LT50b3RhbF9lbnRyaWVzKSB7Ci0gICAgICAgIFhFTl9QVF9FUlIoJnMt
PmRldiwgImFza2VkIE1TSS1YIGVudHJ5ICclaScgaW52YWxpZCFcbiIsIGVu
dHJ5X25yKTsKKyAgICBpZiAoZW50cnlfbnIgPj0gbXNpeC0+dG90YWxfZW50
cmllcykgewogICAgICAgICByZXR1cm47CiAgICAgfQogICAgIGVudHJ5ID0g
Jm1zaXgtPm1zaXhfZW50cnlbZW50cnlfbnJdOwpAQCAtNDU4LDggKzQ1Nywx
MSBAQCBzdGF0aWMgdm9pZCBwY2lfbXNpeF93cml0ZSh2b2lkICpvcGFxdWUs
CiAgICAgICAgICAgICArIFBDSV9NU0lYX0VOVFJZX1ZFQ1RPUl9DVFJMOwog
CiAgICAgICAgIGlmIChtc2l4LT5lbmFibGVkICYmICEoKnZlY19jdHJsICYg
UENJX01TSVhfRU5UUllfQ1RSTF9NQVNLQklUKSkgewotICAgICAgICAgICAg
WEVOX1BUX0VSUigmcy0+ZGV2LCAiQ2FuJ3QgdXBkYXRlIG1zaXggZW50cnkg
JWQgc2luY2UgTVNJLVggaXMiCi0gICAgICAgICAgICAgICAgICAgICAgICIg
YWxyZWFkeSBlbmFibGVkLlxuIiwgZW50cnlfbnIpOworICAgICAgICAgICAg
aWYgKCFlbnRyeS0+d2FybmVkKSB7CisgICAgICAgICAgICAgICAgZW50cnkt
Pndhcm5lZCA9IHRydWU7CisgICAgICAgICAgICAgICAgWEVOX1BUX0VSUigm
cy0+ZGV2LCAiQ2FuJ3QgdXBkYXRlIG1zaXggZW50cnkgJWQgc2luY2UgTVNJ
LVggaXMiCisgICAgICAgICAgICAgICAgICAgICAgICAgICAiIGFscmVhZHkg
ZW5hYmxlZC5cbiIsIGVudHJ5X25yKTsKKyAgICAgICAgICAgIH0KICAgICAg
ICAgICAgIHJldHVybjsKICAgICAgICAgfQogCg==

--=separator
Content-Type: application/octet-stream; name="xsa130-qemuu.patch"
Content-Disposition: attachment; filename="xsa130-qemuu.patch"
Content-Transfer-Encoding: base64

eGVuL01TSS1YOiBsaW1pdCBlcnJvciBtZXNzYWdlcyByZXN1bHRpbmcgZnJv
bSBiYWQgZ3Vlc3QgYmVoYXZpb3IKCi4uLiB0byBhdm9pZCBhbGxvd2luZyB0
aGUgZ3Vlc3QgdG8gY2F1c2UgdGhlIGNvbnRyb2wgZG9tYWluJ3MgZGlzayB0
bwpmaWxsLgoKVGhlIGZpcnN0IG1lc3NhZ2UgaW4gcGNpX21zaXhfd3JpdGUo
KSBjYW4gc2ltcGx5IGJlIGRlbGV0ZWQsIGFzIHRoaXMKaXMgaW5kZWVkIGJh
ZCBndWVzdCBiZWhhdmlvciwgYnV0IHN1Y2ggb3V0IG9mIGJvdW5kcyB3cml0
ZXMgZG9uJ3QKcmVhbGx5IG5lZWQgdG8gYmUgbG9nZ2VkLgoKVGhlIHNlY29u
ZCBvbmUgaXMgbW9yZSBwcm9ibGVtYXRpYywgYXMgdGhlcmUgZ3Vlc3QgYmVo
YXZpb3IgbWF5IG9ubHkKYXBwZWFyIHRvIGJlIHdyb25nOiBGb3Igb25lLCB0
aGUgb2xkIGxvZ2ljIGRpZG4ndCB0YWtlIHRoZSBtYXNrLWFsbCBiaXQKaW50
byBhY2NvdW50LiBBbmQgdGhlbiB0aGlzIHNob3VsZG4ndCBkZXBlbmQgb24g
aG9zdCBkZXZpY2Ugc3RhdGUgKGkuZS4KdGhlIGhvc3QgbWF5IGhhdmUgbWFz
a2VkIHRoZSBlbnRyeSB3aXRob3V0IHRoZSBndWVzdCBoYXZpbmcgZG9uZSBz
bykuClBsdXMgdGhlc2Ugd3JpdGVzIHNob3VsZG4ndCBiZSBkcm9wcGVkIGV2
ZW4gd2hlbiBhbiBlbnRyeSBpcyB1bm1hc2tlZC4KSW5zdGVhZCwgaWYgdGhl
eSBjYW4ndCBiZSBtYWRlIHRha2UgZWZmZWN0IHJpZ2h0IGF3YXksIHRoZXkg
c2hvdWxkIHRha2UKZWZmZWN0IG9uIHRoZSBuZXh0IHVubWFza2luZyBvciBl
bmFibGluZyBvcGVyYXRpb24gLSB0aGUgc3BlY2lmaWNhdGlvbgpleHBsaWNp
dGx5IGRlc2NyaWJlcyBzdWNoIGNhY2hpbmcgYmVoYXZpb3IuIFVudGlsIHdl
IGNhbiB2YWxpZGx5IGRyb3AKdGhlIG1lc3NhZ2UgKGltcGxlbWVudGluZyBz
dWNoIGNhY2hpbmcvbGF0Y2hpbmcgYmVoYXZpb3IpLCBpc3N1ZSB0aGUKbWVz
c2FnZSBqdXN0IG9uY2UgcGVyIE1TSS1YIHRhYmxlIGVudHJ5LgoKTm90ZSB0
aGF0IHRoZSBsb2cgbWVzc2FnZSBpbiBwY2lfbXNpeF9yZWFkKCkgc2ltaWxh
ciB0byB0aGUgb25lIGJlaW5nCnJlbW92ZWQgaGVyZSBpcyBub3QgYW4gaXNz
dWU6ICJhZGRyIiBiZWluZyBvZiB1bnNpZ25lZCB0eXBlLCBhbmQgdGhlCm1h
eGltdW0gc2l6ZSBvZiB0aGUgTVNJLVggdGFibGUgYmVpbmcgMzJrLCBlbnRy
eV9uciBzaW1wbHkgY2FuJ3QgYmUKbmVnYXRpdmUgYW5kIGhlbmNlIHRoZSBj
b25kaXRvbmFsIGd1YXJkaW5nIGlzc3Vpbmcgb2YgdGhlIG1lc3NhZ2Ugd2ls
bApuZXZlciBiZSB0cnVlLgoKVGhpcyBpcyBYU0EtMTMwLgoKU2lnbmVkLW9m
Zi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpSZXZpZXdl
ZC1ieTogU3RlZmFubyBTdGFiZWxsaW5pIDxzdGVmYW5vLnN0YWJlbGxpbmlA
ZXUuY2l0cml4LmNvbT4KCi0tLSBhL2h3L3hlbi94ZW5fcHQuaAorKysgYi9o
dy94ZW4veGVuX3B0LmgKQEAgLTE3NSw2ICsxNzUsNyBAQCB0eXBlZGVmIHN0
cnVjdCBYZW5QVE1TSVhFbnRyeSB7CiAgICAgdWludDMyX3QgZGF0YTsKICAg
ICB1aW50MzJfdCB2ZWN0b3JfY3RybDsKICAgICBib29sIHVwZGF0ZWQ7IC8q
IGluZGljYXRlIHdoZXRoZXIgTVNJIEFERFIgb3IgREFUQSBpcyB1cGRhdGVk
ICovCisgICAgYm9vbCB3YXJuZWQ7ICAvKiBhdm9pZCBpc3N1aW5nIChib2d1
cykgd2FybmluZyBtb3JlIHRoYW4gb25jZSAqLwogfSBYZW5QVE1TSVhFbnRy
eTsKIHR5cGVkZWYgc3RydWN0IFhlblBUTVNJWCB7CiAgICAgdWludDMyX3Qg
Y3RybF9vZmZzZXQ7Ci0tLSBhL2h3L3hlbi94ZW5fcHRfbXNpLmMKKysrIGIv
aHcveGVuL3hlbl9wdF9tc2kuYwpAQCAtNDM0LDExICs0MzQsMTAgQEAgc3Rh
dGljIHZvaWQgcGNpX21zaXhfd3JpdGUodm9pZCAqb3BhcXVlLAogICAgIFhl
blBDSVBhc3N0aHJvdWdoU3RhdGUgKnMgPSBvcGFxdWU7CiAgICAgWGVuUFRN
U0lYICptc2l4ID0gcy0+bXNpeDsKICAgICBYZW5QVE1TSVhFbnRyeSAqZW50
cnk7Ci0gICAgaW50IGVudHJ5X25yLCBvZmZzZXQ7CisgICAgdW5zaWduZWQg
aW50IGVudHJ5X25yLCBvZmZzZXQ7CiAKICAgICBlbnRyeV9uciA9IGFkZHIg
LyBQQ0lfTVNJWF9FTlRSWV9TSVpFOwotICAgIGlmIChlbnRyeV9uciA8IDAg
fHwgZW50cnlfbnIgPj0gbXNpeC0+dG90YWxfZW50cmllcykgewotICAgICAg
ICBYRU5fUFRfRVJSKCZzLT5kZXYsICJhc2tlZCBNU0ktWCBlbnRyeSAnJWkn
IGludmFsaWQhXG4iLCBlbnRyeV9ucik7CisgICAgaWYgKGVudHJ5X25yID49
IG1zaXgtPnRvdGFsX2VudHJpZXMpIHsKICAgICAgICAgcmV0dXJuOwogICAg
IH0KICAgICBlbnRyeSA9ICZtc2l4LT5tc2l4X2VudHJ5W2VudHJ5X25yXTsK
QEAgLTQ2MCw4ICs0NTksMTEgQEAgc3RhdGljIHZvaWQgcGNpX21zaXhfd3Jp
dGUodm9pZCAqb3BhcXVlLAogICAgICAgICAgICAgKyBQQ0lfTVNJWF9FTlRS
WV9WRUNUT1JfQ1RSTDsKIAogICAgICAgICBpZiAobXNpeC0+ZW5hYmxlZCAm
JiAhKCp2ZWNfY3RybCAmIFBDSV9NU0lYX0VOVFJZX0NUUkxfTUFTS0JJVCkp
IHsKLSAgICAgICAgICAgIFhFTl9QVF9FUlIoJnMtPmRldiwgIkNhbid0IHVw
ZGF0ZSBtc2l4IGVudHJ5ICVkIHNpbmNlIE1TSS1YIGlzIgotICAgICAgICAg
ICAgICAgICAgICAgICAiIGFscmVhZHkgZW5hYmxlZC5cbiIsIGVudHJ5X25y
KTsKKyAgICAgICAgICAgIGlmICghZW50cnktPndhcm5lZCkgeworICAgICAg
ICAgICAgICAgIGVudHJ5LT53YXJuZWQgPSB0cnVlOworICAgICAgICAgICAg
ICAgIFhFTl9QVF9FUlIoJnMtPmRldiwgIkNhbid0IHVwZGF0ZSBtc2l4IGVu
dHJ5ICVkIHNpbmNlIE1TSS1YIGlzIgorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIiBhbHJlYWR5IGVuYWJsZWQuXG4iLCBlbnRyeV9ucik7CisgICAg
ICAgICAgICB9CiAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgIH0KIAo=

--=separator--
