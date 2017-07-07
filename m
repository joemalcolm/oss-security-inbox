X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8059" "Friday" "7" "July" "2017" "13:54:05" "+0000" "Xen.org security team" "security@xen.org" "<E1dTTht-0001as-0r@xenbits.xenproject.org>" "193" "[oss-security] Xen Security Advisory 217 (CVE-2017-10912) - page transfer may allow PV guest to elevate privilege" nil nil nil "7" "2017070713:54:05" "[oss-security] Xen Security Advisory 217 (CVE-2017-10912) - page transfer may allow PV guest to elevate privilege" (number mark "U       security@xen Jul  7  193/8059  " thread-indent "\"[oss-security] Xen Security Advisory 217 (CVE-2017-10912) - page transfer may allow PV guest to elevate privilege\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17697 invoked by uid 550); 7 Jul 2017 13:54:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17679 invoked from network); 7 Jul 2017 13:54:23 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1dTTht-0001as-0r@xenbits.xenproject.org>
Date: Fri, 07 Jul 2017 13:54:05 +0000
Subject: [oss-security] Xen Security Advisory 217 (CVE-2017-10912) - page transfer may
 allow PV guest to elevate privilege

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-10912 / XSA-217
                              version 3

         page transfer may allow PV guest to elevate privilege

UPDATES IN VERSION 3
====================

CVE assigned.

ISSUE DESCRIPTION
=================

Domains controlling other domains are permitted to map pages owned by
the domain being controlled.  If the controlling domain unmaps such a
page without flushing the TLB, and if soon after the domain being
controlled transfers this page to another PV domain (via
GNTTABOP_transfer or, indirectly, XENMEM_exchange), and that third
domain uses the page as a page table, the controlling domain will have
write access to a live page table until the applicable TLB entry is
flushed or evicted.  Note that the domain being controlled is
necessarily HVM, while the controlling domain is PV.

IMPACT
======

A malicious pair of guests may be able to access all of system memory,
allowing for all of privilege escalation, host crashes, and
information leaks.

VULNERABLE SYSTEMS
==================

All Xen versions are vulnerable.

Only x86 systems are affected.  ARM systems are not vulnerable.

Only systems where an attacker can control both a PV and an HVM guest
are vulnerable.  This must be presumed to include systems containing
HVM domains with service domains such as stub domain device models.

Systems containing only PV guests are not vulnerable.

Systems containing only HVM domains serviced by dom0 device model
processes are not vulnerable.  Note that with libxl, xl, and libvirt,
HVM domains use dom0 device model processes by default.

MITIGATION
==========

There is no mitigation for this vulnerability.

Switching from stub device models to dom0 process device models is not
recommended as a mitigation, as in practice the vulnerability is
likely to be hard to exploit through this route; whereas dom0 process
device models may have unknown vulnerabilities.

CREDITS
=======

This issue was discovered by Jann Horn of Google Project Zero.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa217.patch           xen-unstable, Xen 4.8.x, Xen 4.7.x, Xen 4.6.x
xsa217-4.5.patch       Xen 4.5.x

$ sha256sum xsa217*
3e896412389d8e59e417ea7bb3d5b47a20de27b8eae0420c98071ce4b17d219c  xsa217.patch
4e555cf47faf5e8d2bba4ff8a31fbe72fb11a6c0e3b286f23b26e684a1809705  xsa217-4.5.patch
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

iQEcBAEBCAAGBQJZX5IlAAoJEIP+FMlX6CvZCC8IAJ8VgkRigZpOyxl1CHP+pSGu
TZzWOS0xCMsuIkbPaGgfbgykNh7/7byWWPBZwoUSKh1gnWXIohFtRr3JvPKlsb8X
5nthArzR1biR4c9kXL7TYiLhxoInHYT3tE7tnAj6c68qxWLrkQuTW3C3kJnlVf+p
XXIju4ccV33X0hT1nqOr5P9FqhmDKgml4qeaUnEabFjXgM16/JaHM8f2k2U/FYJP
mfrh+5EeAMg3i1OdtLklMyEUXlA1IE2m7BsfnA3eMQ9xc50mjEQ/NZYhe3knv7IX
KfvRMMZgjTvEO/6GU7Qt5qlBRLj1e/jpxaviHsdZaLPoHz4Cq4WncdfyqfAJ1Dk=
=WueX
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa217.patch"
Content-Disposition: attachment; filename="xsa217.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvbW06IGRpc2FsbG93IHBhZ2Ugc3RlYWxpbmcgZnJvbSBIVk0gZG9t
YWlucwoKVGhlIG9wZXJhdGlvbidzIHN1Y2Nlc3MgY2FuJ3QgYmUgY29udHJv
bGxlZCBieSB0aGUgZ3Vlc3QsIGFzIHRoZSBkZXZpY2UKbW9kZWwgbWF5IGhh
dmUgYW4gYWN0aXZlIG1hcHBpbmcgb2YgdGhlIHBhZ2UuIElmIHdlIG5ldmVy
dGhlbGVzcwpwZXJtaXR0ZWQgdGhpcyBvcGVyYXRpb24sIHdlJ2QgaGF2ZSB0
byBhZGQgZnVydGhlciBUTEIgZmx1c2hpbmcgdG8KcHJldmVudCBzY2VuYXJp
b3MgbGlrZQoKIkRvbWFpbnMgQSAoSFZNKSwgQiAoUFYpLCBDIChQVik7IEIt
PnRhcmdldD09QQogU3RlcHM6CiAxLiBCIG1hcHMgcGFnZSBYIGZyb20gQSBh
cyB3cml0YWJsZQogMi4gQiB1bm1hcHMgcGFnZSBYIHdpdGhvdXQgYSBUTEIg
Zmx1c2gKIDMuIEEgc2VuZHMgcGFnZSBYIHRvIEMgdmlhIEdOVFRBQk9QX3Ry
YW5zZmVyCiA0LiBDIG1hcHMgcGFnZSBYIGFzIHBhZ2V0YWJsZSAocG90ZW50
aWFsbHkgY2F1c2luZyBhIFRMQiBmbHVzaCBpbiBDLAogYnV0IG5vdCBpbiBC
KQoKIEF0IHRoaXMgcG9pbnQsIFggd291bGQgYmUgbWFwcGVkIGFzIGEgcGFn
ZXRhYmxlIGluIEMgd2hpbGUgYmVpbmcKIHdyaXRhYmxlIHRocm91Z2ggYSBz
dGFsZSBUTEIgZW50cnkgaW4gQi4iCgpBIHNpbWlsYXIgc2NlbmFyaW8gY291
bGQgYmUgY29uc3RydWN0ZWQgZm9yIEEgdXNpbmcgWEVOTUVNX2V4Y2hhbmdl
IGFuZApzb21lIGFyYml0cmFyeSBQViBkb21haW4gQyB0aGVuIGhhdmluZyB0
aGlzIHBhZ2UgYWxsb2NhdGVkLgoKVGhpcyBpcyBYU0EtMjE3LgoKUmVwb3J0
ZWQtYnk6IEphbm4gSG9ybiA8amFubmhAZ29vZ2xlLmNvbT4KU2lnbmVkLW9m
Zi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpBY2tlZC1i
eTogR2VvcmdlIER1bmxhcCA8Z2VvcmdlLmR1bmxhcEBjaXRyaXguY29tPgpS
ZXZpZXdlZC1ieTogS29ucmFkIFJ6ZXN6dXRlayBXaWxrIDxrb25yYWQud2ls
a0BvcmFjbGUuY29tPgoKLS0tIGEveGVuL2FyY2gveDg2L21tLmMKKysrIGIv
eGVuL2FyY2gveDg2L21tLmMKQEAgLTQ0NDksNiArNDQ0OSw5IEBAIGludCBz
dGVhbF9wYWdlKAogICAgIGJvb2xfdCBkcm9wX2RvbV9yZWYgPSAwOwogICAg
IGNvbnN0IHN0cnVjdCBkb21haW4gKm93bmVyID0gZG9tX3hlbjsKIAorICAg
IGlmICggcGFnaW5nX21vZGVfZXh0ZXJuYWwoZCkgKQorICAgICAgICByZXR1
cm4gLTE7CisKICAgICBzcGluX2xvY2soJmQtPnBhZ2VfYWxsb2NfbG9jayk7
CiAKICAgICBpZiAoIGlzX3hlbl9oZWFwX3BhZ2UocGFnZSkgfHwgKChvd25l
ciA9IHBhZ2VfZ2V0X293bmVyKHBhZ2UpKSAhPSBkKSApCg==

--=separator
Content-Type: application/octet-stream; name="xsa217-4.5.patch"
Content-Disposition: attachment; filename="xsa217-4.5.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODYvbW06IGRpc2FsbG93IHBhZ2Ugc3RlYWxpbmcgZnJvbSBIVk0gZG9t
YWlucwoKVGhlIG9wZXJhdGlvbidzIHN1Y2Nlc3MgY2FuJ3QgYmUgY29udHJv
bGxlZCBieSB0aGUgZ3Vlc3QsIGFzIHRoZSBkZXZpY2UKbW9kZWwgbWF5IGhh
dmUgYW4gYWN0aXZlIG1hcHBpbmcgb2YgdGhlIHBhZ2UuIElmIHdlIG5ldmVy
dGhlbGVzcwpwZXJtaXR0ZWQgdGhpcyBvcGVyYXRpb24sIHdlJ2QgaGF2ZSB0
byBhZGQgZnVydGhlciBUTEIgZmx1c2hpbmcgdG8KcHJldmVudCBzY2VuYXJp
b3MgbGlrZQoKIkRvbWFpbnMgQSAoSFZNKSwgQiAoUFYpLCBDIChQVik7IEIt
PnRhcmdldD09QQogU3RlcHM6CiAxLiBCIG1hcHMgcGFnZSBYIGZyb20gQSBh
cyB3cml0YWJsZQogMi4gQiB1bm1hcHMgcGFnZSBYIHdpdGhvdXQgYSBUTEIg
Zmx1c2gKIDMuIEEgc2VuZHMgcGFnZSBYIHRvIEMgdmlhIEdOVFRBQk9QX3Ry
YW5zZmVyCiA0LiBDIG1hcHMgcGFnZSBYIGFzIHBhZ2V0YWJsZSAocG90ZW50
aWFsbHkgY2F1c2luZyBhIFRMQiBmbHVzaCBpbiBDLAogYnV0IG5vdCBpbiBC
KQoKIEF0IHRoaXMgcG9pbnQsIFggd291bGQgYmUgbWFwcGVkIGFzIGEgcGFn
ZXRhYmxlIGluIEMgd2hpbGUgYmVpbmcKIHdyaXRhYmxlIHRocm91Z2ggYSBz
dGFsZSBUTEIgZW50cnkgaW4gQi4iCgpBIHNpbWlsYXIgc2NlbmFyaW8gY291
bGQgYmUgY29uc3RydWN0ZWQgZm9yIEEgdXNpbmcgWEVOTUVNX2V4Y2hhbmdl
IGFuZApzb21lIGFyYml0cmFyeSBQViBkb21haW4gQyB0aGVuIGhhdmluZyB0
aGlzIHBhZ2UgYWxsb2NhdGVkLgoKVGhpcyBpcyBYU0EtMjE3LgoKUmVwb3J0
ZWQtYnk6IEphbm4gSG9ybiA8amFubmhAZ29vZ2xlLmNvbT4KU2lnbmVkLW9m
Zi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpBY2tlZC1i
eTogR2VvcmdlIER1bmxhcCA8Z2VvcmdlLmR1bmxhcEBjaXRyaXguY29tPgpS
ZXZpZXdlZC1ieTogS29ucmFkIFJ6ZXN6dXRlayBXaWxrIDxrb25yYWQud2ls
a0BvcmFjbGUuY29tPgoKLS0tIGEveGVuL2FyY2gveDg2L21tLmMKKysrIGIv
eGVuL2FyY2gveDg2L21tLmMKQEAgLTQyMTcsNiArNDIxNyw5IEBAIGludCBz
dGVhbF9wYWdlKAogICAgIHVuc2lnbmVkIGxvbmcgeCwgeTsKICAgICBib29s
X3QgZHJvcF9kb21fcmVmID0gMDsKIAorICAgIGlmICggcGFnaW5nX21vZGVf
ZXh0ZXJuYWwoZCkgKQorICAgICAgICByZXR1cm4gLTE7CisKICAgICBzcGlu
X2xvY2soJmQtPnBhZ2VfYWxsb2NfbG9jayk7CiAKICAgICBpZiAoIGlzX3hl
bl9oZWFwX3BhZ2UocGFnZSkgfHwgKHBhZ2VfZ2V0X293bmVyKHBhZ2UpICE9
IGQpICkK

--=separator--
