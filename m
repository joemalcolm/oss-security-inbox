X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8040" "Tuesday" "15" "August" "2017" "13:49:40" "+0000" "Xen.org security team" "security@xen.org" "<E1dhcE0-0007WU-Le@xenbits.xenproject.org>" "194" "[oss-security] Xen Security Advisory 230 (CVE-2017-12855) - grant_table: possibly premature clearing of GTF_writing / GTF_reading" nil nil nil "8" "2017081513:49:40" "[oss-security] Xen Security Advisory 230 (CVE-2017-12855) - grant_table: possibly premature clearing of GTF_writing / GTF_reading" (number mark "U       security@xen Aug 15  194/8040  " thread-indent "\"[oss-security] Xen Security Advisory 230 (CVE-2017-12855) - grant_table: possibly premature clearing of GTF_writing / GTF_reading\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32646 invoked by uid 550); 15 Aug 2017 13:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32622 invoked from network); 15 Aug 2017 13:50:07 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1dhcE0-0007WU-Le@xenbits.xenproject.org>
Date: Tue, 15 Aug 2017 13:49:40 +0000
Subject: [oss-security] Xen Security Advisory 230 (CVE-2017-12855) - grant_table:
 possibly premature clearing of GTF_writing / GTF_reading

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-12855 / XSA-230
                              version 3

 grant_table: possibly premature clearing of GTF_writing / GTF_reading

UPDATES IN VERSION 3
====================

CVE assigned.

ISSUE DESCRIPTION
=================

Xen maintains the _GTF_{read,writ}ing bits as appropriate, to inform the
guest that a grant is in use.  A guest is expected not to modify the
grant details while it is in use, whereas the guest is free to
modify/reuse the grant entry when it is not in use.

Under some circumstances, Xen will clear the status bits too early,
incorrectly informing the guest that the grant is no longer in use.

IMPACT
======

A guest may prematurely believe that a granted frame is safely private
again, and reuse it in a way which contains sensitive information, while
the domain on the far end of the grant is still using the grant.

VULNERABLE SYSTEMS
==================

All systems are vulnerable.

MITIGATION
==========

There are no mitigations.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa230.patch           xen-unstable, 4.9, 4.8, 4.7, 4.6, 4.5

$ sha256sum xsa230*
912c24771dc9e9b305be630b7771505abb3db735564c5574fc30b58a5da0139e  xsa230.meta
77a73f1c32d083e315ef0b1bbb119cb8840ceb5ada790cad76cbfb9116f725cc  xsa230.patch
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


NOTE REGARDING SHORT EMBARGO
============================

This issue was discovered while investigating problems with the initial
version of XSA-226.  Accordingly, XSA-230 is embargoed and the embargo
will end at the same time as that of XSA-226.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJZkvttAAoJEIP+FMlX6CvZBX4H/j68Tf+YJYNV6coTx6/Ag0wo
WVRepDbj/WTfpY4lT3SL57dpyhnfDNUgUaMkNfEUU9GV9FGtYEChHtQ3kDh9PvVG
ifZgyHxJnRgZY3Mr12FcevyevyPpluMFHZ7RzCl6hVXgekd2+YZOnSbY/FYPhvuh
Chzv2HUUMY/5Yt3HkbTgez3vRIxQW74TjERIqGx6y0bD3z+NYmOtmzeYcyUGsUBL
sf+QnBH6/bjZjiycojK7LEb4u032Kgws0lXABIypql7D8YlVH75ZOxxWxV1TmerR
Alc71JR+22ze76Tz0C4b0rafNv3xmn3o/0qoGQWo+7/o01Eg6XHuN9nn78bz2tw=
=x4fa
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa230.meta"
Content-Disposition: attachment; filename="xsa230.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAyMzAsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC45IiwKICAgICI0LjgiLAogICAgIjQuNyIsCiAg
ICAiNC42IiwKICAgICI0LjUiCiAgXSwKICAiVHJlZXMiOiBbCiAgICAieGVu
IgogIF0sCiAgIlJlY2lwZXMiOiB7CiAgICAiNC41IjogewogICAgICAiWGVu
VmVyc2lvbiI6ICI0LjUiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAi
eGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICIzMjE3MTI5ZWI2NWMw
ZDQ5OTVlZDA4ZmI4OTE5ZTNjMzM0Y2FkNTQ4IiwKICAgICAgICAgICJQcmVy
ZXFzIjogWwogICAgICAgICAgICAyMjYsCiAgICAgICAgICAgIDIyNwogICAg
ICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWyAieHNhMjMwLnBhdGNo
IiBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAogICAgIjQuNiI6IHsKICAg
ICAgIlhlblZlcnNpb24iOiAiNC42IiwKICAgICAgIlJlY2lwZXMiOiB7CiAg
ICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAiZDcwOGI2
OTVhMzZiNGZkY2Q4ZTQ4ZTZmYzhlNjExZTAxMGY1MjgwYiIsCiAgICAgICAg
ICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMjI2LAogICAgICAgICAgICAy
MjcsCiAgICAgICAgICAgIDIyOAogICAgICAgICAgXSwKICAgICAgICAgICJQ
YXRjaGVzIjogWyAieHNhMjMwLnBhdGNoIiBdCiAgICAgICAgfQogICAgICB9
CiAgICB9LAogICAgIjQuNyI6IHsKICAgICAgIlhlblZlcnNpb24iOiAiNC43
IiwKICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAgICAg
ICAgICJTdGFibGVSZWYiOiAiNGZiZmEzNGIxYTBiYjMyOWFhNTcyNzU0MjFl
MmU5MDI3ZDMyYWFkNSIsCiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAg
ICAgICAgMjI2LAogICAgICAgICAgICAyMjcsCiAgICAgICAgICAgIDIyOAog
ICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWyAieHNhMjMwLnBh
dGNoIiBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAogICAgIjQuOCI6IHsK
ICAgICAgIlhlblZlcnNpb24iOiAiNC44IiwKICAgICAgIlJlY2lwZXMiOiB7
CiAgICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAiMWU2
Yzg4ZmFmY2I0NjY0YTUwMTIzOWQxZDg2NjVjMzRiNTM4NDY0OCIsCiAgICAg
ICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMjI2LAogICAgICAgICAg
ICAyMjcsCiAgICAgICAgICAgIDIyOAogICAgICAgICAgXSwKICAgICAgICAg
ICJQYXRjaGVzIjogWyAieHNhMjMwLnBhdGNoIiBdCiAgICAgICAgfQogICAg
ICB9CiAgICB9LAogICAgIjQuOSI6IHsKICAgICAgIlhlblZlcnNpb24iOiAi
NC45IiwKICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAg
ICAgICAgICJTdGFibGVSZWYiOiAiMGZhZGEwNTlhNzk0ODE1Mzk3NmNjMTUy
ZTM2NjMzZGVlM2Q1YjI3MyIsCiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAg
ICAgICAgICAgMjI2LAogICAgICAgICAgICAyMjcsCiAgICAgICAgICAgIDIy
OAogICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWyAieHNhMjMw
LnBhdGNoIiBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAogICAgIm1hc3Rl
ciI6IHsKICAgICAgIlhlblZlcnNpb24iOiAibWFzdGVyIiwKICAgICAgIlJl
Y2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVS
ZWYiOiAiNTU5MjRiYWYyMjExZGRjZjViYThmNzAyYzlhNGMwNzczMGUwYzhl
OCIsCiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMjI2LAog
ICAgICAgICAgICAyMjcsCiAgICAgICAgICAgIDIyOAogICAgICAgICAgXSwK
ICAgICAgICAgICJQYXRjaGVzIjogWyAieHNhMjMwLnBhdGNoIiBdCiAgICAg
ICAgfQogICAgICB9CiAgICB9CiAgfQp9

--=separator
Content-Type: application/octet-stream; name="xsa230.patch"
Content-Disposition: attachment; filename="xsa230.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiBnbnR0YWI6IGNvcnJlY3QgcGluIHN0YXR1cyBmaXh1cCBmb3IgY29weQoK
UmVnYXJkbGVzcyBvZiBjb3B5IG9wZXJhdGlvbnMgb25seSBzZXR0aW5nIEdO
VFBJTl9oc3QqLCBHTlRQSU5fZGV2KgphbHNvIG5lZWQgdG8gYmUgdGFrZW4g
aW50byBhY2NvdW50IHdoZW4gZGVjaWRpbmcgd2hldGhlciB0byBjbGVhcgpf
R1RGX3tyZWFkLHdyaXR9aW5nLiBBdCBsZWFzdCBmb3IgY29uc2lzdGVuY3kg
d2l0aCBjb2RlIGVsc2V3aGVyZSB0aGUKcmVhZCBwYXJ0IGJldHRlciBkb2Vz
bid0IHVzZSBhbnkgbWFzayBhdCBhbGwuCgpUaGlzIGlzIFhTQS0yMzAuCgpT
aWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+
ClJldmlld2VkLWJ5OiBBbmRyZXcgQ29vcGVyIDxhbmRyZXcuY29vcGVyM0Bj
aXRyaXguY29tPgpkaWZmIC0tZ2l0IGEveGVuL2NvbW1vbi9ncmFudF90YWJs
ZS5jIGIveGVuL2NvbW1vbi9ncmFudF90YWJsZS5jCmluZGV4IGFlMzQ1NDcu
LjljOWQzM2MgMTAwNjQ0Ci0tLSBhL3hlbi9jb21tb24vZ3JhbnRfdGFibGUu
YworKysgYi94ZW4vY29tbW9uL2dyYW50X3RhYmxlLmMKQEAgLTIxMDcsMTAg
KzIxMDcsMTAgQEAgX19yZWxlYXNlX2dyYW50X2Zvcl9jb3B5KAogc3RhdGlj
IHZvaWQgX19maXh1cF9zdGF0dXNfZm9yX2NvcHlfcGluKGNvbnN0IHN0cnVj
dCBhY3RpdmVfZ3JhbnRfZW50cnkgKmFjdCwKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdWludDE2X3QgKnN0YXR1cykKIHsKLSAgICBp
ZiAoICEoYWN0LT5waW4gJiBHTlRQSU5faHN0d19tYXNrKSApCisgICAgaWYg
KCAhKGFjdC0+cGluICYgKEdOVFBJTl9oc3R3X21hc2sgfCBHTlRQSU5fZGV2
d19tYXNrKSkgKQogICAgICAgICBnbnR0YWJfY2xlYXJfZmxhZyhfR1RGX3dy
aXRpbmcsIHN0YXR1cyk7CiAKLSAgICBpZiAoICEoYWN0LT5waW4gJiBHTlRQ
SU5faHN0cl9tYXNrKSApCisgICAgaWYgKCAhYWN0LT5waW4gKQogICAgICAg
ICBnbnR0YWJfY2xlYXJfZmxhZyhfR1RGX3JlYWRpbmcsIHN0YXR1cyk7CiB9
CiAKQEAgLTIzMTgsNyArMjMxOCw3IEBAIF9fYWNxdWlyZV9ncmFudF9mb3Jf
Y29weSgKICAKICB1bmxvY2tfb3V0X2NsZWFyOgogICAgIGlmICggIShyZWFk
b25seSkgJiYKLSAgICAgICAgICEoYWN0LT5waW4gJiBHTlRQSU5faHN0d19t
YXNrKSApCisgICAgICAgICAhKGFjdC0+cGluICYgKEdOVFBJTl9oc3R3X21h
c2sgfCBHTlRQSU5fZGV2d19tYXNrKSkgKQogICAgICAgICBnbnR0YWJfY2xl
YXJfZmxhZyhfR1RGX3dyaXRpbmcsIHN0YXR1cyk7CiAKICAgICBpZiAoICFh
Y3QtPnBpbiApCg==

--=separator--
