Received: (qmail 30630 invoked by uid 550); 28 Apr 2026 12:01:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30549 invoked from network); 28 Apr 2026 12:01:59 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1wHh8H-006n23-2q@xenbits.xenproject.org>
Date: Tue, 28 Apr 2026 12:01:41 +0000
Subject: [oss-security] Xen Security Advisory 485 v2 (CVE-2026-31786) - Linux kernel out
 of bounds read via Xen-related sysfs file

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-31786 / XSA-485
                               version 2

      Linux kernel out of bounds read via Xen-related sysfs file

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

The Linux sysfs file /sys/hypervisor/properties/buildid does not
contain printable information, but a binary value of typically 16 or
20 bytes, which is not terminated by a zero byte.

The kernel driver making this information available is using the
sprintf() function for writing the data into the user readable buffer,
resulting in a potential out of bounds read past the buildid retrieved
from the Xen hypervisor. In rare cases even writing past the sysfs
buffer of 4kB might happen, if no zero byte is found in the 4kB of
data following the start of the buildid.

This might result in users being capable to read kernel secrets or
even overwrite kernel memory located after the sysfs buffer.

IMPACT
======

Inside any Linux Xen domain information leaks, Denial of Service (DoS)
and privilege escalation might be possible.

VULNERABLE SYSTEMS
==================

All Linux domains with a kernel version 4.13 or later are vulnerable.
Domains up to kernel version 4.12 are not vulnerable.

MITIGATION
==========

There is no known mitigation available.

CREDITS
=======

This issue was discovered by Frediano Ziglio of XenServer.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa485-linux.patch     Linux

$ sha256sum xsa485*
c70b792093d7b314b8c476e39df88a62a2d98fb0efc6328590d0ad3266c77831  xsa485-linux.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of patches or mitigations is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because the patch needs to be applied to the guests.

Deployment is permitted only AFTER the embargo ends.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmnwoQIMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZu7cH/0KeJ7rnA7tE5l1TYcD2Enh0jYjMtBw0DIH/bYwd
EGNklioe02/aVGs9TooQDeZZRMOg6tyA3c7skl2jGN51RlHrPMc27tNDGdFR9/F/
0Mp614K4lfoKfEYQTdWxWYPPerIhfkDSkUOmKlOwS/NyJ5HnuQ+LT8j7e+1YKs04
BOjqNorArGoxsRIleRAXIUzZPOreCPrUBRIQwVsULnsGMIkcFSnt4CyV/sPFzILh
2KHCFPZHpQ70SxbgZgVmEb1emwDysps9LoVzrRQcuHsD1AsqtgSvsHau0Wi1juY4
CjygNQUML3r6ZH46DNsovpdHHW08HfhgYuASZ85erwsxM0Q=
=wJb9
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa485-linux.patch"
Content-Disposition: attachment; filename="xsa485-linux.patch"
Content-Transfer-Encoding: base64

RnJvbSAwYWU1ZWEwMGNjNTExMTEwNzMzNjY1YjI5MzVhMTU0ZDVlNTY5NDgwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBGcmVkaWFubyBaaWdsaW8gPGZyZWRpYW5vLnppZ2xpb0BjaXRy
aXguY29tPgpEYXRlOiBGcmksIDI3IE1hciAyMDI2IDE0OjEzOjM4ICswMTAwClN1YmplY3Q6IFtQ
QVRDSF0gQnVmZmVyIG92ZXJmbG93IGluIGRyaXZlcnMveGVuL3N5cy1oeXBlcnZpc29yLmMKClRo
ZSBidWlsZCBpZCByZXR1cm5lZCBieSBIWVBFUlZJU09SX3hlbl92ZXJzaW9uKFhFTlZFUl9idWls
ZF9pZCkgaXMKbmVpdGhlciBOVUwgdGVybWluYXRlZCBub3IgYSBzdHJpbmcuCgpUaGUgZmlyc3Qg
Y2F1c2VzIGEgYnVmZmVyIG92ZXJmbG93IGFzIHNwcmludGYgaW4gYnVpbGRpZF9zaG93IHdpbGwK
cmVhZCBhbmQgY29weSB0aWxsIGl0IGZpbmRzIGEgTlVMLgoKMDAwMDAwMDAgIGY0IDkxIDUxIGY0
IGRkIDM4IDllIDlkICA2NSA0NyA1MiBlYiAxMCA3MSBkYiA1MCAgfC4uUS4uOC4uZUdSLi5xLlB8
CjAwMDAwMDEwICBiOSBhOCAwMSA0MiA2ZiAyZSAzMiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwuLi5Cby4yfAowMDAwMDAxNwoKU28gdXNlIGEgbWVtY3B5IGluc3RlYWQgb2Ygc3ByaW50
ZiB0byBoYXZlIHRoZSBjb3JyZWN0IHZhbHVlOgoKMDAwMDAwMDAgIGY0IDkxIDUxIGY0IGRkIDAw
IDllIDlkICA2NSA0NyA1MiBlYiAxMCA3MSBkYiA1MCAgfC4uUS4uLi4uZUdSLi5xLlB8CjAwMDAw
MDEwICBiOSBhOCAwMSA0MiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwu
Li5CfAowMDAwMDAxNAoKKHRoZSBhYm92ZSBoYXZlIGEgaGFjayB0byBlbWJlZCBhIHplcm8gaW5z
aWRlIGFuZCBjaGVjayBpdCdzCnJldHVybmVkIGNvcnJlY3RseSkuCgpUaGlzIGlzIFhTQS00ODUg
LyBDVkUtMjAyNi0zMTc4NgoKRml4ZXM6IDg0Yjc2MjU3MjhlYSAoInhlbjogYWRkIHN5c2ZzIG5v
ZGUgZm9yIGh5cGVydmlzb3IgYnVpbGQgaWQiKQpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZyZWRpYW5vLnppZ2xpb0BjaXRyaXguY29tPgpSZXZpZXdlZC1ieTogSnVlcmdlbiBHcm9z
cyA8amdyb3NzQHN1c2UuY29tPgpTaWduZWQtb2ZmLWJ5OiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NA
c3VzZS5jb20+Ci0tLQogZHJpdmVycy94ZW4vc3lzLWh5cGVydmlzb3IuYyB8IDggKysrKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy94ZW4vc3lzLWh5cGVydmlzb3IuYyBiL2RyaXZlcnMveGVuL3N5cy1oeXBl
cnZpc29yLmMKaW5kZXggYjFiYjAxYmE4MmY4Li45MTkyMzI0MmE1YWUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMveGVuL3N5cy1oeXBlcnZpc29yLmMKKysrIGIvZHJpdmVycy94ZW4vc3lzLWh5cGVydmlz
b3IuYwpAQCAtMzY2LDYgKzM2Niw4IEBAIHN0YXRpYyBzc2l6ZV90IGJ1aWxkaWRfc2hvdyhzdHJ1
Y3QgaHlwX3N5c2ZzX2F0dHIgKmF0dHIsIGNoYXIgKmJ1ZmZlcikKIAkJCXJldCA9IHNwcmludGYo
YnVmZmVyLCAiPGRlbmllZD4iKTsKIAkJcmV0dXJuIHJldDsKIAl9CisJaWYgKHJldCA+IFBBR0Vf
U0laRSkKKwkJcmV0dXJuIC1FTk9TUEM7CiAKIAlidWlsZGlkID0ga21hbGxvYyhzaXplb2YoKmJ1
aWxkaWQpICsgcmV0LCBHRlBfS0VSTkVMKTsKIAlpZiAoIWJ1aWxkaWQpCkBAIC0zNzMsOCArMzc1
LDEwIEBAIHN0YXRpYyBzc2l6ZV90IGJ1aWxkaWRfc2hvdyhzdHJ1Y3QgaHlwX3N5c2ZzX2F0dHIg
KmF0dHIsIGNoYXIgKmJ1ZmZlcikKIAogCWJ1aWxkaWQtPmxlbiA9IHJldDsKIAlyZXQgPSBIWVBF
UlZJU09SX3hlbl92ZXJzaW9uKFhFTlZFUl9idWlsZF9pZCwgYnVpbGRpZCk7Ci0JaWYgKHJldCA+
IDApCi0JCXJldCA9IHNwcmludGYoYnVmZmVyLCAiJXMiLCBidWlsZGlkLT5idWYpOworCWlmIChy
ZXQgPiAwKSB7CisJCS8qIEJ1aWxkIGlkIGlzIGJpbmFyeSwgbm90IGEgc3RyaW5nLiAqLworCQlt
ZW1jcHkoYnVmZmVyLCBidWlsZGlkLT5idWYsIHJldCk7CisJfQogCWtmcmVlKGJ1aWxkaWQpOwog
CiAJcmV0dXJuIHJldDsKLS0gCjIuNTMuMAoK

--=separator--
