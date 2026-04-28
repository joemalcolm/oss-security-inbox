Received: (qmail 30150 invoked by uid 550); 28 Apr 2026 12:01:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30112 invoked from network); 28 Apr 2026 12:01:56 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1wHh8D-006n15-2O@xenbits.xenproject.org>
Date: Tue, 28 Apr 2026 12:01:37 +0000
Subject: [oss-security] Xen Security Advisory 484 v2 (CVE-2026-23557) - Xenstored DoS via
 XS_RESET_WATCHES command

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-23557 / XSA-484
                               version 2

              Xenstored DoS via XS_RESET_WATCHES command

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Any guest can cause xenstored to crash by issuing a XS_RESET_WATCHES
command within a transaction due to an assert() triggering.

In case xenstored was built with NDEBUG #defined nothing bad will
happen, as assert() is doing nothing in this case. Note that the
default is not to define NDEBUG for xenstored builds even in release
builds of Xen.

IMPACT
======

Any unprivileged domain can cause xenstored to crash, causing a
DoS (denial of service) for any Xenstore action. This will result
in an inability to perform further domain administration on the host.

VULNERABLE SYSTEMS
==================

All Xen systems from Xen 4.2 onwards are vulnerable. Systems up to
Xen 4.1 are not vulnerable.

Systems using the C variant of xenstored or xenstore-stubdom built
without NDEBUG are vulnerable. Systems using the OCaml variant of
Xenstore (oxenstored), or the C variant (xenstored or xenstore-stubdom)
built with NDEBUG defined are not vulnerable.

MITIGATION
==========

There is no known mitigation available.

CREDITS
=======

This issue was discovered by Andrii Sultanov of Vates.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa484.patch           xen-unstable - Xen 4.18.x
xsa484-4.17.patch      Xen 4.17.x

$ sha256sum xsa484*
77c489191d40acd807eb19344a0e1bbb67a04551e89aff726fbb2006f235aacf  xsa484.patch
6c8d8146d136956c59ee77da6aa6340272d1ea670a6b0d9cf37fe759d4b96b19  xsa484-4.17.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmnwoQEMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZGVoIALBKECpaWxXD7ivkbFpFlmt9a2TOXxnD1LjbSnzI
VAdyFECK4ng0uRaUXHMcd0Dkzw+dOrm/SA7jI+brumyyxsO44eLz5fysAQYXDHca
qsn5h7To34Fow8ejQIt1E9DmqNlZP7Y261MhYSdWN6Z2lEa4cMPyJKA/xTpQ2uUq
Cy9Ss7jrl/v98MOZb2Tkn+H8XiNsPJb57sWeaOPoUMh+42y/5qMyRgqWa3/N3iHn
ZVZEhTbrNvGYKW+DUq5KswUjxw9FAmtQ1PA/w3ItWWdsb0Gd8AE02FzdIuoIt/xk
zB9BEchspV1Gfouz0alFV+d4gDyclQmmViYojNfXYfKdWp8=
=j/SA
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa484.patch"
Content-Disposition: attachment; filename="xsa484.patch"
Content-Transfer-Encoding: base64

RnJvbSAzZDBkMTlhZDE3ZjI5YzY0ZGRlNGE3YmFmMzkyZGE0ZmQ1OGYzNjU0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+CkRhdGU6
IE1vbiwgMTYgTWFyIDIwMjYgMTU6MDY6MTEgKzAxMDAKU3ViamVjdDogW1BBVENIXSB0b29scy94
ZW5zdG9yZWQ6IG1ha2UgY29ubl9kZWxldGVfYWxsX3RyYW5zYWN0aW9ucygpCiBpZGVtcG90ZW50
Cgpjb25uX2RlbGV0ZV9hbGxfdHJhbnNhY3Rpb25zKCkgc2hvdWxkIGJlIGNhbGxhYmxlIGluIGFu
eSBjb250ZXh0LApyZXNldHRpbmcgQUxMIHRyYW5zYWN0aW9uIHJlbGF0ZWQgZGF0YS4KClRoaXMg
aW5jbHVkZXMgbnVtYmVyIG9mIGFjdGl2ZSB0cmFuc2FjdGlvbnMgYW5kIHRoZSB0cmFuc2FjdGlv
bgpwb2ludGVyIGluIHN0cnVjdCBjb25uZWN0aW9uLgoKU28gcmVzZXQgY29ubi0+dHJhbnMgdG8g
TlVMTCBpbiBjb25uX2RlbGV0ZV9hbGxfdHJhbnNhY3Rpb25zKCkgYW5kCmRvIHRoZSBjbGVhbnVw
IGZvciBlYWNoIHRyYW5zYWN0aW9uIGluIGRlc3Ryb3lfdHJhbnNhY3Rpb24oKS4KClRoaXMgYXZv
aWRzIHRyaWdnZXJpbmcgdGhlIGFzc2VydCgpIGluIGNvbm5fZGVsZXRlX2FsbF90cmFuc2FjdGlv
bnMoKQppbiBjYXNlIGUuZy4gaWdub3JlX2Nvbm5lY3Rpb24oKSB3YXMgY2FsbGVkIHdoaWxlIGFu
IG9wZXJhdGlvbiBpbnNpZGUKYSB0cmFuc2FjdGlvbiB3YXMgcGVyZm9ybWVkLCBvciBYU19SRVNF
VF9XQVRDSEVTIHdhcyBjYWxsZWQgaW4gYQp0cmFuc2FjdGlvbi4KClRoaXMgaXMgWFNBLTQ4NCAv
IENWRS0yMDI2LTIzNTU3LgoKUmVwb3J0ZWQtYnk6IEFuZHJpaSBTdWx0YW5vdiA8YW5kcml5LnN1
bHRhbm92QHZhdGVzLnRlY2g+CkZpeGVzOiAxZjlkMDRmYjAyMWMgKCJ4ZW5zdG9yZWQ6IGFsbG93
IGd1ZXN0IHRvIHNodXRkb3duIGFsbCBpdHMgd2F0Y2hlcy90cmFuc2FjdGlvbnMiKQpTaWduZWQt
b2ZmLWJ5OiBKdWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+Ci0tLQogdG9vbHMveGVuc3Rv
cmVkL3RyYW5zYWN0aW9uLmMgfCAyMCArKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdG9vbHMv
eGVuc3RvcmVkL3RyYW5zYWN0aW9uLmMgYi90b29scy94ZW5zdG9yZWQvdHJhbnNhY3Rpb24uYwpp
bmRleCAxNjdjZDU5N2ZkLi4wODI1YzQ4ODU5IDEwMDY0NAotLS0gYS90b29scy94ZW5zdG9yZWQv
dHJhbnNhY3Rpb24uYworKysgYi90b29scy94ZW5zdG9yZWQvdHJhbnNhY3Rpb24uYwpAQCAtNDMy
LDE3ICs0MzIsMjMgQEAgc3RhdGljIGludCBmaW5hbGl6ZV90cmFuc2FjdGlvbihzdHJ1Y3QgY29u
bmVjdGlvbiAqY29ubiwKIHN0YXRpYyBpbnQgZGVzdHJveV90cmFuc2FjdGlvbih2b2lkICpfdHJh
bnNhY3Rpb24pCiB7CiAJc3RydWN0IHRyYW5zYWN0aW9uICp0cmFucyA9IF90cmFuc2FjdGlvbjsK
KwlzdHJ1Y3QgY29ubmVjdGlvbiAqY29ubiA9IHRyYW5zLT5jb25uOwogCXN0cnVjdCBhY2Nlc3Nl
ZF9ub2RlICppOwogCiAJd3JsX250cmFuc2FjdGlvbnMtLTsKIAl0cmFjZV9kZXN0cm95KHRyYW5z
LCAidHJhbnNhY3Rpb24iKTsKIAl3aGlsZSAoKGkgPSBsaXN0X3RvcCgmdHJhbnMtPmFjY2Vzc2Vk
LCBzdHJ1Y3QgYWNjZXNzZWRfbm9kZSwgbGlzdCkpKSB7CiAJCWlmIChpLT50YV9ub2RlKQotCQkJ
ZGJfZGVsZXRlKHRyYW5zLT5jb25uLCBpLT50cmFuc19uYW1lLCBOVUxMKTsKKwkJCWRiX2RlbGV0
ZShjb25uLCBpLT50cmFuc19uYW1lLCBOVUxMKTsKIAkJbGlzdF9kZWwoJmktPmxpc3QpOwogCQl0
YWxsb2NfZnJlZShpKTsKIAl9CiAKKwlsaXN0X2RlbCgmdHJhbnMtPmxpc3QpOworCWRvbWFpbl90
cmFuc2FjdGlvbl9kZWMoY29ubik7CisJaWYgKGxpc3RfZW1wdHkoJmNvbm4tPnRyYW5zYWN0aW9u
X2xpc3QpKQorCQljb25uLT50YV9zdGFydF90aW1lID0gMDsKKwogCXJldHVybiAwOwogfQogCkBA
IC01MjMsMTAgKzUyOSw2IEBAIGludCBkb190cmFuc2FjdGlvbl9lbmQoY29uc3Qgdm9pZCAqY3R4
LCBzdHJ1Y3QgY29ubmVjdGlvbiAqY29ubiwKIAkJcmV0dXJuIEVOT0VOVDsKIAogCWNvbm4tPnRy
YW5zYWN0aW9uID0gTlVMTDsKLQlsaXN0X2RlbCgmdHJhbnMtPmxpc3QpOwotCWRvbWFpbl90cmFu
c2FjdGlvbl9kZWMoY29ubik7Ci0JaWYgKGxpc3RfZW1wdHkoJmNvbm4tPnRyYW5zYWN0aW9uX2xp
c3QpKQotCQljb25uLT50YV9zdGFydF90aW1lID0gMDsKIAogCWNoa19xdW90YSA9IHRyYW5zLT5u
b2RlX2NyZWF0ZWQgJiYgZG9tYWluX2lzX3VucHJpdmlsZWdlZChjb25uKTsKIApAQCAtNTcyLDE0
ICs1NzQsMTAgQEAgdm9pZCBjb25uX2RlbGV0ZV9hbGxfdHJhbnNhY3Rpb25zKHN0cnVjdCBjb25u
ZWN0aW9uICpjb25uKQogCXN0cnVjdCB0cmFuc2FjdGlvbiAqdHJhbnM7CiAKIAl3aGlsZSAoKHRy
YW5zID0gbGlzdF90b3AoJmNvbm4tPnRyYW5zYWN0aW9uX2xpc3QsCi0JCQkJIHN0cnVjdCB0cmFu
c2FjdGlvbiwgbGlzdCkpKSB7Ci0JCWxpc3RfZGVsKCZ0cmFucy0+bGlzdCk7CisJCQkJIHN0cnVj
dCB0cmFuc2FjdGlvbiwgbGlzdCkpKQogCQl0YWxsb2NfZnJlZSh0cmFucyk7Ci0JfQotCi0JYXNz
ZXJ0KGNvbm4tPnRyYW5zYWN0aW9uID09IE5VTEwpOwogCi0JY29ubi0+dGFfc3RhcnRfdGltZSA9
IDA7CisJY29ubi0+dHJhbnNhY3Rpb24gPSBOVUxMOwogfQogCiBpbnQgY2hlY2tfdHJhbnNhY3Rp
b25zKHN0cnVjdCBoYXNodGFibGUgKmhhc2gpCi0tIAoyLjUzLjAKCg==

--=separator
Content-Type: application/octet-stream; name="xsa484-4.17.patch"
Content-Disposition: attachment; filename="xsa484-4.17.patch"
Content-Transfer-Encoding: base64

RnJvbTogSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuY29tPgpTdWJqZWN0OiB0b29scy94ZW5z
dG9yZWQ6IG1ha2UgY29ubl9kZWxldGVfYWxsX3RyYW5zYWN0aW9ucygpIGlkZW1wb3RlbnQKCmNv
bm5fZGVsZXRlX2FsbF90cmFuc2FjdGlvbnMoKSBzaG91bGQgYmUgY2FsbGFibGUgaW4gYW55IGNv
bnRleHQsCnJlc2V0dGluZyBBTEwgdHJhbnNhY3Rpb24gcmVsYXRlZCBkYXRhLgoKVGhpcyBpbmNs
dWRlcyBudW1iZXIgb2YgYWN0aXZlIHRyYW5zYWN0aW9ucyBhbmQgdGhlIHRyYW5zYWN0aW9uCnBv
aW50ZXIgaW4gc3RydWN0IGNvbm5lY3Rpb24uCgpTbyByZXNldCBjb25uLT50cmFucyB0byBOVUxM
IGluIGNvbm5fZGVsZXRlX2FsbF90cmFuc2FjdGlvbnMoKSBhbmQKZG8gdGhlIGNsZWFudXAgZm9y
IGVhY2ggdHJhbnNhY3Rpb24gaW4gZGVzdHJveV90cmFuc2FjdGlvbigpLgoKVGhpcyBhdm9pZHMg
dHJpZ2dlcmluZyB0aGUgYXNzZXJ0KCkgaW4gY29ubl9kZWxldGVfYWxsX3RyYW5zYWN0aW9ucygp
CmluIGNhc2UgZS5nLiBpZ25vcmVfY29ubmVjdGlvbigpIHdhcyBjYWxsZWQgd2hpbGUgYW4gb3Bl
cmF0aW9uIGluc2lkZQphIHRyYW5zYWN0aW9uIHdhcyBwZXJmb3JtZWQsIG9yIFhTX1JFU0VUX1dB
VENIRVMgd2FzIGNhbGxlZCBpbiBhCnRyYW5zYWN0aW9uLgoKVGhpcyBpcyBYU0EtNDg0IC8gQ1ZF
LTIwMjYtMjM1NTcuCgpSZXBvcnRlZC1ieTogQW5kcmlpIFN1bHRhbm92IDxhbmRyaXkuc3VsdGFu
b3ZAdmF0ZXMudGVjaD4KRml4ZXM6IDFmOWQwNGZiMDIxYyAoInhlbnN0b3JlZDogYWxsb3cgZ3Vl
c3QgdG8gc2h1dGRvd24gYWxsIGl0cyB3YXRjaGVzL3RyYW5zYWN0aW9ucyIpClNpZ25lZC1vZmYt
Ynk6IEp1ZXJnZW4gR3Jvc3MgPGpncm9zc0BzdXNlLmNvbT4KCi0tLSBhL3Rvb2xzL3hlbnN0b3Jl
L3hlbnN0b3JlZF90cmFuc2FjdGlvbi5jCisrKyBiL3Rvb2xzL3hlbnN0b3JlL3hlbnN0b3JlZF90
cmFuc2FjdGlvbi5jCkBAIC00NDUsNiArNDQ1LDcgQEAgc3RhdGljIGludCBmaW5hbGl6ZV90cmFu
c2FjdGlvbihzdHJ1Y3QgYwogc3RhdGljIGludCBkZXN0cm95X3RyYW5zYWN0aW9uKHZvaWQgKl90
cmFuc2FjdGlvbikKIHsKIAlzdHJ1Y3QgdHJhbnNhY3Rpb24gKnRyYW5zID0gX3RyYW5zYWN0aW9u
OworCXN0cnVjdCBjb25uZWN0aW9uICpjb25uID0gdHJhbnMtPmNvbm47CiAJc3RydWN0IGFjY2Vz
c2VkX25vZGUgKmk7CiAJVERCX0RBVEEga2V5OwogCkBAIC00NTMsMTIgKzQ1NCwxNyBAQCBzdGF0
aWMgaW50IGRlc3Ryb3lfdHJhbnNhY3Rpb24odm9pZCAqX3RyCiAJd2hpbGUgKChpID0gbGlzdF90
b3AoJnRyYW5zLT5hY2Nlc3NlZCwgc3RydWN0IGFjY2Vzc2VkX25vZGUsIGxpc3QpKSkgewogCQlp
ZiAoaS0+dGFfbm9kZSkgewogCQkJc2V0X3RkYl9rZXkoaS0+dHJhbnNfbmFtZSwgJmtleSk7Ci0J
CQlkb190ZGJfZGVsZXRlKHRyYW5zLT5jb25uLCAma2V5LCBOVUxMKTsKKwkJCWRvX3RkYl9kZWxl
dGUoY29ubiwgJmtleSwgTlVMTCk7CiAJCX0KIAkJbGlzdF9kZWwoJmktPmxpc3QpOwogCQl0YWxs
b2NfZnJlZShpKTsKIAl9CiAKKwlsaXN0X2RlbCgmdHJhbnMtPmxpc3QpOworCWNvbm4tPnRyYW5z
YWN0aW9uX3N0YXJ0ZWQtLTsKKwlpZiAoIWNvbm4tPnRyYW5zYWN0aW9uX3N0YXJ0ZWQpCisJCWNv
bm4tPnRhX3N0YXJ0X3RpbWUgPSAwOworCiAJcmV0dXJuIDA7CiB9CiAKQEAgLTU2MSwxMCArNTY3
LDYgQEAgaW50IGRvX3RyYW5zYWN0aW9uX2VuZChjb25zdCB2b2lkICpjdHgsCiAJCXJldHVybiBF
Tk9FTlQ7CiAKIAljb25uLT50cmFuc2FjdGlvbiA9IE5VTEw7Ci0JbGlzdF9kZWwoJnRyYW5zLT5s
aXN0KTsKLQljb25uLT50cmFuc2FjdGlvbl9zdGFydGVkLS07Ci0JaWYgKCFjb25uLT50cmFuc2Fj
dGlvbl9zdGFydGVkKQotCQljb25uLT50YV9zdGFydF90aW1lID0gMDsKIAogCWNoa19xdW90YSA9
IHRyYW5zLT5ub2RlX2NyZWF0ZWQgJiYgZG9tYWluX2lzX3VucHJpdmlsZWdlZChjb25uKTsKIApA
QCAtNjQ2LDE1ICs2NDgsMTEgQEAgdm9pZCBjb25uX2RlbGV0ZV9hbGxfdHJhbnNhY3Rpb25zKHN0
cnVjdAogCXN0cnVjdCB0cmFuc2FjdGlvbiAqdHJhbnM7CiAKIAl3aGlsZSAoKHRyYW5zID0gbGlz
dF90b3AoJmNvbm4tPnRyYW5zYWN0aW9uX2xpc3QsCi0JCQkJIHN0cnVjdCB0cmFuc2FjdGlvbiwg
bGlzdCkpKSB7Ci0JCWxpc3RfZGVsKCZ0cmFucy0+bGlzdCk7CisJCQkJIHN0cnVjdCB0cmFuc2Fj
dGlvbiwgbGlzdCkpKQogCQl0YWxsb2NfZnJlZSh0cmFucyk7Ci0JfQotCi0JYXNzZXJ0KGNvbm4t
PnRyYW5zYWN0aW9uID09IE5VTEwpOwogCiAJY29ubi0+dHJhbnNhY3Rpb25fc3RhcnRlZCA9IDA7
Ci0JY29ubi0+dGFfc3RhcnRfdGltZSA9IDA7CisJY29ubi0+dHJhbnNhY3Rpb24gPSBOVUxMOwog
fQogCiBpbnQgY2hlY2tfdHJhbnNhY3Rpb25zKHN0cnVjdCBoYXNodGFibGUgKmhhc2gpCg==

--=separator--
