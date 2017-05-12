X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6365" "Friday" "12" "May" "2017" "10:45:32" "+0000" "Xen.org security team" "security@xen.org" "<E1d984i-000765-Pi@xenbits.xenproject.org>" "160" "[oss-security] Xen Security Advisory 215 (CVE-2017-8905) - possible memory corruption via failsafe callback" nil nil nil "5" "2017051210:45:32" "[oss-security] Xen Security Advisory 215 (CVE-2017-8905) - possible memory corruption via failsafe callback" (number mark "U       security@xen May 12  160/6365  " thread-indent "\"[oss-security] Xen Security Advisory 215 (CVE-2017-8905) - possible memory corruption via failsafe callback\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23821 invoked by uid 550); 12 May 2017 10:45:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23799 invoked from network); 12 May 2017 10:45:49 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1d984i-000765-Pi@xenbits.xenproject.org>
Date: Fri, 12 May 2017 10:45:32 +0000
Subject: [oss-security] Xen Security Advisory 215 (CVE-2017-8905) - possible memory
 corruption via failsafe callback

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-8905 / XSA-215
                              version 3

           possible memory corruption via failsafe callback

UPDATES IN VERSION 3
====================

CVE assigned.

ISSUE DESCRIPTION
=================

Under certain special conditions Xen reports an exception resulting
from returning to guest mode not via ordinary exception entry points,
but via a so call failsafe callback.  This callback, unlike exception
handlers, takes 4 extra arguments on the stack (the saved data
selectors DS, ES, FS, and GS).  Prior to placing exception or failsafe
callback frames on the guest kernel stack, Xen checks the linear
address range to not overlap with hypervisor space.  The range spanned
by that check was mistakenly not covering these extra 4 slots.

IMPACT
======

A malicious or buggy 64-bit PV guest may be able to modify part of a
physical memory page not belonging to it, potentially allowing for all
of privilege escalation, host or other guest crashes, and information
leaks.

VULNERABLE SYSTEMS
==================

64-bit Xen versions 4.6 and earlier are vulnerable.  Xen versions 4.7
and later are not vulnerable.

Only x86 systems are affected.  ARM systems are not vulnerable.

Only x86 systems with physical memory extending to a configuration
dependent boundary (5Tb or 3.5Tb) may be affected.  Whether they are
actually affected depends on actual physical memory layout.

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

xsa215.patch       Xen 4.6.x, Xen 4.5.x

$ sha256sum xsa215*
5be4ff661dd22890b0120f86beee3ec809e2a29f833db8c48bd70ce98e9691ee  xsa215.patch
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

iQEcBAEBCAAGBQJZFZIqAAoJEIP+FMlX6CvZQUoIAMBeK3zz4qoOtlR92dLGyYkT
PlITMMsz1PbkZapt/pdsuQFVRC0P7UXdJ/u1GjJLJqOBSsUOnlJ9m9uTjDW7KJTm
5Dch1lYO0npQLAcpr32KvDGDFt5dp+Cqn0NiGFV4yFsdMLnhW8Wyugc8DhJgVcv9
2PPZ5IlFFlrdCs4g6jMFy7rdM/r6d6wyPQukE6L0VObHv5MsqVgg+p01/yk/uDaz
KHSlHdfAfuxpMbKPZ2cz/rWQYN2xwV6foZ2pn1WHQln9NxXzQWSR8J5KZj3BLXME
+i1cg/aRm3jHM+SZDRXwton51SAkTpCYW5/n+QqbGJd7NN6+GMk14t8Y3wKSZVA=
=skSs
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa215.patch"
Content-Disposition: attachment; filename="xsa215.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODY6IGNvcnJlY3QgY3JlYXRlX2JvdW5jZV9mcmFtZQoKV2UgbWF5IHB1
c2ggdXAgdG8gOTYgYnl0ZXMgb24gdGhlIGd1ZXN0IChrZXJuZWwpIHN0YWNr
LCBzbyB3ZSBzaG91bGQKYWxzbyBjb3ZlciBhcyBtdWNoIGluIHRoZSBlYXJs
eSByYW5nZSBjaGVjay4gTm90ZSB0aGF0IHRoaXMgaXMgdGhlCnNpbXBsZXN0
IHBvc3NpYmxlIHBhdGNoLCB3aGljaCBoYXMgdGhlIHRoZW9yZXRpY2FsIHBv
dGVudGlhbCBvZgpicmVha2luZyBhIGd1ZXN0OiBXZSBvbmx5IHJlYWxseSBw
dXNoIDk2IGJ5dGVzIHdoZW4gaW52b2tpbmcgdGhlCmZhaWxzYWZlIGNhbGxi
YWNrLCBvcmRpbmFyeSBleGNlcHRpb25zIG9ubHkgaGF2ZSA1NiBvciA2NCBi
eXRlcyBwdXNoZWQKKHdpdGhvdXQgLyB3aXRoIGVycm9yIGNvZGUgcmVzcGVj
dGl2ZWx5KS4gVGhlcmUgaXMsIGhvd2V2ZXIsIG5vIFBWIE9TCmtub3duIHRv
IHBsYWNlIGEga2VybmVsIHN0YWNrIHRoZXJlLgoKVGhpcyBpcyBYU0EtMjE1
LgoKUmVwb3J0ZWQtYnk6IEphbm4gSG9ybiA8amFubmhAZ29vZ2xlLmNvbT4K
U2lnbmVkLW9mZi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29t
PgpSZXZpZXdlZC1ieTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNA
Y2l0cml4LmNvbT4KCi0tLSBhL3hlbi9hcmNoL3g4Ni94ODZfNjQvZW50cnku
UworKysgYi94ZW4vYXJjaC94ODYveDg2XzY0L2VudHJ5LlMKQEAgLTM0Nyw3
ICszNDcsNyBAQCBpbnQ4MF9zbG93X3BhdGg6CiAgICAgICAgIGptcCAgIGhh
bmRsZV9leGNlcHRpb25fc2F2ZWQKIAogLyogQ1JFQVRFIEEgQkFTSUMgRVhD
RVBUSU9OIEZSQU1FIE9OIEdVRVNUIE9TIFNUQUNLOiAgICAgICAgICAgICAg
ICAgICAgICovCi0vKiAgIHsgUkNYLCBSMTEsIFtEUy1HUyxdIFtDUjIsXSBb
RVJSQ09ERSxdIFJJUCwgQ1MsIFJGTEFHUywgUlNQLCBTUyB9ICAgKi8KKy8q
ICAgeyBSQ1gsIFIxMSwgW0RTLUdTLF0gW0VSUkNPREUsXSBSSVAsIENTLCBS
RkxBR1MsIFJTUCwgU1MgfSAgICAgICAgICAqLwogLyogJXJkeDogdHJhcF9i
b3VuY2UsICVyYng6IHN0cnVjdCB2Y3B1ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICovCiAvKiBPbiByZXR1cm4gb25seSAlcmJ4IGFuZCAl
cmR4IGFyZSBndWFyYW50ZWVkIG5vbi1jbG9iYmVyZWQuICAgICAgICAgICAg
Ki8KIGNyZWF0ZV9ib3VuY2VfZnJhbWU6CkBAIC0zNjcsNyArMzY3LDcgQEAg
Y3JlYXRlX2JvdW5jZV9mcmFtZToKIDI6ICAgICAgYW5kcSAgJH4weGYsJXJz
aSAgICAgICAgICAgICAgICAjIFN0YWNrIGZyYW1lcyBhcmUgMTYtYnl0ZSBh
bGlnbmVkLgogICAgICAgICBtb3ZxICAkSFlQRVJWSVNPUl9WSVJUX1NUQVJU
LCVyYXgKICAgICAgICAgY21wcSAgJXJheCwlcnNpCi0gICAgICAgIG1vdnEg
ICRIWVBFUlZJU09SX1ZJUlRfRU5EKzYwLCVyYXgKKyAgICAgICAgbW92cSAg
JEhZUEVSVklTT1JfVklSVF9FTkQrMTIqOCwlcmF4CiAgICAgICAgIHNiYiAg
ICVlY3gsJWVjeCAgICAgICAgICAgICAgICAgIyBJbiArdmUgYWRkcmVzcyBz
cGFjZT8gVGhlbiBva2F5LgogICAgICAgICBjbXBxICAlcmF4LCVyc2kKICAg
ICAgICAgYWRjICAgJWVjeCwlZWN4ICAgICAgICAgICAgICAgICAjIEFib3Zl
IFhlbiBwcml2YXRlIGFyZWE/IFRoZW4gb2theS4K

--=separator--
