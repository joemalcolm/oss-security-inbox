X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6661" "Tuesday" "22" "November" "2016" "12:02:35" "+0000" "Xen.org security team" "security@xen.org" "<E1c99mV-00089H-W1@xenbits.xenproject.org>" "173" "[oss-security] Xen Security Advisory 195 (CVE-2016-9383) - x86 64-bit bit test instruction emulation broken" nil nil nil "11" "2016112212:02:35" "[oss-security] Xen Security Advisory 195 (CVE-2016-9383) - x86 64-bit bit test instruction emulation broken" (number mark "U       security@xen Nov 22  173/6661  " thread-indent "\"[oss-security] Xen Security Advisory 195 (CVE-2016-9383) - x86 64-bit bit test instruction emulation broken\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32288 invoked by uid 550); 22 Nov 2016 14:50:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32291 invoked from network); 22 Nov 2016 12:02:59 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1c99mV-00089H-W1@xenbits.xenproject.org>
Date: Tue, 22 Nov 2016 12:02:35 +0000
Subject: [oss-security] Xen Security Advisory 195 (CVE-2016-9383) - x86 64-bit bit test
 instruction emulation broken

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-9383 / XSA-195
                              version 3

           x86 64-bit bit test instruction emulation broken

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

The x86 instructions BT, BTC, BTR, and BTS, when used with a
destination memory operand and a source register rather than an
immediate operand, access a memory location offset from that specified
by the memory operand as specified by the high bits of the register
source.

When Xen needs to emulate such an instruction, to efficiently handle
the emulation, the memory address and register operand are
recalculated internally to Xen.  In this process, the high bits of an
intermediate expression were discarded, leading to both the memory
location and the register operand being wrong.

The wrong memory location would have only a guest local effect (either
access to an unintended location, or a fault delivered to the guest),
whereas the wrong register value could lead to either a host crash or
an unintended host memory access.

IMPACT
======

A malicious guest can modify arbitrary memory, allowing for arbitrary
code execution (and therefore privilege escalation affecting the whole
host), a crash of the host (leading to a DoS), or information leaks.

The vulnerability is sometimes exploitable by unprivileged guest user
processes.

VULNERABLE SYSTEMS
==================

All Xen versions are affected.

The vulnerability is only exposed to x86 guests running in 64-bit mode.

On Xen 4.6 and earlier the vulnerability is exposed to all guest user
processes, including unprivileged processes, in such guests.

On Xen 4.7 and later, the vulnerability is exposed only to guest user
processes granted a degree of privilege (such as direct hardware
access) by the guest administrator; or, to all user processes when the
when the VM has been explicitly configured with a non-default cpu
vendor string (in xm/xl, this would be done with a `cpuid=' domain
config option).

The vulnerability is not exposed to 32-bit PV guests.

ARM systems are not vulnerable.

MITIGATION
==========

There is no known mitigation.

CREDITS
=======

This issue was discovered by George Dunlap of Citrix, using American
Fuzzy Lop v2.35b.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa195.patch       xen-unstable, Xen 4.7.x, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x

$ sha256sum xsa195*
6ab5f13b81e3bbf6096020f4c3beeffaff67a075cab67e033ba27d199b41cec1  xsa195.patch
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

iQEcBAEBAgAGBQJYNDL4AAoJEIP+FMlX6CvZnzYH/RtmqS8kpqLKShvrQx5Ueh+M
LaHBWJiU0z1m9FaF9RvEgfvWpUCcD/qyC4rLHmkwhkyS6aIToh2XVXzQyebIqw/7
CCDXaY8TkYlLPYRdNseX5X5blpu1EnqW5yQMJz6QkgDK+Qu4F1jDimSd5JffrFkJ
WkpWwsoppNHwYyaENq59lg7R1WxNq0uSLxMPTnk/RpMmizKyU8gK7RrQWHJNoy6n
l3vSTKx9sCDo+AgMQgbDMdpvv1l1It+QcRXXBrBp7qAdz+0H7VRkUFOnBUFMQQo3
OjmjStKxnE9E7Uh6+373xj2Z6Nts+wkD72vRHHg/1KTZ5FN5XnS2CvPDNuGZD50=
=AtOu
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa195.patch"
Content-Disposition: attachment; filename="xsa195.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiB4ODZlbXVsOiBmaXggaHVnZSBiaXQgb2Zmc2V0IGhhbmRsaW5nCgpXZSBt
dXN0IG5ldmVyIGNob3Agb2ZmIHRoZSBoaWdoIDMyIGJpdHMuCgpUaGlzIGlz
IFhTQS0xOTUuCgpSZXBvcnRlZC1ieTogR2VvcmdlIER1bmxhcCA8Z2Vvcmdl
LmR1bmxhcEBjaXRyaXguY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGlj
aCA8amJldWxpY2hAc3VzZS5jb20+ClJldmlld2VkLWJ5OiBBbmRyZXcgQ29v
cGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgoKLS0tIGEveGVuL2Fy
Y2gveDg2L3g4Nl9lbXVsYXRlL3g4Nl9lbXVsYXRlLmMKKysrIGIveGVuL2Fy
Y2gveDg2L3g4Nl9lbXVsYXRlL3g4Nl9lbXVsYXRlLmMKQEAgLTI1NDksNiAr
MjU0OSwxMiBAQCB4ODZfZW11bGF0ZSgKICAgICAgICAgZWxzZQogICAgICAg
ICB7CiAgICAgICAgICAgICAvKgorICAgICAgICAgICAgICogSW5zdHJ1Y3Rp
b25zIHN1Y2ggYXMgYnQgY2FuIHJlZmVyZW5jZSBhbiBhcmJpdHJhcnkgb2Zm
c2V0IGZyb20KKyAgICAgICAgICAgICAqIHRoZWlyIG1lbW9yeSBvcGVyYW5k
LCBidXQgdGhlIGluc3RydWN0aW9uIGRvaW5nIHRoZSBhY3R1YWwKKyAgICAg
ICAgICAgICAqIGVtdWxhdGlvbiBuZWVkcyB0aGUgYXBwcm9wcmlhdGUgb3Bf
Ynl0ZXMgcmVhZCBmcm9tIG1lbW9yeS4KKyAgICAgICAgICAgICAqIEFkanVz
dCBib3RoIHRoZSBzb3VyY2UgcmVnaXN0ZXIgYW5kIG1lbW9yeSBvcGVyYW5k
IHRvIG1ha2UgYW4KKyAgICAgICAgICAgICAqIGVxdWl2YWxlbnQgaW5zdHJ1
Y3Rpb24uCisgICAgICAgICAgICAgKgogICAgICAgICAgICAgICogRUEgICAg
ICAgKz0gQml0T2Zmc2V0IERJViBvcF9ieXRlcyo4CiAgICAgICAgICAgICAg
KiBCaXRPZmZzZXQgPSBCaXRPZmZzZXQgTU9EIG9wX2J5dGVzKjgKICAgICAg
ICAgICAgICAqIERJViB0cnVuY2F0ZXMgdG93YXJkcyBuZWdhdGl2ZSBpbmZp
bml0eS4KQEAgLTI1NjAsMTQgKzI1NjYsMTUgQEAgeDg2X2VtdWxhdGUoCiAg
ICAgICAgICAgICAgICAgc3JjLnZhbCA9IChpbnQzMl90KXNyYy52YWw7CiAg
ICAgICAgICAgICBpZiAoIChsb25nKXNyYy52YWwgPCAwICkKICAgICAgICAg
ICAgIHsKLSAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIGJ5dGVfb2Zm
c2V0OwotICAgICAgICAgICAgICAgIGJ5dGVfb2Zmc2V0ID0gb3BfYnl0ZXMg
KyAoKCgtc3JjLnZhbC0xKSA+PiAzKSAmIH4ob3BfYnl0ZXMtMSkpOworICAg
ICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgYnl0ZV9vZmZzZXQgPQorICAg
ICAgICAgICAgICAgICAgICBvcF9ieXRlcyArICgoKC1zcmMudmFsIC0gMSkg
Pj4gMykgJiB+KG9wX2J5dGVzIC0gMUwpKTsKKwogICAgICAgICAgICAgICAg
IGVhLm1lbS5vZmYgLT0gYnl0ZV9vZmZzZXQ7CiAgICAgICAgICAgICAgICAg
c3JjLnZhbCA9IChieXRlX29mZnNldCA8PCAzKSArIHNyYy52YWw7CiAgICAg
ICAgICAgICB9CiAgICAgICAgICAgICBlbHNlCiAgICAgICAgICAgICB7Ci0g
ICAgICAgICAgICAgICAgZWEubWVtLm9mZiArPSAoc3JjLnZhbCA+PiAzKSAm
IH4ob3BfYnl0ZXMgLSAxKTsKKyAgICAgICAgICAgICAgICBlYS5tZW0ub2Zm
ICs9IChzcmMudmFsID4+IDMpICYgfihvcF9ieXRlcyAtIDFMKTsKICAgICAg
ICAgICAgICAgICBzcmMudmFsICY9IChvcF9ieXRlcyA8PCAzKSAtIDE7CiAg
ICAgICAgICAgICB9CiAgICAgICAgIH0K

--=separator--
