X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6398" "Monday" "20" "April" "2015" "17:10:59" "+0000" "Xen.org security team" "security@xen.org" "<E1YkFDn-0002ye-1J@xenbits.xen.org>" "159" "[oss-security] Xen Security Advisory 132 - Information leak through XEN_DOMCTL_gettscinfo" nil nil nil "4" "2015042017:10:59" "[oss-security] Xen Security Advisory 132 - Information leak through XEN_DOMCTL_gettscinfo" (number mark "        security@xen Apr 20  159/6398  " thread-indent "\"[oss-security] Xen Security Advisory 132 - Information leak through XEN_DOMCTL_gettscinfo\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29741 invoked by uid 550); 20 Apr 2015 17:11:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28612 invoked from network); 20 Apr 2015 17:11:19 -0000
Message-Id: <E1YkFDn-0002ye-1J@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
CC: Xen.org security team <security@xen.org>
Date: Mon, 20 Apr 2015 17:10:59 +0000
From: Xen.org security team <security@xen.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xen Security Advisory 132 - Information leak through
 XEN_DOMCTL_gettscinfo
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

                    Xen Security Advisory XSA-132

             Information leak through XEN_DOMCTL_gettscinfo

ISSUE DESCRIPTION
=================

The handler for XEN_DOMCTL_gettscinfo failed to initialize a padding
field subsequently copied to guest memory.

A similar leak existed in XEN_SYSCTL_getdomaininfolist, which is being
addressed here regardless of that operation being declared unsafe for
disaggregation by XSA-77.

IMPACT
======

Malicious or buggy stub domain kernels or tool stacks otherwise living
outside of Domain0 may be able to read sensitive data relating to the
hypervisor or other guests not under the control of that domain.

VULNERABLE SYSTEMS
==================

Xen 4.0.x and later are vulnerable.

Only x86 systems are vulnerable.  ARM systems are not vulnerable.

The vulnerability is only exposed to service domains with privilege over
another guest.  In a usual configuration that means only device model
emulators (qemu-dm) when these are running in a separate domain.

In the case of HVM guests whose device model is running in an
unrestricted dom0 process, qemu-dm already has the ability to cause
problems for the whole system.  So in that case the vulnerability is
not applicable.

This vulnerability is applicable for an HVM guest with a stub qemu-dm.
That is, where the device model runs in a separate domain (in the case
of xl, as requested by "device_model_stubdomain_override=1" in the xl
domain configuration file).  In this case a guest which has already
exploited another vulnerability, to gain control of the device model,
would be able to exercise the information leak.

However, the security of a system with qemu-dm running in a stub domain
is still better than with a qemu-dm running as an unrestricted dom0
process.  Therefore users with these configurations should not switch
to an unrestricted dom0 qemu-dm.

Finally, in a radically disaggregated system, where the service domain
software (probably, the device model domain image in the HVM case) is
not always supplied by the host administrator, a malicious service
domain administrator can exercise this vulnerability.

MITIGATION
==========

There is no mitigation available.

In a radically disaggregated system, restricting HVM service domains
to software images approved by the host administrator will avoid the
vulnerability (so long as there isn't also a vulnerability in the
service domain).

NOTE REGARDING LACK OF EMBARGO
==============================

The fix for this bug was publicly posted on xen-devel, before it was
appreciated that there was a security problem.

CREDITS
=======

This issue was recognized as security issue by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa132-unstable.patch        xen-unstable, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x
xsa132-4.2.patch             Xen 4.2.x

$ sha256sum xsa132*.patch
3a28eb33c02360ec22c51824e469b1cf6be87941256d0b3aa34a5bd1d7735328  xsa132-4.2.patch
329d4edf1e1133795ece41f2fc8887c5f4cc06b42ced63c810c610b17bcee46d  xsa132.patch
$
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJVNTMVAAoJEIP+FMlX6CvZ5gIH/iMl92WIuN+lJhnU4J4syaMm
vQ6B2yPXPnaTHOOLvnFUvzvv+iavyF8m0BVtRCKweS1x4Y1LtzUdE0WSMMxbu673
YGYX9Dplze9iR21+wAugrQ1hoh+na+oOrr+MHeQdNlbxF2+NHv9VtZ17XE3bFsHy
gUn4NnUzdWsaJYJTncBryj5hXDTlhPy6CWY/4oOrF4s1pwwv9f+AEEObXPPu8kGk
fIhMMBz8b9Pcc7Zn8ALemqApGzVKnimHTwDdPWLy6Cfyzq0ttDpOJHcM4citn5DK
GqN/0ebzdswxqnzhztq/FiUn4Tvzxw1T+qr00Q4y+f24s8OO1W/Np08t3JiUMaI=
=8POv
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa132-4.2.patch"
Content-Disposition: attachment; filename="xsa132-4.2.patch"
Content-Transfer-Encoding: base64

ZG9tY3RsL3N5c2N0bDogZG9uJ3QgbGVhayBoeXBlcnZpc29yIHN0YWNrIHRv
IHRvb2xzdGFja3MKClRoaXMgaXMgWFNBLTEzMi4KClNpZ25lZC1vZmYtYnk6
IEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+ClJl
dmlld2VkLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+Cgot
LS0gYS94ZW4vYXJjaC94ODYvZG9tY3RsLmMKKysrIGIveGVuL2FyY2gveDg2
L2RvbWN0bC5jCkBAIC0xMjAwLDcgKzEyMDAsNyBAQCBsb25nIGFyY2hfZG9f
ZG9tY3RsKAogICAgIGNhc2UgWEVOX0RPTUNUTF9nZXR0c2NpbmZvOgogICAg
IHsKICAgICAgICAgc3RydWN0IGRvbWFpbiAqZDsKLSAgICAgICAgeGVuX2d1
ZXN0X3RzY19pbmZvX3QgaW5mbzsKKyAgICAgICAgeGVuX2d1ZXN0X3RzY19p
bmZvX3QgaW5mbyA9IHsgMCB9OwogCiAgICAgICAgIHJldCA9IC1FU1JDSDsK
ICAgICAgICAgZCA9IHJjdV9sb2NrX2RvbWFpbl9ieV9pZChkb21jdGwtPmRv
bWFpbik7Ci0tLSBhL3hlbi9jb21tb24vc3lzY3RsLmMKKysrIGIveGVuL2Nv
bW1vbi9zeXNjdGwuYwpAQCAtOTUsNyArOTUsNyBAQCBsb25nIGRvX3N5c2N0
bChYRU5fR1VFU1RfSEFORExFX1BBUkFNKHhlCiAgICAgY2FzZSBYRU5fU1lT
Q1RMX2dldGRvbWFpbmluZm9saXN0OgogICAgIHsgCiAgICAgICAgIHN0cnVj
dCBkb21haW4gKmQ7Ci0gICAgICAgIHN0cnVjdCB4ZW5fZG9tY3RsX2dldGRv
bWFpbmluZm8gaW5mbzsKKyAgICAgICAgc3RydWN0IHhlbl9kb21jdGxfZ2V0
ZG9tYWluaW5mbyBpbmZvID0geyAwIH07CiAgICAgICAgIHUzMiBudW1fZG9t
YWlucyA9IDA7CiAKICAgICAgICAgcmN1X3JlYWRfbG9jaygmZG9tbGlzdF9y
ZWFkX2xvY2spOwo=

--=separator
Content-Type: application/octet-stream; name="xsa132.patch"
Content-Disposition: attachment; filename="xsa132.patch"
Content-Transfer-Encoding: base64

ZG9tY3RsL3N5c2N0bDogZG9uJ3QgbGVhayBoeXBlcnZpc29yIHN0YWNrIHRv
IHRvb2xzdGFja3MKClRoaXMgaXMgWFNBLTEzMi4KClNpZ25lZC1vZmYtYnk6
IEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+ClJl
dmlld2VkLWJ5OiBKYW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+Cgot
LS0gYS94ZW4vYXJjaC94ODYvZG9tY3RsLmMKKysrIGIveGVuL2FyY2gveDg2
L2RvbWN0bC5jCkBAIC04ODQsNyArODg0LDcgQEAgbG9uZyBhcmNoX2RvX2Rv
bWN0bCgKIAogICAgIGNhc2UgWEVOX0RPTUNUTF9nZXR0c2NpbmZvOgogICAg
IHsKLSAgICAgICAgeGVuX2d1ZXN0X3RzY19pbmZvX3QgaW5mbzsKKyAgICAg
ICAgeGVuX2d1ZXN0X3RzY19pbmZvX3QgaW5mbyA9IHsgMCB9OwogCiAgICAg
ICAgIHJldCA9IC1FSU5WQUw7CiAgICAgICAgIGlmICggZCA9PSBjdXJyZW50
LT5kb21haW4gKSAvKiBubyBkb21haW5fcGF1c2UoKSAqLwotLS0gYS94ZW4v
Y29tbW9uL3N5c2N0bC5jCisrKyBiL3hlbi9jb21tb24vc3lzY3RsLmMKQEAg
LTc2LDcgKzc2LDcgQEAgbG9uZyBkb19zeXNjdGwoWEVOX0dVRVNUX0hBTkRM
RV9QQVJBTSh4ZQogICAgIGNhc2UgWEVOX1NZU0NUTF9nZXRkb21haW5pbmZv
bGlzdDoKICAgICB7IAogICAgICAgICBzdHJ1Y3QgZG9tYWluICpkOwotICAg
ICAgICBzdHJ1Y3QgeGVuX2RvbWN0bF9nZXRkb21haW5pbmZvIGluZm87Cisg
ICAgICAgIHN0cnVjdCB4ZW5fZG9tY3RsX2dldGRvbWFpbmluZm8gaW5mbyA9
IHsgMCB9OwogICAgICAgICB1MzIgbnVtX2RvbWFpbnMgPSAwOwogCiAgICAg
ICAgIHJjdV9yZWFkX2xvY2soJmRvbWxpc3RfcmVhZF9sb2NrKTsK

--=separator--
