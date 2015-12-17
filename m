X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6639" "Thursday" "17" "December" "2015" "12:42:26" "+0000" "Xen.org security team" "security@xen.org" "<E1a9Xt4-0001xf-Aw@xenbits.xen.org>" "174" "[oss-security] Xen Security Advisory 164 (CVE-2015-8554) - qemu-dm buffer overrun in MSI-X handling" nil nil nil "12" "2015121712:42:26" "[oss-security] Xen Security Advisory 164 (CVE-2015-8554) - qemu-dm buffer overrun in MSI-X handling" (number mark "U       security@xen Dec 17  174/6639  " thread-indent "\"[oss-security] Xen Security Advisory 164 (CVE-2015-8554) - qemu-dm buffer overrun in MSI-X handling\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22071 invoked by uid 550); 17 Dec 2015 12:43:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17638 invoked from network); 17 Dec 2015 12:42:44 -0000
Date: Thu, 17 Dec 2015 12:42:26 +0000
Message-Id: <E1a9Xt4-0001xf-Aw@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 164 (CVE-2015-8554) - qemu-dm buffer
 overrun in MSI-X handling

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-8554 / XSA-164
                              version 3

               qemu-dm buffer overrun in MSI-X handling

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

"qemu-xen-traditional" (aka qemu-dm) tracks state for each MSI-X table
entry of a passed through device.  This is used/updated on
(intercepted) accesses to the page(s) containing the MSI-X table.

There may be space on the final page not covered by any MSI-X table
entry, but memory for state tracking is allocated only for existing
table entries.  Therefore bounds checks are required to avoid
accessing/corrupting unrelated heap memory.  Such a check is present
for the read path, but was missing for the write path.

IMPACT
======

A malicious administrator of a guest which has access to a passed
through PCI device which is MSI-X capable can exploit this
vulnerability to take over the qemu process, elevating its privilege
to that of the qemu process.

In a system not using a device model stub domain (or other techniques
for deprivileging qemu), the malicious guest administrator can thus
elevate their privilege to that of the host.

VULNERABLE SYSTEMS
==================

Xen systems running x86 HVM guests with "qemu-xen-traditional", but
without stubdomains, which have been passed through an MSI-X capable
physical PCI device are vulnerable.

The default configuration is NOT vulnerable from Xen 4.3 onwards
(because it uses a newer upstream qemu version).

Systems running only PV guests are NOT vulnerable.

Only systems using PCI passthrough are vulnerable.

Systems using "qemu-xen-traditional" stubdomain device models (for
example, by specifying "device_model_stubdomain_override=1" in xl's
domain configuration files) are NOT vulnerable.

Only the traditional "qemu-xen-traditional" device model is vulnerable.
Upstream qemu device models ("qemu-xen") are NOT vulnerable.

ARM systems are NOT vulnerable.

MITIGATION
==========

Not passing through MSI-X capable devices to HVM guests will avoid this
vulnerability.

Running HVM guests with the default upstream device model will also
avoid this vulnerability.

Enabling stubdomains will mitigate this issue, by reducing the
escalation to only those privileges accorded to the service domain.
In a usual configuration, a service domain has only the privilege of
the guest, so this eliminates the vulnerability.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa164.patch  qemu-xen-traditional: Xen unstable, 4.6.x, 4.5.x, 4.4.x, 4.3.x

$ sha256sum xsa164*
40f7327aa414c77a0e18a305a144e4a720ba8fe1b618d2f3ad9d5f605667c340  xsa164.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patch described above (or others which are
substantially similar) is permitted during the embargo, even on
public-facing systems with untrusted guest users and administrators.

However deployment of the mitigations described above is NOT permitted
(except where all the affected systems and VMs are administered and
used only by organisations which are members of the Xen Project
Security Issues Predisclosure List).  Specifically, deployment on
public cloud systems is NOT permitted.

This is because in all cases the configuration change may be visible
to the guest which could lead to the rediscovery of the vulnerability.

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

iQEcBAEBAgAGBQJWcqy+AAoJEIP+FMlX6CvZldwH/RpMzmRhI6lFR02GKXXC+87V
Yb2d8au5C/yxYED23WhIW+zPajaNjcpu73xgRqc+mNYSyGOOcmCWEF7nSp4tSHC7
XpF8EXPXFtOYSWuxnn38tL+bqs+sa+Ju5koqxkMzKsYM+TgKvUdtoCqEi7uElJ5y
wX3HCyBH0zTX+YMbN32DYihwTRTdDBNXqEhDZcULSkvrKWlYlfJGUJus50JBMZFF
THIf6mFZp2VZoHtc14xz4aMzDX8MmK+Xq+jMrMLM56oj9OmAShw4a3Glxbzzla7r
H7YFCH2OwrBPCDXWL2DF2LY/pQicIQfVZ1QWHOAMIbKL3icmMwlbINx15Dc0YHE=
=KYw9
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa164.patch"
Content-Disposition: attachment; filename="xsa164.patch"
Content-Transfer-Encoding: base64

TVNJLVg6IGF2b2lkIGFycmF5IG92ZXJydW4gdXBvbiBNU0ktWCB0YWJsZSB3
cml0ZXMKCnB0X21zaXhfaW5pdCgpIGFsbG9jYXRlcyBtc2l4LT5tc2l4X2Vu
dHJ5W10gdG8ganVzdCBjb3Zlcgptc2l4LT50b3RhbF9lbnRyaWVzIGVudHJp
ZXMuIFdoaWxlIHBjaV9tc2l4X3JlYWRsKCkgcmVzb3J0cyB0byByZWFkaW5n
CnBoeXNpY2FsIG1lbW9yeSBmb3Igb3V0IG9mIGJvdW5kcyByZWFkcywgcGNp
X21zaXhfd3JpdGVsKCkgc28gZmFyCnNpbXBseSBhY2Nlc3NlZC9jb3JydXB0
ZWQgdW5yZWxhdGVkIG1lbW9yeS4KCnB0X2lvbWVtX21hcCgpJ3MgY2FsbCB0
byBjcHVfcmVnaXN0ZXJfcGh5c2ljYWxfbWVtb3J5KCkgcmVnaXN0ZXJzIGEK
cGFnZSBncmFudWxhciByZWdpb24sIHdoaWNoIGlzIG5lY2Vzc2FyeSBhcyB0
aGUgUGVuZGluZyBCaXQgQXJyYXkgbWF5CnNoYXJlIHNwYWNlIHdpdGggdGhl
IE1TSS1YIHRhYmxlIChidXQgbm90aGluZyBlbHNlIGlzIGFsbG93ZWQgdG8p
LiBUaGlzCmFsc28gZXhwbGFpbnMgd2h5IHBjaV9tc2l4X3JlYWRsKCkgYWN0
dWFsbHkgaG9ub3JzIG91dCBvZiBib3VuZHMgcmVhZHMsCmJ1dCBwY2lfbXNp
X3dyaXRlbCgpIGRvZXNuJ3QgbmVlZCB0by4KClRoaXMgaXMgWFNBLTE2NC4K
ClNpZ25lZC1vZmYtYnk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNv
bT4KQWNrZWQtYnk6IElhbiBDYW1wYmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJp
eC5jb20+CgotLS0gYS9ody9wdC1tc2kuYworKysgYi9ody9wdC1tc2kuYwpA
QCAtNDQwLDYgKzQ0MCwxMyBAQCBzdGF0aWMgdm9pZCBwY2lfbXNpeF93cml0
ZWwodm9pZCAqb3BhcXVlCiAgICAgICAgIHJldHVybjsKICAgICB9CiAKKyAg
ICBpZiAoIGFkZHIgLSBtc2l4LT5tbWlvX2Jhc2VfYWRkciA+PSBtc2l4LT50
b3RhbF9lbnRyaWVzICogMTYgKQorICAgIHsKKyAgICAgICAgUFRfTE9HKCJF
cnJvcjogT3V0IG9mIGJvdW5kcyB3cml0ZSB0byBNU0ktWCB0YWJsZSwiCisg
ICAgICAgICAgICAgICAiIGFkZHIgJTAxNiJQUkl4NjQiXG4iLCBhZGRyKTsK
KyAgICAgICAgcmV0dXJuOworICAgIH0KKwogICAgIGVudHJ5X25yID0gKGFk
ZHIgLSBtc2l4LT5tbWlvX2Jhc2VfYWRkcikgLyAxNjsKICAgICBlbnRyeSA9
ICZtc2l4LT5tc2l4X2VudHJ5W2VudHJ5X25yXTsKICAgICBvZmZzZXQgPSAo
KGFkZHIgLSBtc2l4LT5tbWlvX2Jhc2VfYWRkcikgJSAxNikgLyA0Owo=

--=separator--
