X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6222" "Thursday" "29" "October" "2015" "12:00:23" "+0000" "Xen.org security team" "security@xen.org" "<E1ZrlsV-00023G-Eo@xenbits.xen.org>" "166" "[oss-security] Xen Security Advisory 147 (CVE-2015-7814) - arm: Race between domain destruction and memory allocation decrease" nil nil nil "10" "2015102912:00:23" "[oss-security] Xen Security Advisory 147 (CVE-2015-7814) - arm: Race between domain destruction and memory allocation decrease" (number mark "U       security@xen Oct 29  166/6222  " thread-indent "\"[oss-security] Xen Security Advisory 147 (CVE-2015-7814) - arm: Race between domain destruction and memory allocation decrease\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32627 invoked by uid 550); 29 Oct 2015 12:01:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26165 invoked from network); 29 Oct 2015 12:00:41 -0000
Date: Thu, 29 Oct 2015 12:00:23 +0000
Message-Id: <E1ZrlsV-00023G-Eo@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 147 (CVE-2015-7814) - arm: Race between
 domain destruction and memory allocation decrease

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7814 / XSA-147
                              version 3

 arm: Race between domain destruction and memory allocation decrease

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

While freeing the memory associated with a domain during domain
destruction Xen could race with a toolstack domain reducing the
amount of memory associated with that same domain via the
XENMEM_decrease_reservation.

In the case where this race is hit the host will crash.

The race is not exposed via the XENMEM_remove_from_physmap or
XENMEM_exchange interfaces.

IMPACT
======

Domains deliberately given partial management control may be able to
deny service by crashing the host.

Such a domain needs to be granted access to at least one of
XENMEM_decrease_reservation or XEN_DOMCTL_destroydomain over another
domain.

As a result, in a system designed to enhance security by radically
disaggregating the management, the security may be reduced.  But, the
security will be no worse than a non-disaggregated design.

VULNERABLE SYSTEMS
==================

This issue is only relevant to systems which intend to increase
security through the use of advanced disaggregated management
techniques.

This does not include systems using libxl, libvirt, or OpenStack
(unless substantially modified or supplemented, as compared to
versions supplied by the respective upstreams).

Only ARM systems are potentially affected.  All Xen versions which
support ARM are potentially affected.

x86 systems are not affected.

MITIGATION
==========

There is no known mitigation.

Switching from disaggregated to a non-disaggregated operation does NOT
mitigate these vulnerabilities.  Rather, it simply recategorises the
vulnerability to hostile management code, regarding it "as designed";
thus it merely reclassifies these issues as "not a bug".  Users and
vendors of disaggregated systems should not change their
configuration.

CREDITS
=======

This issue was discovered by Ian Campbell of Citrix.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa147.patch        xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x

$ sha256sum xsa147*.patch
35cd9c5dabd5af6756957cf7378d527b2fcbff35dcf578769769a364a98ea6ac  xsa147.patch
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

iQEcBAEBAgAGBQJWMgm3AAoJEIP+FMlX6CvZHPAIAIgXu4741IJeO/Pb187gxO3Z
IXpSSJF1Fvof/Ma6LLSGRth94WiafF91MKKqlEAKFPyfRUOkJXHAoahDUe7lF1Lr
V5qSA4jAu69ZIhg3AAKuI+xBV/PNx7rlaG0duRI9nHmLRhbIU3EF9YJbKntdZzZr
gdE/zLk+moW4U2/quEIEQGqtDGr/RAm5N0MqGwW4mcHUhlp4XcNuqrC8+b5qaeJ3
8/pc9whzyHM04De5Ve9/iFUu0J6KxNK+hN9V14mO8bcPXzK/K8X4C3qUD6HtZx+U
VsaKT/N4INNDg7wqULcjg/Vp23SE/mUPM8Fernee9KnI2CY3pnS9DB1KEYMry5s=
=7g7l
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa147.patch"
Content-Disposition: attachment; filename="xsa147.patch"
Content-Transfer-Encoding: base64

eGVuOiBhcm06IGhhbmRsZSByYWNlcyBiZXR3ZWVuIHJlbGlucXVpc2hfbWVt
b3J5IGFuZCBmcmVlX2RvbWhlYXBfcGFnZXMKClByaW1hcmlseSB0aGlzIG1l
YW5zIFhFTk1FTV9kZWNyZWFzZV9yZXNlcnZhdGlvbiBmcm9tIGEgdG9vbHN0
YWNrCmRvbWFpbi4KClVubGlrZSB4ODYgd2UgaGF2ZSBubyByZXF1aXJlbWVu
dCByaWdodCBub3cgdG8gcXVldWUgc3VjaCBwYWdlcyBvbnRvCmEgc2VwYXJh
dGUgbGlzdCwgaWYgd2UgaGl0IHRoaXMgcmFjZSB0aGVuIHRoZSBvdGhlciBj
b2RlIGhhcyBhbHJlYWR5CmZ1bGx5IGFjY2VwdGVkIHJlc3BvbnNpYmlsaXR5
IGZvciBmcmVlaW5nIHRoaXMgcGFnZSBhbmQgdGhlcmVmb3JlCnRoZXJlIGlz
IG5vIG1vcmUgZm9yIHJlbGlucXVpc2hfbWVtb3J5IHRvIGRvLgoKVGhpcyBp
cyBYU0EtMTQ3LgoKU2lnbmVkLW9mZi1ieTogSWFuIENhbXBiZWxsIDxpYW4u
Y2FtcGJlbGxAY2l0cml4LmNvbT4KUmV2aWV3ZWQtYnk6IEp1bGllbiBHcmFs
bCA8anVsaWVuLmdyYWxsQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4g
QmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+CgpkaWZmIC0tZ2l0IGEveGVu
L2FyY2gvYXJtL2RvbWFpbi5jIGIveGVuL2FyY2gvYXJtL2RvbWFpbi5jCmlu
ZGV4IDU3NTc0NWMuLmFhYzY0Y2IgMTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL2Fy
bS9kb21haW4uYworKysgYi94ZW4vYXJjaC9hcm0vZG9tYWluLmMKQEAgLTc2
NCw4ICs3NjQsMTUgQEAgc3RhdGljIGludCByZWxpbnF1aXNoX21lbW9yeShz
dHJ1Y3QgZG9tYWluICpkLCBzdHJ1Y3QgcGFnZV9saXN0X2hlYWQgKmxpc3Qp
CiAgICAgewogICAgICAgICAvKiBHcmFiIGEgcmVmZXJlbmNlIHRvIHRoZSBw
YWdlIHNvIGl0IHdvbid0IGRpc2FwcGVhciBmcm9tIHVuZGVyIHVzLiAqLwog
ICAgICAgICBpZiAoIHVubGlrZWx5KCFnZXRfcGFnZShwYWdlLCBkKSkgKQot
ICAgICAgICAgICAgLyogQ291bGRuJ3QgZ2V0IGEgcmVmZXJlbmNlIC0tIHNv
bWVvbmUgaXMgZnJlZWluZyB0aGlzIHBhZ2UuICovCi0gICAgICAgICAgICBC
VUcoKTsKKyAgICAgICAgICAgIC8qCisgICAgICAgICAgICAgKiBDb3VsZG4n
dCBnZXQgYSByZWZlcmVuY2UgLS0gc29tZW9uZSBpcyBmcmVlaW5nIHRoaXMg
cGFnZSBhbmQKKyAgICAgICAgICAgICAqIGhhcyBhbHJlYWR5IGNvbW1pdHRl
ZCB0byBkb2luZyBzbywgc28gbm8gbW9yZSB0byBkbyBoZXJlLgorICAgICAg
ICAgICAgICoKKyAgICAgICAgICAgICAqIE5vdGUgdGhhdCB0aGUgcGFnZSBt
dXN0IGJlIGxlZnQgb24gdGhlIGxpc3QsIGEgbGlzdF9kZWwKKyAgICAgICAg
ICAgICAqIGhlcmUgd2lsbCBjbGFzaCB3aXRoIHRoZSBsaXN0X2RlbCBkb25l
IGJ5IHRoZSBvdGhlcgorICAgICAgICAgICAgICogcGFydHkgaW4gdGhlIHJh
Y2UgYW5kIGNvcnJ1cHQgdGhlIGxpc3QgaGVhZC4KKyAgICAgICAgICAgICAq
LworICAgICAgICAgICAgY29udGludWU7CiAKICAgICAgICAgaWYgKCB0ZXN0
X2FuZF9jbGVhcl9iaXQoX1BHQ19hbGxvY2F0ZWQsICZwYWdlLT5jb3VudF9p
bmZvKSApCiAgICAgICAgICAgICBwdXRfcGFnZShwYWdlKTsK

--=separator--
