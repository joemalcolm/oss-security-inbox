X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8407" "Tuesday" "12" "September" "2017" "12:03:34" "+0000" "Xen.org security team" "security@xen.org" "<E1drjug-00084W-JI@xenbits.xenproject.org>" "199" "[oss-security] Xen Security Advisory 233 (CVE-2017-14317) - cxenstored: Race in domain cleanup" nil nil nil "9" "2017091212:03:34" "[oss-security] Xen Security Advisory 233 (CVE-2017-14317) - cxenstored: Race in domain cleanup" (number mark "U       security@xen Sep 12  199/8407  " thread-indent "\"[oss-security] Xen Security Advisory 233 (CVE-2017-14317) - cxenstored: Race in domain cleanup\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5835 invoked by uid 550); 12 Sep 2017 12:05:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1830 invoked from network); 12 Sep 2017 12:04:21 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1drjug-00084W-JI@xenbits.xenproject.org>
Date: Tue, 12 Sep 2017 12:03:34 +0000
Subject: [oss-security] Xen Security Advisory 233 (CVE-2017-14317) - cxenstored: Race in
 domain cleanup

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2017-14317 / XSA-233
                               version 3

                  cxenstored: Race in domain cleanup

UPDATES IN VERSION 3
====================

Added metadata file

Public release.

ISSUE DESCRIPTION
=================

When shutting down a VM with a stubdomain, a race in cxenstored may
cause a double-free.

IMPACT
======

The xenstored daemon may crash, resulting in a DoS of any parts of the
system relying on it (including domain creation / destruction,
ballooning, device changes, etc).

VULNERABLE SYSTEMS
==================

All versions of Xen are vulnerable.

Only systems running the C version os xenstored ("xenstored") are
vulnerable; systems running the Ocaml version ("oxenstored") are not
vulnerable.

Only systems running devicemodel stubdomains are vulnerable.  Only x86
HVM guests can use stubdomains.  Therefore ARM systems, x86 systems
running only PV guests, and x86 systems running HVM guests with the
devicemodel not in a stubdomain (eg in dom0), are not vulnerable.

MITIGATION
==========

Running oxenstored will mitigate this issue.  Not using stubdomains
will also mitigate the issue.

CREDITS
=======

This issue was discovered by Eric Chanudet of AIS.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa233.patch     xen-unstable, Xen 4.9.x Xen 4.8.x Xen 4.7.x Xen 4.6.x Xen 4.5.x

$ sha256sum xsa233*
66b6f6c0837a5d12a77db7e5cbfd0514968bd47e2d192824da3bc9ddf119bfe0  xsa233.meta
f721cc49ba692b2f36299b631451f51d7340b8b4732f74c98f01cb7a80d8662b  xsa233.patch
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

iQEcBAEBCAAGBQJZt80GAAoJEIP+FMlX6CvZVO8IALTEAV/xiPTN1uUPISLQYLmX
6Bu80yrD+5UjVVI01FrkeUfNJBABmxf5q6sTOFeuYctwY6iPMJI46jHda8ugew5j
wnOgtgat0lfQT1/E/C8SsGEHeTULXPHVOaaXRQT55ExhVvEhLvSQV5vd6YNituyq
ow3hYrK3crK3uCOdLyZlxbuHXMFyLIbpoTYnRgXzV/3uLOB5TPsoRzKf4E+Z1Muo
chQXk8OQG+CEYupf00+H/QTvrDLSnf4KT4t4rZXDqUd39QoxV1l9s0daLyMjyJg/
Lu5t1WmcmarZvYICJhWf3Vi2NpaNTyQEeepwUM/XHe+vgHJXzesWyuRoLApmEfE=
=trYV
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa233.meta"
Content-Disposition: attachment; filename="xsa233.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAyMzMsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC45IiwKICAgICI0LjgiLAogICAgIjQuNyIsCiAg
ICAiNC42IiwKICAgICI0LjUiCiAgXSwKICAiVHJlZXMiOiBbCiAgICAieGVu
IgogIF0sCiAgIlJlY2lwZXMiOiB7CiAgICAiNC41IjogewogICAgICAiWGVu
VmVyc2lvbiI6ICI0LjUiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAi
eGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICIzMjE3MTI5ZWI2NWMw
ZDQ5OTVlZDA4ZmI4OTE5ZTNjMzM0Y2FkNTQ4IiwKICAgICAgICAgICJQcmVy
ZXFzIjogWwogICAgICAgICAgICAyMzEsCiAgICAgICAgICAgIDIzMgogICAg
ICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWyAieHNhMjMzLnBhdGNo
IiBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAogICAgIjQuNiI6IHsKICAg
ICAgIlhlblZlcnNpb24iOiAiNC42IiwKICAgICAgIlJlY2lwZXMiOiB7CiAg
ICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYiOiAiYjQ2NjBi
NGQ0YTM1ZWRhYzcxNWMwMDNjODQzMjZkZTJiMGZhNGY0NyIsCiAgICAgICAg
ICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMjMxLAogICAgICAgICAgICAy
MzIKICAgICAgICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6IFsgInhzYTIz
My5wYXRjaCIgXQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICI0Ljci
OiB7CiAgICAgICJYZW5WZXJzaW9uIjogIjQuNyIsCiAgICAgICJSZWNpcGVz
IjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjog
IjUxNTEyNTc2MjYxNTVkNmUzMzFjYzllNjZkODk2Yzg0ZGIxNjExZTEiLAog
ICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAgIDIzMSwKICAgICAg
ICAgICAgMjMyCiAgICAgICAgICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBb
ICJ4c2EyMzMucGF0Y2giIF0KICAgICAgICB9CiAgICAgIH0KICAgIH0sCiAg
ICAiNC44IjogewogICAgICAiWGVuVmVyc2lvbiI6ICI0LjgiLAogICAgICAi
UmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0YWJs
ZVJlZiI6ICJmNTIxMWNlNzU4MjFlMGYyY2M1NWVmZmQyOGRmYmU5MDgyMjY5
NzBmIiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAyMzEs
CiAgICAgICAgICAgIDIzMgogICAgICAgICAgXSwKICAgICAgICAgICJQYXRj
aGVzIjogWyAieHNhMjMzLnBhdGNoIiBdCiAgICAgICAgfQogICAgICB9CiAg
ICB9LAogICAgIjQuOSI6IHsKICAgICAgIlhlblZlcnNpb24iOiAiNC45IiwK
ICAgICAgIlJlY2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAgICAgICAg
ICJTdGFibGVSZWYiOiAiOWJmMTRiYmY5OTA4NDNiZmVjMTZhNWQ2OWQzNmNm
NDZjNzU5M2Q4OCIsCiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAg
ICAgMjMxLAogICAgICAgICAgICAyMzIKICAgICAgICAgIF0sCiAgICAgICAg
ICAiUGF0Y2hlcyI6IFsgInhzYTIzMy5wYXRjaCIgXQogICAgICAgIH0KICAg
ICAgfQogICAgfSwKICAgICJtYXN0ZXIiOiB7CiAgICAgICJYZW5WZXJzaW9u
IjogIm1hc3RlciIsCiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4i
OiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjogIjkwNTNhNzRjMDhmZDZhYmY0
M2JiNDVmZjkzMmI0Mzg2ZGU3ZTg1MTAiLAogICAgICAgICAgIlByZXJlcXMi
OiBbCiAgICAgICAgICAgIDIzMSwKICAgICAgICAgICAgMjMyCiAgICAgICAg
ICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbICJ4c2EyMzMucGF0Y2giIF0K
ICAgICAgICB9CiAgICAgIH0KICAgIH0KICB9Cn0=

--=separator
Content-Type: application/octet-stream; name="xsa233.patch"
Content-Disposition: attachment; filename="xsa233.patch"
Content-Transfer-Encoding: base64

RnJvbTogSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuY29tPgpTdWJqZWN0
OiB0b29scy94ZW5zdG9yZTogZG9udCB1bmxpbmsgY29ubmVjdGlvbiBvYmpl
Y3QgdHdpY2UKCkEgY29ubmVjdGlvbiBvYmplY3Qgb2YgYSBkb21haW4gd2l0
aCBhc3NvY2lhdGVkIHN0dWJkb20gaGFzIHR3bwpwYXJlbnRzOiB0aGUgZG9t
YWluIGFuZCB0aGUgc3R1YmRvbS4gV2hlbiBjbGVhbmluZyB1cCB0aGUgbGlz
dCBvZgphY3RpdmUgZG9tYWlucyBpbiBkb21haW5fY2xlYW51cCgpIG1ha2Ug
c3VyZSBub3QgdG8gdW5saW5rIHRoZQpjb25uZWN0aW9uIHR3aWNlIGZyb20g
dGhlIHNhbWUgZG9tYWluLiBUaGlzIGNvdWxkIGhhcHBlbiB3aGVuIHRoZQpk
b21haW4gYW5kIGl0cyBzdHViZG9tIGFyZSBiZWluZyBkZXN0cm95ZWQgYXQg
dGhlIHNhbWUgdGltZSBsZWFkaW5nCnRvIHRoZSBkb21haW4gbG9vcCBiZWlu
ZyBlbnRlcmVkIHR3aWNlLgoKQWRkaXRpb25hbGx5IGRvbid0IHVzZSB0YWxs
b2NfZnJlZSgpIGluIHRoaXMgY2FzZSBhcyBpdCB3aWxsIHJlbW92ZQphIHJh
bmRvbSBwYXJlbnQgbGluaywgbGVhZGluZyBldmVudHVhbGx5IHRvIGEgbWVt
b3J5IGxlYWsuIFVzZQp0YWxsb2NfdW5saW5rKCkgaW5zdGVhZCBzcGVjaWZ5
aW5nIHRoZSBjb250ZXh0IGZyb20gd2hpY2ggdGhlCmNvbm5lY3Rpb24gb2Jq
ZWN0IHNob3VsZCBiZSByZW1vdmVkLgoKVGhpcyBpcyBYU0EtMjMzLgoKUmVw
b3J0ZWQtYnk6IEVyaWMgQ2hhbnVkZXQgPGNoYW51ZGV0ZUBhaW5mb3NlYy5j
b20+ClNpZ25lZC1vZmYtYnk6IEp1ZXJnZW4gR3Jvc3MgPGpncm9zc0BzdXNl
LmNvbT4KUmV2aWV3ZWQtYnk6IElhbiBKYWNrc29uIDxpYW4uamFja3NvbkBl
dS5jaXRyaXguY29tPgoKLS0tIGEvdG9vbHMveGVuc3RvcmUveGVuc3RvcmVk
X2RvbWFpbi5jCisrKyBiL3Rvb2xzL3hlbnN0b3JlL3hlbnN0b3JlZF9kb21h
aW4uYwpAQCAtMjIxLDEwICsyMjEsMTEgQEAgc3RhdGljIGludCBkZXN0cm95
X2RvbWFpbih2b2lkICpfZG9tYWluKQogc3RhdGljIHZvaWQgZG9tYWluX2Ns
ZWFudXAodm9pZCkKIHsKIAl4Y19kb21pbmZvX3QgZG9taW5mbzsKLQlzdHJ1
Y3QgZG9tYWluICpkb21haW4sICp0bXA7CisJc3RydWN0IGRvbWFpbiAqZG9t
YWluOwogCWludCBub3RpZnkgPSAwOwogCi0JbGlzdF9mb3JfZWFjaF9lbnRy
eV9zYWZlKGRvbWFpbiwgdG1wLCAmZG9tYWlucywgbGlzdCkgeworIGFnYWlu
OgorCWxpc3RfZm9yX2VhY2hfZW50cnkoZG9tYWluLCAmZG9tYWlucywgbGlz
dCkgewogCQlpZiAoeGNfZG9tYWluX2dldGluZm8oKnhjX2hhbmRsZSwgZG9t
YWluLT5kb21pZCwgMSwKIAkJCQkgICAgICAmZG9taW5mbykgPT0gMSAmJgog
CQkgICAgZG9taW5mby5kb21pZCA9PSBkb21haW4tPmRvbWlkKSB7CkBAIC0y
MzYsOCArMjM3LDEyIEBAIHN0YXRpYyB2b2lkIGRvbWFpbl9jbGVhbnVwKHZv
aWQpCiAJCQlpZiAoIWRvbWluZm8uZHlpbmcpCiAJCQkJY29udGludWU7CiAJ
CX0KLQkJdGFsbG9jX2ZyZWUoZG9tYWluLT5jb25uKTsKLQkJbm90aWZ5ID0g
MDsgLyogZGVzdHJveV9kb21haW4oKSBmaXJlcyB0aGUgd2F0Y2ggKi8KKwkJ
aWYgKGRvbWFpbi0+Y29ubikgeworCQkJdGFsbG9jX3VubGluayh0YWxsb2Nf
YXV0b2ZyZWVfY29udGV4dCgpLCBkb21haW4tPmNvbm4pOworCQkJZG9tYWlu
LT5jb25uID0gTlVMTDsKKwkJCW5vdGlmeSA9IDA7IC8qIGRlc3Ryb3lfZG9t
YWluKCkgZmlyZXMgdGhlIHdhdGNoICovCisJCQlnb3RvIGFnYWluOworCQl9
CiAJfQogCiAJaWYgKG5vdGlmeSkK

--=separator--
