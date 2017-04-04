X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8049" "Tuesday" "4" "April" "2017" "12:37:14" "+0000" "Xen.org security team" "security@xen.org" "<E1cvNhy-0000Vj-CZ@xenbits.xenproject.org>" "187" "[oss-security] Xen Security Advisory 212 (CVE-2017-7228) - x86: broken check in memory_exchange() permits PV guest breakout" nil nil nil "4" "2017040412:37:14" "[oss-security] Xen Security Advisory 212 (CVE-2017-7228) - x86: broken check in memory_exchange() permits PV guest breakout" (number mark "U       security@xen Apr  4  187/8049  " thread-indent "\"[oss-security] Xen Security Advisory 212 (CVE-2017-7228) - x86: broken check in memory_exchange() permits PV guest breakout\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23790 invoked by uid 550); 4 Apr 2017 12:37:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23761 invoked from network); 4 Apr 2017 12:37:34 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1cvNhy-0000Vj-CZ@xenbits.xenproject.org>
Date: Tue, 04 Apr 2017 12:37:14 +0000
Subject: [oss-security] Xen Security Advisory 212 (CVE-2017-7228) - x86: broken check in
 memory_exchange() permits PV guest breakout

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2017-7228 / XSA-212
                              version 3

       x86: broken check in memory_exchange() permits PV guest breakout

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

The XSA-29 fix introduced an insufficient check on XENMEM_exchange
input, allowing the caller to drive hypervisor memory accesses outside
of the guest provided input/output arrays.

IMPACT
======

A malicious or buggy 64-bit PV guest may be able to access all of
system memory, allowing for all of privilege escalation, host crashes,
and information leaks.

VULNERABLE SYSTEMS
==================

All Xen versions are vulnerable.

Only x86 systems are affected.  ARM systems are not vulnerable.

The vulnerability is only exposed to 64-bit PV guests.  HVM guests and
32-bit PV guests can't exploit the vulnerability.

MITIGATION
==========

Running only HVM or 32-bit PV guests will avoid the vulnerability.

The vulnerability can be avoided if the guest kernel is controlled by
the host rather than guest administrator, provided that further steps
are taken to prevent the guest administrator from loading code into
the kernel (e.g. by disabling loadable modules etc) or from using
other mechanisms which allow them to run code at kernel privilege.

CREDITS
=======

This issue was discovered by Jann Horn of Google Project Zero.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa212.patch           xen-unstable, Xen 4.8.x, Xen 4.7.x, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x

$ sha256sum xsa212*
be1255bcda06158cdb86eb5297e8a271e05318e88cd21035c58a67f9ada6ccba  xsa212.patch
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

iQEcBAEBAgAGBQJY45NxAAoJEIP+FMlX6CvZMRMH/jGfTS4hcPuPAiarYhD4D4YQ
pVir0eM/gm/8yJE/CT3m3dieKjjl+GAFW4ehRMoIoxVdSlhiwskx5V+8I5qR/Lo6
6F9BPJw6eaEM62yw7YvMl7EuSexP3WgQeyRSf3BckZ0oxEPSHrIUi0/p0B7FNOFr
C1EqK9d08dMKA5AEugpXgDI0t7fbYg3Kkm8SVnW5B8+5OI/iyTOOkFoPx1sbEvWX
k+zgzodsDuoh8O25+pKVs+verknzGJm9UdCD7vHW8elLg1+1nS2BlfTSr478cDTE
FnbnpuE7r1X/HHd2hPHDAZu3g2IUqfBJCLeYZfhIM9Eioei6bVLXh0f33DvlH/U=
=L74k
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa212.patch"
Content-Disposition: attachment; filename="xsa212.patch"
Content-Transfer-Encoding: base64

bWVtb3J5OiBwcm9wZXJseSBjaGVjayBndWVzdCBtZW1vcnkgcmFuZ2VzIGlu
IFhFTk1FTV9leGNoYW5nZSBoYW5kbGluZwoKVGhlIHVzZSBvZiBndWVzdF9o
YW5kbGVfb2theSgpIGhlcmUgKGFzIGludHJvZHVjZWQgYnkgdGhlIFhTQS0y
OSBmaXgpCmlzIGluc3VmZmljaWVudCBoZXJlLCBndWVzdF9oYW5kbGVfc3Vi
cmFuZ2Vfb2theSgpIG5lZWRzIHRvIGJlIHVzZWQKaW5zdGVhZC4KCk5vdGUg
dGhhdCB0aGUgdXNlcyBhcmUgb2theSBpbgotIFhFTk1FTV9hZGRfdG9fcGh5
c21hcF9iYXRjaCBoYW5kbGluZyBkdWUgdG8gdGhlIHNpemUgZmllbGQgYmVp
bmcgb25seQogIDE2IGJpdHMgd2lkZSwKLSBsaXZlcGF0Y2hfbGlzdCgpIGR1
ZSB0byB0aGUgbGltaXQgb2YgMTAyNCBlbmZvcmNlZCBvbiB0aGUKICBudW1i
ZXItb2YtZW50cmllcyBpbnB1dCAobGVhdmluZyBhc2lkZSB0aGUgZmFjdCB0
aGF0IHRoaXMgY2FuIGJlCiAgY2FsbGVkIGJ5IGEgcHJpdmlsZWdlZCBkb21h
aW4gb25seSBhbnl3YXkpLAotIGNvbXBhdCBtb2RlIGhhbmRsaW5nIGR1ZSB0
byBjb3VudHMgdGhlcmUgYmVpbmcgbGltaXRlZCB0byAzMiBiaXRzLAotIGV2
ZXJ5d2hlcmUgZWxzZSBkdWUgdG8gZ3Vlc3QgYXJyYXlzIGJlaW5nIGFjY2Vz
c2VkIHNlcXVlbnRpYWxseSBmcm9tCiAgaW5kZXggemVyby4KClRoaXMgaXMg
WFNBLTIxMi4KClJlcG9ydGVkLWJ5OiBKYW5uIEhvcm4gPGphbm5oQGdvb2ds
ZS5jb20+ClNpZ25lZC1vZmYtYnk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBz
dXNlLmNvbT4KUmV2aWV3ZWQtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJldy5j
b29wZXIzQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vY29tbW9uL21lbW9yeS5j
CisrKyBiL3hlbi9jb21tb24vbWVtb3J5LmMKQEAgLTQzNiw4ICs0MzYsOCBA
QCBzdGF0aWMgbG9uZyBtZW1vcnlfZXhjaGFuZ2UoWEVOX0dVRVNUX0hBCiAg
ICAgICAgIGdvdG8gZmFpbF9lYXJseTsKICAgICB9CiAKLSAgICBpZiAoICFn
dWVzdF9oYW5kbGVfb2theShleGNoLmluLmV4dGVudF9zdGFydCwgZXhjaC5p
bi5ucl9leHRlbnRzKSB8fAotICAgICAgICAgIWd1ZXN0X2hhbmRsZV9va2F5
KGV4Y2gub3V0LmV4dGVudF9zdGFydCwgZXhjaC5vdXQubnJfZXh0ZW50cykg
KQorICAgIGlmICggIWd1ZXN0X2hhbmRsZV9zdWJyYW5nZV9va2F5KGV4Y2gu
aW4uZXh0ZW50X3N0YXJ0LCBleGNoLm5yX2V4Y2hhbmdlZCwKKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBleGNoLmluLm5yX2V4dGVu
dHMgLSAxKSApCiAgICAgewogICAgICAgICByYyA9IC1FRkFVTFQ7CiAgICAg
ICAgIGdvdG8gZmFpbF9lYXJseTsKQEAgLTQ0NywxMSArNDQ3LDI3IEBAIHN0
YXRpYyBsb25nIG1lbW9yeV9leGNoYW5nZShYRU5fR1VFU1RfSEEKICAgICB7
CiAgICAgICAgIGluX2NodW5rX29yZGVyICA9IGV4Y2gub3V0LmV4dGVudF9v
cmRlciAtIGV4Y2guaW4uZXh0ZW50X29yZGVyOwogICAgICAgICBvdXRfY2h1
bmtfb3JkZXIgPSAwOworCisgICAgICAgIGlmICggIWd1ZXN0X2hhbmRsZV9z
dWJyYW5nZV9va2F5KGV4Y2gub3V0LmV4dGVudF9zdGFydCwKKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXhjaC5ucl9leGNo
YW5nZWQgPj4gaW5fY2h1bmtfb3JkZXIsCisgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGV4Y2gub3V0Lm5yX2V4dGVudHMgLSAx
KSApCisgICAgICAgIHsKKyAgICAgICAgICAgIHJjID0gLUVGQVVMVDsKKyAg
ICAgICAgICAgIGdvdG8gZmFpbF9lYXJseTsKKyAgICAgICAgfQogICAgIH0K
ICAgICBlbHNlCiAgICAgewogICAgICAgICBpbl9jaHVua19vcmRlciAgPSAw
OwogICAgICAgICBvdXRfY2h1bmtfb3JkZXIgPSBleGNoLmluLmV4dGVudF9v
cmRlciAtIGV4Y2gub3V0LmV4dGVudF9vcmRlcjsKKworICAgICAgICBpZiAo
ICFndWVzdF9oYW5kbGVfc3VicmFuZ2Vfb2theShleGNoLm91dC5leHRlbnRf
c3RhcnQsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGV4Y2gubnJfZXhjaGFuZ2VkIDw8IG91dF9jaHVua19vcmRlciwKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXhjaC5v
dXQubnJfZXh0ZW50cyAtIDEpICkKKyAgICAgICAgeworICAgICAgICAgICAg
cmMgPSAtRUZBVUxUOworICAgICAgICAgICAgZ290byBmYWlsX2Vhcmx5Owor
ICAgICAgICB9CiAgICAgfQogCiAgICAgZCA9IHJjdV9sb2NrX2RvbWFpbl9i
eV9hbnlfaWQoZXhjaC5pbi5kb21pZCk7Ci0tLSBhL3hlbi9pbmNsdWRlL2Fz
bS14ODYveDg2XzY0L3VhY2Nlc3MuaAorKysgYi94ZW4vaW5jbHVkZS9hc20t
eDg2L3g4Nl82NC91YWNjZXNzLmgKQEAgLTI5LDggKzI5LDkgQEAgZXh0ZXJu
IHZvaWQgKnhsYXRfbWFsbG9jKHVuc2lnbmVkIGxvbmcgKgogLyoKICAqIFZh
bGlkIGlmIGluICt2ZSBoYWxmIG9mIDQ4LWJpdCBhZGRyZXNzIHNwYWNlLCBv
ciBhYm92ZSBYZW4tcmVzZXJ2ZWQgYXJlYS4KICAqIFRoaXMgaXMgYWxzbyB2
YWxpZCBmb3IgcmFuZ2UgY2hlY2tzIChhZGRyLCBhZGRyK3NpemUpLiBBcyBs
b25nIGFzIHRoZQotICogc3RhcnQgYWRkcmVzcyBpcyBvdXRzaWRlIHRoZSBY
ZW4tcmVzZXJ2ZWQgYXJlYSB0aGVuIHdlIHdpbGwgYWNjZXNzIGEKLSAqIG5v
bi1jYW5vbmljYWwgYWRkcmVzcyAoYW5kIHRodXMgZmF1bHQpIGJlZm9yZSBl
dmVyIHJlYWNoaW5nIFZJUlRfU1RBUlQuCisgKiBzdGFydCBhZGRyZXNzIGlz
IG91dHNpZGUgdGhlIFhlbi1yZXNlcnZlZCBhcmVhLCBzZXF1ZW50aWFsIGFj
Y2Vzc2VzCisgKiAoc3RhcnRpbmcgYXQgYWRkcikgd2lsbCBoaXQgYSBub24t
Y2Fub25pY2FsIGFkZHJlc3MgKGFuZCB0aHVzIGZhdWx0KQorICogYmVmb3Jl
IGV2ZXIgcmVhY2hpbmcgVklSVF9TVEFSVC4KICAqLwogI2RlZmluZSBfX2Fk
ZHJfb2soYWRkcikgXAogICAgICgoKHVuc2lnbmVkIGxvbmcpKGFkZHIpIDwg
KDFVTDw8NDcpKSB8fCBcCkBAIC00MCw3ICs0MSw4IEBAIGV4dGVybiB2b2lk
ICp4bGF0X21hbGxvYyh1bnNpZ25lZCBsb25nICoKICAgICAoX19hZGRyX29r
KGFkZHIpIHx8IGlzX2NvbXBhdF9hcmdfeGxhdF9yYW5nZShhZGRyLCBzaXpl
KSkKIAogI2RlZmluZSBhcnJheV9hY2Nlc3Nfb2soYWRkciwgY291bnQsIHNp
emUpIFwKLSAgICAoYWNjZXNzX29rKGFkZHIsIChjb3VudCkqKHNpemUpKSkK
KyAgICAobGlrZWx5KCgoY291bnQpID86IDBVTCkgPCAofjBVTCAvIChzaXpl
KSkpICYmIFwKKyAgICAgYWNjZXNzX29rKGFkZHIsIChjb3VudCkgKiAoc2l6
ZSkpKQogCiAjZGVmaW5lIF9fY29tcGF0X2FkZHJfb2soZCwgYWRkcikgXAog
ICAgICgodW5zaWduZWQgbG9uZykoYWRkcikgPCBIWVBFUlZJU09SX0NPTVBB
VF9WSVJUX1NUQVJUKGQpKQo=

--=separator--
