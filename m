X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6128" "Thursday" "29" "October" "2015" "12:00:38" "+0000" "Xen.org security team" "security@xen.org" "<E1Zrlsk-00027q-In@xenbits.xen.org>" "169" "[oss-security] Xen Security Advisory 151 (CVE-2015-7969) - x86: leak of per-domain profiling-related vcpu pointer array" nil nil nil "10" "2015102912:00:38" "[oss-security] Xen Security Advisory 151 (CVE-2015-7969) - x86: leak of per-domain profiling-related vcpu pointer array" (number mark "U       security@xen Oct 29  169/6128  " thread-indent "\"[oss-security] Xen Security Advisory 151 (CVE-2015-7969) - x86: leak of per-domain profiling-related vcpu pointer array\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5219 invoked by uid 550); 29 Oct 2015 12:02:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29780 invoked from network); 29 Oct 2015 12:01:03 -0000
Date: Thu, 29 Oct 2015 12:00:38 +0000
Message-Id: <E1Zrlsk-00027q-In@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 151 (CVE-2015-7969) - x86: leak of
 per-domain profiling-related vcpu pointer array

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

            Xen Security Advisory CVE-2015-7969 / XSA-151
                              version 3

       x86: leak of per-domain profiling-related vcpu pointer array

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

A domain's xenoprofile state contains an array of per-vcpu
information, which is allocated once in the lifetime of a domain in
response to that domain using the XENOPROF_get_buffer hypercall on
itself or by a domain with the privilege to profile a target domain
using the XENOPROF_set_passive hypercall.

This array is leaked on domain teardown.  This memory leak could --
over time -- exhaust the host's memory.

IMPACT
======

The following parties can mount a denial of service attack affecting
the whole system:

  - A malicious guest administrator via XENOPROF_get_buffer.
  - A domain given suitable privilege over another domain
    via XENOPROF_set_passive (this would usually be a domain being
    used to profile another domain, eg with the xenoprof tool).

The ability to also restart or create suitable domains is also
required to fully exploit the issue.  Without this the leak is limited
to a small multiple of the maximum number of vcpus for the domain.

The maximum leak is 128kbytes per domain (re)boot.

VULNERABLE SYSTEMS
==================

Versions of Xen from 4.0 onwards are vulnerable.

The XENOPROF hypercalls are only implemented on x86.  ARM is therefore
not vulnerable.

MITIGATION
==========

On systems where the guest kernel is controlled by the host rather
than guest administrator, running only kernels (in the target and
profiling domain respectively) which do not call these hypercalls will
also prevent untrusted guest users from exploiting this issue. However
untrusted guest administrators can still trigger it unless further
steps are taken to prevent them from loading code into the kernel
(e.g. by disabling loadable modules etc) or from using other
mechanisms which allow them to run code at kernel privilege.

The leak is small.  Preventing the creation of large numbers of new
domains, and limiting the number of times an existing domain can be
rebooted, can reduce the impact of this vulnerability.

NOTE REGARDING CVE
==================

Note that CVE-2015-7969 covers both this issue and XSA-149.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.
(To resolve CVE-2015-7969, the patch from XSA-149 is required too.)

xsa151.patch        xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa151*.patch
e247a9dbbe236ffa3c5aa5e2d41047fa67da80f2b0474eef3440b5b3da2d5617  xsa151.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the PATCH or the TRUSTED KERNEL MITIGATION (or others
which are substantially similar) is permitted during the embargo, even
on public-facing systems with untrusted guest users and
administrators.


However deployment of the (RE)BOOT LIMIT MITIGATION is NOT permitted
(except where all the affected systems and VMs are administered and
used only by organisations which are members of the Xen Project
Security Issues Predisclosure List).  Specifically, deployment on
public cloud systems is NOT permitted.

This is because applying domain creation and reboot limits in
connection with a security issue would be a user-visible change which
could lead to the rediscovery of the vulnerability.

Deployment of the reboot mitigation is permitted only AFTER the
embargo ends.


Also: Distribution of updated software is prohibited (except to other
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

iQEcBAEBAgAGBQJWMgm9AAoJEIP+FMlX6CvZticH+waAPTUnRA9CTnPs1BDjiTcc
kBuVb8ouvffinj+FCVQ/CIC1IAkClU8vBcOb3NAe9/PaCYPe9OlAxpvAAxxlgr05
N1Py8rBUEemKcCS9T4jTT2TNLYm9lzFihcTMOp+Y2diavcdmnhXj+kjO/FpD7tG/
TRDBnCVsxA4m+yxQJO8xXWIE+lYCoF+42Qc8Dyi2tcaN4WaBjjD5DyqNHIuf1ISF
DljnT3TsgDIlxmgeQsufX0VIh45FdZXExOmGAgRS3JCn0cTmQwONecyM5NjKaljZ
LEwk5sMSRa4cmb8naJRxPf30CydjmLBMdzU8KRjg+d6M46jTGTV794k/AKc4VxI=
=u9LH
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa151.patch"
Content-Disposition: attachment; filename="xsa151.patch"
Content-Transfer-Encoding: base64

eGVub3Byb2Y6IGZyZWUgZG9tYWluJ3MgdmNwdSBhcnJheQoKVGhpcyB3YXMg
b3Zlcmxvb2tlZCBpbiBmYjQ0MmUyMTcxICgieDg2XzY0OiBhbGxvdyBtb3Jl
IHZDUFUtcyBwZXIKZ3Vlc3QiKS4KClRoaXMgaXMgWFNBLTE1MS4KClNpZ25l
ZC1vZmYtYnk6IEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4KUmV2
aWV3ZWQtYnk6IElhbiBDYW1wYmVsbCA8aWFuLmNhbXBiZWxsQGNpdHJpeC5j
b20+CgotLS0gYS94ZW4vY29tbW9uL3hlbm9wcm9mLmMKKysrIGIveGVuL2Nv
bW1vbi94ZW5vcHJvZi5jCkBAIC0yMzksNiArMjM5LDcgQEAgc3RhdGljIGlu
dCBhbGxvY194ZW5vcHJvZl9zdHJ1Y3QoCiAgICAgZC0+eGVub3Byb2YtPnJh
d2J1ZiA9IGFsbG9jX3hlbmhlYXBfcGFnZXMoZ2V0X29yZGVyX2Zyb21fcGFn
ZXMobnBhZ2VzKSwgMCk7CiAgICAgaWYgKCBkLT54ZW5vcHJvZi0+cmF3YnVm
ID09IE5VTEwgKQogICAgIHsKKyAgICAgICAgeGZyZWUoZC0+eGVub3Byb2Yt
PnZjcHUpOwogICAgICAgICB4ZnJlZShkLT54ZW5vcHJvZik7CiAgICAgICAg
IGQtPnhlbm9wcm9mID0gTlVMTDsKICAgICAgICAgcmV0dXJuIC1FTk9NRU07
CkBAIC0yODYsNiArMjg3LDcgQEAgdm9pZCBmcmVlX3hlbm9wcm9mX3BhZ2Vz
KHN0cnVjdCBkb21haW4gKgogICAgICAgICBmcmVlX3hlbmhlYXBfcGFnZXMo
eC0+cmF3YnVmLCBvcmRlcik7CiAgICAgfQogCisgICAgeGZyZWUoeC0+dmNw
dSk7CiAgICAgeGZyZWUoeCk7CiAgICAgZC0+eGVub3Byb2YgPSBOVUxMOwog
fQo=

--=separator--
