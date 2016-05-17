X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6266" "Tuesday" "17" "May" "2016" "12:11:20" "+0000" "Xen.org security team" "security@xen.org" "<E1b2dqK-0008FL-IE@xenbits.xenproject.org>" "159" "[oss-security] Xen Security Advisory 176 (CVE-2016-4480) - x86 software guest page walk PS bit handling flaw" nil nil nil "5" "2016051712:11:20" "[oss-security] Xen Security Advisory 176 (CVE-2016-4480) - x86 software guest page walk PS bit handling flaw" (number mark "U       security@xen May 17  159/6266  " thread-indent "\"[oss-security] Xen Security Advisory 176 (CVE-2016-4480) - x86 software guest page walk PS bit handling flaw\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15994 invoked by uid 550); 17 May 2016 13:51:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21542 invoked from network); 17 May 2016 12:11:40 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1b2dqK-0008FL-IE@xenbits.xenproject.org>
Date: Tue, 17 May 2016 12:11:20 +0000
Subject: [oss-security] Xen Security Advisory 176 (CVE-2016-4480) - x86 software guest
 page walk PS bit handling flaw

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

             Xen Security Advisory CVE-2016-4480 / XSA-176
                               version 3

           x86 software guest page walk PS bit handling flaw

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

The Page Size (PS) page table entry bit exists at all page table levels
other than L1.  Its meaning is reserved in L4, and conditionally
reserved in L3 and L2 (depending on hardware capabilities).  The
software page table walker in the hypervisor, however, so far ignored
that bit in L4 and (on respective hardware) L3 entries, resulting in
pages to be treated as page tables which the guest OS may not have
designated as such.  If the page in question is writable by an
unprivileged user, then that user will be able to map arbitrary guest
memory.

IMPACT
======

On vulnerable OSes, guest user mode code may be able to establish
mappings of arbitrary memory inside the guest, allowing it to elevate
its privileges inside the guest.

VULNERABLE SYSTEMS
==================

All Xen versions expose the vulnerability.

ARM systems are not vulnerable.  x86 PV guests are not vulnerable.

To be vulnerable, a system must have both a vulnerable hypervisor, and
a vulnerable guest operating system, i.e. ones which make non-standard
use of the PS bit.  We are not aware of any vulnerable guest operating
systems, but we cannot rule it out.  We have checked with maintainers
of the following operating systems, all of whom have said that to the
best of their knowledge their operating system is not vulnerable:
Linux, FreeBSD, NetBSD, OpenBSD, and Solaris.  Nor has it been observed
in common proprietary operating systems.

MITIGATION
==========

Running only PV guests will avoid this issue.

CREDITS
=======

This issue was discovered by Jan Beulich from SUSE.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note, however, that on hosts supporting 1Gb page mappings, for guests
which get this capability hidden via CPUID override in their config
file, fully correct behavior cannot be provided when using HAP paging.
This is a result of hardware behavior, which software cannot mitigate.
If that is a concern, such guests would need to be run in shadow paging
mode.

xsa176.patch      xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa176*
e61c52477a8d8aa79111d686b103202ff8a558d8b3356635288c1290789b7eb3  xsa176.patch
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

iQEcBAEBAgAGBQJXOvhuAAoJEIP+FMlX6CvZ8JgH/A7YU+62hV5ayIx77AEwHeIJ
6nqf6B1k+Y0aEtiSbupHDIMwSw13FoR+LluaZjTXpBd251Ut1cwXkDvC6yiPHxq0
rWlb1/ka0rnOT3/rx0SgUjx02HbBzOFyyhZgR6W/gXV/S5fQhE26KbhEWvVaYCXO
QeryIsi9WBV/AWbx4fis4ecREhyEWPYkJ/bQq867P6YJLXQ1btc/CyZ7ahBjna68
VB9WE8czSs2x5QjJfKad5ksRAixdvaLFtVNOhnqJuJBickO3dd/IZPRxcSmazjdl
sIiSMfKU9nPb56MIgZxTWCLpvYLe8yarnvjiVOivaHl2cBT01UOjVJv/dSQEyrw=
=uQdJ
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa176.patch"
Content-Disposition: attachment; filename="xsa176.patch"
Content-Transfer-Encoding: base64

eDg2L21tOiBmdWxseSBob25vciBQUyBiaXRzIGluIGd1ZXN0IHBhZ2UgdGFi
bGUgd2Fsa3MKCkluIEw0IGVudHJpZXMgaXQgaXMgY3VycmVudGx5IHVuY29u
ZGl0aW9uYWxseSByZXNlcnZlZCAoYW5kIGhlbmNlCnNob3VsZCwgd2hlbiBz
ZXQsIGFsd2F5cyByZXN1bHQgaW4gYSByZXNlcnZlZCBiaXQgcGFnZSBmYXVs
dCksIGFuZCBpcwpyZXNlcnZlZCBvbiBoYXJkd2FyZSBub3Qgc3VwcG9ydGlu
ZyAxR2IgcGFnZXMgKGFuZCBoZW5jZSBzaG91bGQsIHdoZW4Kc2V0LCBzaW1p
bGFybHkgY2F1c2UgYSByZXNlcnZlZCBiaXQgcGFnZSBmYXVsdCBvbiBzdWNo
IGhhcmR3YXJlKS4KClRoaXMgaXMgQ1ZFLTIwMTYtNDQ4MCAvIFhTQS0xNzYu
CgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5j
b20+ClJldmlld2VkLWJ5OiBBbmRyZXcgQ29vcGVyIDxhbmRyZXcuY29vcGVy
M0BjaXRyaXguY29tPgpUZXN0ZWQtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJl
dy5jb29wZXIzQGNpdHJpeC5jb20+CgotLS0gYS94ZW4vYXJjaC94ODYvbW0v
Z3Vlc3Rfd2Fsay5jCisrKyBiL3hlbi9hcmNoL3g4Ni9tbS9ndWVzdF93YWxr
LmMKQEAgLTIyNiw2ICsyMjYsMTEgQEAgZ3Vlc3Rfd2Fsa190YWJsZXMoc3Ry
dWN0IHZjcHUgKnYsIHN0cnVjdAogICAgICAgICByYyB8PSBfUEFHRV9QUkVT
RU5UOwogICAgICAgICBnb3RvIG91dDsKICAgICB9CisgICAgaWYgKCBnZmxh
Z3MgJiBfUEFHRV9QU0UgKQorICAgIHsKKyAgICAgICAgcmMgfD0gX1BBR0Vf
UFNFIHwgX1BBR0VfSU5WQUxJRF9CSVQ7CisgICAgICAgIGdvdG8gb3V0Owor
ICAgIH0KICAgICByYyB8PSAoKGdmbGFncyAmIG1mbGFncykgXiBtZmxhZ3Mp
OwogCiAgICAgLyogTWFwIHRoZSBsMyB0YWJsZSAqLwpAQCAtMjQ3LDcgKzI1
Miw3IEBAIGd1ZXN0X3dhbGtfdGFibGVzKHN0cnVjdCB2Y3B1ICp2LCBzdHJ1
Y3QKICAgICB9CiAgICAgcmMgfD0gKChnZmxhZ3MgJiBtZmxhZ3MpIF4gbWZs
YWdzKTsKICAgICAKLSAgICBwc2UxRyA9IChnZmxhZ3MgJiBfUEFHRV9QU0Up
ICYmIGd1ZXN0X3N1cHBvcnRzXzFHX3N1cGVycGFnZXModik7IAorICAgIHBz
ZTFHID0gISEoZ2ZsYWdzICYgX1BBR0VfUFNFKTsKIAogICAgIGlmICggcHNl
MUcgKQogICAgIHsKQEAgLTI2Nyw2ICsyNzIsOCBAQCBndWVzdF93YWxrX3Rh
YmxlcyhzdHJ1Y3QgdmNwdSAqdiwgc3RydWN0CiAgICAgICAgICAgICAvKiBf
UEFHRV9QU0VfUEFUIG5vdCBzZXQ6IHJlbW92ZSBfUEFHRV9QQVQgZnJvbSBm
bGFncy4gKi8KICAgICAgICAgICAgIGZsYWdzICY9IH5fUEFHRV9QQVQ7CiAK
KyAgICAgICAgaWYgKCAhZ3Vlc3Rfc3VwcG9ydHNfMUdfc3VwZXJwYWdlcyh2
KSApCisgICAgICAgICAgICByYyB8PSBfUEFHRV9QU0UgfCBfUEFHRV9JTlZB
TElEX0JJVDsKICAgICAgICAgaWYgKCBnZm5feChzdGFydCkgJiBHVUVTVF9M
M19HRk5fTUFTSyAmIH4weDEgKQogICAgICAgICAgICAgcmMgfD0gX1BBR0Vf
SU5WQUxJRF9CSVRTOwogCg==

--=separator--
