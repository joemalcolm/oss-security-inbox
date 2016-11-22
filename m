X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8083" "Tuesday" "22" "November" "2016" "12:02:45" "+0000" "Xen.org security team" "security@xen.org" "<E1c99mf-0008E2-TQ@xenbits.xenproject.org>" "204" "[oss-security] Xen Security Advisory 198 (CVE-2016-9379,CVE-2016-9380) - delimiter injection vulnerabilities in pygrub" nil nil nil "11" "2016112212:02:45" "[oss-security] Xen Security Advisory 198 (CVE-2016-9379,CVE-2016-9380) - delimiter injection vulnerabilities in pygrub" (number mark "U       security@xen Nov 22  204/8083  " thread-indent "\"[oss-security] Xen Security Advisory 198 (CVE-2016-9379,CVE-2016-9380) - delimiter injection vulnerabilities in pygrub\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11725 invoked by uid 550); 22 Nov 2016 14:52:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32403 invoked from network); 22 Nov 2016 12:03:06 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.505 (Entity 5.505)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Message-Id: <E1c99mf-0008E2-TQ@xenbits.xenproject.org>
Date: Tue, 22 Nov 2016 12:02:45 +0000
Subject: [oss-security] Xen Security Advisory 198 (CVE-2016-9379,CVE-2016-9380) -
 delimiter injection vulnerabilities in pygrub

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

     Xen Security Advisory CVE-2016-9379,CVE-2016-9380 / XSA-198
                              version 3

             delimiter injection vulnerabilities in pygrub

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

pygrub, the boot loader emulator, fails to quote (or sanity check) its
results when reporting them to its caller.

pygrub supports a number of output formats.  When the S-expression
output format is requested, putting string quotes and S-expressions in
the bootloader configuration file can produce incorrect output.
(CVE-2016-9379)

When the nul-delimited output format is requested, nul bytes in the
bootloader configuration file can produce an ambiguous or confusing
output file, which is interpreted by libxl in a vulnerable way.
(CVE-2016-9380)

The existing bootloader config interpreters all read input in a
line-based way from their bootloaders, and none of them support any
kind of escaping.  So the newline-delimited output format is safe.

The attacker can use this to cause the toolstack to treat any file
accessible to the toolstack as if it were the guest's initial ramdisk
file.  The file contents are provided to the guest kernel; also,
normally, these files are deleted by the toolstack as the guest starts
to boot; alternatively they may be deleted later.

IMPACT
======

A malicious guest administrator can obtain the contents of sensitive
host files (an information leak).

Additionally, a malicious guest administrator can cause files on the
host to be removed, causing a denial of service.  In some unusual host
configurations, ability to remove certain files may be useable for
privilege escalation.


VULNERABLE SYSTEMS
==================

Xen versions 2.0 and later are vulnerable.

The vulnerability is only exposed to guests configured by the host
administrator to boot using pygrub.  In the xl and xm domain
configuration file, this is typically achieved with
   bootloader="pygrub"
On x86 this would typically apply only to PV domains.

All systems using xl, libxl, or libvirt are vulnerable to pygrub-using
guests.

Systems using other (third-party) toolstacks may or may not be
vulnerable, depending on whether pygrub is configured, and what pygrub
output format they use.  Please consult your toolstack provider.


MITIGATION
==========

Configuring guests not to use pygrub will avoid the vulnerability.

For x86 PV guests currently using pygrub, booting the guest as HVM
is often a practical option to avoid pygrub.


CREDITS
=======

This issue was discovered by Daniel Richman and Gábor Szarka of
the Cambridge University Student-Run Computing Facility.

RESOLUTION
==========

Applying the attached patch resolves this issue.

xsa198.patch           All Xen versions (at least Xen 4.4 and later)

$ sha256sum xsa198*
0e4533ad2157c03ab309bd12a54f5ff325f03edbe97f23c60a16a3f378c75eae  xsa198.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patch described above (or others which are
substantially similar) is permitted during the embargo, even on
public-facing systems with untrusted guest users and administrators.

But: Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, please contact the Xen Project Security
Team.


Deployment of the mitigations is NOT permitted (except where
all the affected systems and VMs are administered and used only by
organisations which are members of the Xen Project Security Issues
Predisclosure List).  Specifically, deployment on public cloud systems
is NOT permitted.

This is because switching away from the use of pygrub would reveal
where the vulnerability lies.

Deployment of mitigations is permitted only AFTER the embargo ends.


(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYNDN4AAoJEIP+FMlX6CvZX8AH/1FL3pw4RbbuFd/b23Qmo25U
F7qELx001C4C+uXtlxaIg6MT467pRphihSkLcLQ2vgIp57iVTXhufc4TVqhdADgp
bL3h1zd7Ot4f+iA5RYlGIJ4is3I2A6lNvLwydi2PIGgmalSad5B3Ed0vrvRwfLKY
qpsVm0LrM24aFX2IaygmmziQIQVeXSYpmKmVebOEAFL0uj9g8D3VhgWIMtZxW+9K
A6c2NTrt01ZbsVRx2wTcRdRhEJLeFbBZOPS9RrbjJzbuFcAzsGR8m/pS4hJBhik/
9MG4b7FBMYZTaBd4wcbbHM81py1KkcoreC2jL1qb1JMG7BQVP1USdz21rJ05DY8=
=P2XT
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa198.patch"
Content-Disposition: attachment; filename="xsa198.patch"
Content-Transfer-Encoding: base64

RnJvbSA3MWEzODlhZTk0MGJjNTJiZjg5N2E2ZTViZWNkNzNmZDhlZGU5NGM1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJYW4gSmFja3NvbiA8
aWFuLmphY2tzb25AZXUuY2l0cml4LmNvbT4KRGF0ZTogVGh1LCAzIE5vdiAy
MDE2IDE2OjM3OjQwICswMDAwClN1YmplY3Q6IFtQQVRDSF0gcHlncnViOiBQ
cm9wZXJseSBxdW90ZSByZXN1bHRzLCB3aGVuIHJldHVybmluZyB0aGVtIHRv
IHRoZQogY2FsbGVyOgoKKiBXaGVuIHRoZSBjYWxsZXIgd2FudHMgc2V4cHIg
b3V0cHV0LCB1c2UgYHJlcHIoKScKICBUaGlzIGlzIHdoYXQgWGVuZCBleHBl
Y3RzLgoKICBUaGUgcmV0dXJuZWQgUy1leHByZXNzaW9ucyBhcmUgbm93IGVz
Y2FwZWQgYW5kIHF1b3RlZCBieSBQeXRob24sCiAgZ2VuZXJhbGx5IHVzaW5n
ICcuLi4nLiAgUHJldmlvdXNseSBrZXJuZWwgYW5kIHJhbWRpc2sgd2VyZSB1
bnF1b3RlZAogIGFuZCBhcmdzIHdhcyBxdW90ZWQgd2l0aCAiLi4uIiBidXQg
d2l0aG91dCBwcm9wZXIgZXNjYXBpbmcuICBUaGlzCiAgY2hhbmdlIG1heSBi
cmVhayB0b29sc3RhY2tzIHdoaWNoIGRvIG5vdCBwcm9wZXJseSBkZXF1b3Rl
IHRoZQogIHJldHVybmVkIFMtZXhwcmVzc2lvbnMuCgoqIFdoZW4gdGhlIGNh
bGxlciB3YW50cyAic2ltcGxlIiBvdXRwdXQsIGNyYXNoIGlmIHRoZSBkZWxp
bWl0ZXIgaXMKICBjb250YWluZWQgaW4gdGhlIHJldHVybmVkIHZhbHVlLgoK
ICBXaXRoIC0tb3V0cHV0LWZvcm1hdD1zaW1wbGUgaXQgZG9lcyBub3Qgc2Vl
bSBsaWtlIHRoaXMgY291bGQgZXZlcgogIGhhcHBlbiwgYmVjYXVzZSB0aGUg
Ym9vdGxvYWRlciBjb25maWcgcGFyc2VycyBhbGwgdGFrZSBsaW5lLWJhc2Vk
CiAgaW5wdXQgZnJvbSB0aGUgdmFyaW91cyBib290bG9hZGVyIGNvbmZpZyBm
aWxlcy4KCiAgV2l0aCAtLW91dHB1dC1mb3JtYXQ9c2ltcGxlMCwgdGhpcyBj
YW4gaGFwcGVuIGlmIHRoZSBib290bG9hZGVyCiAgY29uZmlnIGZpbGUgY29u
dGFpbnMgbnVsIGJ5dGVzLgoKVGhpcyBpcyBYU0EtMTk4LgoKU2lnbmVkLW9m
Zi1ieTogSWFuIEphY2tzb24gPElhbi5KYWNrc29uQGV1LmNpdHJpeC5jb20+
ClRlc3RlZC1ieTogSWFuIEphY2tzb24gPElhbi5KYWNrc29uQGV1LmNpdHJp
eC5jb20+ClJldmlld2VkLWJ5OiBBbmRyZXcgQ29vcGVyIDxhbmRyZXcuY29v
cGVyM0BjaXRyaXguY29tPgotLS0KIHRvb2xzL3B5Z3J1Yi9zcmMvcHlncnVi
IHwgOSArKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdG9vbHMvcHlncnVi
L3NyYy9weWdydWIgYi90b29scy9weWdydWIvc3JjL3B5Z3J1YgppbmRleCA0
MGY5NTg0Li5kZDBjOGY3IDEwMDc1NQotLS0gYS90b29scy9weWdydWIvc3Jj
L3B5Z3J1YgorKysgYi90b29scy9weWdydWIvc3JjL3B5Z3J1YgpAQCAtNzIx
LDE0ICs3MjEsMTcgQEAgZGVmIHNuaWZmX25ldHdhcmUoZnMsIGNmZyk6CiAg
ICAgcmV0dXJuIGNmZwogCiBkZWYgZm9ybWF0X3N4cChrZXJuZWwsIHJhbWRp
c2ssIGFyZ3MpOgotICAgIHMgPSAibGludXggKGtlcm5lbCAlcykiICUga2Vy
bmVsCisgICAgcyA9ICJsaW51eCAoa2VybmVsICVzKSIgJSByZXByKGtlcm5l
bCkKICAgICBpZiByYW1kaXNrOgotICAgICAgICBzICs9ICIocmFtZGlzayAl
cykiICUgcmFtZGlzaworICAgICAgICBzICs9ICIocmFtZGlzayAlcykiICUg
cmVwcihyYW1kaXNrKQogICAgIGlmIGFyZ3M6Ci0gICAgICAgIHMgKz0gIihh
cmdzIFwiJXNcIikiICUgYXJncworICAgICAgICBzICs9ICIoYXJncyAlcyki
ICUgcmVwcihhcmdzKQogICAgIHJldHVybiBzCiAgICAgICAgICAgICAgICAg
CiBkZWYgZm9ybWF0X3NpbXBsZShrZXJuZWwsIHJhbWRpc2ssIGFyZ3MsIHNl
cCk6CisgICAgZm9yIGNoZWNrIGluIChrZXJuZWwsIHJhbWRpc2ssIGFyZ3Mp
OgorICAgICAgICBpZiBjaGVjayBpcyBub3QgTm9uZSBhbmQgc2VwIGluIGNo
ZWNrOgorICAgICAgICAgICAgcmFpc2UgUnVudGltZUVycm9yLCAic2ltcGxl
IGZvcm1hdCBjYW5ub3QgcmVwcmVzZW50IGRlbGltaXRlci1jb250YWluaW5n
IHZhbHVlIgogICAgIHMgPSAoImtlcm5lbCAlcyIgJSBrZXJuZWwpICsgc2Vw
CiAgICAgaWYgcmFtZGlzazoKICAgICAgICAgcyArPSAoInJhbWRpc2sgJXMi
ICUgcmFtZGlzaykgKyBzZXAKLS0gCjIuMS40Cgo=

--=separator--
