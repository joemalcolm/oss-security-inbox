X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9220" "Thursday" "29" "October" "2015" "12:00:44" "+0000" "Xen.org security team" "security@xen.org" "<E1Zrlsq-00029M-TQ@xenbits.xen.org>" "212" "[oss-security] Xen Security Advisory 152 (CVE-2015-7971) - x86: some pmu and profiling hypercalls log without rate limiting" nil nil nil "10" "2015102912:00:44" "[oss-security] Xen Security Advisory 152 (CVE-2015-7971) - x86: some pmu and profiling hypercalls log without rate limiting" (number mark "U       security@xen Oct 29  212/9220  " thread-indent "\"[oss-security] Xen Security Advisory 152 (CVE-2015-7971) - x86: some pmu and profiling hypercalls log without rate limiting\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4020 invoked by uid 550); 29 Oct 2015 12:02:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29709 invoked from network); 29 Oct 2015 12:01:02 -0000
Date: Thu, 29 Oct 2015 12:00:44 +0000
Message-Id: <E1Zrlsq-00029M-TQ@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 152 (CVE-2015-7971) - x86: some pmu and
 profiling hypercalls log without rate limiting

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7971 / XSA-152
                              version 3

      x86: some pmu and profiling hypercalls log without rate limiting

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

HYPERCALL_xenoprof_op and HYPERVISOR_xenpmu_op log some errors and
attempts at invalid operations.

These log messages are not rate-limited, even though they can be
triggered by guests.

IMPACT
======

A malicious guest could cause repeated logging to the hypervisor
console, leading to a Denial of Service attack.

VULNERABLE SYSTEMS
==================

Xen versions 3.2.x and later are affected.  (The VPMU part of the
vulnerability is applicable only to Xen 4.6 and later.)

ARM systems are not affected.  (The pmu hypercall is x86-specific, and
xenoprof is not supported on ARM.)

MITIGATION
==========

The problematic log messages are issued with priority Warning.
Therefore they can be rate limited by adding "loglvl=error/warning" to
the hypervisor command line or suppressed entirely by adding
"loglvl=error".

On systems where the guest kernel is controlled by the host rather
than guest administrator, running only kernels which do not call these
hypercalls will also prevent untrusted guest users from exploiting
this issue. However untrusted guest administrators can still trigger
it unless further steps are taken to prevent them from loading code
into the kernel (e.g. by disabling loadable modules etc) or from using
other mechanisms which allow them to run code at kernel privilege.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

xsa152-unstable.patch        xen-unstable, Xen 4.6.x
xsa152-4.5.patch             Xen 4.5.x, Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa152*.patch
596f51797aa591b5abd068ead03e21215cf70997c98a4a562392499afe47b81c  xsa152.patch
7ae2811ea80da29ee234ad5a2cbb5908e03db8fb6c50774d378d77d273e74e39  xsa152-4.5.patch
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

iQEcBAEBAgAGBQJWMgm/AAoJEIP+FMlX6CvZzPwIAJs/NTew5AJA3bTO6QZtVC2T
sRt2F11prjjeklrAcqSC03q2bBpyylLB6PJ1jmmtT0MKtST5BszGA+sJt3G8nxw1
XKN8zNX5Yzfmltgi6ZeWk/1ps6kceb4evhkIUzt1v8Ttge148rEedGrJD9eLeRht
XdZr8ujXwP3NGBAesKNf0DugPTR7diYyUzvwven+OXVPg0ZT53t1r6Xref7Vl4p6
5b9uOK3rh/QVRbPGTOA1vzObk0MssBTGA615JGG0da4fr4vVUQsVK/MV/N6oc4fJ
iUHUcH83ldLGB9kt3+kq1S6KBESInriytPrKxNFvaKOrPlaOTOKRGvJSW0QZpos=
=BsWE
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa152.patch"
Content-Disposition: attachment; filename="xsa152.patch"
Content-Transfer-Encoding: base64

eDg2OiByYXRlLWxpbWl0IGxvZ2dpbmcgaW4gZG9feGVue29wcm9mLHBtdX1f
b3AoKQoKU29tZSBvZiB0aGUgc3ViLW9wcyBhcmUgYWNlc3NpYmxlIHRvIGFs
bCBndWVzdHMsIGFuZCBoZW5jZSBzaG91bGQgYmUKcmF0ZS1saW1pdGVkLiBJ
biB0aGUgeGVub3Byb2YgY2FzZSwganVzdCBsaWtlIGZvciBYU0EtMTQ2LCBp
bmNsdWRlIHRoZW0Kb25seSBpbiBkZWJ1ZyBidWlsZHMuIFNpbmNlIHRoZSB2
UE1VIGNvZGUgaXMgcmF0aGVyIG5ldywgYWxsb3cgdGhlbSB0bwpiZSBhbHdh
eXMgcHJlc2VudCwgYnV0IGRvd25ncmFkZSB0aGVtIHRvIChyYXRlIGxpbWl0
ZWQpIGd1ZXN0IG1lc3NhZ2VzLgoKVGhpcyBpcyBYU0EtMTUyLgoKU2lnbmVk
LW9mZi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpSZXZp
ZXdlZC1ieTogSWFuIENhbXBiZWxsIDxpYW4uY2FtcGJlbGxAY2l0cml4LmNv
bT4KCi0tLSBhL3hlbi9hcmNoL3g4Ni9jcHUvdnBtdS5jCisrKyBiL3hlbi9h
cmNoL3g4Ni9jcHUvdnBtdS5jCkBAIC02ODIsOCArNjgyLDggQEAgbG9uZyBk
b194ZW5wbXVfb3AodW5zaWduZWQgaW50IG9wLCBYRU5fRwogICAgICAgICAg
ICAgdnBtdV9tb2RlID0gcG11X3BhcmFtcy52YWw7CiAgICAgICAgIGVsc2Ug
aWYgKCB2cG11X21vZGUgIT0gcG11X3BhcmFtcy52YWwgKQogICAgICAgICB7
Ci0gICAgICAgICAgICBwcmludGsoWEVOTE9HX1dBUk5JTkcKLSAgICAgICAg
ICAgICAgICAgICAiVlBNVTogQ2Fubm90IGNoYW5nZSBtb2RlIHdoaWxlIGFj
dGl2ZSBWUE1VcyBleGlzdFxuIik7CisgICAgICAgICAgICBncHJpbnRrKFhF
TkxPR19XQVJOSU5HLAorICAgICAgICAgICAgICAgICAgICAiVlBNVTogQ2Fu
bm90IGNoYW5nZSBtb2RlIHdoaWxlIGFjdGl2ZSBWUE1VcyBleGlzdFxuIik7
CiAgICAgICAgICAgICByZXQgPSAtRUJVU1k7CiAgICAgICAgIH0KIApAQCAt
NzE0LDggKzcxNCw4IEBAIGxvbmcgZG9feGVucG11X29wKHVuc2lnbmVkIGlu
dCBvcCwgWEVOX0cKICAgICAgICAgICAgIHZwbXVfZmVhdHVyZXMgPSBwbXVf
cGFyYW1zLnZhbDsKICAgICAgICAgZWxzZQogICAgICAgICB7Ci0gICAgICAg
ICAgICBwcmludGsoWEVOTE9HX1dBUk5JTkcgIlZQTVU6IENhbm5vdCBjaGFu
Z2UgZmVhdHVyZXMgd2hpbGUiCi0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIiBhY3RpdmUgVlBNVXMgZXhpc3RcbiIpOworICAgICAgICAg
ICAgZ3ByaW50ayhYRU5MT0dfV0FSTklORywKKyAgICAgICAgICAgICAgICAg
ICAgIlZQTVU6IENhbm5vdCBjaGFuZ2UgZmVhdHVyZXMgd2hpbGUgYWN0aXZl
IFZQTVVzIGV4aXN0XG4iKTsKICAgICAgICAgICAgIHJldCA9IC1FQlVTWTsK
ICAgICAgICAgfQogCi0tLSBhL3hlbi9jb21tb24veGVub3Byb2YuYworKysg
Yi94ZW4vY29tbW9uL3hlbm9wcm9mLmMKQEAgLTY3NiwxNSArNjc2LDEzIEBA
IHJldF90IGRvX3hlbm9wcm9mX29wKGludCBvcCwgWEVOX0dVRVNUX0gKICAg
ICAKICAgICBpZiAoIChvcCA8IDApIHx8IChvcCA+IFhFTk9QUk9GX2xhc3Rf
b3ApICkKICAgICB7Ci0gICAgICAgIHByaW50aygieGVub3Byb2Y6IGludmFs
aWQgb3BlcmF0aW9uICVkIGZvciBkb21haW4gJWRcbiIsCi0gICAgICAgICAg
ICAgICBvcCwgY3VycmVudC0+ZG9tYWluLT5kb21haW5faWQpOworICAgICAg
ICBnZHByaW50ayhYRU5MT0dfREVCVUcsICJpbnZhbGlkIG9wZXJhdGlvbiAl
ZFxuIiwgb3ApOwogICAgICAgICByZXR1cm4gLUVJTlZBTDsKICAgICB9CiAK
ICAgICBpZiAoICFOT05QUklWX09QKG9wKSAmJiAoY3VycmVudC0+ZG9tYWlu
ICE9IHhlbm9wcm9mX3ByaW1hcnlfcHJvZmlsZXIpICkKICAgICB7Ci0gICAg
ICAgIHByaW50aygieGVub3Byb2Y6IGRvbSAlZCBkZW5pZWQgcHJpdmlsZWdl
ZCBvcGVyYXRpb24gJWRcbiIsCi0gICAgICAgICAgICAgICBjdXJyZW50LT5k
b21haW4tPmRvbWFpbl9pZCwgb3ApOworICAgICAgICBnZHByaW50ayhYRU5M
T0dfREVCVUcsICJkZW5pZWQgcHJpdmlsZWdlZCBvcGVyYXRpb24gJWRcbiIs
IG9wKTsKICAgICAgICAgcmV0dXJuIC1FUEVSTTsKICAgICB9CiAKQEAgLTkw
Nyw4ICs5MDUsNyBAQCByZXRfdCBkb194ZW5vcHJvZl9vcChpbnQgb3AsIFhF
Tl9HVUVTVF9ICiAgICAgc3Bpbl91bmxvY2soJnhlbm9wcm9mX2xvY2spOwog
CiAgICAgaWYgKCByZXQgPCAwICkKLSAgICAgICAgcHJpbnRrKCJ4ZW5vcHJv
Zjogb3BlcmF0aW9uICVkIGZhaWxlZCBmb3IgZG9tICVkIChzdGF0dXMgOiAl
ZClcbiIsCi0gICAgICAgICAgICAgICBvcCwgY3VycmVudC0+ZG9tYWluLT5k
b21haW5faWQsIHJldCk7CisgICAgICAgIGdkcHJpbnRrKFhFTkxPR19ERUJV
RywgIm9wZXJhdGlvbiAlZCBmYWlsZWQ6ICVkXG4iLCBvcCwgcmV0KTsKIAog
ICAgIHJldHVybiByZXQ7CiB9Cg==

--=separator
Content-Type: application/octet-stream; name="xsa152-4.5.patch"
Content-Disposition: attachment; filename="xsa152-4.5.patch"
Content-Transfer-Encoding: base64

eDg2OiByYXRlLWxpbWl0IGxvZ2dpbmcgaW4gZG9feGVue29wcm9mLHBtdX1f
b3AoKQoKU29tZSBvZiB0aGUgc3ViLW9wcyBhcmUgYWNlc3NpYmxlIHRvIGFs
bCBndWVzdHMsIGFuZCBoZW5jZSBzaG91bGQgYmUKcmF0ZS1saW1pdGVkLiBJ
biB0aGUgeGVub3Byb2YgY2FzZSwganVzdCBsaWtlIGZvciBYU0EtMTQ2LCBp
bmNsdWRlIHRoZW0Kb25seSBpbiBkZWJ1ZyBidWlsZHMuIFNpbmNlIHRoZSB2
UE1VIGNvZGUgaXMgcmF0aGVyIG5ldywgYWxsb3cgdGhlbSB0bwpiZSBhbHdh
eXMgcHJlc2VudCwgYnV0IGRvd25ncmFkZSB0aGVtIHRvIChyYXRlIGxpbWl0
ZWQpIGd1ZXN0IG1lc3NhZ2VzLgoKVGhpcyBpcyBYU0EtMTUyLgoKU2lnbmVk
LW9mZi1ieTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgoKLS0t
IGEveGVuL2NvbW1vbi94ZW5vcHJvZi5jCisrKyBiL3hlbi9jb21tb24veGVu
b3Byb2YuYwpAQCAtNjc2LDE1ICs2NzYsMTMgQEAgcmV0X3QgZG9feGVub3By
b2Zfb3AoaW50IG9wLCBYRU5fR1VFU1RfSAogICAgIAogICAgIGlmICggKG9w
IDwgMCkgfHwgKG9wID4gWEVOT1BST0ZfbGFzdF9vcCkgKQogICAgIHsKLSAg
ICAgICAgcHJpbnRrKCJ4ZW5vcHJvZjogaW52YWxpZCBvcGVyYXRpb24gJWQg
Zm9yIGRvbWFpbiAlZFxuIiwKLSAgICAgICAgICAgICAgIG9wLCBjdXJyZW50
LT5kb21haW4tPmRvbWFpbl9pZCk7CisgICAgICAgIGdkcHJpbnRrKFhFTkxP
R19ERUJVRywgImludmFsaWQgb3BlcmF0aW9uICVkXG4iLCBvcCk7CiAgICAg
ICAgIHJldHVybiAtRUlOVkFMOwogICAgIH0KIAogICAgIGlmICggIU5PTlBS
SVZfT1Aob3ApICYmIChjdXJyZW50LT5kb21haW4gIT0geGVub3Byb2ZfcHJp
bWFyeV9wcm9maWxlcikgKQogICAgIHsKLSAgICAgICAgcHJpbnRrKCJ4ZW5v
cHJvZjogZG9tICVkIGRlbmllZCBwcml2aWxlZ2VkIG9wZXJhdGlvbiAlZFxu
IiwKLSAgICAgICAgICAgICAgIGN1cnJlbnQtPmRvbWFpbi0+ZG9tYWluX2lk
LCBvcCk7CisgICAgICAgIGdkcHJpbnRrKFhFTkxPR19ERUJVRywgImRlbmll
ZCBwcml2aWxlZ2VkIG9wZXJhdGlvbiAlZFxuIiwgb3ApOwogICAgICAgICBy
ZXR1cm4gLUVQRVJNOwogICAgIH0KIApAQCAtOTA3LDggKzkwNSw3IEBAIHJl
dF90IGRvX3hlbm9wcm9mX29wKGludCBvcCwgWEVOX0dVRVNUX0gKICAgICBz
cGluX3VubG9jaygmeGVub3Byb2ZfbG9jayk7CiAKICAgICBpZiAoIHJldCA8
IDAgKQotICAgICAgICBwcmludGsoInhlbm9wcm9mOiBvcGVyYXRpb24gJWQg
ZmFpbGVkIGZvciBkb20gJWQgKHN0YXR1cyA6ICVkKVxuIiwKLSAgICAgICAg
ICAgICAgIG9wLCBjdXJyZW50LT5kb21haW4tPmRvbWFpbl9pZCwgcmV0KTsK
KyAgICAgICAgZ2RwcmludGsoWEVOTE9HX0RFQlVHLCAib3BlcmF0aW9uICVk
IGZhaWxlZDogJWRcbiIsIG9wLCByZXQpOwogCiAgICAgcmV0dXJuIHJldDsK
IH0K

--=separator--
