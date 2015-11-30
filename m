X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12171" "Monday" "30" "November" "2015" "10:54:10" "+0000" "Xen.org security team" "security@xen.org" "<E1a3M5y-0007wE-6R@xenbits.xen.org>" "279" "[oss-security] Xen Security Advisory 162 (CVE-2015-7504) - heap buffer overflow vulnerability in pcnet emulator" nil nil nil "11" "2015113010:54:10" "[oss-security] Xen Security Advisory 162 (CVE-2015-7504) - heap buffer overflow vulnerability in pcnet emulator" (number mark "U       security@xen Nov 30  279/12171 " thread-indent "\"[oss-security] Xen Security Advisory 162 (CVE-2015-7504) - heap buffer overflow vulnerability in pcnet emulator\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24078 invoked by uid 550); 30 Nov 2015 10:54:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23950 invoked from network); 30 Nov 2015 10:54:31 -0000
Date: Mon, 30 Nov 2015 10:54:10 +0000
Message-Id: <E1a3M5y-0007wE-6R@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 162 (CVE-2015-7504) - heap buffer overflow
 vulnerability in pcnet emulator

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7504 / XSA-162
                              version 2

         heap buffer overflow vulnerability in pcnet emulator

UPDATES IN VERSION 2
====================

Public release.

Correct cut and paste reference to bootloaders in "DEPLOYMENT DURING
EMBARGO" section, which should have instead referred to the
configuration changes.

ISSUE DESCRIPTION
=================

The QEMU security team has predisclosed the following advisory:

    The AMD PC-Net II emulator(hw/net/pcnet.c), while receiving
    packets in loopback mode, appends CRC code to the receive
    buffer. If the data size given is same as the buffer size(4096),
    the appended CRC code overwrites 4 bytes after the s->buffer,
    making the adjacent 's->irq' object point to a new location.

IMPACT
======

A guest which has access to an emulated PCNET network device
(e.g. with "model=pcnet" in their VIF configuration) can exploit this
vulnerability to take over the qemu process elevating its privilege to
that of the qemu process.

VULNERABLE SYSTEMS
==================

All Xen systems running x86 HVM guests without stubdomains which have
been configured to use the PCNET emulated driver model are
vulnerable.

The default configuration is NOT vulnerable (because it does not
emulate PCNET NICs).

Systems running only PV guests are NOT vulnerable.

Systems using qemu-dm stubdomain device models (for example, by
specifying "device_model_stubdomain_override=1" in xl's domain
configuration files) are NOT vulnerable.

Both the traditional "qemu-xen" or upstream qemu device models are
potentially vulnerable.

ARM systems are NOT vulnerable.

MITIGATION
==========

Avoiding the use of emulated network devices altogether, by specifying
a PV only VIF in the domain configuration file will avoid this
issue.

Avoiding the use of the PCNET device in favour of other emulations
will also avoid this issue.

Enabling stubdomains will mitigate this issue, by reducing the
escalation to only those privileges accorded to the service domain.

qemu-dm stubdomains are only available with the traditional "qemu-xen"
version.

RESOLUTION
==========

The QEMU security team have supplied the attached xsa162-qemuu.patch
which it is believed will resolve the issue. However this patch has
not undergone the usual reviews and has not yet been accepted by QEMU
upstream.

The backports were created by the Xen Project security team on the same
basis.

xsa162-qemuu.patch           qemu upstream, Xen unstable, 4.6.x, 4.5.x, 4.4.x
xsa162-qemuu-4.3.patch       Xen 4.3.x
xsa162-qemut-4.3.patch       qemu-xen-traditional, Xen unstable, 4.5.x, 4.4.x, 4.3.x

$ sha256sum xsa162*
5844debcfdf606030aaa98f32a5920bc64c659dfae6062f24ab98e9008d8bf86  xsa162-qemut.patch
73e5857570b7464a2118a3ae6a8f424e01effd684c67773fada22a8411199238  xsa162-qemuu.patch
4a0ded68cc20d64752ef72e12983b20a4b14fef9b14e8774d889cfa34201909d  xsa162-qemuu-4.3.patch
$


CREDITS
=======

This issue was discovered by Qinghao Tang of the Qihoo 360 Marvel
Team.


DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patch described above (or others which are
substantially similar) is permitted during the embargo, even on
public-facing systems with untrusted guest users and administrators.

However deployment of the mitigations described above is not permitted
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

iQEcBAEBAgAGBQJWXCrJAAoJEIP+FMlX6CvZEtkIAJJYN60maax4jOLKUNGJZcmO
MLTxucr4P2ffw5sNyNYJDHo7Ui5qTdx62uPQHAuYc8mt7x7g9+zhWH39XfFe/9KR
ZVqWAQeoFVT030dQXkuWQkr1ryXzWF/xIUzFsD4F0d3pXY3WNxTH5hKjmXxCUQzT
jM3h3hc4a2+BdTxL527liAiiG31z0sLMqop2V7346yqM5g+HK83DxN2hNackFWZx
PijuBIFO/L9FZiXvcsMtBllaHVko089MBtTF7nnOav1hJefn4yGDBdoj0D+r8PiB
6376dASIwznXV6YZcg62N2HxbKn4tnjr6HumM5kWlXUM7+f2eG3kfM4re7A3ry8=
=6xNZ
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa162-qemut.patch"
Content-Disposition: attachment; filename="xsa162-qemut.patch"
Content-Transfer-Encoding: base64

bmV0OiBwY25ldDogYWRkIGNoZWNrIHRvIHZhbGlkYXRlIHJlY2VpdmUgZGF0
YSBzaXplKENWRS0yMDE1LTc1MDQpCgpJbiBsb29wYmFjayBtb2RlLCBwY25l
dF9yZWNlaXZlIHJvdXRpbmUgYXBwZW5kcyBDUkMgY29kZSB0byB0aGUKcmVj
ZWl2ZSBidWZmZXIuIElmIHRoZSBkYXRhIHNpemUgZ2l2ZW4gaXMgc2FtZSBh
cyB0aGUgYnVmZmVyIHNpemUsCnRoZSBhcHBlbmRlZCBDUkMgY29kZSBvdmVy
d3JpdGVzIDQgYnl0ZXMgYWZ0ZXIgcy0+YnVmZmVyLiBBZGRlZCBhCmNoZWNr
IHRvIGF2b2lkIHRoYXQuCgpSZXBvcnRlZC1ieTogUWluZ2hhbyBUYW5nIDxs
dW9kYWxvbmdkZUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFByYXNhZCBK
IFBhbmRpdCA8cGpwQGZlZG9yYXByb2plY3Qub3JnPgotLS0KIGh3L25ldC9w
Y25ldC5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9ody9w
Y25ldC5jIGIvaHcvcGNuZXQuYwppbmRleCA0ZTgxMjY3Li42YTEwMWYyIDEw
MDY0NAotLS0gYS9ody9wY25ldC5jCisrKyBiL2h3L3BjbmV0LmMKQEAgLTEx
NTMsNyArMTE1Myw3IEBAIHN0YXRpYyB2b2lkIHBjbmV0X3JlY2VpdmUodm9p
ZCAqb3BhcXVlLCBjb25zdCB1aW50OF90ICpidWYsIGludCBzaXplKQogICAg
ICAgICAgICAgICAgIHVpbnQzMl90IGZjcyA9IH4wOwogICAgICAgICAgICAg
ICAgIHVpbnQ4X3QgKnAgPSBzcmM7CiAKLSAgICAgICAgICAgICAgICB3aGls
ZSAocCAhPSAmc3JjW3NpemUtNF0pCisgICAgICAgICAgICAgICAgd2hpbGUg
KHAgIT0gJnNyY1tzaXplXSkKICAgICAgICAgICAgICAgICAgICAgQ1JDKGZj
cywgKnArKyk7CiAgICAgICAgICAgICAgICAgY3JjX2VyciA9ICgqKHVpbnQz
Ml90ICopcCAhPSBodG9ubChmY3MpKTsKICAgICAgICAgICAgIH0KQEAgLTEy
ODQsMTIgKzEyODQsMTMgQEAgc3RhdGljIHZvaWQgcGNuZXRfdHJhbnNtaXQo
UENOZXRTdGF0ZSAqcykKICAgICAgICAgYmNudCA9IDQwOTYgLSBHRVRfRklF
TEQodG1kLmxlbmd0aCwgVE1ETCwgQkNOVCk7CiAKICAgICAgICAgLyogaWYg
bXVsdGktdG1kIHBhY2tldCBvdXRzaXplcyBzLT5idWZmZXIgdGhlbiBza2lw
IGl0IHNpbGVudGx5LgotICAgICAgICAgICBOb3RlOiB0aGlzIGlzIG5vdCB3
aGF0IHJlYWwgaHcgZG9lcyAqLwotICAgICAgICBpZiAocy0+eG1pdF9wb3Mg
KyBiY250ID4gc2l6ZW9mKHMtPmJ1ZmZlcikpIHsKLSAgICAgICAgICAgcy0+
eG1pdF9wb3MgPSAtMTsKLSAgICAgICAgICAgZ290byB0eGRvbmU7CisgICAg
ICAgICAqIE5vdGU6IHRoaXMgaXMgbm90IHdoYXQgcmVhbCBodyBkb2VzLgor
ICAgICAgICAgKiBMYXN0IGZvdXIgYnl0ZXMgb2Ygcy0+YnVmZmVyIGFyZSB1
c2VkIHRvIHN0b3JlIENSQyBGQ1MgY29kZS4KKyAgICAgICAgICovCisgICAg
ICAgIGlmIChzLT54bWl0X3BvcyArIGJjbnQgPiBzaXplb2Yocy0+YnVmZmVy
KSAtIDQpIHsKKyAgICAgICAgICAgIHMtPnhtaXRfcG9zID0gLTE7CisgICAg
ICAgICAgICBnb3RvIHR4ZG9uZTsKICAgICAgICAgfQotCiAgICAgICAgIHMt
PnBoeXNfbWVtX3JlYWQocy0+ZG1hX29wYXF1ZSwgUEhZU0FERFIocywgdG1k
LnRiYWRyKSwKICAgICAgICAgICAgICAgICAgICAgICAgICBzLT5idWZmZXIg
KyBzLT54bWl0X3BvcywgYmNudCwgQ1NSX0JTV1AocykpOwogICAgICAgICBz
LT54bWl0X3BvcyArPSBiY250OwotLS0gCi0yLjQuMwotCg==

--=separator
Content-Type: application/octet-stream; name="xsa162-qemuu.patch"
Content-Disposition: attachment; filename="xsa162-qemuu.patch"
Content-Transfer-Encoding: base64

bmV0OiBwY25ldDogYWRkIGNoZWNrIHRvIHZhbGlkYXRlIHJlY2VpdmUgZGF0
YSBzaXplKENWRS0yMDE1LTc1MDQpCgpJbiBsb29wYmFjayBtb2RlLCBwY25l
dF9yZWNlaXZlIHJvdXRpbmUgYXBwZW5kcyBDUkMgY29kZSB0byB0aGUKcmVj
ZWl2ZSBidWZmZXIuIElmIHRoZSBkYXRhIHNpemUgZ2l2ZW4gaXMgc2FtZSBh
cyB0aGUgYnVmZmVyIHNpemUsCnRoZSBhcHBlbmRlZCBDUkMgY29kZSBvdmVy
d3JpdGVzIDQgYnl0ZXMgYWZ0ZXIgcy0+YnVmZmVyLiBBZGRlZCBhCmNoZWNr
IHRvIGF2b2lkIHRoYXQuCgpSZXBvcnRlZC1ieTogUWluZ2hhbyBUYW5nIDxs
dW9kYWxvbmdkZUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFByYXNhZCBK
IFBhbmRpdCA8cGpwQGZlZG9yYXByb2plY3Qub3JnPgotLS0KIGh3L25ldC9w
Y25ldC5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9ody9u
ZXQvcGNuZXQuYyBiL2h3L25ldC9wY25ldC5jCmluZGV4IDM0MzczNzYuLjVm
NTU1OTEgMTAwNjQ0Ci0tLSBhL2h3L25ldC9wY25ldC5jCisrKyBiL2h3L25l
dC9wY25ldC5jCkBAIC0xMDg1LDcgKzEwODUsNyBAQCBzc2l6ZV90IHBjbmV0
X3JlY2VpdmUoTmV0Q2xpZW50U3RhdGUgKm5jLCBjb25zdCB1aW50OF90ICpi
dWYsIHNpemVfdCBzaXplXykKICAgICAgICAgICAgICAgICB1aW50MzJfdCBm
Y3MgPSB+MDsKICAgICAgICAgICAgICAgICB1aW50OF90ICpwID0gc3JjOwog
Ci0gICAgICAgICAgICAgICAgd2hpbGUgKHAgIT0gJnNyY1tzaXplLTRdKQor
ICAgICAgICAgICAgICAgIHdoaWxlIChwICE9ICZzcmNbc2l6ZV0pCiAgICAg
ICAgICAgICAgICAgICAgIENSQyhmY3MsICpwKyspOwogICAgICAgICAgICAg
ICAgIGNyY19lcnIgPSAoKih1aW50MzJfdCAqKXAgIT0gaHRvbmwoZmNzKSk7
CiAgICAgICAgICAgICB9CkBAIC0xMjM0LDggKzEyMzQsMTAgQEAgc3RhdGlj
IHZvaWQgcGNuZXRfdHJhbnNtaXQoUENOZXRTdGF0ZSAqcykKICAgICAgICAg
YmNudCA9IDQwOTYgLSBHRVRfRklFTEQodG1kLmxlbmd0aCwgVE1ETCwgQkNO
VCk7CiAKICAgICAgICAgLyogaWYgbXVsdGktdG1kIHBhY2tldCBvdXRzaXpl
cyBzLT5idWZmZXIgdGhlbiBza2lwIGl0IHNpbGVudGx5LgotICAgICAgICAg
ICBOb3RlOiB0aGlzIGlzIG5vdCB3aGF0IHJlYWwgaHcgZG9lcyAqLwotICAg
ICAgICBpZiAocy0+eG1pdF9wb3MgKyBiY250ID4gc2l6ZW9mKHMtPmJ1ZmZl
cikpIHsKKyAgICAgICAgICogTm90ZTogdGhpcyBpcyBub3Qgd2hhdCByZWFs
IGh3IGRvZXMuCisgICAgICAgICAqIExhc3QgZm91ciBieXRlcyBvZiBzLT5i
dWZmZXIgYXJlIHVzZWQgdG8gc3RvcmUgQ1JDIEZDUyBjb2RlLgorICAgICAg
ICAgKi8KKyAgICAgICAgaWYgKHMtPnhtaXRfcG9zICsgYmNudCA+IHNpemVv
ZihzLT5idWZmZXIpIC0gNCkgewogICAgICAgICAgICAgcy0+eG1pdF9wb3Mg
PSAtMTsKICAgICAgICAgICAgIGdvdG8gdHhkb25lOwogICAgICAgICB9Ci0t
IAoyLjQuMwoK

--=separator
Content-Type: application/octet-stream; name="xsa162-qemuu-4.3.patch"
Content-Disposition: attachment; filename="xsa162-qemuu-4.3.patch"
Content-Transfer-Encoding: base64

bmV0OiBwY25ldDogYWRkIGNoZWNrIHRvIHZhbGlkYXRlIHJlY2VpdmUgZGF0
YSBzaXplKENWRS0yMDE1LTc1MDQpCgpJbiBsb29wYmFjayBtb2RlLCBwY25l
dF9yZWNlaXZlIHJvdXRpbmUgYXBwZW5kcyBDUkMgY29kZSB0byB0aGUKcmVj
ZWl2ZSBidWZmZXIuIElmIHRoZSBkYXRhIHNpemUgZ2l2ZW4gaXMgc2FtZSBh
cyB0aGUgYnVmZmVyIHNpemUsCnRoZSBhcHBlbmRlZCBDUkMgY29kZSBvdmVy
d3JpdGVzIDQgYnl0ZXMgYWZ0ZXIgcy0+YnVmZmVyLiBBZGRlZCBhCmNoZWNr
IHRvIGF2b2lkIHRoYXQuCgpSZXBvcnRlZC1ieTogUWluZ2hhbyBUYW5nIDxs
dW9kYWxvbmdkZUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFByYXNhZCBK
IFBhbmRpdCA8cGpwQGZlZG9yYXByb2plY3Qub3JnPgotLS0KIGh3L25ldC9w
Y25ldC5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9ody9u
ZXQvcGNuZXQuYyBiL2h3L25ldC9wY25ldC5jCmluZGV4IDM0MzczNzYuLjVm
NTU1OTEgMTAwNjQ0Ci0tLSBhL2h3L3BjbmV0LmMKKysrIGIvaHcvcGNuZXQu
YwpAQCAtMTA4NSw3ICsxMDg1LDcgQEAgc3NpemVfdCBwY25ldF9yZWNlaXZl
KE5ldENsaWVudFN0YXRlICpuYywgY29uc3QgdWludDhfdCAqYnVmLCBzaXpl
X3Qgc2l6ZV8pCiAgICAgICAgICAgICAgICAgdWludDMyX3QgZmNzID0gfjA7
CiAgICAgICAgICAgICAgICAgdWludDhfdCAqcCA9IHNyYzsKIAotICAgICAg
ICAgICAgICAgIHdoaWxlIChwICE9ICZzcmNbc2l6ZS00XSkKKyAgICAgICAg
ICAgICAgICB3aGlsZSAocCAhPSAmc3JjW3NpemVdKQogICAgICAgICAgICAg
ICAgICAgICBDUkMoZmNzLCAqcCsrKTsKICAgICAgICAgICAgICAgICBjcmNf
ZXJyID0gKCoodWludDMyX3QgKilwICE9IGh0b25sKGZjcykpOwogICAgICAg
ICAgICAgfQpAQCAtMTIzNCw4ICsxMjM0LDEwIEBAIHN0YXRpYyB2b2lkIHBj
bmV0X3RyYW5zbWl0KFBDTmV0U3RhdGUgKnMpCiAgICAgICAgIGJjbnQgPSA0
MDk2IC0gR0VUX0ZJRUxEKHRtZC5sZW5ndGgsIFRNREwsIEJDTlQpOwogCiAg
ICAgICAgIC8qIGlmIG11bHRpLXRtZCBwYWNrZXQgb3V0c2l6ZXMgcy0+YnVm
ZmVyIHRoZW4gc2tpcCBpdCBzaWxlbnRseS4KLSAgICAgICAgICAgTm90ZTog
dGhpcyBpcyBub3Qgd2hhdCByZWFsIGh3IGRvZXMgKi8KLSAgICAgICAgaWYg
KHMtPnhtaXRfcG9zICsgYmNudCA+IHNpemVvZihzLT5idWZmZXIpKSB7Cisg
ICAgICAgICAqIE5vdGU6IHRoaXMgaXMgbm90IHdoYXQgcmVhbCBodyBkb2Vz
LgorICAgICAgICAgKiBMYXN0IGZvdXIgYnl0ZXMgb2Ygcy0+YnVmZmVyIGFy
ZSB1c2VkIHRvIHN0b3JlIENSQyBGQ1MgY29kZS4KKyAgICAgICAgICovCisg
ICAgICAgIGlmIChzLT54bWl0X3BvcyArIGJjbnQgPiBzaXplb2Yocy0+YnVm
ZmVyKSAtIDQpIHsKICAgICAgICAgICAgIHMtPnhtaXRfcG9zID0gLTE7CiAg
ICAgICAgICAgICBnb3RvIHR4ZG9uZTsKICAgICAgICAgfQotLSAKMi40LjMK
Cg==

--=separator--
