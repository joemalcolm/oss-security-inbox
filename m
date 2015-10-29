X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5322" "Thursday" "29" "October" "2015" "12:00:18" "+0000" "Xen.org security team" "security@xen.org" "<E1ZrlsQ-00022F-QY@xenbits.xen.org>" "143" "[oss-security] Xen Security Advisory 146 (CVE-2015-7813) - arm: various unimplemented hypercalls log without rate limiting" nil nil nil "10" "2015102912:00:18" "[oss-security] Xen Security Advisory 146 (CVE-2015-7813) - arm: various unimplemented hypercalls log without rate limiting" (number mark "U       security@xen Oct 29  143/5322  " thread-indent "\"[oss-security] Xen Security Advisory 146 (CVE-2015-7813) - arm: various unimplemented hypercalls log without rate limiting\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1574 invoked by uid 550); 29 Oct 2015 12:01:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26176 invoked from network); 29 Oct 2015 12:00:42 -0000
Date: Thu, 29 Oct 2015 12:00:18 +0000
Message-Id: <E1ZrlsQ-00022F-QY@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 146 (CVE-2015-7813) - arm: various
 unimplemented hypercalls log without rate limiting

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7813 / XSA-146
                              version 3

   arm: various unimplemented hypercalls log without rate limiting

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

The HYPERVISOR_physdev_op hypercall and most suboperations of the
HYPERVISOR_hvm_op hypercall are not currently implemented by Xen on
ARM and when called will log the use to the hypervisor
console. However these guest accessible log messages are not
rate-limited.

IMPACT
======

A malicious guest could cause repeated logging to the hypervisor
console, leading to a Denial of Service attack.

VULNERABLE SYSTEMS
==================

Xen 4.4 and later systems running on ARM hardware are vulnerable.

x86 systems are not affected.

MITIGATION
==========

The problematic log messages are issued with priority Warning.

Therefore they can be rate limited by adding "loglvl=error/warning" to the
hypervisor command line or suppressed entirely by adding "loglvl=error".

On systems where the guest kernel is controlled by the host rather
than guest administrator, running only kernels which do not call these
hypercalls will also prevent untrusted guest users from exploiting
this issue. However untrusted guest administrators can still trigger
it unless further steps are taken to prevent them from loading code
into the kernel (e.g. by disabling loadable modules etc) or from using
other mechanisms which allow them to run code at kernel privilege.

CREDITS
=======

This issue was discovered by Julien Grall of Citrix.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa146.patch        xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x

$ sha256sum xsa146*.patch
1d0ff203581ac5bcc0ec4469a4909da968b218ed83280efd217020c396028591  xsa146.patch
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

iQEcBAEBAgAGBQJWMgm1AAoJEIP+FMlX6CvZGjMH/iYvPwiZU0iKkgADyMBek6A6
fmkHlmd5z7EC7eSwKn2SzRcw8KsE9E4Hdo4IaPoWx+ElSKlHwteo8vdHq3zYXWsb
vpYFvlD5wiWRYpTDiBtDZC7cwOx1qqelDMwwN8k3p1g+eNqEB5VrfjVWWxp7xE6a
+gqEea9+ASJmZ1K3cczOGIzWSrGSGcC7v715nECCwBkquYlsdP8L7I+K2IiCL45i
ymRm+fD3CvDtLT+Q3ZG9I/C78CH5O4INATrdz6Syqtti+jPoYY7+6LmLZXR0tIk2
v47g/mAoDNwJAaWDfZL9GnzXTZIm+Lri+qh/4LkunnMGgHIF4Ah4HhsNJlX4h7M=
=lDV8
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa146.patch"
Content-Disposition: attachment; filename="xsa146.patch"
Content-Transfer-Encoding: base64

eGVuOiBhcm06IHJhdGUtbGltaXQgbG9nZ2luZyBmcm9tIHVuaW1wbGVtZW50
ZWQgUEhZU0RFVk9QIGFuZCBIVk1PUC4KClRoZXNlIGFyZSBndWVzdCBhY2Nl
c3NpYmxlIGFuZCBzaG91bGQgdGhlcmVmb3JlIGJlIHJhdGUtbGltaXRlZC4K
TW9yZW92ZXIsIGluY2x1ZGUgdGhlbSBvbmx5IGluIGRlYnVnIGJ1aWxkcy4K
ClRoaXMgaXMgWFNBLTE0Ni4KClNpZ25lZC1vZmYtYnk6IElhbiBDYW1wYmVs
bCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4g
QmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+CgpkaWZmIC0tZ2l0IGEveGVu
L2FyY2gvYXJtL2h2bS5jIGIveGVuL2FyY2gvYXJtL2h2bS5jCmluZGV4IDQ3
MWM0Y2QuLjFkZTI5MGYgMTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL2FybS9odm0u
YworKysgYi94ZW4vYXJjaC9hcm0vaHZtLmMKQEAgLTU3LDcgKzU3LDcgQEAg
bG9uZyBkb19odm1fb3AodW5zaWduZWQgbG9uZyBvcCwgWEVOX0dVRVNUX0hB
TkRMRV9QQVJBTSh2b2lkKSBhcmcpCiAKICAgICBkZWZhdWx0OgogICAgIHsK
LSAgICAgICAgcHJpbnRrKCIlczogQmFkIEhWTSBvcCAlbGQuXG4iLCBfX2Z1
bmNfXywgb3ApOworICAgICAgICBnZHByaW50ayhYRU5MT0dfREVCVUcsICJI
Vk1PUCBvcD0lbHU6IG5vdCBpbXBsZW1lbnRlZFxuIiwgb3ApOwogICAgICAg
ICByYyA9IC1FTk9TWVM7CiAgICAgICAgIGJyZWFrOwogICAgIH0KZGlmZiAt
LWdpdCBhL3hlbi9hcmNoL2FybS9waHlzZGV2LmMgYi94ZW4vYXJjaC9hcm0v
cGh5c2Rldi5jCmluZGV4IDYxYjRhMTguLmIxYmEyMmUgMTAwNjQ0Ci0tLSBh
L3hlbi9hcmNoL2FybS9waHlzZGV2LmMKKysrIGIveGVuL2FyY2gvYXJtL3Bo
eXNkZXYuYwpAQCAtOCwxMiArOCwxMyBAQAogI2luY2x1ZGUgPHhlbi90eXBl
cy5oPgogI2luY2x1ZGUgPHhlbi9saWIuaD4KICNpbmNsdWRlIDx4ZW4vZXJy
bm8uaD4KKyNpbmNsdWRlIDx4ZW4vc2NoZWQuaD4KICNpbmNsdWRlIDxhc20v
aHlwZXJjYWxsLmg+CiAKIAogaW50IGRvX3BoeXNkZXZfb3AoaW50IGNtZCwg
WEVOX0dVRVNUX0hBTkRMRV9QQVJBTSh2b2lkKSBhcmcpCiB7Ci0gICAgcHJp
bnRrKCIlcyAlZCBjbWQ9JWQ6IG5vdCBpbXBsZW1lbnRlZCB5ZXRcbiIsIF9f
ZnVuY19fLCBfX0xJTkVfXywgY21kKTsKKyAgICBnZHByaW50ayhYRU5MT0df
REVCVUcsICJQSFlTREVWT1AgY21kPSVkOiBub3QgaW1wbGVtZW50ZWRcbiIs
IGNtZCk7CiAgICAgcmV0dXJuIC1FTk9TWVM7CiB9CiAK

--=separator--
