X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5631" "Tuesday" "1" "September" "2015" "13:19:07" "+0000" "Xen.org security team" "security@xen.org" "<E1ZWlSt-00030m-NL@xenbits.xen.org>" "152" "[oss-security] Xen Security Advisory 141 (CVE-2015-6654) - printk is not rate-limited in xenmem_add_to_physmap_one" nil nil nil "9" "2015090113:19:07" "[oss-security] Xen Security Advisory 141 (CVE-2015-6654) - printk is not rate-limited in xenmem_add_to_physmap_one" (number mark "U       security@xen Sep  1  152/5631  " thread-indent "\"[oss-security] Xen Security Advisory 141 (CVE-2015-6654) - printk is not rate-limited in xenmem_add_to_physmap_one\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29734 invoked by uid 550); 1 Sep 2015 13:19:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28645 invoked from network); 1 Sep 2015 13:19:27 -0000
Message-Id: <E1ZWlSt-00030m-NL@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Tue, 01 Sep 2015 13:19:07 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 141 (CVE-2015-6654) - printk is not
 rate-limited in xenmem_add_to_physmap_one
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-6654 / XSA-141
                              version 3

         printk is not rate-limited in xenmem_add_to_physmap_one

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

XENMAPSPACE_gmfn_foreign dumps the p2m, on ARM, when it fails to get a
reference on the foreign page.  However, dump_p2m_lookup does not use
rate-limited printk.

A malicious infrastructure domain, which is allowed to map memory of
a foreign guest, would be able to flood the Xen console.

IMPACT
======

Domains deliberately given partial management control may be able to
deny service to other parts of the system.

As a result, in a system designed to enhance security by radically
disaggregating the management, the security may be reduced.  But, the
security will be no worse than a non-disaggregated design.

VULNERABLE SYSTEMS
==================

This issue is only relevant to systems which intend to increase
security through the use of advanced disaggregated management
techniques.

This does not include systems using libxl, libvirt, xm/xend,
XCP/XenServer, OpenStack or CloudStack (unless substantially modified
or supplemented, as compared to versions supplied by the respective
upstreams).

This issue is not relevant to stub device models, driver domains, or
stub xenstored.  Those disaggregation techniques do not rely on
granting the semi-privileged support domains access to the affected
hypercall, and are believed to provide the intended security benefits.

Only ARM systems are potentially affected.  All Xen versions which
support ARM are potentially affected.

MITIGATION
==========

Reducing the hypervisor log level can be used to suppress messages.

Switching from disaggregated to a non-disaggregated operation does NOT
mitigate these vulnerabilities.  Rather, it simply recategorises the
vulnerability to hostile management code, regarding it "as designed";
thus it merely reclassifies these issues as "not a bug".  Users and
vendors of disaggregated systems should not change their
configuration.

CREDITS
=======

This issue was discovered by Julien Grall of Citrix.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa141.patch        Xen 4.4.x, 4.5.x, xen-unstable

$ sha256sum xsa141*.patch
12358565dc443e1855a1b5776fa9008c5ea5e5854bd4e93b88ab4178c698fc2a  xsa141.patch
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

iQEcBAEBAgAGBQJV5aV+AAoJEIP+FMlX6CvZz74H/jn2L3URqeatI7eBXRtpC9SL
DshKXMZRC746x5W06nsFp9dxr/ggSrMG1avM3q/V2dF5Sb/RDyH3A4D8DVhZOFQh
jxYScztKJI2OjRmPJvPatVR9oYBQhLpwg8yE3ye6//ObHCO3PSqX28VqWkS8gZha
E3Cr3PpbWN1nO1PkHZBqq9BRT7B6Nq/1HE3TnbgjYVWUryWMUUp6GZOZ9QYOTbQB
F5I7oimZ/mW2B4PL9p2lCKnCBDJIELpeE6sZAmv8yeQg7Lq7UhwWnB57U8gOOe1I
uzV5z852a9Hqdn8flUOGn0eQxputFRdOTamaMqQ2UtG2f0E+l2R6ahD1CGyTmBM=
=pKQu
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa141.patch"
Content-Disposition: attachment; filename="xsa141.patch"
Content-Transfer-Encoding: base64

RnJvbTogSnVsaWVuIEdyYWxsIDxqdWxpZW4uZ3JhbGxAY2l0cml4LmNvbT4K
RGF0ZTogVGh1LCAxMyBBdWcgMjAxNSAxMjowMzo0MyArMDEwMApTdWJqZWN0
OiBbUEFUQ0hdIHhlbi9hcm06IG1tOiBEbyBub3QgZHVtcCB0aGUgcDJtIHdo
ZW4gbWFwcGluZyBhIGZvcmVpZ24gZ2ZuCgpUaGUgcGh5c21hcCBvcGVyYXRp
b24gWEVOTUFQU1BBQ0VfZ2Ztbl9mb3JlaWduIGlzIGR1bXBpbmcgdGhlIHAy
bSB3aGVuCmFuIGVycm9yIG9jY3VyZWQgYnkgY2FsbGluZyBkdW1wX3AybV9s
b29rdXAuIEJ1dCB0aGlzIGZ1bmN0aW9uIGlzIG5vdAp1c2luZyByYXRlbGlt
aXRlZCBwcmludGsuCgpBbnkgZG9tYWluIGFibGUgdG8gbWFwIGZvcmVpZ24g
Z2ZtbiB3b3VsZCBiZSBhYmxlIHRvIGZsb29kIHRoZSBYZW4KY29uc29sZS4K
ClRoZSBpbmZvcm1hdGlvbiB3YXNuJ3Qgbm90IHVzZWZ1bCBzbyBkcm9wIGl0
LgoKVGhpcyBpcyBYU0EtMTQxLgoKU2lnbmVkLW9mZi1ieTogSnVsaWVuIEdy
YWxsIDxqdWxpZW4uZ3JhbGxAY2l0cml4LmNvbT4KQWNrZWQtYnk6IElhbiBD
YW1wYmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5jb20+Ci0tLQogeGVuL2Fy
Y2gvYXJtL21tLmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEveGVuL2FyY2gvYXJtL21tLmMgYi94ZW4vYXJj
aC9hcm0vbW0uYwppbmRleCBhZTBmMzRjLi5kMDBkNTI2IDEwMDY0NAotLS0g
YS94ZW4vYXJjaC9hcm0vbW0uYworKysgYi94ZW4vYXJjaC9hcm0vbW0uYwpA
QCAtMTExNCw3ICsxMTE0LDYgQEAgaW50IHhlbm1lbV9hZGRfdG9fcGh5c21h
cF9vbmUoCiAgICAgICAgIHBhZ2UgPSBnZXRfcGFnZV9mcm9tX2dmbihvZCwg
aWR4LCAmcDJtdCwgUDJNX0FMTE9DKTsKICAgICAgICAgaWYgKCAhcGFnZSAp
CiAgICAgICAgIHsKLSAgICAgICAgICAgIGR1bXBfcDJtX2xvb2t1cChvZCwg
cGZuX3RvX3BhZGRyKGlkeCkpOwogICAgICAgICAgICAgcmN1X3VubG9ja19k
b21haW4ob2QpOwogICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CiAgICAg
ICAgIH0KLS0gCjIuMS40Cgo=

--=separator--
