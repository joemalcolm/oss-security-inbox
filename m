X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14687" "Thursday" "29" "October" "2015" "12:00:35" "+0000" "Xen.org security team" "security@xen.org" "<E1Zrlsh-00026q-Iu@xenbits.xen.org>" "310" "[oss-security] Xen Security Advisory 150 (CVE-2015-7970) - x86: Long latency populate-on-demand operation is not preemptible" nil nil nil "10" "2015102912:00:35" "[oss-security] Xen Security Advisory 150 (CVE-2015-7970) - x86: Long latency populate-on-demand operation is not preemptible" (number mark "U       security@xen Oct 29  310/14687 " thread-indent "\"[oss-security] Xen Security Advisory 150 (CVE-2015-7970) - x86: Long latency populate-on-demand operation is not preemptible\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5153 invoked by uid 550); 29 Oct 2015 12:02:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28519 invoked from network); 29 Oct 2015 12:01:00 -0000
Date: Thu, 29 Oct 2015 12:00:35 +0000
Message-Id: <E1Zrlsh-00026q-Iu@xenbits.xen.org>
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.428 (Entity 5.428)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security@xen.org>
Subject: [oss-security] Xen Security Advisory 150 (CVE-2015-7970) - x86: Long latency
 populate-on-demand operation is not preemptible

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

             Xen Security Advisory CVE-2015-7970 / XSA-150
                               version 5

    x86: Long latency populate-on-demand operation is not preemptible

UPDATES IN VERSION 5
====================

Updated patch.  Compared to the version in XSA-150 v4 and earlier,
this patch is simpler and involves less rearrangement of the code.  It
is therefore thought to be less risky.  However, both this version and
the earlier versions have been tested, and both versions eliminate the
vulnerability.  Readers who have already prepared updates with, and/or
deployed, the earlier patch, do not necessarily need to update.

Public release.

ISSUE DESCRIPTION
=================

When running an HVM domain in Populate-on-Demand mode, Xen would
sometimes search the domain for memory to reclaim, in response to
demands for population of other pages in the same domain.

This search runs without preemption.  The guest can, by suitable
arrangement of its memory contents, create a situation where this
search is a time-consuming linear scan of the guest's address space.

The scan might be triggered by the guest's own actions, or by
toolstack operations such as migration.  In guests affected by
XSA-153, this scan might be triggered simply by memory pressure in the
guest.

Even guests not started in PoD mode can create PoD entries.

IMPACT
======

A malicious HVM guest administrator can cause a denial of service.
Specifically, prevent use of a physical CPU for a significant period.

If a host watchdog (Xen or dom0) is in use, this can lead to a
watchdog timeout and consequently a reboot of the host.  If another,
innocent, guest, is configured with a watchdog, this issue can lead to
a reboot of such a guest.

In guests affected by XSA-153, this vulnerability may also be
triggered by an unprivileged guest user, simply by imposing a workload
which generates memory pressure.

VULNERABLE SYSTEMS
==================

The vulnerability is exposed to any x86 HVM guest.

ARM is not vulnerable.  x86 PV VMs are not vulnerable.

Versions of Xen from 3.4 onwards are affected.

MITIGATION
==========

Running only PV guests will avoid this issue.

On systems not also vulnerable to XSA-153, the vulnerability can be
avoided by ensuring that only trusted guest kernels are used, and that
further steps are taken to prevent a guest administrator from loading
code into the kernel (e.g. by disabling loadable modules etc) or from
using other mechanisms which allow them to run code at kernel
privilege.

CREDITS
=======

This is issue was disclosed by Andrew Cooper of Citrix.

RESOLUTION
==========

Attached is a patch which resolves the issue by limiting the
long-running "sweep" operation.

This patch will resolve the issue on systems where PoD is not
intentionally in use.  (Ie, where all HVM guests are started with
memory==maxmem.)


When PoD is in use, there are concerns that there may be situations --
operating systems not tested, or buggy balloon drivers, for example --
where limiting the long-running operation may cause guests to crash
which may otherwise not.

Therefore, the patch should be used with caution.

This patch can interact badly on configurations vulnerable to XSA-153.
XSA-153 is triggerable by unprivileged guest users.  The patch changes
the consequences from a host-wide CPU denial problem (which might be
tolerated without catastrophic symptoms in some configurations) into a
likely guest crash; thus it limits the scope of the consequences to
the specific guest, but may worsen the severity.


xsa150.patch      xen-unstable, Xen 4.6.x, Xen 4.5.x, Xen 4.4.x, Xen 4.3.x

$ sha256sum xsa150*
9054215f08cab48d2523efb456eb3c93ca6ac580d661f6e4f1feca115c67afa8  xsa150.patch
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

iQEcBAEBAgAGBQJWMgobAAoJEIP+FMlX6CvZ7W4H/36Bx6Aj+4PX3kLPwzsheejj
CWpOQjM4BZAVWkv1N9QInJagZ87qRFwFGlM8FzDuGy3dE7Df5MCs/BH9B1xrJ0E9
Ur30mpsw1IAf9YF/l/XlNLf9G6XCo/g2yS7Jfv5qk3953+0ZkqSd7t8ekFaQSKUz
GGOkhQKJuFsnEmimQTLLBt6brHaYfFJtnbKIFzcBQtRExlKI3BYk3OHNLvIUlj6X
MGij0fJTJggvGjaZ+Olthf0GLtDIZ8GbWD+0FQ4bJwEAacSJ1eVOYzVAdNfFIuVv
73MyN8QyEgu+HSc9RJnILV/g7oIfuGazo1A19KAjeImd81W4bQDVnZJ1KCkcbd0=
=ISHR
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa150.patch"
Content-Disposition: attachment; filename="xsa150.patch"
Content-Transfer-Encoding: base64

eDg2L1BvRDogRWFnZXIgc3dlZXAgZm9yIHplcm9lZCBwYWdlcwoKQmFzZWQg
b24gdGhlIGNvbnRlbnRzIG9mIGEgZ3Vlc3RzIHBoeXNpY2FsIGFkZHJlc3Mg
c3BhY2UsCnAybV9wb2RfZW1lcmdlbmN5X3N3ZWVwKCkgY291bGQgZGVncmFk
ZSBpbnRvIGEgbGluZWFyIG1lbWNtcCgpIGZyb20gMCB0bwptYXhfZ2ZuLCB3
aGljaCBydW5zIG5vbi1wcmVlbXB0aWJseS4KCkFzIHAybV9wb2RfZW1lcmdl
bmN5X3N3ZWVwKCkgcnVucyBiZWhpbmQgdGhlIHNjZW5lcyBpbiBhIG51bWJl
ciBvZiBjb250ZXh0cywKbWFraW5nIGl0IHByZWVtcHRpYmxlIGlzIG5vdCBm
ZWFzaWJsZS4KCkluc3RlYWQsIGEgZGlmZmVyZW50IGFwcHJvYWNoIGlzIHRh
a2VuLiAgUmVjZW50bHktcG9wdWxhdGVkIHBhZ2VzIGFyZSBlYWdlcmx5CmNo
ZWNrZWQgZm9yIHJlY2xhaW1hdGlvbiwgd2hpY2ggYW1vcnRpc2VzIHRoZSBw
Mm1fcG9kX2VtZXJnZW5jeV9zd2VlcCgpCm9wZXJhdGlvbiBhY3Jvc3MgZWFj
aCBwMm1fcG9kX2RlbWFuZF9wb3B1bGF0ZSgpIG9wZXJhdGlvbi4KCk5vdGUg
dGhhdCBpbiB0aGUgY2FzZSB0aGF0IGEgMk0gc3VwZXJwYWdlIGNhbid0IGJl
IHJlY2xhaW1lZCBhcyBhIHN1cGVycGFnZSwKaXQgaXMgc2hhdHRlcmVkIGlm
IDRLIHBhZ2VzIG9mIHplcm9zIGNhbiBiZSByZWNsYWltZWQuICBUaGlzIGlz
IHVuZm9ydHVuYXRlCmJ1dCBtYXRjaGVzIHRoZSBwcmV2aW91cyBiZWhhdmlv
dXIsIGFuZCBpcyByZXF1aXJlZCB0byBhdm9pZCByZWdyZXNzaW9ucwooZG9t
YWluIGNyYXNoIGZyb20gUG9EIGV4aGF1c3Rpb24pIHdpdGggVk1zIGNvbmZp
Z3VyZWQgY2xvc2UgdG8gdGhlIGxpbWl0LgoKVGhpcyBpcyBDVkUtMjAxNS03
OTcwIC8gWFNBLTE1MC4KClNpZ25lZC1vZmYtYnk6IEFuZHJldyBDb29wZXIg
PGFuZHJldy5jb29wZXIzQGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4g
QmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+ClJldmlld2VkLWJ5OiBHZW9y
Z2UgRHVubGFwIDxnZW9yZ2UuZHVubGFwQGNpdHJpeC5jb20+CgotLS0gYS94
ZW4vYXJjaC94ODYvbW0vcDJtLXBvZC5jCisrKyBiL3hlbi9hcmNoL3g4Ni9t
bS9wMm0tcG9kLmMKQEAgLTkyMCwyOCArOTIwLDYgQEAgcDJtX3BvZF96ZXJv
X2NoZWNrKHN0cnVjdCBwMm1fZG9tYWluICpwMgogfQogCiAjZGVmaW5lIFBP
RF9TV0VFUF9MSU1JVCAxMDI0Ci0KLS8qIFdoZW4gcG9wdWxhdGluZyBhIG5l
dyBzdXBlcnBhZ2UsIGxvb2sgYXQgcmVjZW50bHkgcG9wdWxhdGVkIHN1cGVy
cGFnZXMKLSAqIGhvcGluZyB0aGF0IHRoZXkndmUgYmVlbiB6ZXJvZWQuICBU
aGlzIHdpbGwgc25hcCB1cCB6ZXJvZWQgcGFnZXMgYXMgc29vbiBhcyAKLSAq
IHRoZSBndWVzdCBPUyBpcyBkb25lIHdpdGggdGhlbS4gKi8KLXN0YXRpYyB2
b2lkCi1wMm1fcG9kX2NoZWNrX2xhc3Rfc3VwZXIoc3RydWN0IHAybV9kb21h
aW4gKnAybSwgdW5zaWduZWQgbG9uZyBnZm5fYWxpZ25lZCkKLXsKLSAgICB1
bnNpZ25lZCBsb25nIGNoZWNrX2dmbjsKLQotICAgIEFTU0VSVChwMm0tPnBv
ZC5sYXN0X3BvcHVsYXRlZF9pbmRleCA8IFBPRF9ISVNUT1JZX01BWCk7Ci0K
LSAgICBjaGVja19nZm4gPSBwMm0tPnBvZC5sYXN0X3BvcHVsYXRlZFtwMm0t
PnBvZC5sYXN0X3BvcHVsYXRlZF9pbmRleF07Ci0KLSAgICBwMm0tPnBvZC5s
YXN0X3BvcHVsYXRlZFtwMm0tPnBvZC5sYXN0X3BvcHVsYXRlZF9pbmRleF0g
PSBnZm5fYWxpZ25lZDsKLQotICAgIHAybS0+cG9kLmxhc3RfcG9wdWxhdGVk
X2luZGV4ID0KLSAgICAgICAgKCBwMm0tPnBvZC5sYXN0X3BvcHVsYXRlZF9p
bmRleCArIDEgKSAlIFBPRF9ISVNUT1JZX01BWDsKLQotICAgIHAybV9wb2Rf
emVyb19jaGVja19zdXBlcnBhZ2UocDJtLCBjaGVja19nZm4pOwotfQotCi0K
ICNkZWZpbmUgUE9EX1NXRUVQX1NUUklERSAgMTYKIHN0YXRpYyB2b2lkCiBw
Mm1fcG9kX2VtZXJnZW5jeV9zd2VlcChzdHJ1Y3QgcDJtX2RvbWFpbiAqcDJt
KQpAQCAtOTgyLDcgKzk2MCw3IEBAIHAybV9wb2RfZW1lcmdlbmN5X3N3ZWVw
KHN0cnVjdCBwMm1fZG9tYWkKICAgICAgICAgICogTkIgdGhhdCB0aGlzIGlz
IGEgemVyby1zdW0gZ2FtZTsgd2UncmUgaW5jcmVhc2luZyBvdXIgY2FjaGUg
c2l6ZQogICAgICAgICAgKiBieSByZS1pbmNyZWFzaW5nIG91ciAnZGVidCcu
ICBTaW5jZSB3ZSBob2xkIHRoZSBwb2QgbG9jaywKICAgICAgICAgICogKGVu
dHJ5X2NvdW50IC0gY291bnQpIG11c3QgcmVtYWluIHRoZSBzYW1lLiAqLwot
ICAgICAgICBpZiAoIHAybS0+cG9kLmNvdW50ID4gMCAmJiBpIDwgbGltaXQg
KQorICAgICAgICBpZiAoIGkgPCBsaW1pdCAmJiAocDJtLT5wb2QuY291bnQg
PiAwIHx8IGh5cGVyY2FsbF9wcmVlbXB0X2NoZWNrKCkpICkKICAgICAgICAg
ICAgIGJyZWFrOwogICAgIH0KIApAQCAtOTk0LDYgKzk3Miw1OCBAQCBwMm1f
cG9kX2VtZXJnZW5jeV9zd2VlcChzdHJ1Y3QgcDJtX2RvbWFpCiAKIH0KIAor
c3RhdGljIHZvaWQgcG9kX2VhZ2VyX3JlY2xhaW0oc3RydWN0IHAybV9kb21h
aW4gKnAybSkKK3sKKyAgICBzdHJ1Y3QgcG9kX21ycF9saXN0ICptcnAgPSAm
cDJtLT5wb2QubXJwOworICAgIHVuc2lnbmVkIGludCBpID0gMDsKKworICAg
IC8qCisgICAgICogQWx3YXlzIGNoZWNrIG9uZSBwYWdlIGZvciByZWNsYWlt
YXRpb24uCisgICAgICoKKyAgICAgKiBJZiB0aGUgUG9EIHBvb2wgaXMgZW1w
dHksIGtlZXAgY2hlY2tpbmcgc29tZSBzcGFjZSBpcyBmb3VuZCwgb3IgYWxs
CisgICAgICogZW50cmllcyBoYXZlIGJlZW4gZXhoYXVzZWQuCisgICAgICov
CisgICAgZG8KKyAgICB7CisgICAgICAgIHVuc2lnbmVkIGludCBpZHggPSAo
bXJwLT5pZHggKyBpKyspICUgQVJSQVlfU0laRShtcnAtPmxpc3QpOworICAg
ICAgICB1bnNpZ25lZCBsb25nIGdmbiA9IG1ycC0+bGlzdFtpZHhdOworCisg
ICAgICAgIGlmICggZ2ZuICE9IElOVkFMSURfR0ZOICkKKyAgICAgICAgewor
ICAgICAgICAgICAgaWYgKCBnZm4gJiBQT0RfTEFTVF9TVVBFUlBBR0UgKQor
ICAgICAgICAgICAgeworICAgICAgICAgICAgICAgIGdmbiAmPSB+UE9EX0xB
U1RfU1VQRVJQQUdFOworCisgICAgICAgICAgICAgICAgaWYgKCBwMm1fcG9k
X3plcm9fY2hlY2tfc3VwZXJwYWdlKHAybSwgZ2ZuKSA9PSAwICkKKyAgICAg
ICAgICAgICAgICB7CisgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGlu
dCB4OworCisgICAgICAgICAgICAgICAgICAgIGZvciAoIHggPSAwOyB4IDwg
U1VQRVJQQUdFX1BBR0VTOyArK3gsICsrZ2ZuICkKKyAgICAgICAgICAgICAg
ICAgICAgICAgIHAybV9wb2RfemVyb19jaGVjayhwMm0sICZnZm4sIDEpOwor
ICAgICAgICAgICAgICAgIH0KKyAgICAgICAgICAgIH0KKyAgICAgICAgICAg
IGVsc2UKKyAgICAgICAgICAgICAgICBwMm1fcG9kX3plcm9fY2hlY2socDJt
LCAmZ2ZuLCAxKTsKKworICAgICAgICAgICAgbXJwLT5saXN0W2lkeF0gPSBJ
TlZBTElEX0dGTjsKKyAgICAgICAgfQorCisgICAgfSB3aGlsZSAoIChwMm0t
PnBvZC5jb3VudCA9PSAwKSAmJiAoaSA8IEFSUkFZX1NJWkUobXJwLT5saXN0
KSkgKTsKK30KKworc3RhdGljIHZvaWQgcG9kX2VhZ2VyX3JlY29yZChzdHJ1
Y3QgcDJtX2RvbWFpbiAqcDJtLAorICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB1bnNpZ25lZCBsb25nIGdmbiwgdW5zaWduZWQgaW50IG9yZGVyKQor
eworICAgIHN0cnVjdCBwb2RfbXJwX2xpc3QgKm1ycCA9ICZwMm0tPnBvZC5t
cnA7CisKKyAgICBBU1NFUlQobXJwLT5saXN0W21ycC0+aWR4XSA9PSBJTlZB
TElEX0dGTik7CisgICAgQVNTRVJUKGdmbiAhPSBJTlZBTElEX0dGTik7CisK
KyAgICBtcnAtPmxpc3RbbXJwLT5pZHgrK10gPQorICAgICAgICBnZm4gfCAo
b3JkZXIgPT0gUEFHRV9PUkRFUl8yTSA/IFBPRF9MQVNUX1NVUEVSUEFHRSA6
IDApOworICAgIG1ycC0+aWR4ICU9IEFSUkFZX1NJWkUobXJwLT5saXN0KTsK
K30KKwogaW50CiBwMm1fcG9kX2RlbWFuZF9wb3B1bGF0ZShzdHJ1Y3QgcDJt
X2RvbWFpbiAqcDJtLCB1bnNpZ25lZCBsb25nIGdmbiwKICAgICAgICAgICAg
ICAgICAgICAgICAgIHVuc2lnbmVkIGludCBvcmRlciwKQEAgLTEwMzQsNiAr
MTA2NCw4IEBAIHAybV9wb2RfZGVtYW5kX3BvcHVsYXRlKHN0cnVjdCBwMm1f
ZG9tYWkKICAgICAgICAgcmV0dXJuIDA7CiAgICAgfQogCisgICAgcG9kX2Vh
Z2VyX3JlY2xhaW0ocDJtKTsKKwogICAgIC8qIE9ubHkgc3dlZXAgaWYgd2Un
cmUgYWN0dWFsbHkgb3V0IG9mIG1lbW9yeS4gIERvaW5nIGFueXRoaW5nIGVs
c2UKICAgICAgKiBjYXVzZXMgdW5uZWNlc3NhcnkgdGltZSBhbmQgZnJhZ21l
bnRhdGlvbiBvZiBzdXBlcnBhZ2VzIGluIHRoZSBwMm0uICovCiAgICAgaWYg
KCBwMm0tPnBvZC5jb3VudCA9PSAwICkKQEAgLTEwNzAsNiArMTEwMiw4IEBA
IHAybV9wb2RfZGVtYW5kX3BvcHVsYXRlKHN0cnVjdCBwMm1fZG9tYWkKICAg
ICBwMm0tPnBvZC5lbnRyeV9jb3VudCAtPSAoMSA8PCBvcmRlcik7CiAgICAg
QlVHX09OKHAybS0+cG9kLmVudHJ5X2NvdW50IDwgMCk7CiAKKyAgICBwb2Rf
ZWFnZXJfcmVjb3JkKHAybSwgZ2ZuX2FsaWduZWQsIG9yZGVyKTsKKwogICAg
IGlmICggdGJfaW5pdF9kb25lICkKICAgICB7CiAgICAgICAgIHN0cnVjdCB7
CkBAIC0xMDg1LDEyICsxMTE5LDYgQEAgcDJtX3BvZF9kZW1hbmRfcG9wdWxh
dGUoc3RydWN0IHAybV9kb21haQogICAgICAgICBfX3RyYWNlX3ZhcihUUkNf
TUVNX1BPRF9QT1BVTEFURSwgMCwgc2l6ZW9mKHQpLCAmdCk7CiAgICAgfQog
Ci0gICAgLyogQ2hlY2sgdGhlIGxhc3QgZ3Vlc3QgZGVtYW5kLXBvcHVsYXRl
ICovCi0gICAgaWYgKCBwMm0tPnBvZC5lbnRyeV9jb3VudCA+IHAybS0+cG9k
LmNvdW50IAotICAgICAgICAgJiYgKG9yZGVyID09IFBBR0VfT1JERVJfMk0p
Ci0gICAgICAgICAmJiAocSAmIFAyTV9BTExPQykgKQotICAgICAgICBwMm1f
cG9kX2NoZWNrX2xhc3Rfc3VwZXIocDJtLCBnZm5fYWxpZ25lZCk7Ci0KICAg
ICBwb2RfdW5sb2NrKHAybSk7CiAgICAgcmV0dXJuIDA7CiBvdXRfb2ZfbWVt
b3J5OgotLS0gYS94ZW4vYXJjaC94ODYvbW0vcDJtLmMKKysrIGIveGVuL2Fy
Y2gveDg2L21tL3AybS5jCkBAIC01OCw2ICs1OCw3IEBAIGJvb2xlYW5fcGFy
YW0oImhhcF8ybWIiLCBvcHRfaGFwXzJtYik7CiAvKiBJbml0IHRoZSBkYXRh
c3RydWN0dXJlcyBmb3IgbGF0ZXIgdXNlIGJ5IHRoZSBwMm0gY29kZSAqLwog
c3RhdGljIGludCBwMm1faW5pdGlhbGlzZShzdHJ1Y3QgZG9tYWluICpkLCBz
dHJ1Y3QgcDJtX2RvbWFpbiAqcDJtKQogeworICAgIHVuc2lnbmVkIGludCBp
OwogICAgIGludCByZXQgPSAwOwogCiAgICAgbW1fcndsb2NrX2luaXQoJnAy
bS0+bG9jayk7CkBAIC03Myw2ICs3NCw5IEBAIHN0YXRpYyBpbnQgcDJtX2lu
aXRpYWxpc2Uoc3RydWN0IGRvbWFpbiAKIAogICAgIHAybS0+bnAybV9iYXNl
ID0gUDJNX0JBU0VfRUFERFI7CiAKKyAgICBmb3IgKCBpID0gMDsgaSA8IEFS
UkFZX1NJWkUocDJtLT5wb2QubXJwLmxpc3QpOyArK2kgKQorICAgICAgICBw
Mm0tPnBvZC5tcnAubGlzdFtpXSA9IElOVkFMSURfR0ZOOworCiAgICAgaWYg
KCBoYXBfZW5hYmxlZChkKSAmJiBjcHVfaGFzX3ZteCApCiAgICAgICAgIHJl
dCA9IGVwdF9wMm1faW5pdChwMm0pOwogICAgIGVsc2UKLS0tIGEveGVuL2lu
Y2x1ZGUvYXNtLXg4Ni9wMm0uaAorKysgYi94ZW4vaW5jbHVkZS9hc20teDg2
L3AybS5oCkBAIC0yOTIsMTAgKzI5MiwyMCBAQCBzdHJ1Y3QgcDJtX2RvbWFp
biB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgZW50cnlfY291bnQ7ICAv
KiAjIG9mIHBhZ2VzIGluIHAybSBtYXJrZWQgcG9kICAgICAgKi8KICAgICAg
ICAgdW5zaWduZWQgbG9uZyAgICByZWNsYWltX3NpbmdsZTsgLyogTGFzdCBn
cGZuIG9mIGEgc2NhbiAqLwogICAgICAgICB1bnNpZ25lZCBsb25nICAgIG1h
eF9ndWVzdDsgICAgLyogZ3BmbiBvZiBtYXggZ3Vlc3QgZGVtYW5kLXBvcHVs
YXRlICovCi0jZGVmaW5lIFBPRF9ISVNUT1JZX01BWCAxMjgKLSAgICAgICAg
LyogZ3BmbiBvZiBsYXN0IGd1ZXN0IHN1cGVycGFnZSBkZW1hbmQtcG9wdWxh
dGVkICovCi0gICAgICAgIHVuc2lnbmVkIGxvbmcgICAgbGFzdF9wb3B1bGF0
ZWRbUE9EX0hJU1RPUllfTUFYXTsgCi0gICAgICAgIHVuc2lnbmVkIGludCAg
ICAgbGFzdF9wb3B1bGF0ZWRfaW5kZXg7CisKKyAgICAgICAgLyoKKyAgICAg
ICAgICogVHJhY2tpbmcgb2YgdGhlIG1vc3QgcmVjZW50bHkgcG9wdWxhdGVk
IFBvRCBwYWdlcywgZm9yIGVhZ2VyCisgICAgICAgICAqIHJlY2xhbWF0aW9u
LgorICAgICAgICAgKi8KKyAgICAgICAgc3RydWN0IHBvZF9tcnBfbGlzdCB7
CisjZGVmaW5lIE5SX1BPRF9NUlBfRU5UUklFUyAzMgorCisvKiBFbmNvZGUg
T1JERVJfMk0gc3VwZXJwYWdlIGluIHRvcCBiaXQgb2YgR0ZOICovCisjZGVm
aW5lIFBPRF9MQVNUX1NVUEVSUEFHRSAoSU5WQUxJRF9HRk4gJiB+KElOVkFM
SURfR0ZOID4+IDEpKQorCisgICAgICAgICAgICB1bnNpZ25lZCBsb25nIGxp
c3RbTlJfUE9EX01SUF9FTlRSSUVTXTsKKyAgICAgICAgICAgIHVuc2lnbmVk
IGludCBpZHg7CisgICAgICAgIH0gbXJwOwogICAgICAgICBtbV9sb2NrX3Qg
ICAgICAgIGxvY2s7ICAgICAgICAgLyogTG9ja2luZyBvZiBwcml2YXRlIHBv
ZCBzdHJ1Y3RzLCAgICoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAqIG5vdCByZWx5aW5nIG9uIHRoZSBwMm0gbG9jay4gICAg
ICAqLwogICAgIH0gcG9kOwo=

--=separator--
