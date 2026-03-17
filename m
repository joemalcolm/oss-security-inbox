Received: (qmail 19848 invoked by uid 550); 17 Mar 2026 12:05:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19815 invoked from network); 17 Mar 2026 12:05:20 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1w2TAW-00DbXG-0N@xenbits.xenproject.org>
Date: Tue, 17 Mar 2026 12:05:04 +0000
Subject: [oss-security] Xen Security Advisory 480 v3 (CVE-2026-23554) - Use after free of
 paging structures in EPT

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-23554 / XSA-480
                               version 3

              Use after free of paging structures in EPT

UPDATES IN VERSION 3
====================

Public release.

ISSUE DESCRIPTION
=================

The Intel EPT paging code uses an optimization to defer flushing of any cached
EPT state until the p2m lock is dropped, so that multiple modifications done
under the same locked region only issue a single flush.

Freeing of paging structures however is not deferred until the flushing is
done, and can result in freed pages transiently being present in cached state.
Such stale entries can point to memory ranges not owned by the guest, thus
allowing access to unintended memory regions.

IMPACT
======

Privilege escalation, Denial of Service (DoS) affecting the entire host,
and information leaks.

VULNERABLE SYSTEMS
==================

Xen 4.17 and onwards are vulnerable.  Xen 4.16 and older are not vulnerable.

Only x86 Intel systems with EPT support are vulnerable.

Only x86 HVM/PVH guests using HAP can leverage the vulnerability on affected
systems.

MITIGATION
==========

There are no mitigations.

CREDITS
=======

This issue was discovered by Roger Pau Monné of XenServer.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa480.patch           xen-unstable - Xen 4.17.x

$ sha256sum xsa480*
578f8fec3f34656e085419f6376d43987ffd6ed32e067b4024d3c83ce03a5901  xsa480.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmm5Q1MMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZKDgH/jDFwjlPNV0IQor3c5j9D7L++i5dFugypaF5OI+Q
nboD7VEe6y1KexRsPa/a7UAvuabgGdudeS18IS3W34/9TZILZRITo9s3IgEnTfQR
qqFlCTxymFuCn8Iptq8SJh37fG3nc9OJ/v28s+0+X9ERnjjjVcjhwcbQ5gQSpKU0
7fAe+IpsO3YOMGb3fgpjhCWMjh9UTHnKOBmObNeDGZ3sXgh8+FYkt6snRs0bYwW4
IcGpmEEgK+Id6n/0sG07Ntntb02EcCz3Vl8G0OflNQj/XOxHBuXbkFc36K2vpUDp
dGrzGkIznA00Oz2UNlZrSrMWAQtKuHbB9+H2tU+7BNq+ag8=
=RFix
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa480.patch"
Content-Disposition: attachment; filename="xsa480.patch"
Content-Transfer-Encoding: base64

RnJvbSA0NWY2ODY2ZTM0YjdlOWVlOGI2YWMxNmQ2NDZhMmU5NTRjOTdlNDhlIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBSb2dlciBQYXUgTW9ubmUgPHJvZ2VyLnBhdUBjaXRyaXguY29t
PgpEYXRlOiBUdWUsIDE3IEZlYiAyMDI2IDA5OjMzOjQzICswMTAwClN1YmplY3Q6IFtQQVRDSF0g
eDg2L3AybTogaXNzdWUgYSBzeW5jIGZsdXNoIGJlZm9yZSBmcmVlaW5nIHBhZ2luZyBwYWdlcwpN
SU1FLVZlcnNpb246IDEuMApDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRGLTgK
Q29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdAoKSW4gdGhlIEVQVCBpbXBsZW1lbnRhdGlv
biwgdGhlIGRlZmVyIGZsdXNoaW5nIGxvZ2ljIGlzIHVzZWQKdW5jb25kaXRpb25hbGx5LCBhbmQg
dGhhdCB3b3VsZCBsZWFkIHRvIHBhZ2luZyBtZW1vcnkgYmVpbmcgcmV0dXJuZWQgdG8gdGhlCnBh
Z2luZyBwb29sIGJlZm9yZSBpdHMgcmVmZXJlbmNlcyBoYWQgYmVlbiBmbHVzaGVkLgoKSXNzdWUg
YW55IHBlbmRpbmcgZmx1c2hlcyBiZWZvcmUgZnJlZWluZyB0aGUgcGFnaW5nIG1lbW9yeSBiYWNr
IHRvIHRoZQpwb29sLgoKTm90ZSBBTUQgKE5QVCkgYW5kIFNoYWRvdyBwYWdpbmcgYXJlIG5vdCBh
ZmZlY3RlZCwgYXMgdGhleSBkb24ndCBpbXBsZW1lbnQKdGhlIGRlZmVycmVkIGZsdXNoaW5nIGxv
Z2ljLgoKVGhpcyBpcyBYU0EtNDgwIC8gQ1ZFLTIwMjYtMjM1NTQKCkZpeGVzOiA0YTU5ZTZiYjNh
OTYgKCJ4ODYvRVBUOiBzcXVhc2ggbWVhbmluZ2xlc3MgVExCIGZsdXNoIikKU2lnbmVkLW9mZi1i
eTogUm9nZXIgUGF1IE1vbm7DqSA8cm9nZXIucGF1QGNpdHJpeC5jb20+ClJldmlld2VkLWJ5OiBK
YW4gQmV1bGljaCA8amJldWxpY2hAc3VzZS5jb20+Ci0tLQogeGVuL2FyY2gveDg2L21tL3AybS5j
IHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L3hlbi9hcmNoL3g4Ni9tbS9wMm0uYyBiL3hlbi9hcmNoL3g4Ni9tbS9wMm0uYwppbmRleCBlOTE1
ZGEyNmE4MzIuLmZkZGVjZGY5NzhlYyAxMDA2NDQKLS0tIGEveGVuL2FyY2gveDg2L21tL3AybS5j
CisrKyBiL3hlbi9hcmNoL3g4Ni9tbS9wMm0uYwpAQCAtNDc5LDYgKzQ3OSwxMSBAQCB2b2lkIHAy
bV9mcmVlX3B0cChzdHJ1Y3QgcDJtX2RvbWFpbiAqcDJtLCBzdHJ1Y3QgcGFnZV9pbmZvICpwZykK
ICAgICBBU1NFUlQocDJtLT5kb21haW4pOwogICAgIEFTU0VSVChwMm0tPmRvbWFpbi0+YXJjaC5w
YWdpbmcuZnJlZV9wYWdlKTsKIAorICAgIC8qCisgICAgICogSXNzdWUgYW55IHBlbmRpbmcgZmx1
c2ggaGVyZSwgaW4gY2FzZSBpdCB3YXMgZGVmZXJyZWQgYmVmb3JlLiAgVGhlIHBhZ2UKKyAgICAg
KiB3aWxsIGJlIHJldHVybmVkIHRvIHRoZSBwYWdpbmcgcG9vbCBub3cuCisgICAgICovCisgICAg
cDJtX3RsYl9mbHVzaF9zeW5jKHAybSk7CiAgICAgcGFnZV9saXN0X2RlbChwZywgJnAybS0+cGFn
ZXMpOwogICAgIHAybS0+ZG9tYWluLT5hcmNoLnBhZ2luZy5mcmVlX3BhZ2UocDJtLT5kb21haW4s
IHBnKTsKIAotLSAKMi41MS4wCgo=

--=separator--
