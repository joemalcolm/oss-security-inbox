Received: (qmail 11832 invoked by uid 550); 27 Jan 2026 12:01:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11757 invoked from network); 27 Jan 2026 12:01:01 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1vkhkW-004FRp-1q@xenbits.xenproject.org>
Date: Tue, 27 Jan 2026 12:00:48 +0000
Subject: [oss-security] Xen Security Advisory 479 v2 (CVE-2026-23553) - x86: incomplete
 IBPB for vCPU isolation

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-23553 / XSA-479
                               version 2

                x86: incomplete IBPB for vCPU isolation

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

In the context switch logic Xen attempts to skip an IBPB in the case of
a vCPU returning to a CPU on which it was the previous vCPU to run.
While safe for Xen's isolation between vCPUs, this prevents the guest
kernel correctly isolating between tasks.  Consider:

 1) vCPU runs on CPU A, running task 1.
 2) vCPU moves to CPU B, idle gets scheduled on A.  Xen skips IBPB.
 3) On CPU B, guest kernel switches from task 1 to 2, issuing IBPB.
 4) vCPU moves back to CPU A.  Xen skips IBPB again.

Now, task 2 is running on CPU A with task 1's training still in the BTB.

IMPACT
======

Guest processes may leverage information leaks to obtain information
intended to be private to other entities in a guest.

VULNERABLE SYSTEMS
==================

Xen versions which had the XSA-254 fixes backported are vulnerable.
Upstream, that is 4.6 and newer.

Only x86 systems are vulnerable.  Arm systems are not vulerable.

Systems vulnerable to SRSO (see XSA-434) with default settings use
IBPB-on-entry to protect against SRSO.  This is a rather more aggressive
form of flushing than only on context switch, and is believed to be
sufficient to avoid the vulnerability.

MITIGATION
==========

Using "spec-ctrl=ibpb-entry=hvm,ibpb-entry=pv" on the Xen command line
will activate the SRSO mitigation on non-SRSO-vulnerable hardware, but
it is a large overhead.

CREDITS
=======

This issue was discovered by David Kaplan of AMD.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa479.patch           xen-unstable - Xen 4.18.x

$ sha256sum xsa479*
82369898d0287e69272d0d65fb0e6be5fd0106bda19cedb3c9f6e75688f6fb4b  xsa479.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAml4qMMMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZ4TgIAIObkH7IN/btMzEbjNp2aknZ+u2hgP2zu1j00Fwa
dyEi7Bug9X73vmgzLUWjHDCmvF3uoPl01KIjfh12v7s8dERKaTTxD1fGPOKliziA
rdZQJSICVTnrNex15aLONHxkJI3oVwo2JAXChBx1a4Zx9k7M6+Kv7o9xYlnQh27N
he3fmMrxWMCtTjngDgz7YhRonIYvA92wpRVCNklUulx9+oLHXllS8IKyf1rZvNr2
k2suwC82YG/wG6/vVUxZp45BTt45UC6YtengVRcyq70o9h8y6deSof0MoSuAewj7
05Z9kXac7pvGJTMTz2dUnHeRelaVU2Ps736vQSGgyJdIJ/c=
=jCcD
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa479.patch"
Content-Disposition: attachment; filename="xsa479.patch"
Content-Transfer-Encoding: base64

RnJvbTogUm9nZXIgUGF1IE1vbm7DqSA8cm9nZXIucGF1QGNpdHJpeC5jb20+ClN1YmplY3Q6IHg4
Ni9zcGVjLWN0cmw6IEZpeCBpbmNvbXBsZXRlIElCUEIgZmx1c2hpbmcgZHVyaW5nIGNvbnRleHQg
c3dpdGNoCgpUaGUgcHJldmlvdXMgbG9naWMgYXR0ZW1wdGVkIHRvIHNraXAgYW4gSUJQQiBpbiB0
aGUgY2FzZSBvZiB2Q1BVIHJldHVybmluZyB0bwphIENQVSBvbiB3aGljaCBpdCB3YXMgdGhlIHBy
ZXZpb3VzIHZDUFUgdG8gcnVuLiAgV2hpbGUgc2FmZSBmb3IgWGVuJ3MKaXNvbGF0aW9uIGJldHdl
ZW4gdkNQVXMsIHRoaXMgcHJldmVudHMgdGhlIGd1ZXN0IGtlcm5lbCBjb3JyZWN0bHkgaXNvbGF0
aW9uCmJldHdlZW4gdGFza3MuICBDb25zaWRlcjoKCiAxKSB2Q1BVIHJ1bnMgb24gQ1BVIEEsIHJ1
bm5pbmcgdGFzayAxLgogMikgdkNQVSBtb3ZlcyB0byBDUFUgQiwgaWRsZSBnZXRzIHNjaGVkdWxl
ZCBvbiBBLiAgWGVuIHNraXBzIElCUEIuCiAzKSBPbiBDUFUgQiwgZ3Vlc3Qga2VybmVsIHN3aXRj
aGVzIGZyb20gdGFzayAxIHRvIDIsIGlzc3VpbmcgSUJQQi4KIDQpIHZDUFUgbW92ZXMgYmFjayB0
byBDUFUgQS4gIFhlbiBza2lwcyBJQlBCIGFnYWluLgoKTm93LCB0YXNrIDIgaXMgcnVubmluZyBv
biBDUFUgQSB3aXRoIHRhc2sgMSdzIHRyYWluaW5nIHN0aWxsIGluIHRoZSBCVEIuCgpEbyB0aGUg
Zmx1c2ggdW5jb25kaXRpb25hbGx5IHdoZW4gc3dpdGNoaW5nIHRvIGEgdkNQVSBkaWZmZXJlbnQg
dGhhbiB0aGUKaWRsZSBvbmUuICBOb3RlIHRoZXJlJ3Mgbm8gbmVlZCB0byBleHBsaWNpdGx5IGdh
dGUgdGhlIElCUEIgdG8gbmV4dCBkb21haW4KIT0gaWRsZSwgYXMgdGhlIGNvbnRleHQgd2hlcmUg
dGhlIElCUEIgaXMgaXNzdWVkIGlzIHN1YmplY3QgdG8gdGhhdApjb25kaXRpb24gYWxyZWFkeSB1
bmxlc3MgdGhlIHBDUFUgaXMgZ29pbmcgb2ZmbGluZSwgYXQgd2hpY2ggcG9pbnQgd2UgZG9uJ3QK
cmVhbGx5IGNhcmUgdG8gaXNzdWUgYW4gZXh0cmEgSUJQQi4KCkFsc28gYWRkIGEgY29tbWVudCB3
aXRoIHRoZSByZWFzb25pbmcgd2h5IHRoZSBJQlBCIG5lZWRzIHRvIGJlIGluCmNvbnRleHRfc3dp
dGNoKCkgcmF0aGVyIHRoYW4gX19jb250ZXh0X3N3aXRjaCgpLgoKVGhpcyBpcyBYU0EtNDc5IC8g
Q1ZFLTIwMjYtMjM1NTMuCgpGaXhlczogYTJlZDY0M2VkNzgzICgieDg2L2N0eHQ6IElzc3VlIGEg
c3BlY3VsYXRpb24gYmFycmllciBiZXR3ZWVuIHZjcHUgY29udGV4dHMiKQpSZXBvcnRlZC1ieTog
RGF2aWQgS2FwbGFuIDxkYXZpZC5rYXBsYW5AYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogUm9nZXIg
UGF1IE1vbm7DqSA8cm9nZXIucGF1QGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBKYW4gQmV1bGlj
aCA8amJldWxpY2hAc3VzZS5jb20+Ci0tLQogeGVuL2FyY2gveDg2L2RvbWFpbi5jIHwgMzYgKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS94ZW4vYXJjaC94ODYvZG9t
YWluLmMgYi94ZW4vYXJjaC94ODYvZG9tYWluLmMKaW5kZXggYzI5YTZiMGRlY2VlLi5jMWVkZWQz
ZWI2MDQgMTAwNjQ0Ci0tLSBhL3hlbi9hcmNoL3g4Ni9kb21haW4uYworKysgYi94ZW4vYXJjaC94
ODYvZG9tYWluLmMKQEAgLTIxNzQsMzMgKzIxNzQsMTUgQEAgdm9pZCBjb250ZXh0X3N3aXRjaChz
dHJ1Y3QgdmNwdSAqcHJldiwgc3RydWN0IHZjcHUgKm5leHQpCiAKICAgICAgICAgY3R4dF9zd2l0
Y2hfbGV2ZWxsaW5nKG5leHQpOwogCi0gICAgICAgIGlmICggb3B0X2licGJfY3R4dF9zd2l0Y2gg
JiYgIWlzX2lkbGVfZG9tYWluKG5leHRkKSApCi0gICAgICAgIHsKLSAgICAgICAgICAgIHN0YXRp
YyBERUZJTkVfUEVSX0NQVSh1bnNpZ25lZCBpbnQsIGxhc3QpOwotICAgICAgICAgICAgdW5zaWdu
ZWQgaW50ICpsYXN0X2lkID0gJnRoaXNfY3B1KGxhc3QpOwotCi0gICAgICAgICAgICAvKgotICAg
ICAgICAgICAgICogU3F1YXNoIHRoZSBkb21pZCBhbmQgdmNwdSBpZCB0b2dldGhlciBmb3IgY29t
cGFyaXNvbgotICAgICAgICAgICAgICogZWZmaWNpZW5jeS4gIFdlIGNvdWxkIGluIHByaW5jaXBs
ZSBzdGFzaCBhbmQgY29tcGFyZSB0aGUgc3RydWN0Ci0gICAgICAgICAgICAgKiB2Y3B1IHBvaW50
ZXIsIGJ1dCB0aGlzIHJpc2tzIGEgZmFsc2UgYWxpYXMgaWYgYSBkb21haW4gaGFzIGRpZWQKLSAg
ICAgICAgICAgICAqIGFuZCB0aGUgc2FtZSA0ayBwYWdlIGdldHMgcmV1c2VkIGZvciBhIG5ldyB2
Y3B1LgotICAgICAgICAgICAgICovCi0gICAgICAgICAgICB1bnNpZ25lZCBpbnQgbmV4dF9pZCA9
ICgoKHVuc2lnbmVkIGludCluZXh0ZC0+ZG9tYWluX2lkIDw8IDE2KSB8Ci0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAodWludDE2X3QpbmV4dC0+dmNwdV9pZCk7Ci0gICAgICAg
ICAgICBCVUlMRF9CVUdfT04oTUFYX1ZJUlRfQ1BVUyA+IDB4ZmZmZik7Ci0KLSAgICAgICAgICAg
IC8qCi0gICAgICAgICAgICAgKiBXaGVuIHNjaGVkdWxpbmcgZnJvbSBhIHZjcHUsIHRvIGlkbGUs
IGFuZCBiYWNrIHRvIHRoZSBzYW1lIHZjcHUKLSAgICAgICAgICAgICAqICh3aGljaCBtaWdodCBi
ZSBjb21tb24gaW4gYSBsaWdodGx5IGxvYWRlZCBzeXN0ZW0sIG9yIHdoZW4KLSAgICAgICAgICAg
ICAqIHVzaW5nIHZjcHUgcGlubmluZyksIHRoZXJlIGlzIG5vIG5lZWQgdG8gaXNzdWUgSUJQQiwg
YXMgd2UgYXJlCi0gICAgICAgICAgICAgKiByZXR1cm5pbmcgdG8gdGhlIHNhbWUgc2VjdXJpdHkg
Y29udGV4dC4KLSAgICAgICAgICAgICAqLwotICAgICAgICAgICAgaWYgKCAqbGFzdF9pZCAhPSBu
ZXh0X2lkICkKLSAgICAgICAgICAgIHsKLSAgICAgICAgICAgICAgICBzcGVjX2N0cmxfbmV3X2d1
ZXN0X2NvbnRleHQoKTsKLSAgICAgICAgICAgICAgICAqbGFzdF9pZCA9IG5leHRfaWQ7Ci0gICAg
ICAgICAgICB9Ci0gICAgICAgIH0KKyAgICAgICAgLyoKKyAgICAgICAgICogSXNzdWUgYW4gSUJQ
QiB3aGVuIHNjaGVkdWxpbmcgYSBkaWZmZXJlbnQgdkNQVSBpZiByZXF1aXJlZC4KKyAgICAgICAg
ICoKKyAgICAgICAgICogSUJQQiBjbGVhcnMgdGhlIFJTQi9SQVMvUkFQLCBidXQgdGhhdCdzIGZp
bmUgYXMgd2UgbGVhdmUgdGhpcworICAgICAgICAgKiBmdW5jdGlvbiB2aWEgcmVzZXRfc3RhY2tf
YW5kX2NhbGxfaW5kKCkgcmF0aGVyIHRoYW4gdmlhIGEgUkVUCisgICAgICAgICAqIGluc3RydWN0
aW9uLgorICAgICAgICAgKi8KKyAgICAgICAgaWYgKCBvcHRfaWJwYl9jdHh0X3N3aXRjaCApCisg
ICAgICAgICAgICBzcGVjX2N0cmxfbmV3X2d1ZXN0X2NvbnRleHQoKTsKIAogICAgICAgICAvKiBV
cGRhdGUgdGhlIHRvcC1vZi1zdGFjayBibG9jayB3aXRoIHRoZSBuZXcgc3BlY3VsYXRpb24gc2V0
dGluZ3MuICovCiAgICAgICAgIGluZm8tPnNjZiA9Cg==

--=separator--
