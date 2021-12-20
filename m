X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10047" "Monday" "20" "December" "2021" "12:04:21" "+0000" "Xen.org security team" "security@xen.org" nil "209" "[oss-security] Xen Security Advisory 376 v1 - frontends vulnerable to backends" nil nil nil "12" nil nil (number mark "U       security@xen Dec 20  209/10047 " thread-indent "\"[oss-security] Xen Security Advisory 376 v1 - frontends vulnerable to backends\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 376 v1 - frontends vulnerable to backends" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11966 invoked by uid 550); 20 Dec 2021 14:16:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13629 invoked from network); 20 Dec 2021 12:04:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=BOtpR7DrIJgh8IGhaIB9OInkz3uQZEba6oQe/UkxA5c=; b=0a7UZPGnpK3+cPCZ1MDGZNIONu
	dFsiIB0MUBQOax8OkYxTHDrSWB2jmsaaE85qnfoWeBFFijMaMUBP+2+6gK8zoPVj6mI+M76czKtPE
	s9qSzgcSiVERzE1nna4MTa/ashVlhEjECNy/KUMNax25IrdYj6N4bUVZbZNwNrd8Vmdc=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1mzHOv-0005Fc-RG@xenbits.xenproject.org>
Date: Mon, 20 Dec 2021 12:04:21 +0000
Subject: [oss-security] Xen Security Advisory 376 v1 - frontends vulnerable to backends

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

                    Xen Security Advisory XSA-376

                   frontends vulnerable to backends

ISSUE DESCRIPTION
=================

Xen offers the ability to run PV backends in regular unprivileged
guests, typically referred to as "driver domains". Running PV backends
in driver domains has one primary security advantage: if a driver domain
gets compromised, it doesn't have the privileges to take over the
system.

However, a malicious driver domain could try to attack other guests via
the PV protocol. Many PV frontends are hardened against misbehaving PV
backends, but a few of them are not and might be susceptible to Denial
of Service attacks and metadata manipulation triggered by malicious PV
backends.

IMPACT
======

Potentially malicious PV backends can cause guest DoS due to unhardened
frontends in the guests, even though this ought to have been prevented by
containing them within a driver domain.

VULNERABLE SYSTEMS
==================

All guests with non-hardened frontends being serviced by potentially
malicious backends are vulnerable, even if those backends are running in a
less privileged environment. The vulnerability is not affecting the host,
but the guests using non-hardened frontends.

The console, block and net frontends have been hardened in the Linux kernel
5.16, so guests running Linux with kernel 5.16 or newer are not currently
known to be vulnerable to potentially malicious console, block or net
backends.

MITIGATION
==========

In case of running potentially malicious backends, using only hardened
frontend counterparts in guests will mitigate the problem.

NOTE REGARDING LACK OF EMBARGO
==============================

This issue was discussed in public already.

RESOLUTION
==========

The related patch is just a clarification of the security statement,
so it will NOT mitigate anything.

As there is no urgent need for this patch to go into the Xen tree it
will be posted on the xen-devel mailing list after disclosure of this
advisory.

xsa376.patch           xen-unstable

$ sha256sum xsa376*
b18551f7800d5a232bbe6953b1222ecb2c5a2058285c6fbc8d64f9b7dea2415f  xsa376.patch
$

-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmG8rFMMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZSP4H/RcD4WLHi3TuSeNspsv/+dNb906LIueHFn/3U5Pg
5Jv8EHjv16apUhzgwTfTtx0pcCCDY2aEq0rdCziGpnTKiYzEarhTuVvc5igy9U0p
jqazRTyUkU1pV6HwFIGi/kHXTUpO60amWgKoFzyM9ZMl6WKDejb2rTu6TJC5FyiE
cxpe79GC98ECw8d131EfQgRx2/TIZuVQmKZlx3vVNG1lBlMZpFX2iioR7ajCQmdu
XWt14kDYdLvmZ1UzlrOH9+jhMRIyFZ1jBZXtXEUN0zSC+aTje6nPO3WSf/gXbmNF
COUrd7JPIMEO8PvnjzM3l1PS3XltIf2wTaVr5LjmkyBoMyM=
=J4gx
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa376.patch"
Content-Disposition: attachment; filename="xsa376.patch"
Content-Transfer-Encoding: base64

RnJvbSAwMmQzYTU3ZDY0NjYzNjNiMzE2YjYwZmZiYmE0MTRhNGEyY2I5MGM1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKdWVyZ2VuIEdyb3Nz
IDxqZ3Jvc3NAc3VzZS5jb20+CkRhdGU6IFRodSwgMjUgTm92IDIwMjEgMTM6
Mzg6MjkgKzAxMDAKU3ViamVjdDogW1BBVENIXSBTVVBQT1JULm1kOiBsaW1p
dCBzdXBwb3J0IHN0YXRlbWVudCBmb3IgTGludXggYW5kIFdpbmRvd3MKIGZy
b250ZW5kcwoKQ2hhbmdlIHRoZSBzdXBwb3J0IHN0YXRlIG9mIExpbnV4IGFu
ZCBXaW5kb3dzIHB2IGZyb250ZW5kcyBmcm9tCiJzdXBwb3J0ZWQiIHRvICJz
dXBwb3J0ZWQgd2l0aCBjYXZlYXRzIiBpbiBvcmRlciB0byByZWZsZWN0IHRo
YXQgdGhlCmZyb250ZW5kcyBjYW4gcHJvYmFibHkgYmUgaGFybWVkIGJ5IHRo
ZWlyIHJlc3BlY3RpdmUgYmFja2VuZHMuCgpTb21lIG9mIHRoZSBMaW51eCBm
cm9udGVuZHMgaGF2ZSBiZWVuIGhhcmRlbmVkIGFscmVhZHkuCgpUaGlzIGlz
IFhTQS0zNzYKClNpZ25lZC1vZmYtYnk6IEp1ZXJnZW4gR3Jvc3MgPGpncm9z
c0BzdXNlLmNvbT4KLS0tCiBTVVBQT1JULm1kIHwgNTcgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9TVVBQT1JULm1kIGIvU1VQUE9SVC5tZAppbmRl
eCAzYTM0OTMzYzg5Li42ZTNlMzA1YjAxIDEwMDY0NAotLS0gYS9TVVBQT1JU
Lm1kCisrKyBiL1NVUFBPUlQubWQKQEAgLTQxMSw3ICs0MTEsMTEgQEAgR3Vl
c3Qtc2lkZSBkcml2ZXIgY2FwYWJsZSBvZiBzcGVha2luZyB0aGUgWGVuIFBW
IGJsb2NrIHByb3RvY29sCiAgICAgU3RhdHVzLCBGcmVlQlNEOiBTdXBwb3J0
ZWQsIFNlY3VyaXR5IHN1cHBvcnQgZXh0ZXJuYWwKICAgICBTdGF0dXMsIE5l
dEJTRDogU3VwcG9ydGVkLCBTZWN1cml0eSBzdXBwb3J0IGV4dGVybmFsCiAg
ICAgU3RhdHVzLCBPcGVuQlNEOiBTdXBwb3J0ZWQsIFNlY3VyaXR5IHN1cHBv
cnQgZXh0ZXJuYWwKLSAgICBTdGF0dXMsIFdpbmRvd3M6IFN1cHBvcnRlZAor
ICAgIFN0YXR1cywgV2luZG93czogU3VwcG9ydGVkLCB3aXRoIGNhdmVhdHMK
KworV2luZG93cyBmcm9udGVuZCBjdXJyZW50bHkgdHJ1c3RzIHRoZSBiYWNr
ZW5kOworYnVncyBpbiB0aGUgZnJvbnRlbmQgd2hpY2ggYWxsb3cgYmFja2Vu
ZCB0byBjYXVzZSBtaXNjaGllZiB3aWxsIG5vdCBiZQorY29uc2lkZXJlZCBz
ZWN1cml0eSB2dWxuZXJhYmlsaXRpZXMuCiAKICMjIyBOZXRmcm9udAogCkBA
IC00MjEsMjAgKzQyNSwzMiBAQCBHdWVzdC1zaWRlIGRyaXZlciBjYXBhYmxl
IG9mIHNwZWFraW5nIHRoZSBYZW4gUFYgbmV0d29ya2luZyBwcm90b2NvbAog
ICAgIFN0YXR1cywgRnJlZUJTRDogU3VwcG9ydGVkLCBTZWN1cml0eSBzdXBw
b3J0IGV4dGVybmFsCiAgICAgU3RhdHVzLCBOZXRCU0Q6IFN1cHBvcnRlZCwg
U2VjdXJpdHkgc3VwcG9ydCBleHRlcm5hbAogICAgIFN0YXR1cywgT3BlbkJT
RDogU3VwcG9ydGVkLCBTZWN1cml0eSBzdXBwb3J0IGV4dGVybmFsCi0gICAg
U3RhdHVzLCBXaW5kb3dzOiBTdXBwb3J0ZWQKKyAgICBTdGF0dXMsIFdpbmRv
d3M6IFN1cHBvcnRlZCwgd2l0aCBjYXZlYXRzCisKK1dpbmRvd3MgZnJvbnRl
bmQgY3VycmVudGx5IHRydXN0cyB0aGUgYmFja2VuZDsKK2J1Z3MgaW4gdGhl
IGZyb250ZW5kIHdoaWNoIGFsbG93IGJhY2tlbmQgdG8gY2F1c2UgbWlzY2hp
ZWYgd2lsbCBub3QgYmUKK2NvbnNpZGVyZWQgc2VjdXJpdHkgdnVsbmVyYWJp
bGl0aWVzLgogCiAjIyMgUFYgRnJhbWVidWZmZXIgKGZyb250ZW5kKQogCiBH
dWVzdC1zaWRlIGRyaXZlciBjYXBhYmxlIG9mIHNwZWFraW5nIHRoZSBYZW4g
UFYgRnJhbWVidWZmZXIgcHJvdG9jb2wKIAotICAgIFN0YXR1cywgTGludXgg
KHhlbi1mYmZyb250KTogU3VwcG9ydGVkCisgICAgU3RhdHVzLCBMaW51eCAo
eGVuLWZiZnJvbnQpOiBTdXBwb3J0ZWQsIHdpdGggY2F2ZWF0cworCitMaW51
eCBmcm9udGVuZCBjdXJyZW50bHkgdHJ1c3RzIHRoZSBiYWNrZW5kOworYnVn
cyBpbiB0aGUgZnJvbnRlbmQgd2hpY2ggYWxsb3cgYmFja2VuZCB0byBjYXVz
ZSBtaXNjaGllZiB3aWxsIG5vdCBiZQorY29uc2lkZXJlZCBzZWN1cml0eSB2
dWxuZXJhYmlsaXRpZXMuCiAKICMjIyBQViBkaXNwbGF5IChmcm9udGVuZCkK
IAogR3Vlc3Qtc2lkZSBkcml2ZXIgY2FwYWJsZSBvZiBzcGVha2luZyB0aGUg
WGVuIFBWIGRpc3BsYXkgcHJvdG9jb2wKIAotICAgIFN0YXR1cywgTGludXg6
IFN1cHBvcnRlZCAob3V0c2lkZSBvZiAiYmFja2VuZCBhbGxvY2F0aW9uIiBt
b2RlKQotICAgIFN0YXR1cywgTGludXg6IEV4cGVyaW1lbnRhbCAoaW4gImJh
Y2tlbmQgYWxsb2NhdGlvbiIgbW9kZSkKKyAgICBTdGF0dXMsIExpbnV4LCBv
dXRzaWRlIG9mICJiYWNrZW5kIGFsbG9jYXRpb24iIG1vZGU6IFN1cHBvcnRl
ZCwgd2l0aCBjYXZlYXRzCisgICAgU3RhdHVzLCBMaW51eCwgImJhY2tlbmQg
YWxsb2NhdGlvbiIgbW9kZTogRXhwZXJpbWVudGFsCisKK0xpbnV4IGZyb250
ZW5kIGN1cnJlbnRseSB0cnVzdHMgdGhlIGJhY2tlbmQ7CitidWdzIGluIHRo
ZSBmcm9udGVuZCB3aGljaCBhbGxvdyBiYWNrZW5kIHRvIGNhdXNlIG1pc2No
aWVmIHdpbGwgbm90IGJlCitjb25zaWRlcmVkIHNlY3VyaXR5IHZ1bG5lcmFi
aWxpdGllcy4KIAogIyMjIFBWIENvbnNvbGUgKGZyb250ZW5kKQogCkBAIC00
NDMsNyArNDU5LDExIEBAIEd1ZXN0LXNpZGUgZHJpdmVyIGNhcGFibGUgb2Yg
c3BlYWtpbmcgdGhlIFhlbiBQViBjb25zb2xlIHByb3RvY29sCiAgICAgU3Rh
dHVzLCBMaW51eCAoaHZjX3hlbik6IFN1cHBvcnRlZAogICAgIFN0YXR1cywg
RnJlZUJTRDogU3VwcG9ydGVkLCBTZWN1cml0eSBzdXBwb3J0IGV4dGVybmFs
CiAgICAgU3RhdHVzLCBOZXRCU0Q6IFN1cHBvcnRlZCwgU2VjdXJpdHkgc3Vw
cG9ydCBleHRlcm5hbAotICAgIFN0YXR1cywgV2luZG93czogU3VwcG9ydGVk
CisgICAgU3RhdHVzLCBXaW5kb3dzOiBTdXBwb3J0ZWQsIHdpdGggY2F2ZWF0
cworCitXaW5kb3dzIGZyb250ZW5kIGN1cnJlbnRseSB0cnVzdHMgdGhlIGJh
Y2tlbmQ7CitidWdzIGluIHRoZSBmcm9udGVuZCB3aGljaCBhbGxvdyBiYWNr
ZW5kIHRvIGNhdXNlIG1pc2NoaWVmIHdpbGwgbm90IGJlCitjb25zaWRlcmVk
IHNlY3VyaXR5IHZ1bG5lcmFiaWxpdGllcy4KIAogIyMjIFBWIGtleWJvYXJk
IChmcm9udGVuZCkKIApAQCAtNDUxLDExICs0NzEsMTkgQEAgR3Vlc3Qtc2lk
ZSBkcml2ZXIgY2FwYWJsZSBvZiBzcGVha2luZyB0aGUgWGVuIFBWIGtleWJv
YXJkIHByb3RvY29sLgogTm90ZSB0aGF0IHRoZSAia2V5Ym9hcmQgcHJvdG9j
b2wiIGluY2x1ZGVzIG1vdXNlIC8gcG9pbnRlciAvCiBtdWx0aS10b3VjaCBz
dXBwb3J0IGFzIHdlbGwuCiAKLSAgICBTdGF0dXMsIExpbnV4ICh4ZW4ta2Jk
ZnJvbnQpOiBTdXBwb3J0ZWQKKyAgICBTdGF0dXMsIExpbnV4ICh4ZW4ta2Jk
ZnJvbnQpOiBTdXBwb3J0ZWQsIHdpdGggY2F2ZWF0cworCitMaW51eCBmcm9u
dGVuZCBjdXJyZW50bHkgdHJ1c3RzIHRoZSBiYWNrZW5kOworYnVncyBpbiB0
aGUgZnJvbnRlbmQgd2hpY2ggYWxsb3cgYmFja2VuZCB0byBjYXVzZSBtaXNj
aGllZiB3aWxsIG5vdCBiZQorY29uc2lkZXJlZCBzZWN1cml0eSB2dWxuZXJh
YmlsaXRpZXMuCiAKICMjIyBQViBVU0IgKGZyb250ZW5kKQogCi0gICAgU3Rh
dHVzLCBMaW51eDogU3VwcG9ydGVkCisgICAgU3RhdHVzLCBMaW51eDogU3Vw
cG9ydGVkLCB3aXRoIGNhdmVhdHMKKworTGludXggZnJvbnRlbmQgY3VycmVu
dGx5IHRydXN0cyB0aGUgYmFja2VuZDsKK2J1Z3MgaW4gdGhlIGZyb250ZW5k
IHdoaWNoIGFsbG93IGJhY2tlbmQgdG8gY2F1c2UgbWlzY2hpZWYgd2lsbCBu
b3QgYmUKK2NvbnNpZGVyZWQgc2VjdXJpdHkgdnVsbmVyYWJpbGl0aWVzLgog
CiAjIyMgUFYgU0NTSSBwcm90b2NvbCAoZnJvbnRlbmQpCiAKQEAgLTQ2NCw2
ICs0OTIsMTAgQEAgbXVsdGktdG91Y2ggc3VwcG9ydCBhcyB3ZWxsLgogTkIg
dGhhdCB3aGlsZSB0aGUgUFYgU0NTSSBmcm9udGVuZCBpcyBpbiBMaW51eCBh
bmQgdGVzdGVkIHJlZ3VsYXJseSwKIHRoZXJlIGlzIGN1cnJlbnRseSBubyB4
bCBzdXBwb3J0LgogCitMaW51eCBmcm9udGVuZCBjdXJyZW50bHkgdHJ1c3Rz
IHRoZSBiYWNrZW5kOworYnVncyBpbiB0aGUgZnJvbnRlbmQgd2hpY2ggYWxs
b3cgYmFja2VuZCB0byBjYXVzZSBtaXNjaGllZiB3aWxsIG5vdCBiZQorY29u
c2lkZXJlZCBzZWN1cml0eSB2dWxuZXJhYmlsaXRpZXMuCisKICMjIyBQViBU
UE0gKGZyb250ZW5kKQogCiBHdWVzdC1zaWRlIGRyaXZlciBjYXBhYmxlIG9m
IHNwZWFraW5nIHRoZSBYZW4gUFYgVFBNIHByb3RvY29sCkBAIC00ODYsNyAr
NTE4LDExIEBAIEd1ZXN0LXNpZGUgZHJpdmVyIGNhcGFibGUgb2YgbWFraW5n
IHB2IHN5c3RlbSBjYWxscwogCiBHdWVzdC1zaWRlIGRyaXZlciBjYXBhYmxl
IG9mIHNwZWFraW5nIHRoZSBYZW4gUFYgc291bmQgcHJvdG9jb2wKIAotICAg
IFN0YXR1cywgTGludXg6IFN1cHBvcnRlZAorICAgIFN0YXR1cywgTGludXg6
IFN1cHBvcnRlZCwgd2l0aCBjYXZlYXRzCisKK0xpbnV4IGZyb250ZW5kIGN1
cnJlbnRseSB0cnVzdHMgdGhlIGJhY2tlbmQ7CitidWdzIGluIHRoZSBmcm9u
dGVuZCB3aGljaCBhbGxvdyBiYWNrZW5kIHRvIGNhdXNlIG1pc2NoaWVmIHdp
bGwgbm90IGJlCitjb25zaWRlcmVkIHNlY3VyaXR5IHZ1bG5lcmFiaWxpdGll
cy4KIAogIyMgVmlydHVhbCBkZXZpY2Ugc3VwcG9ydCwgaG9zdCBzaWRlCiAK
QEAgLTk4Nyw2ICsxMDIzLDkgQEAgYXJlIGdpdmVuIHRoZSBmb2xsb3dpbmcg
bGFiZWxzOgogCiAgICAgVGhpcyBmZWF0dXJlIGlzIHNlY3VyaXR5IHN1cHBv
cnRlZAogICAgIGJ5IGEgZGlmZmVyZW50IG9yZ2FuaXphdGlvbiAobm90IHRo
ZSBYZW5Qcm9qZWN0KS4KKyAgICBUaGUgZXh0ZW50IG9mIHN1cHBvcnQgaXMg
ZGVmaW5lZCBieSB0aGF0IG9yZ2FuaXphdGlvbi4KKyAgICBJdCBtaWdodCBi
ZSBsaW1pdGVkLCBlLmcuIGxpa2UgZGVzY3JpYmVkIGluICoqU3VwcG9ydGVk
LCB3aXRoIGNhdmVhdHMqKgorICAgIGJlbG93LgogICAgIFNlZSAqKkV4dGVy
bmFsIHNlY3VyaXR5IHN1cHBvcnQqKiBiZWxvdy4KIAogICAqICoqU3VwcG9y
dGVkLCB3aXRoIGNhdmVhdHMqKgotLSAKMi4yNi4yCgo=

--=separator--
