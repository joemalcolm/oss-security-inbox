X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7515" "Tuesday" "12" "September" "2017" "12:03:32" "+0000" "Xen.org security team" "security@xen.org" "<E1drjue-00081T-1W@xenbits.xenproject.org>" "190" "[oss-security] Xen Security Advisory 232 (CVE-2017-14318) - Missing check for grant table" nil nil nil "9" "2017091212:03:32" "[oss-security] Xen Security Advisory 232 (CVE-2017-14318) - Missing check for grant table" (number mark "U       security@xen Sep 12  190/7515  " thread-indent "\"[oss-security] Xen Security Advisory 232 (CVE-2017-14318) - Missing check for grant table\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3758 invoked by uid 550); 12 Sep 2017 12:05:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1832 invoked from network); 12 Sep 2017 12:04:21 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1drjue-00081T-1W@xenbits.xenproject.org>
Date: Tue, 12 Sep 2017 12:03:32 +0000
Subject: [oss-security] Xen Security Advisory 232 (CVE-2017-14318) - Missing check for
 grant table

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-14318 / XSA-232
                               version 4

                     Missing check for grant table

UPDATES IN VERSION 4
====================

Added metadata file

Public release.

ISSUE DESCRIPTION
=================

The function `__gnttab_cache_flush` handles GNTTABOP_cache_flush grant
table operations. It checks to see if the calling domain is the owner
of the page that is to be operated on. If it is not, the owner's grant
table is checked to see if a grant mapping to the calling domain
exists for the page in question.

However, the function does not check to see if the owning domain
actually has a grant table or not. Some special domains, such as
`DOMID_XEN`, `DOMID_IO` and `DOMID_COW` are created without grant
tables. Hence, if __gnttab_cache_flush operates on a page owned by
these special domains, it will attempt to dereference a null pointer
in the domain struct.


IMPACT
======

The guest can get Xen to dereference a NULL pointer.

For ARM guests and x86 PV guests on systems with SMAP enabled, this will
cause a host crash (denial-of-service).

For x86 PV guests on systems without SMAP enabled, an attacker can map
a crafted grant structure at virtual address 0.  This can be leveraged
to increment an arbitrary virtual address, which can then probably be
leveraged into a full privilege escalation.


VULNERABLE SYSTEMS
==================

All versions of Xen since Xen 4.5 are vulnerable.

x86 HVM guests do not expose the vulnerability.

ARM guests and x86 PV guests on systems with SMAP enabled are only
vulnerable to a Denial-of-Service (host crash).

x86 PV guests on systems without SMAP running are vulnerable to a
privilege escalation.

MITIGATION
==========

Hardware supporting Supervisor Mode Access Prevention (Intel Broadwell,
AMD Zen) can mitigate the privilege escalation to a DoS.

CREDITS
=======

This issue was discovered by Matthew Daley.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa232.patch           xen-unstable, 4.9, 4.8, 4.7, 4.6, 4.5

$ sha256sum xsa232*
b193a711d013fe14556610ef3e703585164fdfc437c3a32a717c419e7a5afab2  xsa232.meta
5068a78293daa58557c30c95141b775becfb650de6a5eda0d82a4a321ced551c  xsa232.patch
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

iQEcBAEBCAAGBQJZt80FAAoJEIP+FMlX6CvZjCcH/0arWvHYjB/Zrnu9dMEjbfW8
ydFwwHm0foHY7ALp/RDazJjsNBDyt7iol0Z1Kv5wgxt+iLvgCuqVokkg80eoI6ku
TYkytzWsZOw1NOJQJ2nH7v5kW76qXceMAByrWZOm09xfFQ2hhGthz8IMwfyAhWc/
GtbsK4K3k2hEp2Uh1yhvT0m2pKvB1190MfNzsKeYIoAlYnDKQu1BB93NTkIlKypz
TgVfvm/1M6F/nnsekipFbGJ6/v7TEi0YqSm6uOudlbUSj0DTZYU5smBizfGwA8Ih
D5ROdlqfRsXsXiUdu/HAT/IB9r9knZpicQQPPmwYPhyB+Fn8UCQei3Z+pRYzGYI=
=aOmL
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa232.meta"
Content-Disposition: attachment; filename="xsa232.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAyMzIsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC45IiwKICAgICI0LjgiLAogICAgIjQuNyIsCiAg
ICAiNC42IiwKICAgICI0LjUiCiAgXSwKICAiVHJlZXMiOiBbCiAgICAieGVu
IgogIF0sCiAgIlJlY2lwZXMiOiB7CiAgICAiNC41IjogewogICAgICAiWGVu
VmVyc2lvbiI6ICI0LjUiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAi
eGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICIzMjE3MTI5ZWI2NWMw
ZDQ5OTVlZDA4ZmI4OTE5ZTNjMzM0Y2FkNTQ4IiwKICAgICAgICAgICJQcmVy
ZXFzIjogWwogICAgICAgICAgICAyMzEKICAgICAgICAgIF0sCiAgICAgICAg
ICAiUGF0Y2hlcyI6IFsgInhzYTIzMi5wYXRjaCIgXQogICAgICAgIH0KICAg
ICAgfQogICAgfSwKICAgICI0LjYiOiB7CiAgICAgICJYZW5WZXJzaW9uIjog
IjQuNiIsCiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAg
ICAgICAgICAiU3RhYmxlUmVmIjogImI0NjYwYjRkNGEzNWVkYWM3MTVjMDAz
Yzg0MzI2ZGUyYjBmYTRmNDciLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAg
ICAgICAgICAgIDIzMQogICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVz
IjogWyAieHNhMjMyLnBhdGNoIiBdCiAgICAgICAgfQogICAgICB9CiAgICB9
LAogICAgIjQuNyI6IHsKICAgICAgIlhlblZlcnNpb24iOiAiNC43IiwKICAg
ICAgIlJlY2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAgICAgICAgICJT
dGFibGVSZWYiOiAiNTE1MTI1NzYyNjE1NWQ2ZTMzMWNjOWU2NmQ4OTZjODRk
YjE2MTFlMSIsCiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAg
MjMxCiAgICAgICAgICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbICJ4c2Ey
MzIucGF0Y2giIF0KICAgICAgICB9CiAgICAgIH0KICAgIH0sCiAgICAiNC44
IjogewogICAgICAiWGVuVmVyc2lvbiI6ICI0LjgiLAogICAgICAiUmVjaXBl
cyI6IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6
ICJmNTIxMWNlNzU4MjFlMGYyY2M1NWVmZmQyOGRmYmU5MDgyMjY5NzBmIiwK
ICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAyMzEKICAgICAg
ICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6IFsgInhzYTIzMi5wYXRjaCIg
XQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICI0LjkiOiB7CiAgICAg
ICJYZW5WZXJzaW9uIjogIjQuOSIsCiAgICAgICJSZWNpcGVzIjogewogICAg
ICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjogIjliZjE0YmJm
OTkwODQzYmZlYzE2YTVkNjlkMzZjZjQ2Yzc1OTNkODgiLAogICAgICAgICAg
IlByZXJlcXMiOiBbCiAgICAgICAgICAgIDIzMQogICAgICAgICAgXSwKICAg
ICAgICAgICJQYXRjaGVzIjogWyAieHNhMjMyLnBhdGNoIiBdCiAgICAgICAg
fQogICAgICB9CiAgICB9LAogICAgIm1hc3RlciI6IHsKICAgICAgIlhlblZl
cnNpb24iOiAibWFzdGVyIiwKICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAg
InhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAiOTA1M2E3NGMwOGZk
NmFiZjQzYmI0NWZmOTMyYjQzODZkZTdlODUxMCIsCiAgICAgICAgICAiUHJl
cmVxcyI6IFsKICAgICAgICAgICAgMjMxCiAgICAgICAgICBdLAogICAgICAg
ICAgIlBhdGNoZXMiOiBbICJ4c2EyMzIucGF0Y2giIF0KICAgICAgICB9CiAg
ICAgIH0KICAgIH0KICB9Cn0=

--=separator
Content-Type: application/octet-stream; name="xsa232.patch"
Content-Disposition: attachment; filename="xsa232.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3BlcjNAY2l0cml4LmNv
bT4KU3ViamVjdDogZ3JhbnRfdGFibGU6IGZpeCBHTlRUQUJPUF9jYWNoZV9m
bHVzaCBoYW5kbGluZwoKRG9uJ3QgZmFsbCBvdmVyIGEgTlVMTCBncmFudF90
YWJsZSBwb2ludGVyIHdoZW4gdGhlIG93bmVyIG9mIHRoZSBkb21haW4KaXMg
YSBzeXN0ZW0gZG9tYWluIChET01JRF97WEVOLElPfSBldGMpLgoKVGhpcyBp
cyBYU0EtMjMyLgoKUmVwb3J0ZWQtYnk6IE1hdHRoZXcgRGFsZXkgPG1hdHRk
QGJ1Z2Z1enouY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgQ29vcGVyIDxh
bmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgpSZXZpZXdlZC1ieTogSmFuIEJl
dWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgoKLS0tIGEveGVuL2NvbW1vbi9n
cmFudF90YWJsZS5jCisrKyBiL3hlbi9jb21tb24vZ3JhbnRfdGFibGUuYwpA
QCAtMzA1Myw3ICszMDUzLDcgQEAgc3RhdGljIGludCBjYWNoZV9mbHVzaChn
bnR0YWJfY2FjaGVfZmx1cwogCiAgICAgcGFnZSA9IG1mbl90b19wYWdlKG1m
bik7CiAgICAgb3duZXIgPSBwYWdlX2dldF9vd25lcl9hbmRfcmVmZXJlbmNl
KHBhZ2UpOwotICAgIGlmICggIW93bmVyICkKKyAgICBpZiAoICFvd25lciB8
fCAhb3duZXItPmdyYW50X3RhYmxlICkKICAgICB7CiAgICAgICAgIHJjdV91
bmxvY2tfZG9tYWluKGQpOwogICAgICAgICByZXR1cm4gLUVQRVJNOwo=

--=separator--
