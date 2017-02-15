X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6743" "Wednesday" "15" "February" "2017" "12:05:58" "+0000" "Xen.org security team" "security@xen.org" "<E1cdyLO-0001Ot-Rk@xenbits.xenproject.org>" "173" "[oss-security] Xen Security Advisory 207 - memory leak when destroying guest without PT devices" nil nil nil "2" "2017021512:05:58" "[oss-security] Xen Security Advisory 207 - memory leak when destroying guest without PT devices" (number mark "U       security@xen Feb 15  173/6743  " thread-indent "\"[oss-security] Xen Security Advisory 207 - memory leak when destroying guest without PT devices\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3442 invoked by uid 550); 15 Feb 2017 12:06:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3405 invoked from network); 15 Feb 2017 12:06:22 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1cdyLO-0001Ot-Rk@xenbits.xenproject.org>
Date: Wed, 15 Feb 2017 12:05:58 +0000
Subject: [oss-security] Xen Security Advisory 207 - memory leak when destroying guest
 without PT devices

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

                    Xen Security Advisory XSA-207
                              version 2

         memory leak when destroying guest without PT devices

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

Certain internal state is set up, during domain construction, in
preparation for possible pass-through device assignment.  On ARM and
AMD V-i hardware this setup includes memory allocation.  On guest
teardown, cleanup was erroneously only performed when the guest
actually had a pass-through device assigned.

IMPACT
======

A malicious guest may, by frequently rebooting over extended periods
of time, run the system out of memory, resulting in a Denial of
Service (DoS).

The leak is no more than 4kbytes per guest boot.

VULNERABLE SYSTEMS
==================

Xen versions 3.3 and later are affected.

ARM systems, and x86 AMD systems, are affected.  Intel systems, and
systems without IOMMU/SMMU hardware, are unaffected.

All guest kinds can exploit this vulnerability.

MITIGATION
==========

Limiting the frequency with which a guest is able to reboot, will
limit the memory leak.

Rebooting each host (after migrating its guests) periodically will
reclaim the leaked space.

CREDITS
=======

This issue was discovered by Oleksandr Tyshchenko of EPAM Systems.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa207.patch           xen-unstable, Xen 4.8.x, Xen 4.7.x, Xen 4.6.x, Xen 4.5.x
xsa207-4.4.patch       Xen 4.4.x

$ sha256sum xsa207*
e9bcf807b3785ac4d78b621fba4a9395cd713d6e57cdaa66559bccf95ded1cd9  xsa207.patch
5f391cc621d619ee33c90398bda24588ebf8320750db4545677bb5222150ae6d  xsa207-4.4.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches described above is permitted during the
embargo, as is the mitigation of migrating a VM which has no devices
assigned from IOMMU-capable hardware to IOMMU-incapable hardware, even
on public-facing systems with untrusted guest users and administrators.

HOWEVER, moving a VM from AMD to Intel hardware, in response to this
vulnerability, is *not* permitted.  This is because such a change is
visible to guests, and would not normally be expected.

Furthermore: Distribution of updated software is prohibited (except to
other members of the predisclosure list).

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

iQEcBAEBAgAGBQJYpEP+AAoJEIP+FMlX6CvZPrMIAL7ULaO/oOicZzGHzMO0f1r6
MZDBPeLAg5EQ3oGl1oZenlEEQgSflzj2YHdwjdps2kZpJBaRJjNPmqOC3ZxetlyF
+cEJWpw6u0IDRzukEWkQlFGQS68ShLjRcKWDi5+ftjo4rFh34uybrgRv7/nKtiuG
ZLX7dqKZuqYBSYvSXjA8UejB//psGOu4jqNh15t0bxtQqc5BlgdJebOkKlgrxL2M
BqI/kiZoRuKkDVBu2786oo3w8BCjyBktDR0B9dzRY6MEdTXqb+mE8IO7G492KQTk
/ZW9rKeijauKLNgsSkZlqtA0TPTp7tujh9XxE/JfB8UcYFez86NWoBBY4g+Q3SQ=
=kwFG
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa207.patch"
Content-Disposition: attachment; filename="xsa207.patch"
Content-Transfer-Encoding: base64

RnJvbTogT2xla3NhbmRyIFR5c2hjaGVua28gPG9sZWtzdHlzaEBnbWFpbC5j
b20+ClN1YmplY3Q6IElPTU1VOiBhbHdheXMgY2FsbCB0ZWFyZG93biBjYWxs
YmFjawoKVGhlcmUgaXMgYSBwb3NzaWJsZSBzY2VuYXJpbyB3aGVuIChkKS0+
bmVlZF9pb21tdSByZW1haW5zIHVuc2V0CmR1cmluZyBndWVzdCBkb21haW4g
ZXhlY3V0aW9uLiBGb3IgZXhhbXBsZSwgd2hlbiBubyBkZXZpY2VzCndlcmUg
YXNzaWduZWQgdG8gaXQuIFRha2luZyBpbnRvIGFjY291bnQgdGhhdCB0ZWFy
ZG93biBjYWxsYmFjawppcyBub3QgY2FsbGVkIHdoZW4gKGQpLT5uZWVkX2lv
bW11IGlzIHVuc2V0IHdlIG1pZ2h0IGhhdmUgdW5yZWxlYXNlZApyZXNvdXJz
ZXMgYWZ0ZXIgZGVzdHJveWluZyBkb21haW4uCgpTbywgYWx3YXlzIGNhbGwg
dGVhcmRvd24gY2FsbGJhY2sgdG8gcm9sbCBiYWNrIGFjdGlvbnMKdGhhdCB3
ZXJlIHBlcmZvcm1lZCBpbiBpbml0IGNhbGxiYWNrLgoKVGhpcyBpcyBYU0Et
MjA3LgoKU2lnbmVkLW9mZi1ieTogT2xla3NhbmRyIFR5c2hjaGVua28gPG9s
ZWtzdHlzaEBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGljaCA8
amJldWxpY2hAc3VzZS5jb20+ClRlc3RlZC1ieTogSmFuIEJldWxpY2ggPGpi
ZXVsaWNoQHN1c2UuY29tPgpUZXN0ZWQtYnk6IEp1bGllbiBHcmFsbCA8anVs
aWVuLmdyYWxsQGFybS5jb20+CgotLS0gYS94ZW4vZHJpdmVycy9wYXNzdGhy
b3VnaC9pb21tdS5jCisrKyBiL3hlbi9kcml2ZXJzL3Bhc3N0aHJvdWdoL2lv
bW11LmMKQEAgLTI0NCw4ICsyNDQsNyBAQCB2b2lkIGlvbW11X2RvbWFpbl9k
ZXN0cm95KHN0cnVjdCBkb21haW4KICAgICBpZiAoICFpb21tdV9lbmFibGVk
IHx8ICFkb21faW9tbXUoZCktPnBsYXRmb3JtX29wcyApCiAgICAgICAgIHJl
dHVybjsKIAotICAgIGlmICggbmVlZF9pb21tdShkKSApCi0gICAgICAgIGlv
bW11X3RlYXJkb3duKGQpOworICAgIGlvbW11X3RlYXJkb3duKGQpOwogCiAg
ICAgYXJjaF9pb21tdV9kb21haW5fZGVzdHJveShkKTsKIH0K

--=separator
Content-Type: application/octet-stream; name="xsa207-4.4.patch"
Content-Disposition: attachment; filename="xsa207-4.4.patch"
Content-Transfer-Encoding: base64

RnJvbTogT2xla3NhbmRyIFR5c2hjaGVua28gPG9sZWtzdHlzaEBnbWFpbC5j
b20+ClN1YmplY3Q6IElPTU1VOiBhbHdheXMgY2FsbCB0ZWFyZG93biBjYWxs
YmFjawoKVGhlcmUgaXMgYSBwb3NzaWJsZSBzY2VuYXJpbyB3aGVuIChkKS0+
bmVlZF9pb21tdSByZW1haW5zIHVuc2V0CmR1cmluZyBndWVzdCBkb21haW4g
ZXhlY3V0aW9uLiBGb3IgZXhhbXBsZSwgd2hlbiBubyBkZXZpY2VzCndlcmUg
YXNzaWduZWQgdG8gaXQuIFRha2luZyBpbnRvIGFjY291bnQgdGhhdCB0ZWFy
ZG93biBjYWxsYmFjawppcyBub3QgY2FsbGVkIHdoZW4gKGQpLT5uZWVkX2lv
bW11IGlzIHVuc2V0IHdlIG1pZ2h0IGhhdmUgdW5yZWxlYXNlZApyZXNvdXJz
ZXMgYWZ0ZXIgZGVzdHJveWluZyBkb21haW4uCgpTbywgYWx3YXlzIGNhbGwg
dGVhcmRvd24gY2FsbGJhY2sgdG8gcm9sbCBiYWNrIGFjdGlvbnMKdGhhdCB3
ZXJlIHBlcmZvcm1lZCBpbiBpbml0IGNhbGxiYWNrLgoKVGhpcyBpcyBYU0Et
MjA3LgoKU2lnbmVkLW9mZi1ieTogT2xla3NhbmRyIFR5c2hjaGVua28gPG9s
ZWtzdHlzaEBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGljaCA8
amJldWxpY2hAc3VzZS5jb20+ClRlc3RlZC1ieTogSmFuIEJldWxpY2ggPGpi
ZXVsaWNoQHN1c2UuY29tPgpUZXN0ZWQtYnk6IEp1bGllbiBHcmFsbCA8anVs
aWVuLmdyYWxsQGFybS5jb20+CgotLS0gYS94ZW4vZHJpdmVycy9wYXNzdGhy
b3VnaC9pb21tdS5jCisrKyBiL3hlbi9kcml2ZXJzL3Bhc3N0aHJvdWdoL2lv
bW11LmMKQEAgLTQxOCw4ICs0MTgsNyBAQCB2b2lkIGlvbW11X2RvbWFpbl9k
ZXN0cm95KHN0cnVjdCBkb21haW4KICAgICBpZiAoICFpb21tdV9lbmFibGVk
IHx8ICFoZC0+cGxhdGZvcm1fb3BzICkKICAgICAgICAgcmV0dXJuOwogCi0g
ICAgaWYgKCBuZWVkX2lvbW11KGQpICkKLSAgICAgICAgaW9tbXVfdGVhcmRv
d24oZCk7CisgICAgaW9tbXVfdGVhcmRvd24oZCk7CiAKICAgICBsaXN0X2Zv
cl9lYWNoX3NhZmUgKCBpb3BvcnRfbGlzdCwgdG1wLCAmaGQtPmcybV9pb3Bv
cnRfbGlzdCApCiAgICAgewo=

--=separator--
