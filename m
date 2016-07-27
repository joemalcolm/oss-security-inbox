X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8374" "Wednesday" "27" "July" "2016" "16:06:53" "+0000" "Xen.org security team" "security@xen.org" "<E1bSRMD-0006Jd-Sq@xenbits.xenproject.org>" "204" "[oss-security] Xen Security Advisory 184 (CVE-2016-5403) - virtio: unbounded memory allocation issue" nil nil nil "7" "2016072716:06:53" "[oss-security] Xen Security Advisory 184 (CVE-2016-5403) - virtio: unbounded memory allocation issue" (number mark "U       security@xen Jul 27  204/8374  " thread-indent "\"[oss-security] Xen Security Advisory 184 (CVE-2016-5403) - virtio: unbounded memory allocation issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27917 invoked by uid 550); 27 Jul 2016 16:07:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27896 invoked from network); 27 Jul 2016 16:07:23 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1bSRMD-0006Jd-Sq@xenbits.xenproject.org>
Date: Wed, 27 Jul 2016 16:06:53 +0000
Subject: [oss-security] Xen Security Advisory 184 (CVE-2016-5403) - virtio: unbounded
 memory allocation issue

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2016-5403 / XSA-184
                              version 2

               virtio: unbounded memory allocation issue

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

A guest can submit virtio requests without bothering to wait for
completion and is therefore not bound by virtqueue size.  (This
requires reusing vring descriptors in more than one request, which is
incorrect but possible.)  Processing a request allocates a
VirtQueueElement and therefore causes unbounded memory allocation
controlled by the guest.

IMPACT
======

A malicious guest administrator can cause unbounded memory allocation
in QEMU, which can cause an Out-of-Memory condition in the domain
running qemu.

Thus, a malicious guest administrator can cause a denial of service
affecting the whole host.

VULNERABLE SYSTEMS
==================

ARM systems are not vulnerable.

PV domains are not vulnerable.

Only HVM domains where virtio-net devices are provided to the guest
are vulnerable.  Note that NO such devices are provided by default,
so the default configuration is not vulnerable.

HVM domains run with QEMU stub domains are not vulnerable.

(Note that all virtio subsystems are affected; but only virtio-net is
a supported configuration.  See docs/misc/qemu-xen-security.)

MITIGATION
==========

Running PV only will avoid the issue.

Running HVM domains with Xen PV drivers instead of virtio-net will
avoid the issue.

Running HVM domains with with stubdomains will mitigate the issue.

CREDITS
=======

This issue was discovered by Zhenhao Hong of the 360 Marvel Team.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa184-qemuu-master.patch  qemu-upstream, Xen unstable, 4.7.x, 4.6.x, 4.5.x, 4.4.x
xsa184-qemut-master.patch  qemu-traditional, Xen unstable, 4.7.x, 4.6.x, 4.5.x, 4.4.x

$ sha256sum xsa184*
ea41a25dac82cc5c0ef8e599feb6ed400e99414110d4dba8017d6bd048bc3de4  xsa184-qemut-master.patch
2d675e5e08d9443cf2e5f3aa37521241d6ed898a602b5111d6969023e67b9b6b  xsa184-qemuu-master.patch
$

NOTES ON THE EMBARGO PERIOD
===========================

Note that the embargo period is shorter than normal as the Xen
Security team were only notified of the issue on 25 July.

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

iQEcBAEBAgAGBQJXmNwVAAoJEIP+FMlX6CvZUUQIAMMpYEr4wyoPEWe1w/4TrtQt
eTaDbBFFblfuHOTQcXZephlWBtSZ1bHbdEiTsQnflBYWLLiZZP1tud0f3MvN03uN
M9kTv1LsAb29NC19Oy1w02AOVXm0XklA3JbFG5OoidWVYra0UQSFKeZvi8Tlqr5C
ry2+jdErRGHsQFkjecBU0zSqXmz0+rcTlpzHtfJw3We3J9J4A1WPfAjXN3dL81yx
Tdl3P2heokhR2jsZgi7ZgIBo/s4rD4wbRD5gL4pf6eokyJIib7NFhctMi8hLDkTL
RbJh7sb+U9G5B2arMhRE7e00v7PgSfh+ossBQljszWhbHHCctggmGGIqWF0AvuQ=
=+1d1
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa184-qemut-master.patch"
Content-Disposition: attachment; filename="xsa184-qemut-master.patch"
Content-Transfer-Encoding: base64

RnJvbSAxN2Q4YzRlNDdkZmI0MWNiNjc3ODUyMGZmMmVhYjdhMTFmZTEyZGZk
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQIEogUCA8cHBhbmRp
dEByZWRoYXQuY29tPgpEYXRlOiBUdWUsIDI2IEp1bCAyMDE2IDE1OjMxOjU5
ICswMTAwClN1YmplY3Q6IFtQQVRDSF0gdmlydGlvOiBlcnJvciBvdXQgaWYg
Z3Vlc3QgZXhjZWVkcyB2aXJ0cXVldWUgc2l6ZQoKQSBicm9rZW4gb3IgbWFs
aWNpb3VzIGd1ZXN0IGNhbiBzdWJtaXQgbW9yZSByZXF1ZXN0cyB0aGFuIHRo
ZSB2aXJ0cXVldWUKc2l6ZSBwZXJtaXRzLgoKVGhlIGd1ZXN0IGNhbiBzdWJt
aXQgcmVxdWVzdHMgd2l0aG91dCBib3RoZXJpbmcgdG8gd2FpdCBmb3IgY29t
cGxldGlvbgphbmQgaXMgdGhlcmVmb3JlIG5vdCBib3VuZCBieSB2aXJ0cXVl
dWUgc2l6ZS4gIFRoaXMgcmVxdWlyZXMgcmV1c2luZwp2cmluZyBkZXNjcmlw
dG9ycyBpbiBtb3JlIHRoYW4gb25lIHJlcXVlc3QsIHdoaWNoIGlzIGluY29y
cmVjdCBidXQKcG9zc2libGUuICBQcm9jZXNzaW5nIGEgcmVxdWVzdCBhbGxv
Y2F0ZXMgYSBWaXJ0UXVldWVFbGVtZW50IGFuZAp0aGVyZWZvcmUgY2F1c2Vz
IHVuYm91bmRlZCBtZW1vcnkgYWxsb2NhdGlvbiBjb250cm9sbGVkIGJ5IHRo
ZSBndWVzdC4KCkV4aXQgd2l0aCBhbiBlcnJvciBpZiB0aGUgZ3Vlc3QgcHJv
dmlkZXMgbW9yZSByZXF1ZXN0cyB0aGFuIHRoZQp2aXJ0cXVldWUgc2l6ZSBw
ZXJtaXRzLiAgVGhpcyBib3VuZHMgbWVtb3J5IGFsbG9jYXRpb24gYW5kIG1h
a2VzIHRoZQpidWdneSBndWVzdCB2aXNpYmxlIHRvIHRoZSB1c2VyLgoKUmVw
b3J0ZWQtYnk6IFpoZW5oYW8gSG9uZyA8emhlbmhhb2hvbmdAZ21haWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBTdGVmYW4gSGFqbm9jemkgPHN0ZWZhbmhhQHJl
ZGhhdC5jb20+Ci0tLQogaHcvdmlydGlvLmMgfCA1ICsrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaHcvdmly
dGlvLmMgYi9ody92aXJ0aW8uYwppbmRleCBjMjZmZWZmLi40Mjg5N2JmIDEw
MDY0NAotLS0gYS9ody92aXJ0aW8uYworKysgYi9ody92aXJ0aW8uYwpAQCAt
NDIxLDYgKzQyMSwxMSBAQCBpbnQgdmlydHF1ZXVlX3BvcChWaXJ0UXVldWUg
KnZxLCBWaXJ0UXVldWVFbGVtZW50ICplbGVtKQogICAgIC8qIFdoZW4gd2Ug
c3RhcnQgdGhlcmUgYXJlIG5vbmUgb2YgZWl0aGVyIGlucHV0IG5vciBvdXRw
dXQuICovCiAgICAgZWxlbS0+b3V0X251bSA9IGVsZW0tPmluX251bSA9IDA7
CiAKKyAgICBpZiAodnEtPmludXNlID49IHZxLT52cmluZy5udW0pIHsKKyAg
ICAgICAgZnByaW50ZihzdGRlcnIsICJWaXJ0cXVldWUgc2l6ZSBleGNlZWRl
ZCIpOworICAgICAgICBleGl0KDEpOworICAgIH0KKwogICAgIGkgPSBoZWFk
ID0gdmlydHF1ZXVlX2dldF9oZWFkKHZxLCB2cS0+bGFzdF9hdmFpbF9pZHgr
Kyk7CiAgICAgZG8gewogICAgICAgICBzdHJ1Y3QgaW92ZWMgKnNnOwotLSAK
Mi4xLjQKCg==

--=separator
Content-Type: application/octet-stream; name="xsa184-qemuu-master.patch"
Content-Disposition: attachment; filename="xsa184-qemuu-master.patch"
Content-Transfer-Encoding: base64

RnJvbSBlNDY5ZGIyNWQ2YjJlNWM3MWNkMTU0NTE4ODkyMjY2NDFjNTNhNWNk
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQIEogUCA8cHBhbmRp
dEByZWRoYXQuY29tPgpEYXRlOiBNb24sIDI1IEp1bCAyMDE2IDE3OjM3OjE4
ICswNTMwClN1YmplY3Q6IFtQQVRDSF0gdmlydGlvOiBlcnJvciBvdXQgaWYg
Z3Vlc3QgZXhjZWVkcyB2aXJ0cXVldWUgc2l6ZQoKQSBicm9rZW4gb3IgbWFs
aWNpb3VzIGd1ZXN0IGNhbiBzdWJtaXQgbW9yZSByZXF1ZXN0cyB0aGFuIHRo
ZSB2aXJ0cXVldWUKc2l6ZSBwZXJtaXRzLgoKVGhlIGd1ZXN0IGNhbiBzdWJt
aXQgcmVxdWVzdHMgd2l0aG91dCBib3RoZXJpbmcgdG8gd2FpdCBmb3IgY29t
cGxldGlvbgphbmQgaXMgdGhlcmVmb3JlIG5vdCBib3VuZCBieSB2aXJ0cXVl
dWUgc2l6ZS4gIFRoaXMgcmVxdWlyZXMgcmV1c2luZwp2cmluZyBkZXNjcmlw
dG9ycyBpbiBtb3JlIHRoYW4gb25lIHJlcXVlc3QsIHdoaWNoIGlzIGluY29y
cmVjdCBidXQKcG9zc2libGUuICBQcm9jZXNzaW5nIGEgcmVxdWVzdCBhbGxv
Y2F0ZXMgYSBWaXJ0UXVldWVFbGVtZW50IGFuZAp0aGVyZWZvcmUgY2F1c2Vz
IHVuYm91bmRlZCBtZW1vcnkgYWxsb2NhdGlvbiBjb250cm9sbGVkIGJ5IHRo
ZSBndWVzdC4KCkV4aXQgd2l0aCBhbiBlcnJvciBpZiB0aGUgZ3Vlc3QgcHJv
dmlkZXMgbW9yZSByZXF1ZXN0cyB0aGFuIHRoZQp2aXJ0cXVldWUgc2l6ZSBw
ZXJtaXRzLiAgVGhpcyBib3VuZHMgbWVtb3J5IGFsbG9jYXRpb24gYW5kIG1h
a2VzIHRoZQpidWdneSBndWVzdCB2aXNpYmxlIHRvIHRoZSB1c2VyLgoKUmVw
b3J0ZWQtYnk6IFpoZW5oYW8gSG9uZyA8emhlbmhhb2hvbmdAZ21haWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBTdGVmYW4gSGFqbm9jemkgPHN0ZWZhbmhhQHJl
ZGhhdC5jb20+Ci0tLQogaHcvdmlydGlvL3ZpcnRpby5jIHwgNSArKysrKwog
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2h3L3ZpcnRpby92aXJ0aW8uYyBiL2h3L3ZpcnRpby92aXJ0aW8uYwppbmRl
eCBkMjRmNzc1Li5mOGFjMGZiIDEwMDY0NAotLS0gYS9ody92aXJ0aW8vdmly
dGlvLmMKKysrIGIvaHcvdmlydGlvL3ZpcnRpby5jCkBAIC00ODMsNiArNDgz
LDExIEBAIGludCB2aXJ0cXVldWVfcG9wKFZpcnRRdWV1ZSAqdnEsIFZpcnRR
dWV1ZUVsZW1lbnQgKmVsZW0pCiAKICAgICBtYXggPSB2cS0+dnJpbmcubnVt
OwogCisgICAgaWYgKHZxLT5pbnVzZSA+PSBtYXgpIHsKKyAgICAgICAgZXJy
b3JfcmVwb3J0KCJWaXJ0cXVldWUgc2l6ZSBleGNlZWRlZCIpOworICAgICAg
ICBleGl0KDEpOworICAgIH0KKwogICAgIGkgPSBoZWFkID0gdmlydHF1ZXVl
X2dldF9oZWFkKHZxLCB2cS0+bGFzdF9hdmFpbF9pZHgrKyk7CiAgICAgaWYg
KHZpcnRpb192ZGV2X2hhc19mZWF0dXJlKHZkZXYsIFZJUlRJT19SSU5HX0Zf
RVZFTlRfSURYKSkgewogICAgICAgICB2cmluZ19zZXRfYXZhaWxfZXZlbnQo
dnEsIHZxLT5sYXN0X2F2YWlsX2lkeCk7Ci0tIAoyLjEuNAoK

--=separator--
