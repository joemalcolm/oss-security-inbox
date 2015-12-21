X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4452" "Monday" "21" "December" "2015" "11:17:36" "+0000" "Xen.org security team" "security@xen.org" "<E1aAyT9-0007Rq-Mv@xenbits.xen.org>" "122" "[oss-security] Xen Security Advisory 169 - x86: unintentional logging upon guest changing callback method" "^CC:" nil nil "12" "2015122111:17:36" "[oss-security] Xen Security Advisory 169 - x86: unintentional logging upon guest changing callback method" (number mark "        security@xen Dec 21  122/4452  " thread-indent "\"[oss-security] Xen Security Advisory 169 - x86: unintentional logging upon guest changing callback method\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18423 invoked by uid 550); 21 Dec 2015 11:18:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18352 invoked from network); 21 Dec 2015 11:17:56 -0000
Message-Id: <E1aAyT9-0007Rq-Mv@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Mon, 21 Dec 2015 11:17:36 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 169 - x86: unintentional logging upon guest
 changing callback method
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

                    Xen Security Advisory XSA-169

    x86: unintentional logging upon guest changing callback method

ISSUE DESCRIPTION
=================

HYPERVISOR_hvm_op sub-op HVMOP_set_param's HVM_PARAM_CALLBACK_IRQ
operation intends to log the new callback method in debug builds only.
The full message, however, is split into two parts, the second one of
which didn't get suppressed on non-debug builds as would have been
intended.

These log messages are not rate-limited and can be triggered by guests.

IMPACT
======

A malicious guest could cause repeated logging to the hypervisor
console, leading to a Denial of Service attack.

VULNERABLE SYSTEMS
==================

Xen version 4.6 is affected.  Older Xen versions are unaffected.

ARM systems are not affected.

Only x86 HVM guests can expose this vulnerability.

MITIGATION
==========

Running only PV guests will avoid this issue.

The problematic log messages are issued with priority Warning.
Therefore they can be rate limited by adding "loglvl=error/warning" to
the hypervisor command line or suppressed entirely by adding
"loglvl=error".

On systems where the guest kernel is controlled by the host rather
than guest administrator, running only kernels which do not excessively
invoke this operation will also prevent untrusted guest users from
exploiting this issue. However untrusted guest administrators can still
trigger it unless further steps are taken to prevent them from loading
code into the kernel (e.g. by disabling loadable modules etc) or from
using other mechanisms which allow them to run code at kernel privilege.

NOTE REGARDING LACK OF EMBARGO
==============================

The fix for this bug was publicly posted on xen-devel, before it was
appreciated that there was a security problem.

CREDITS
=======

This issue was discovered as a bug by Malcolm Crossley of Citrix; the
security impact was recognised by Jan Beulich of SuSE.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa169.patch        xen-unstable, Xen 4.6.x

$ sha256sum xsa169*
b818922880313cdbc12ea68ae757da5eabed9b3c9e1f8acefe1653683545ccbe  xsa169.patch
$
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWd96OAAoJEIP+FMlX6CvZm18H/Rtth2qo/064hqkTrU8S2/Oo
vbQQxPdRaOZ4T7pGQf58JAVTNuY/nZB56h+t5N0SBV4O1+PvKm/2yY86HyJ1D0Ia
98XmxDuxKQU00LSHy3Jtri+/Nu23bdOsD4fk8Fd62J3EJnbWe8nuSy+Pns5ju/8X
HxWkbw5Ek4UR5MGU/UJLNjUGR+VY8WwqNJvtXGm36DOpZw86GlPN87QeubhhXeog
nWt/a6aYRUVy05auItY5oHNIKQiJicBdqIxdxss1E43tQjHi1RwAAiYLrbImGZOu
etqJaaab+7vJqqvQgHJqlF/vLSvuaol/CrKPurfwFnKxn2x4KIYG2xtWrRa3Y5w=
=hg+4
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa169.patch"
Content-Disposition: attachment; filename="xsa169.patch"
Content-Transfer-Encoding: base64

eDg2OiBtYWtlIGRlYnVnIG91dHB1dCBjb25zaXN0ZW50IGluIGh2bV9zZXRf
Y2FsbGJhY2tfdmlhCgpUaGUgdW5jb25kaXRpb25hbCBwcmludGtzIGluIHRo
ZSBzd2l0Y2ggc3RhdGVtZW50IG9mIHRoZQpodm1fc2V0X2NhbGxiYWNrX3Zp
YSBmdW5jdGlvbiByZXN1bHRzIGluIFhlbiBsb2cgc3BhbSBpbiBub24gZGVi
dWcKdmVyc2lvbnMgb2YgWGVuLiBUaGUgcHJpbnRrcyBhcmUgZm9yIGRlYnVn
IG91dHB1dCBvbmx5IHNvIGNvbmRpdGlvbmFsbHkKY29tcGlsZSB0aGUgZW50
aXJlIHN3aXRjaCBzdGF0ZW1lbnQgb24gZGVidWcgdmVyc2lvbnMgb2YgWGVu
IG9ubHkuCgpUaGlzIGlzIFhTQS0xNjkuCgpTaWduZWQtb2ZmLWJ5OiBNYWxj
b2xtIENyb3NzbGV5IDxtYWxjb2xtLmNyb3NzbGV5QGNpdHJpeC5jb20+ClJl
dmlld2VkLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+CkFj
a2VkLWJ5OiBJYW4gQ2FtcGJlbGwgPGlhbi5jYW1wYmVsbEBjaXRyaXguY29t
PgoKLS0tIGEveGVuL2FyY2gveDg2L2h2bS9pcnEuYworKysgYi94ZW4vYXJj
aC94ODYvaHZtL2lycS5jCkBAIC0zODYsNyArMzg2LDggQEAgdm9pZCBodm1f
c2V0X2NhbGxiYWNrX3ZpYShzdHJ1Y3QgZG9tYWluCiAKICAgICBzcGluX3Vu
bG9jaygmZC0+YXJjaC5odm1fZG9tYWluLmlycV9sb2NrKTsKIAotICAgIGRw
cmludGsoWEVOTE9HX0dfSU5GTywgIkRvbSV1IGNhbGxiYWNrIHZpYSBjaGFu
Z2VkIHRvICIsIGQtPmRvbWFpbl9pZCk7CisjaWZuZGVmIE5ERUJVRworICAg
IHByaW50ayhYRU5MT0dfR19JTkZPICJEb20ldSBjYWxsYmFjayB2aWEgY2hh
bmdlZCB0byAiLCBkLT5kb21haW5faWQpOwogICAgIHN3aXRjaCAoIHZpYV90
eXBlICkKICAgICB7CiAgICAgY2FzZSBIVk1JUlFfY2FsbGJhY2tfZ3NpOgpA
QCAtNDAyLDYgKzQwMyw3IEBAIHZvaWQgaHZtX3NldF9jYWxsYmFja192aWEo
c3RydWN0IGRvbWFpbgogICAgICAgICBwcmludGsoIk5vbmVcbiIpOwogICAg
ICAgICBicmVhazsKICAgICB9CisjZW5kaWYKIH0KIAogc3RydWN0IGh2bV9p
bnRhY2sgaHZtX3ZjcHVfaGFzX3BlbmRpbmdfaXJxKHN0cnVjdCB2Y3B1ICp2
KQo=

--=separator--
