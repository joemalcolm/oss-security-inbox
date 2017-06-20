X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6065" "Tuesday" "20" "June" "2017" "12:00:09" "+0000" "Xen.org security team" "security@xen.org" "<E1dNHpJ-000683-14@xenbits.xenproject.org>" "153" "[oss-security] Xen Security Advisory 223 - ARM guest disabling interrupt may crash Xen" nil nil nil "6" "2017062012:00:09" "[oss-security] Xen Security Advisory 223 - ARM guest disabling interrupt may crash Xen" (number mark "U       security@xen Jun 20  153/6065  " thread-indent "\"[oss-security] Xen Security Advisory 223 - ARM guest disabling interrupt may crash Xen\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7794 invoked by uid 550); 20 Jun 2017 12:01:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7383 invoked from network); 20 Jun 2017 12:01:24 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1dNHpJ-000683-14@xenbits.xenproject.org>
Date: Tue, 20 Jun 2017 12:00:09 +0000
Subject: [oss-security] Xen Security Advisory 223 - ARM guest disabling interrupt may
 crash Xen

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

                    Xen Security Advisory XSA-223
                              version 2

              ARM guest disabling interrupt may crash Xen

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Virtual interrupt injection could be triggered by a guest when sending
an SGI (e.g IPI) to any vCPU or by configuring timers. When the virtual
interrupt is masked, a missing check in the injection path may result in
reading invalid hardware register or crashing the host.

IMPACT
======

A guest may cause a hypervisor crash, resulting in a Denial of Service
(DoS).

VULNERABLE SYSTEMS
==================

All Xen versions which support ARM are affected.

x86 systems are not affected.

MITIGATION
==========

On systems where the guest kernel is controlled by the host rather than
guest administrator, running only kernels which do not disable SGI and
PPI (i.e IRQ < 32) will prevent untrusted guest users from exploiting
this issue. However untrusted guest administrators can still trigger it
unless further steps are taken to prevent them from loading code into
the kernel (e.g by disabling loadable modules etc) or from using other
mechanisms which allow them to run code at kernel privilege.

CREDITS
=======

This issue was discovered by Julien Grall of ARM.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa223.patch           xen-unstable, Xen 4.8.x, Xen 4.7.x, Xen 4.6.x, Xen 4.5.x

$ sha256sum xsa223*
b5c8d8e8dac027069bec7dd812cff3f6f99e5949dd4a8ee729255c38274958b1  xsa223.patch
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

iQEcBAEBCAAGBQJZSQ3WAAoJEIP+FMlX6CvZpxQH/0nQaJEWEuVZlQliIaB3TUK2
nnXBf3cFMsNCBIsrQtYXetZ8amA7cjULd2SX8/WIR60CPZ5Uj/YQtld5cq4LfxMj
Ngma8mPDUMlu6t+n07vee/fte5fZYOpci0teC9NCLDbG5eTWoJ0K7CzN2JUQWLAb
IgeJAVgyNr3ZibqdB8xBb5KlA+hOBE77MQ6yt8qZeltoYezIxprwgcqE/BgMVrcj
+7pz0WtJtdTe7i8i6jGcqvzbl3WhmcppiDLNhv310V+dV+T2e9cJia5EuapbqYD7
mkMLnOTRngJq97q1RwTQlsLMOp+/deZpqueLKttVCSR6VP4GtKpgr/0O1NW91YU=
=hATV
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa223.patch"
Content-Disposition: attachment; filename="xsa223.patch"
Content-Transfer-Encoding: base64

RnJvbTogSnVsaWVuIEdyYWxsIDxqdWxpZW4uZ3JhbGxAYXJtLmNvbT4KU3Vi
amVjdDogYXJtOiB2Z2ljOiBEb24ndCB1cGRhdGUgdGhlIExSIHdoZW4gdGhl
IElSUSBpcyBub3QgZW5hYmxlZAoKZ2ljX3JhaXNlX2luZmxpZ2h0X2lycSB3
aWxsIGJlIGNhbGxlZCBpZiB0aGUgSVJRIGlzIGFscmVhZHkgaW5mbGlnaHQK
KGkuZSB0aGUgSVJRIGlzIGluamVjdGVkIHRvIHRoZSBndWVzdCkuIElmIHRo
ZSBJUlEgaXMgYWxyZWFkeSBhbHJlYWR5IGluCnRoZSBMUnMsIHRoZW4gdGhl
IGFzc29jaWF0ZWQgTFIgd2lsbCBiZSB1cGRhdGVkLgoKVG8ga25vdyBpZiB0
aGUgaW50ZXJydXB0IGlzIGFscmVhZHkgaW4gdGhlIExSLCB0aGUgZnVuY3Rp
b24gY2hlY2sgaWYgdGhlCmludGVycnVwdCBpcyBxdWV1ZWQuIEhvd2V2ZXIs
IGlmIHRoZSBpbnRlcnJ1cHQgaXMgbm90IGVuYWJsZWQgdGhlbiB0aGUKaW50
ZXJydXB0IG1heSBub3QgYmUgcXVldWVkIG5vciBpbiB0aGUgTFIuIFNvIGdp
Y191cGRhdGVfb25lX2xyIG1heSBiZQpjYWxsZWQgKGlmIHdlIGluamVjdCBv
biB0aGUgY3VycmVudCB2Q1BVKSBhbmQgcmVhZCB0aGUgTFIuCgpCZWNhdXNl
IHRoZSBpbnRlcnJ1cHQgaXMgbm90IGluIHRoZSBMUiwgWGVuIHdpbGwgZWl0
aGVyIHJlYWQ6CiAgICAqIExSIDAgaWYgdGhlIGludGVycnVwdCB3YXMgbmV2
ZXIgaW5qZWN0ZWQgYmVmb3JlCiAgICAqIExSIDI1NSAoR0lDX0lOVkFMSURf
TFIpIGlmIHRoZSBpbnRlcnJ1cHQgd2FzIGluamVjdGVkIG9uY2UuIFRoaXMK
ICAgIGlzIGJlY2F1c2UgZ2ljX3VwZGF0ZV9vbmVfbHIgd2lsbCByZXNldCBw
LT5sci4KClJlYWRpbmcgTFIgMCB3aWxsIHJlc3VsdCB0byBwb3RlbnRpYWxs
eSB1cGRhdGUgdGhlIHdyb25nIGludGVycnVwdCBhbmQKbm90IGtlZXAgdGhl
IExScyBpbiBzeW5jIHdpdGggWGVuLgoKUmVhZGluZyBMUiAyNTUgd2lsbCBy
ZXN1bHQgdG86CiAgICAqIENyYXNoIFhlbiBvbiBHSUN2MyBhcyB0aGUgTFIg
aW5kZXggaXMgYmlnZ2VyIHRoYW4gc3VwcG9ydGVkIChzZWUKICAgIGdpY3Yz
X2ljaF9yZWFkX2xyKS4KICAgICogUmVhZC93cml0ZSBhbHdheXMgR0lDSF9M
UiArIDI1NSAqIDQgdGhhdCBpcyBub3QgcGFydCBvZiB0aGUgbWVtb3J5CiAg
ICBtYXBwZWQuCgpUaGUgcHJvYmxlbSBjYW4gYmUgcHJldmVudGVkIGJ5IGNo
ZWNraW5nIHdoZXRoZXIgdGhlIGludGVycnVwdCBpcwplbmFibGVkIGluIGdp
Y19yYWlzZV9pbmZsaWdodF9pcnEgYmVmb3JlIGNhbGxpbmcgZ2ljX3VwZGF0
ZV9vbmVfbHIuCgpBIGZvbGxvdy11cCBvZiB0aGlzIHBhdGNoIGlzIGV4cGVj
dGVkIHRvIG1pdGlnYXRlIHRoZSBpc3N1ZSBpbiB0aGUKZnV0dXJlLgoKVGhp
cyBpcyBYU0EtMjIzLgoKUmVwb3J0ZWQtYnk6IEp1bGllbiBHcmFsbCA8anVs
aWVuLmdyYWxsQGFybS5jb20+ClNpZ25lZC1vZmYtYnk6IEp1bGllbiBHcmFs
bCA8anVsaWVuLmdyYWxsQGFybS5jb20+ClJldmlld2VkLWJ5OiBTdGVmYW5v
IFN0YWJlbGxpbmkgPHNzdGFiZWxsaW5pQGtlcm5lbC5vcmc+Ci0tLQogeGVu
L2FyY2gvYXJtL2dpYy5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspCgotLS0gYS94ZW4vYXJjaC9hcm0vZ2ljLmMKKysrIGIv
eGVuL2FyY2gvYXJtL2dpYy5jCkBAIC00MTcsNiArNDE3LDEwIEBAIHZvaWQg
Z2ljX3JhaXNlX2luZmxpZ2h0X2lycShzdHJ1Y3QgdmNwdSAqdiwgdW5zaWdu
ZWQgaW50IHZpcnR1YWxfaXJxKQogCiAgICAgQVNTRVJUKHNwaW5faXNfbG9j
a2VkKCZ2LT5hcmNoLnZnaWMubG9jaykpOwogCisgICAgLyogRG9uJ3QgdHJ5
IHRvIHVwZGF0ZSB0aGUgTFIgaWYgdGhlIGludGVycnVwdCBpcyBkaXNhYmxl
ZCAqLworICAgIGlmICggIXRlc3RfYml0KEdJQ19JUlFfR1VFU1RfRU5BQkxF
RCwgJm4tPnN0YXR1cykgKQorICAgICAgICByZXR1cm47CisKICAgICBpZiAo
IGxpc3RfZW1wdHkoJm4tPmxyX3F1ZXVlKSApCiAgICAgewogICAgICAgICBp
ZiAoIHYgPT0gY3VycmVudCApCg==

--=separator--
