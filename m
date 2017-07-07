X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5470" "Friday" "7" "July" "2017" "13:54:23" "+0000" "Xen.org security team" "security@xen.org" "<E1dTTiB-0002BO-O5@xenbits.xenproject.org>" "145" "[oss-security] Xen Security Advisory 225 (CVE-2017-10923) - arm: vgic: Out-of-bound access when sending SGIs" nil nil nil "7" "2017070713:54:23" "[oss-security] Xen Security Advisory 225 (CVE-2017-10923) - arm: vgic: Out-of-bound access when sending SGIs" (number mark "U       security@xen Jul  7  145/5470  " thread-indent "\"[oss-security] Xen Security Advisory 225 (CVE-2017-10923) - arm: vgic: Out-of-bound access when sending SGIs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19867 invoked by uid 550); 7 Jul 2017 13:54:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19727 invoked from network); 7 Jul 2017 13:54:40 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1dTTiB-0002BO-O5@xenbits.xenproject.org>
Date: Fri, 07 Jul 2017 13:54:23 +0000
Subject: [oss-security] Xen Security Advisory 225 (CVE-2017-10923) - arm: vgic:
 Out-of-bound access when sending SGIs

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-10923 / XSA-225
                              version 3

           arm: vgic: Out-of-bound access when sending SGIs

UPDATES IN VERSION 3
====================

CVE assigned.

ISSUE DESCRIPTION
=================

ARM guests can send SGI (i.e. IPI) targeting a list of vCPUs using the
MMIO register GICD_SGIR (GICv2) or System Register ICC_SGI1R (GICv3).
However, the emulation code does not sanitize the list and will
directly access an array without checking whether the array index is
within bounds.

IMPACT
======

A guest may cause a hypervisor crash, resulting in a Denial of Service
(DoS).

VULNERABLE SYSTEMS
==================

Xen versions 4.6 and onwards are affected.  Xen versions 4.5 and
earlier are not affected.

Only ARM systems are affected.  x86 systems are not affected.

MITIGATION
==========

On systems where the guest kernel is controlled by the host rather than
guest administrator, running only kernels which only send sane IPIs
(i.e. targeting valid CPUs) will prevent untrusted guest users from
exploiting this issue.  However untrusted guest administrators can
still trigger it unless further steps are taken to prevent them from
loading code into the kernel (e.g by disabling loadable modules etc) or
from using other mechanisms which allow them to run code at kernel
privilege.

CREDITS
=======

This issue was discovered by Julien Grall of ARM.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa225.patch           xen-unstable, Xen 4.8.x, Xen 4.7.x, Xen 4.6.x

$ sha256sum xsa225*
a52d90a2586b74d6dd0d17390c940bf414c1332a6b4ccb87f10b7d97af3b3877  xsa225.patch
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

iQEcBAEBCAAGBQJZX5I4AAoJEIP+FMlX6CvZm7oIAMpza3K23Dh57zjVhFoKSrK7
C/l5LbgxQB53uqlgDWeLlGxoRBuYOUg4i8rYzwI5NJAy8Y7n5z3kf8V8IcHa2+9E
Oums8O2jpGEjiGddtOW06wRCQQPaNo/ivrjRCeLEVVTc6Lvni22Bp38vjTPykIYY
SOspEAg9VU7BUp+K8LYF16/tYV5QyPf5JQDHWX4xKjlT0F3sRtrO5hXY3uZUJlMt
GqLXFcD1CQqjwiaqeD/kZOpJiWCXTrMk9DoSMO2HcsJniZfLdom9MdL9YTPQNi9R
oQkVSDt5Szt8pGTojgDymYEi8F3+LdDrauGPGUl4CNao7Yv/L1BMcNEcukiCTDY=
=KiJw
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa225.patch"
Content-Disposition: attachment; filename="xsa225.patch"
Content-Transfer-Encoding: base64

RnJvbSBiMDU0N2Y5Yzk3MDdlMGRjNDczNjAxYTE2NmRhMzJkZmVjMWY1MjZl
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKdWxpZW4gR3JhbGwg
PGp1bGllbi5ncmFsbEBhcm0uY29tPgpEYXRlOiBUdWUsIDYgSnVuIDIwMTcg
MTU6MzU6NDIgKzAxMDAKU3ViamVjdDogW1BBVENIXSB4ZW4vYXJtOiB2Z2lj
OiBTYW5pdGl6ZSB0YXJnZXQgbWFzayB1c2VkIHRvIHNlbmQgU0dJCgpUaGUg
Y3VycmVudCBmdW5jdGlvbiB2Z2ljX3RvX3NnaSBkb2VzIG5vdCBzYW5pdGl6
ZSB0aGUgdGFyZ2V0IG1hc2sgYW5kCm1heSB0aGVyZWZvcmUgZ2V0IGFuIGlu
dmFsaWQgdkNQVSBJRC4gVGhpcyB3aWxsIHJlc3VsdCB0byBhbiBvdXQgb2YK
Ym91bmQgYWNjZXNzIG9mIGQtPnZjcHVbLi4uXSBhcyB0aGVyZSBpcyBubyBj
aGVjayB3aGV0aGVyIHRoZSB2Q1BVIElEIGlzCndpdGhpbiB0aGUgbWF4aW11
bSBzdXBwb3J0ZWQgYnkgdGhlIGd1ZXN0LgoKVGhpcyB3YXMgaW50cm9kdWNl
ZCBieSBjb21taXQgZWEzN2ZkMjExMSAieGVuL2FybTogc3BsaXQgdmdpYyBk
cml2ZXIKaW50byBnZW5lcmljIGFuZCB2Z2ljLXYyIGRyaXZlciIuCgpTaWdu
ZWQtb2ZmLWJ5OiBKdWxpZW4gR3JhbGwgPGp1bGllbi5ncmFsbEBhcm0uY29t
PgpSZXZpZXdlZC1ieTogU3RlZmFubyBTdGFiZWxsaW5pIDxzc3RhYmVsbGlu
aUBrZXJuZWwub3JnPgotLS0KIHhlbi9hcmNoL2FybS92Z2ljLmMgfCAzICsr
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL3hlbi9hcmNoL2FybS92Z2ljLmMgYi94ZW4v
YXJjaC9hcm0vdmdpYy5jCmluZGV4IDgzNTY5YjA5ZTcuLmM2YzZmOGNiNjYg
MTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL2FybS92Z2ljLmMKKysrIGIveGVuL2Fy
Y2gvYXJtL3ZnaWMuYwpAQCAtMzk5LDcgKzM5OSw4IEBAIGJvb2wgdmdpY190
b19zZ2koc3RydWN0IHZjcHUgKnYsIHJlZ2lzdGVyX3Qgc2dpciwgZW51bSBn
aWNfc2dpX21vZGUgaXJxbW9kZSwKICAgICAgICAgZm9yX2VhY2hfc2V0X2Jp
dCggaSwgJmJpdG1hcCwgc2l6ZW9mKHRhcmdldC0+bGlzdCkgKiA4ICkKICAg
ICAgICAgewogICAgICAgICAgICAgdmNwdWlkID0gYmFzZSArIGk7Ci0gICAg
ICAgICAgICBpZiAoIGQtPnZjcHVbdmNwdWlkXSA9PSBOVUxMIHx8ICFpc192
Y3B1X29ubGluZShkLT52Y3B1W3ZjcHVpZF0pICkKKyAgICAgICAgICAgIGlm
ICggdmNwdWlkID49IGQtPm1heF92Y3B1cyB8fCBkLT52Y3B1W3ZjcHVpZF0g
PT0gTlVMTCB8fAorICAgICAgICAgICAgICAgICAhaXNfdmNwdV9vbmxpbmUo
ZC0+dmNwdVt2Y3B1aWRdKSApCiAgICAgICAgICAgICB7CiAgICAgICAgICAg
ICAgICAgZ3ByaW50ayhYRU5MT0dfV0FSTklORywgIlZHSUM6IHdyaXRlIHI9
JSJQUklyZWdpc3RlciIgXAogICAgICAgICAgICAgICAgICAgICAgICAgdGFy
Z2V0LT5saXN0PSVoeCwgd3JvbmcgQ1BVVGFyZ2V0TGlzdCBcbiIsCi0tIAoy
LjExLjAK

--=separator--
