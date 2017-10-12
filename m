X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13093" "Thursday" "12" "October" "2017" "12:16:24" "+0000" "Xen.org security team" "security@xen.org" "<E1e2cPY-000765-3B@xenbits.xenproject.org>" "282" "[oss-security] Xen Security Advisory 238 - DMOP map/unmap missing argument checks" nil nil nil "10" "2017101212:16:24" "[oss-security] Xen Security Advisory 238 - DMOP map/unmap missing argument checks" (number mark "U       security@xen Oct 12  282/13093 " thread-indent "\"[oss-security] Xen Security Advisory 238 - DMOP map/unmap missing argument checks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27654 invoked by uid 550); 12 Oct 2017 12:59:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18249 invoked from network); 12 Oct 2017 12:16:45 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1e2cPY-000765-3B@xenbits.xenproject.org>
Date: Thu, 12 Oct 2017 12:16:24 +0000
Subject: [oss-security] Xen Security Advisory 238 - DMOP map/unmap missing argument checks

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

                    Xen Security Advisory XSA-238
                              version 2

                DMOP map/unmap missing argument checks

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

DMOPs (which were a subgroup of HVMOPs in older releases) allow guests
to control and drive other guests.  The I/O request server page mapping
interface uses range sets to represent I/O resources the emulation of
which is provided by a given I/O request server.  The internals of the
range set implementation require that ranges have a starting value no
lower than the ending one.  Checks for this fact were missing.

IMPACT
======

Malicious or buggy stub domain kernels or tool stacks otherwise living
outside of Domain0 can mount a denial of service attack which, if
successful, can affect the whole system.

Only domains controlling HVM guests can exploit this vulnerability.
(This includes domains providing hardware emulation services to HVM
guests.)

VULNERABLE SYSTEMS
==================

Xen versions 4.5 and later are vulnerable.  Xen versions 4.4 and
earlier are not vulnerable.

Only x86 systems are affected.  ARM systems are not affected.

This vulnerability is only applicable to Xen systems using stub domains
or other forms of disaggregation of control domains for HVM guests.

MITIGATION
==========

Running only PV guests will avoid this issue.

(The security of a Xen system using stub domains is still better than
with a qemu-dm running as an unrestricted dom0 process.  Therefore
users with these configurations should not switch to an unrestricted
dom0 qemu-dm.)

CREDITS
=======

This issue was discovered by Vitaly Kuznetsov of RedHat.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa238.patch           xen-unstable, Xen 4.9.x, Xen 4.8.x, Xen 4.7.x
xsa238-4.6.patch       Xen 4.6.x
xsa238-4.5.patch       Xen 4.5.x

$ sha256sum xsa238*
3cced09a1fb2936644d654c568f38580952328b84e28601b019ea74122228c36  xsa238.meta
85d3f9713bef1bc86c682857dbd7388a1d1f20089363ddfc4cb9ecbd88eaffec  xsa238.patch
034e91c234f6831dbaa1aaf29f4f90de2e822f99301424f7f3527f9da883ff68  xsa238-4.5.patch
29255a81729b24866e594426167de5fbef70de21ef62a95ba95de191d2a7fd54  xsa238-4.6.patch
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

iQEcBAEBCAAGBQJZ31v7AAoJEIP+FMlX6CvZrBgIAMg3C1Gvc3rnrPjT+0Im7gdQ
vBXGAWViWDs7EC1Vl5IU6lQQKETNmx40kRPyOYOVSdPzWamOotXOSadpJ49mbTX1
CA2iSJ8OAdqcPhgKjdUYVJXkybujNp6WkdlcT6ZXvEs6DLuvKJXZBaRoX2vYtObq
JjwUfGgpHcOc8vLhaEjEZTWRnKJotqQPaPaDHzrtGJAkHB0F+gwqpM4lBD6Q18+/
DzyBWlDENEcoSwzDldZ/4Ktl/rOXDOPoYYZfnFmYA2puWP7ujonio8iofOy+6GH3
GoKSPs1ciC4ax1WdJqbuxM0TCStz4QFOselVQ0hEJNdH6k3mmA4wMg+6kPNDf2U=
=9idj
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa238.meta"
Content-Disposition: attachment; filename="xsa238.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAyMzgsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC45IiwKICAgICI0LjgiLAogICAgIjQuNyIsCiAg
ICAiNC42IiwKICAgICI0LjUiCiAgXSwKICAiVHJlZXMiOiBbCiAgICAieGVu
IgogIF0sCiAgIlJlY2lwZXMiOiB7CiAgICAiNC41IjogewogICAgICAiWGVu
VmVyc2lvbiI6ICI0LjUiLAogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAi
eGVuIjogewogICAgICAgICAgIlN0YWJsZVJlZiI6ICI4MzcyNGQ5ZjNhZTIx
YTNiOTYzNjI3NDJlMmYwNTJiMTlkOWY1NTlhIiwKICAgICAgICAgICJQcmVy
ZXFzIjogWwogICAgICAgICAgICAyMzcKICAgICAgICAgIF0sCiAgICAgICAg
ICAiUGF0Y2hlcyI6IFsKICAgICAgICAgICAgInhzYTIzOC00LjUucGF0Y2gi
CiAgICAgICAgICBdCiAgICAgICAgfQogICAgICB9CiAgICB9LAogICAgIjQu
NiI6IHsKICAgICAgIlhlblZlcnNpb24iOiAiNC42IiwKICAgICAgIlJlY2lw
ZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVSZWYi
OiAiMTY1OGE4NzY5MGFjODM5ZTg1ZGIxMmJiZjQwOWJlNjJiYjkzODY0MCIs
CiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMjM3CiAgICAg
ICAgICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAgICAgICAgICJ4
c2EyMzgtNC42LnBhdGNoIgogICAgICAgICAgXQogICAgICAgIH0KICAgICAg
fQogICAgfSwKICAgICI0LjciOiB7CiAgICAgICJYZW5WZXJzaW9uIjogIjQu
NyIsCiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAg
ICAgICAiU3RhYmxlUmVmIjogImM3NzgzZDljMjZmYzE5MTg2MmQ5ODgzZGEy
MjM4NzM0MGIxZmFiMTgiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAg
ICAgICAgIDIzNwogICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjog
WwogICAgICAgICAgICAieHNhMjM4LnBhdGNoIgogICAgICAgICAgXQogICAg
ICAgIH0KICAgICAgfQogICAgfSwKICAgICI0LjgiOiB7CiAgICAgICJYZW5W
ZXJzaW9uIjogIjQuOCIsCiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4
ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjogIjM2ODk4ZWIxMjU3MmYw
YTFmODVjYjU0ZDRhOWU5MGFmY2I2ZjcwNDUiLAogICAgICAgICAgIlByZXJl
cXMiOiBbCiAgICAgICAgICAgIDIzNwogICAgICAgICAgXSwKICAgICAgICAg
ICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjM4LnBhdGNoIgogICAg
ICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAgICI0LjkiOiB7
CiAgICAgICJYZW5WZXJzaW9uIjogIjQuOSIsCiAgICAgICJSZWNpcGVzIjog
ewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjogIjJj
YzNkMzJmNDBjNzFjYjI0MjQ3N2EzZjg5MzgwNzRkNGZjMzY4MjkiLAogICAg
ICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAgIDIzNwogICAgICAgICAg
XSwKICAgICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMjM4
LnBhdGNoIgogICAgICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwK
ICAgICJtYXN0ZXIiOiB7CiAgICAgICJYZW5WZXJzaW9uIjogIm1hc3RlciIs
CiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAg
ICAiU3RhYmxlUmVmIjogImE4ZWE2ZTI2ODgxMThhM2UxOWUyOWIzOWUzMTZm
YWE1Zjk2YWI5ZDEiLAogICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAg
ICAgIDIzNwogICAgICAgICAgXSwKICAgICAgICAgICJQYXRjaGVzIjogWwog
ICAgICAgICAgICAieHNhMjM4LnBhdGNoIgogICAgICAgICAgXQogICAgICAg
IH0KICAgICAgfQogICAgfQogIH0KfQ==

--=separator
Content-Type: application/octet-stream; name="xsa238.patch"
Content-Disposition: attachment; filename="xsa238.patch"
Content-Transfer-Encoding: base64

RnJvbSBjZGMyODg3MDc2YjE5YjM5ZmFiOWZhZWM0OTUwODI1ODZmMzExM2Rm
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBYZW5Qcm9qZWN0IFNl
Y3VyaXR5IFRlYW0gPHNlY3VyaXR5QHhlbnByb2plY3Qub3JnPgpEYXRlOiBU
dWUsIDUgU2VwIDIwMTcgMTM6NDE6MzcgKzAyMDAKU3ViamVjdDogeDg2L2lv
cmVxIHNlcnZlcjogY29ycmVjdGx5IGhhbmRsZSBib2d1cwogWEVOX0RNT1Bf
eyx1bn1tYXBfaW9fcmFuZ2VfdG9faW9yZXFfc2VydmVyIGFyZ3VtZW50cwoK
TWlzYmVoYXZpbmcgZGV2aWNlIG1vZGVsIGNhbiBwYXNzIGluY29ycmVjdCBY
RU5fRE1PUF9tYXAvCnVubWFwX2lvX3JhbmdlX3RvX2lvcmVxX3NlcnZlciBh
cmd1bWVudHMsIG5hbWVseSBlbmQgPCBzdGFydCB3aGVuCnNwZWNpZnlpbmcg
YWRkcmVzcyByYW5nZS4gV2hlbiB0aGlzIGhhcHBlbnMgd2UgaGl0IEFTU0VS
VChzIDw9IGUpIGluCnJhbmdlc2V0X2NvbnRhaW5zX3JhbmdlKCkvcmFuZ2Vz
ZXRfb3ZlcmxhcHNfcmFuZ2UoKSB3aXRoIGRlYnVnIGJ1aWxkcy4KUHJvZHVj
dGlvbiBidWlsZHMgd2lsbCBub3QgdHJhcCByaWdodCBhd2F5IGJ1dCBtYXkg
bWlzYmVoYXZlIGxhdGVyCndoaWxlIGhhbmRsaW5nIHN1Y2ggYm9ndXMgcmFu
Z2VzLgoKVGhpcyBpcyBYU0EtMjM4LgoKU2lnbmVkLW9mZi1ieTogVml0YWx5
IEt1em5ldHNvdiA8dmt1em5ldHNAcmVkaGF0LmNvbT4KUmV2aWV3ZWQtYnk6
IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KLS0tCiB4ZW4vYXJj
aC94ODYvaHZtL2lvcmVxLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3hlbi9hcmNoL3g4Ni9o
dm0vaW9yZXEuYyBiL3hlbi9hcmNoL3g4Ni9odm0vaW9yZXEuYwppbmRleCBi
MmE4YjBlOTg2Li44YzhiZjFmMGVjIDEwMDY0NAotLS0gYS94ZW4vYXJjaC94
ODYvaHZtL2lvcmVxLmMKKysrIGIveGVuL2FyY2gveDg2L2h2bS9pb3JlcS5j
CkBAIC04MjAsNiArODIwLDkgQEAgaW50IGh2bV9tYXBfaW9fcmFuZ2VfdG9f
aW9yZXFfc2VydmVyKHN0cnVjdCBkb21haW4gKmQsIGlvc2VydmlkX3QgaWQs
CiAgICAgc3RydWN0IGh2bV9pb3JlcV9zZXJ2ZXIgKnM7CiAgICAgaW50IHJj
OwogCisgICAgaWYgKCBzdGFydCA+IGVuZCApCisgICAgICAgIHJldHVybiAt
RUlOVkFMOworCiAgICAgc3Bpbl9sb2NrX3JlY3Vyc2l2ZSgmZC0+YXJjaC5o
dm1fZG9tYWluLmlvcmVxX3NlcnZlci5sb2NrKTsKIAogICAgIHJjID0gLUVO
T0VOVDsKQEAgLTg3Miw2ICs4NzUsOSBAQCBpbnQgaHZtX3VubWFwX2lvX3Jh
bmdlX2Zyb21faW9yZXFfc2VydmVyKHN0cnVjdCBkb21haW4gKmQsIGlvc2Vy
dmlkX3QgaWQsCiAgICAgc3RydWN0IGh2bV9pb3JlcV9zZXJ2ZXIgKnM7CiAg
ICAgaW50IHJjOwogCisgICAgaWYgKCBzdGFydCA+IGVuZCApCisgICAgICAg
IHJldHVybiAtRUlOVkFMOworCiAgICAgc3Bpbl9sb2NrX3JlY3Vyc2l2ZSgm
ZC0+YXJjaC5odm1fZG9tYWluLmlvcmVxX3NlcnZlci5sb2NrKTsKIAogICAg
IHJjID0gLUVOT0VOVDsK

--=separator
Content-Type: application/octet-stream; name="xsa238-4.5.patch"
Content-Disposition: attachment; filename="xsa238-4.5.patch"
Content-Transfer-Encoding: base64

RnJvbTogWGVuUHJvamVjdCBTZWN1cml0eSBUZWFtIDxzZWN1cml0eUB4ZW5w
cm9qZWN0Lm9yZz4KU3ViamVjdDogeDg2L2lvcmVxIHNlcnZlcjogY29ycmVj
dGx5IGhhbmRsZSBib2d1cwogWEVOX0RNT1Bfeyx1bn1tYXBfaW9fcmFuZ2Vf
dG9faW9yZXFfc2VydmVyIGFyZ3VtZW50cwoKTWlzYmVoYXZpbmcgZGV2aWNl
IG1vZGVsIGNhbiBwYXNzIGluY29ycmVjdCBYRU5fRE1PUF9tYXAvCnVubWFw
X2lvX3JhbmdlX3RvX2lvcmVxX3NlcnZlciBhcmd1bWVudHMsIG5hbWVseSBl
bmQgPCBzdGFydCB3aGVuCnNwZWNpZnlpbmcgYWRkcmVzcyByYW5nZS4gV2hl
biB0aGlzIGhhcHBlbnMgd2UgaGl0IEFTU0VSVChzIDw9IGUpIGluCnJhbmdl
c2V0X2NvbnRhaW5zX3JhbmdlKCkvcmFuZ2VzZXRfb3ZlcmxhcHNfcmFuZ2Uo
KSB3aXRoIGRlYnVnIGJ1aWxkcy4KUHJvZHVjdGlvbiBidWlsZHMgd2lsbCBu
b3QgdHJhcCByaWdodCBhd2F5IGJ1dCBtYXkgbWlzYmVoYXZlIGxhdGVyCndo
aWxlIGhhbmRsaW5nIHN1Y2ggYm9ndXMgcmFuZ2VzLgoKVGhpcyBpcyBYU0Et
MjM4LgoKU2lnbmVkLW9mZi1ieTogVml0YWx5IEt1em5ldHNvdiA8dmt1em5l
dHNAcmVkaGF0LmNvbT4KUmV2aWV3ZWQtYnk6IEphbiBCZXVsaWNoIDxqYmV1
bGljaEBzdXNlLmNvbT4KLS0tCiB4ZW4vYXJjaC94ODYvaHZtL2h2bS5jIHwg
NiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS94ZW4vYXJjaC94ODYvaHZtL2lvcmVxLmMgYi94ZW4vYXJj
aC94ODYvaHZtL2lvcmVxLmMKaW5kZXggYjJhOGIwZTk4Ni4uOGM4YmYxZjBl
YyAxMDA2NDQKLS0tIGEveGVuL2FyY2gveDg2L2h2bS9odm0uYworKysgYi94
ZW4vYXJjaC94ODYvaHZtL2h2bS5jCkBAIC0xMTUxLDYgKzExNTEsOSBAQCBp
bnQgaHZtX21hcF9pb19yYW5nZV90b19pb3JlcV9zZXJ2ZXIoc3RydWN0IGRv
bWFpbiAqZCwgaW9zZXJ2aWRfdCBpZCwKICAgICBzdHJ1Y3QgaHZtX2lvcmVx
X3NlcnZlciAqczsKICAgICBpbnQgcmM7CiAKKyAgICBpZiAoIHN0YXJ0ID4g
ZW5kICkKKyAgICAgICAgcmV0dXJuIC1FSU5WQUw7CisKICAgICBzcGluX2xv
Y2tfcmVjdXJzaXZlKCZkLT5hcmNoLmh2bV9kb21haW4uaW9yZXFfc2VydmVy
LmxvY2spOwogCiAgICAgcmMgPSAtRU5PRU5UOwpAQCAtMTIwMiw2ICsxMjA1
LDkgQEAgaW50IGh2bV91bm1hcF9pb19yYW5nZV9mcm9tX2lvcmVxX3NlcnZl
cihzdHJ1Y3QgZG9tYWluICpkLCBpb3NlcnZpZF90IGlkLAogICAgIHN0cnVj
dCBodm1faW9yZXFfc2VydmVyICpzOwogICAgIGludCByYzsKIAorICAgIGlm
ICggc3RhcnQgPiBlbmQgKQorICAgICAgICByZXR1cm4gLUVJTlZBTDsKKwog
ICAgIHNwaW5fbG9ja19yZWN1cnNpdmUoJmQtPmFyY2guaHZtX2RvbWFpbi5p
b3JlcV9zZXJ2ZXIubG9jayk7CiAKICAgICByYyA9IC1FTk9FTlQ7Cg==

--=separator
Content-Type: application/octet-stream; name="xsa238-4.6.patch"
Content-Disposition: attachment; filename="xsa238-4.6.patch"
Content-Transfer-Encoding: base64

RnJvbTogWGVuUHJvamVjdCBTZWN1cml0eSBUZWFtIDxzZWN1cml0eUB4ZW5w
cm9qZWN0Lm9yZz4KU3ViamVjdDogeDg2L2lvcmVxIHNlcnZlcjogY29ycmVj
dGx5IGhhbmRsZSBib2d1cwogWEVOX0RNT1Bfeyx1bn1tYXBfaW9fcmFuZ2Vf
dG9faW9yZXFfc2VydmVyIGFyZ3VtZW50cwoKTWlzYmVoYXZpbmcgZGV2aWNl
IG1vZGVsIGNhbiBwYXNzIGluY29ycmVjdCBYRU5fRE1PUF9tYXAvCnVubWFw
X2lvX3JhbmdlX3RvX2lvcmVxX3NlcnZlciBhcmd1bWVudHMsIG5hbWVseSBl
bmQgPCBzdGFydCB3aGVuCnNwZWNpZnlpbmcgYWRkcmVzcyByYW5nZS4gV2hl
biB0aGlzIGhhcHBlbnMgd2UgaGl0IEFTU0VSVChzIDw9IGUpIGluCnJhbmdl
c2V0X2NvbnRhaW5zX3JhbmdlKCkvcmFuZ2VzZXRfb3ZlcmxhcHNfcmFuZ2Uo
KSB3aXRoIGRlYnVnIGJ1aWxkcy4KUHJvZHVjdGlvbiBidWlsZHMgd2lsbCBu
b3QgdHJhcCByaWdodCBhd2F5IGJ1dCBtYXkgbWlzYmVoYXZlIGxhdGVyCndo
aWxlIGhhbmRsaW5nIHN1Y2ggYm9ndXMgcmFuZ2VzLgoKVGhpcyBpcyBYU0Et
MjM4LgoKU2lnbmVkLW9mZi1ieTogVml0YWx5IEt1em5ldHNvdiA8dmt1em5l
dHNAcmVkaGF0LmNvbT4KUmV2aWV3ZWQtYnk6IEphbiBCZXVsaWNoIDxqYmV1
bGljaEBzdXNlLmNvbT4KLS0tCiB4ZW4vYXJjaC94ODYvaHZtL2h2bS5jIHwg
NiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS94ZW4vYXJjaC94ODYvaHZtL2lvcmVxLmMgYi94ZW4vYXJj
aC94ODYvaHZtL2lvcmVxLmMKaW5kZXggYjJhOGIwZTk4Ni4uOGM4YmYxZjBl
YyAxMDA2NDQKLS0tIGEveGVuL2FyY2gveDg2L2h2bS9odm0uYworKysgYi94
ZW4vYXJjaC94ODYvaHZtL2h2bS5jCkBAIC0xMjcxLDYgKzEyNzEsOSBAQCBp
bnQgaHZtX21hcF9pb19yYW5nZV90b19pb3JlcV9zZXJ2ZXIoc3RydWN0IGRv
bWFpbiAqZCwgaW9zZXJ2aWRfdCBpZCwKICAgICBzdHJ1Y3QgaHZtX2lvcmVx
X3NlcnZlciAqczsKICAgICBpbnQgcmM7CiAKKyAgICBpZiAoIHN0YXJ0ID4g
ZW5kICkKKyAgICAgICAgcmV0dXJuIC1FSU5WQUw7CisKICAgICBzcGluX2xv
Y2tfcmVjdXJzaXZlKCZkLT5hcmNoLmh2bV9kb21haW4uaW9yZXFfc2VydmVy
LmxvY2spOwogCiAgICAgcmMgPSAtRU5PRU5UOwpAQCAtMTMyMiw2ICsxMzI1
LDkgQEAgaW50IGh2bV91bm1hcF9pb19yYW5nZV9mcm9tX2lvcmVxX3NlcnZl
cihzdHJ1Y3QgZG9tYWluICpkLCBpb3NlcnZpZF90IGlkLAogICAgIHN0cnVj
dCBodm1faW9yZXFfc2VydmVyICpzOwogICAgIGludCByYzsKIAorICAgIGlm
ICggc3RhcnQgPiBlbmQgKQorICAgICAgICByZXR1cm4gLUVJTlZBTDsKKwog
ICAgIHNwaW5fbG9ja19yZWN1cnNpdmUoJmQtPmFyY2guaHZtX2RvbWFpbi5p
b3JlcV9zZXJ2ZXIubG9jayk7CiAKICAgICByYyA9IC1FTk9FTlQ7Cg==

--=separator--
