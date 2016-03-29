X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9830" "Tuesday" "29" "March" "2016" "12:00:22" "+0000" "Xen.org security team" "security@xen.org" "<E1aksJq-0004UH-Qn@xenbits.xenproject.org>" "235" "[oss-security] Xen Security Advisory 172 (CVE-2016-3158,CVE-2016-3159) - broken AMD FPU FIP/FDP/FOP leak workaround" nil nil nil "3" "2016032912:00:22" "[oss-security] Xen Security Advisory 172 (CVE-2016-3158,CVE-2016-3159) - broken AMD FPU FIP/FDP/FOP leak workaround" (number mark "U       security@xen Mar 29  235/9830  " thread-indent "\"[oss-security] Xen Security Advisory 172 (CVE-2016-3158,CVE-2016-3159) - broken AMD FPU FIP/FDP/FOP leak workaround\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6056 invoked by uid 550); 29 Mar 2016 12:00:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6035 invoked from network); 29 Mar 2016 12:00:46 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1aksJq-0004UH-Qn@xenbits.xenproject.org>
Date: Tue, 29 Mar 2016 12:00:22 +0000
Subject: [oss-security] Xen Security Advisory 172 (CVE-2016-3158,CVE-2016-3159) - broken
 AMD FPU FIP/FDP/FOP leak workaround

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

     Xen Security Advisory CVE-2016-3158,CVE-2016-3159 / XSA-172
                              version 3

              broken AMD FPU FIP/FDP/FOP leak workaround

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

There is a workaround in Xen to deal with the fact that AMD CPUs don't
load the x86 registers FIP (and possibly FCS), FDP (and possibly FDS),
and FOP from memory (via XRSTOR or FXRSTOR) when there is no pending
unmasked exception.  (See XSA-52.)

However, this workaround does not cover all possible input cases.
This is because writes to the hardware FSW.ES bit, which the current
workaround is based on, are ignored; instead, the CPU calculates
FSW.ES from the pending exception and exception mask bits.  Xen
therefore needs to do the same.

Note that part of said workaround was the subject of XSA-52.

This can leak register contents from one guest to another.  The
registers in question are the FPU instruction and data pointers and
opcode.

IMPACT
======

A malicious domain is able to obtain address space usage and timing
information, about another domain, at a fairly low rate.

The leaked address information might be used to help defeat address
space randomisation in order to enable another attack.  The leaked
address and timing information forms a low-bandwidth covert channel
which might be used to gain information about the operation of a
target guest.

The affected FPU facility would not normally be used by cryptographic
operations, as it does not provide cryptographically-relevant SIMD
functions.

It appears to us very unlikely that the leak might directly compromise
sensitive information such as cryptographic keys, although (without
knowledge of the guest software) this cannot be ruled out.  (This is
notwithstanding the contrary statement in `Impact' in XSA-52.)

VULNERABLE SYSTEMS
==================

Xen versions 4.0 and onwards are vulnerable.  Any kind of guest can
exploit the vulnerability.

The vulnerability is exposed only on AMD x86 systems.  Intel and ARM
systems do not expose this vulnerability.

Both PV and HVM guests are affected.

MITIGATION
==========

The vulnerability can be avoided if the guest kernel is controlled by
the host rather than guest administrator, provided that further steps
are taken to prevent the guest administrator from loading code into
the kernel (e.g. by disabling loadable modules etc) or from using
other mechanisms which allow them to run code at kernel privilege.

On Xen versions 4.3 and earlier, turning off XSAVE support via the
"no-xsave" hypervisor command line option will avoid the vulnerability.

On Xen versions 4.4 and onwards there is no other known mitigation.

CREDITS
=======

This issue was discovered by Jan Beulich from SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa172.patch           xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x
xsa172-4.3.patch       Xen 4.3.x

$ sha256sum xsa172*
f18282fcb794b8772bc3af51d56860050071bd62a5a909b8f2fc2018e2958154  xsa172.patch
6aac179620afcdbdab041163239019bc35b0e243f3bd16673caaec7d5a4d97ec  xsa172-4.3.patch
$

NOTE REGARDING CVE
==================

CVE-2016-3158 is for the code change which is required for all
versions (but which is sufficient only on Xen 4.3.x, and insufficient
on later versions).  Ie for the second hunk in xsa172.patch (the only
hunk in xsa172-4.3.patch), which patches the function xrstor.

CVE-2016-3159 is for the code change which is applicable for later
versions only, but which must always be combined with the code change
for CVE-2016-3158.  Ie for the first hunk in xsa172.patch, which
patches the function fpu_fxrstor.

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the PATCH or the TRUSTED KERNEL MITIGATION (or others
which are substantially similar) is permitted during the embargo, even
on public-facing systems with untrusted guest users and
administrators.

However deployment of the "no-xsave" MITIGATION is NOT permitted
(except where all the affected systems and VMs are administered and
used only by organisations which are members of the Xen Project
Security Issues Predisclosure List).  Specifically, deployment on
public cloud systems is NOT permitted.

This is because such a host configuration change would be guest-visible
which could lead to the rediscovery of the vulnerability.

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

iQEcBAEBAgAGBQJW9BUjAAoJEIP+FMlX6CvZh0sH/RMRw5mKOjz4IPUFVlxXvJYr
4BYbJyitDX6uX6Hdp8XosqrMfTqpDWNYzTPS4UMOmSZq0JSSSeRDB5esM3otQSzl
Vnq8toyl2IeDZAZ7KhLTOUGF1libSGyE32MCLP32XOwbAaWRD01ld71M4P2+Cmuz
JFqgfRQxgqzcrfZP74CqfbAdU9sxIq5Py6BHBdSOlKuZMF7RPZbIpy2KwdAmIUZJ
IXnwlWvXvg5Uq3RfzRPJ10EaaQhIajgSxGGOViVXEVObY48jbcXFB3xTTT49CMB2
GqNK+CjUTVvfTFe2jFYu1Uscwot85tgsu09zui3Jleml1dhs6eIM4vKcLG96g1E=
=ojN8
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa172.patch"
Content-Disposition: attachment; filename="xsa172.patch"
Content-Transfer-Encoding: base64

eDg2OiBmaXggaW5mb3JtYXRpb24gbGVhayBvbiBBTUQgQ1BVcwoKVGhlIGZp
eCBmb3IgWFNBLTUyIHdhcyB3cm9uZywgYW5kIHNvIHdhcyB0aGUgY2hhbmdl
IHN5bmNocm9uaXppbmcgdGhhdApuZXcgYmVoYXZpb3IgdG8gdGhlIEZYUlNU
T1IgbG9naWM6IEFNRCdzIG1hbnVhbHMgZXhwbGljdGx5IHN0YXRlIHRoYXQK
d3JpdGVzIHRvIHRoZSBFUyBiaXQgYXJlIGlnbm9yZWQsIGFuZCBpdCBpbnN0
ZWFkIGdldHMgY2FsY3VsYXRlZCBmcm9tCnRoZSBleGNlcHRpb24gYW5kIG1h
c2sgYml0cyAoaXQgZ2V0cyBzZXQgd2hlbmV2ZXIgdGhlcmUgaXMgYW4gdW5t
YXNrZWQKZXhjZXB0aW9uLCBhbmQgY2xlYXJlZCBvdGhlcndpc2UpLiBIZW5j
ZSB3ZSBuZWVkIHRvIGZvbGxvdyB0aGF0IG1vZGVsCmluIG91ciB3b3JrYXJv
dW5kLgoKVGhpcyBpcyBYU0EtMTcyLgoKVGhlIGZpcnN0IGh1bmsgKHhlbi9h
cmNoL3g4Ni9pMzg3LmM6ZnB1X2Z4cnN0b3IpIGlzIENWRS0yMDE2LTMxNTku
ClRoZSBzZWNvbmQgaHVuayAoeGVuL2FyY2gveDg2L3hzdGF0ZS5jOnhyc3Rv
cikgaXMgQ1ZFLTIwMTYtMzE1OC4KClNpZ25lZC1vZmYtYnk6IEphbiBCZXVs
aWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KUmV2aWV3ZWQtYnk6IEFuZHJldyBD
b29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+CgotLS0gYS94ZW4v
YXJjaC94ODYvaTM4Ny5jCisrKyBiL3hlbi9hcmNoL3g4Ni9pMzg3LmMKQEAg
LTQ5LDcgKzQ5LDcgQEAgc3RhdGljIGlubGluZSB2b2lkIGZwdV9meHJzdG9y
KHN0cnVjdCB2YwogICAgICAqIHNvbWV0aW1lcyBuZXcgdXNlciB2YWx1ZS4g
Qm90aCBzaG91bGQgYmUgb2suIFVzZSB0aGUgRlBVIHNhdmVkCiAgICAgICog
ZGF0YSBibG9jayBhcyBhIHNhZmUgYWRkcmVzcyBiZWNhdXNlIGl0IHNob3Vs
ZCBiZSBpbiBMMS4KICAgICAgKi8KLSAgICBpZiAoICEoZnB1X2N0eHQtPmZz
dyAmIDB4MDA4MCkgJiYKKyAgICBpZiAoICEoZnB1X2N0eHQtPmZzdyAmIH5m
cHVfY3R4dC0+ZmN3ICYgMHgwMDNmKSAmJgogICAgICAgICAgYm9vdF9jcHVf
ZGF0YS54ODZfdmVuZG9yID09IFg4Nl9WRU5ET1JfQU1EICkKICAgICB7CiAg
ICAgICAgIGFzbSB2b2xhdGlsZSAoICJmbmNsZXhcblx0IgotLS0gYS94ZW4v
YXJjaC94ODYveHN0YXRlLmMKKysrIGIveGVuL2FyY2gveDg2L3hzdGF0ZS5j
CkBAIC0zNDQsNyArMzQ0LDcgQEAgdm9pZCB4cnN0b3Ioc3RydWN0IHZjcHUg
KnYsIHVpbnQ2NF90IG1hcwogICAgICAqIGRhdGEgYmxvY2sgYXMgYSBzYWZl
IGFkZHJlc3MgYmVjYXVzZSBpdCBzaG91bGQgYmUgaW4gTDEuCiAgICAgICov
CiAgICAgaWYgKCAobWFzayAmIHB0ci0+eHNhdmVfaGRyLnhzdGF0ZV9idiAm
IFhTVEFURV9GUCkgJiYKLSAgICAgICAgICEocHRyLT5mcHVfc3NlLmZzdyAm
IDB4MDA4MCkgJiYKKyAgICAgICAgICEocHRyLT5mcHVfc3NlLmZzdyAmIH5w
dHItPmZwdV9zc2UuZmN3ICYgMHgwMDNmKSAmJgogICAgICAgICAgYm9vdF9j
cHVfZGF0YS54ODZfdmVuZG9yID09IFg4Nl9WRU5ET1JfQU1EICkKICAgICAg
ICAgYXNtIHZvbGF0aWxlICggImZuY2xleFxuXHQiICAgICAgICAvKiBjbGVh
ciBleGNlcHRpb25zICovCiAgICAgICAgICAgICAgICAgICAgICAgICJmZnJl
ZSAlJXN0KDcpXG5cdCIgLyogY2xlYXIgc3RhY2sgdGFnICovCg==

--=separator
Content-Type: application/octet-stream; name="xsa172-4.3.patch"
Content-Disposition: attachment; filename="xsa172-4.3.patch"
Content-Transfer-Encoding: base64

eDg2OiBmaXggaW5mb3JtYXRpb24gbGVhayBvbiBBTUQgQ1BVcwoKVGhlIGZp
eCBmb3IgWFNBLTUyIHdhcyB3cm9uZywgYW5kIHNvIHdhcyB0aGUgY2hhbmdl
IHN5bmNocm9uaXppbmcgdGhhdApuZXcgYmVoYXZpb3IgdG8gdGhlIEZYUlNU
T1IgbG9naWM6IEFNRCdzIG1hbnVhbHMgZXhwbGljdGx5IHN0YXRlIHRoYXQK
d3JpdGVzIHRvIHRoZSBFUyBiaXQgYXJlIGlnbm9yZWQsIGFuZCBpdCBpbnN0
ZWFkIGdldHMgY2FsY3VsYXRlZCBmcm9tCnRoZSBleGNlcHRpb24gYW5kIG1h
c2sgYml0cyAoaXQgZ2V0cyBzZXQgd2hlbmV2ZXIgdGhlcmUgaXMgYW4gdW5t
YXNrZWQKZXhjZXB0aW9uLCBhbmQgY2xlYXJlZCBvdGhlcndpc2UpLiBIZW5j
ZSB3ZSBuZWVkIHRvIGZvbGxvdyB0aGF0IG1vZGVsCmluIG91ciB3b3JrYXJv
dW5kLgoKVGhpcyBpcyBYU0EtMTcyIC8gQ1ZFLTIwMTYtMzE1OC4KClNpZ25l
ZC1vZmYtYnk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KUmV2
aWV3ZWQtYnk6IEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJp
eC5jb20+CgotLS0gYS94ZW4vYXJjaC94ODYveHN0YXRlLmMKKysrIGIveGVu
L2FyY2gveDg2L3hzdGF0ZS5jCkBAIC0xNTgsNyArMTU4LDcgQEAgdm9pZCB4
cnN0b3Ioc3RydWN0IHZjcHUgKnYsIHVpbnQ2NF90IG1hcwogICAgICAqIGRh
dGEgYmxvY2sgYXMgYSBzYWZlIGFkZHJlc3MgYmVjYXVzZSBpdCBzaG91bGQg
YmUgaW4gTDEuCiAgICAgICovCiAgICAgaWYgKCAobWFzayAmIHB0ci0+eHNh
dmVfaGRyLnhzdGF0ZV9idiAmIFhTVEFURV9GUCkgJiYKLSAgICAgICAgICEo
cHRyLT5mcHVfc3NlLmZzdyAmIDB4MDA4MCkgJiYKKyAgICAgICAgICEocHRy
LT5mcHVfc3NlLmZzdyAmIH5wdHItPmZwdV9zc2UuZmN3ICYgMHgwMDNmKSAm
JgogICAgICAgICAgYm9vdF9jcHVfZGF0YS54ODZfdmVuZG9yID09IFg4Nl9W
RU5ET1JfQU1EICkKICAgICAgICAgYXNtIHZvbGF0aWxlICggImZuY2xleFxu
XHQiICAgICAgICAvKiBjbGVhciBleGNlcHRpb25zICovCiAgICAgICAgICAg
ICAgICAgICAgICAgICJmZnJlZSAlJXN0KDcpXG5cdCIgLyogY2xlYXIgc3Rh
Y2sgdGFnICovCg==

--=separator--
