Received: (qmail 28593 invoked by uid 550); 28 Apr 2026 12:01:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28565 invoked from network); 28 Apr 2026 12:01:51 -0000
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.510 (Entity 5.510)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1wHh87-006n03-3A@xenbits.xenproject.org>
Date: Tue, 28 Apr 2026 12:01:31 +0000
Subject: [oss-security] Xen Security Advisory 483 v2 (CVE-2026-23556) - oxenstored keeps
 quota related use counts across domain destruction

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2026-23556 / XSA-483
                               version 2

  oxenstored keeps quota related use counts across domain destruction

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

When oxenstored is tearing a domain down, the node data is cleaned up
but the usage counts are leaked.

When the domain ID is eventually reused, the new domain can create fewer
nodes before beeing deemed to be over quota.

IMPACT
======

Over an extended period of time, new domains will be able to create
fewer and fewer nodes in xenstored, until they are eventually unable to
operate at all.

A buggy or malicious domain can speed this process up by deliberately
hitting it's quota, and then rebooting.

VULNERABLE SYSTEMS
==================

All versions of Xen containing the XSA-419 fixes are vulnerable.

Only systems configured to use oxenstored (Ocaml xenstored) are
vulnerable.  Systems configured to xenstored (C xenstored) are not
vulnerable.

MITIGATION
==========

Performing a xenstore live update mitigates the issue.

CREDITS
=======

This issue was discovered by Andrii Sultanov of Vates.

RESOLUTION
==========

Applying the appropriate attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa483.patch           xen-unstable - Xen 4.18.x
xsa483-4.17.patch      Xen 4.17.x
xsa483-xapi.patch      XAPI oxenstored

$ sha256sum xsa483*
4be3acc57dcd5e2719cab165729879757a1915c33b848a37623dd4a5f1157746  xsa483.patch
389b0411d855894adff6f640dcbd3358adc6d4cb9ddeedbcb9cb2c345af67d51  xsa483-4.17.patch
ec191a1e158eddd22bfbd764f26f6b6a0b75b9fe0a223dc66da1c4a16ef73122  xsa483-xapi.patch
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

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmnwoPIMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZM8EH/iXC6hLQHAVLeRCfUEZ1ncM7029KPyRxLIOlthCS
cAyMNjyVSckGMRgKvYWCpl/fN1v/2yv3olIIR9wtncaq8Q+iMkwOsw1P46fmsh3J
40pK6PnaP1/kRrua1ZANlUc8YUhWG8fE2ADPHCIo57qbO1fXVUEWARdgU5gYIkF4
Kz+dvkpEEiTdRe24zqfn9Bv4lDsihfq3B9zecEuqMj3L88FrMP9VfBJZMbx9N/Pb
TUE/FltETdWqMLeIyb7r3P5OPrLRYk6ebgrX96Pb3f0d1/OC8E4Me3RNvGoArmOI
f8R0M/zly0lmoJspJFtI2C7BdUIKB/59z/Sz2YC706AJBO0=
=mbDG
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa483.patch"
Content-Disposition: attachment; filename="xsa483.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmlpIFN1bHRhbm92IDxhbmRyaXkuc3VsdGFub3ZAdmF0ZXMudGVjaD4KU3ViamVj
dDogdG9vbHMvb3hlbnN0b3JlZDogUmVzZXQgcXVvdGEgd2hlbiByZXNldHRpbmcgcGVybWlzc2lv
bnMKClRoZSBxdW90YSBvYmplY3QgY29udGFpbnMgYm90aCBsaW1pdHMgYW5kIHRoZSBjdXJyZW50
IG5vZGUgdXNhZ2UgY291bnRzLgoKV2hlbiBhIGRvbWFpbiBpcyB0b3JuIGRvd24sIHRoZSBub2Rl
IGRhdGEgaXRzZWxmIGlzIGNsZWFuZWQgdXAgYnV0IHRoZSBub2RlCnVzYWdlIGNvdW50cyBhcmUg
bm90LiAgQSBsYXRlciBkb21haW4gcmV1c2luZyB0aGUgc2FtZSBkb21pZCBjYW4gY3JlYXRlIGZl
d2VyCm5vZGVzIGJlZm9yZSBiZWluZyBkZWVtZWQgdG8gYmUgb3ZlciBxdW90YS4KClJlc2V0IHRo
ZSBjb3VudCB3aGVuIHRoZSBub2RlIHBlcm1pc3Npb25zIGFyZSBjbGVhbmVkIHVwLgoKVGhpcyBp
cyBYU0EtNDgzIC8gQ1ZFLTIwMjYtMjM1NTYuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyaWkgU3VsdGFu
b3YgPGFuZHJpeS5zdWx0YW5vdkB2YXRlcy50ZWNoPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgQ29v
cGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgoKZGlmZiAtLWdpdCBhL3Rvb2xzL29jYW1s
L3hlbnN0b3JlZC9zdG9yZS5tbCBiL3Rvb2xzL29jYW1sL3hlbnN0b3JlZC9zdG9yZS5tbAppbmRl
eCA5YjhkZDI4MTJkZjAuLmFhOTIwNGVhZDNlYyAxMDA2NDQKLS0tIGEvdG9vbHMvb2NhbWwveGVu
c3RvcmVkL3N0b3JlLm1sCisrKyBiL3Rvb2xzL29jYW1sL3hlbnN0b3JlZC9zdG9yZS5tbApAQCAt
NDY1LDcgKzQ2NSw4IEBAIGxldCByZXNldF9wZXJtaXNzaW9ucyBzdG9yZSBkb21pZCA9CiAgICAg
ICAgIGlmIHBlcm1zIDw+IG5vZGUucGVybXMgdGhlbgogICAgICAgICAgIExvZ2dpbmcuZGVidWcg
InN0b3JlfG5vZGUiICJDaGFuZ2VkIHBlcm1pc3Npb25zIGZvciBub2RlICVzIiAoTm9kZS5nZXRf
bmFtZSBub2RlKTsKICAgICAgICAgU29tZSB7IG5vZGUgd2l0aCBOb2RlLnBlcm1zIH0KLSAgICAp
IHN0b3JlLnJvb3QKKyAgICApIHN0b3JlLnJvb3Q7CisgIHN0b3JlLnF1b3RhIDwtIFF1b3RhLmRl
bCBzdG9yZS5xdW90YSBkb21pZAogCiB0eXBlIG9wcyA9IHsKICAgc3RvcmU6IHQ7Cg==

--=separator
Content-Type: application/octet-stream; name="xsa483-4.17.patch"
Content-Disposition: attachment; filename="xsa483-4.17.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmlpIFN1bHRhbm92IDxhbmRyaXkuc3VsdGFub3ZAdmF0ZXMudGVjaD4KU3ViamVj
dDogdG9vbHMvb3hlbnN0b3JlZDogUmVzZXQgcXVvdGEgd2hlbiByZXNldHRpbmcgcGVybWlzc2lv
bnMKClRoZSBxdW90YSBvYmplY3QgY29udGFpbnMgYm90aCBsaW1pdHMgYW5kIHRoZSBjdXJyZW50
IG5vZGUgdXNhZ2UgY291bnRzLgoKV2hlbiBhIGRvbWFpbiBpcyB0b3JuIGRvd24sIHRoZSBub2Rl
IGRhdGEgaXRzZWxmIGlzIGNsZWFuZWQgdXAgYnV0IHRoZSBub2RlCnVzYWdlIGNvdW50cyBhcmUg
bm90LiAgQSBsYXRlciBkb21haW4gcmV1c2luZyB0aGUgc2FtZSBkb21pZCBjYW4gY3JlYXRlIGZl
d2VyCm5vZGVzIGJlZm9yZSBiZWluZyBkZWVtZWQgdG8gYmUgb3ZlciBxdW90YS4KClJlc2V0IHRo
ZSBjb3VudCB3aGVuIHRoZSBub2RlIHBlcm1pc3Npb25zIGFyZSBjbGVhbmVkIHVwLgoKVGhpcyBp
cyBYU0EtNDgzIC8gQ1ZFLTIwMjYtMjM1NTYuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyaWkgU3VsdGFu
b3YgPGFuZHJpeS5zdWx0YW5vdkB2YXRlcy50ZWNoPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgQ29v
cGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgoKZGlmZiAtLWdpdCBhL3Rvb2xzL29jYW1s
L3hlbnN0b3JlZC9zdG9yZS5tbCBiL3Rvb2xzL29jYW1sL3hlbnN0b3JlZC9zdG9yZS5tbAppbmRl
eCA1ZGQ5NjVkYjE1MWYuLmMwOTlhMmVhZTY4YSAxMDA2NDQKLS0tIGEvdG9vbHMvb2NhbWwveGVu
c3RvcmVkL3N0b3JlLm1sCisrKyBiL3Rvb2xzL29jYW1sL3hlbnN0b3JlZC9zdG9yZS5tbApAQCAt
NDY1LDcgKzQ2NSw4IEBAIGxldCByZXNldF9wZXJtaXNzaW9ucyBzdG9yZSBkb21pZCA9CiAJCQlp
ZiBwZXJtcyA8PiBub2RlLnBlcm1zIHRoZW4KIAkJCQlMb2dnaW5nLmRlYnVnICJzdG9yZXxub2Rl
IiAiQ2hhbmdlZCBwZXJtaXNzaW9ucyBmb3Igbm9kZSAlcyIgKE5vZGUuZ2V0X25hbWUgbm9kZSk7
CiAJCQlTb21lIHsgbm9kZSB3aXRoIE5vZGUucGVybXMgfQotCSkgc3RvcmUucm9vdAorCSkgc3Rv
cmUucm9vdDsKKwlzdG9yZS5xdW90YSA8LSBRdW90YS5kZWwgc3RvcmUucXVvdGEgZG9taWQKIAog
dHlwZSBvcHMgPSB7CiAJc3RvcmU6IHQ7Cg==

--=separator
Content-Type: application/octet-stream; name="xsa483-xapi.patch"
Content-Disposition: attachment; filename="xsa483-xapi.patch"
Content-Transfer-Encoding: base64

RnJvbTogQW5kcmlpIFN1bHRhbm92IDxhbmRyaXkuc3VsdGFub3ZAdmF0ZXMudGVjaD4KU3ViamVj
dDogdG9vbHMvb3hlbnN0b3JlZDogUmVzZXQgcXVvdGEgd2hlbiByZXNldHRpbmcgcGVybWlzc2lv
bnMKClRoZSBxdW90YSBvYmplY3QgY29udGFpbnMgYm90aCBsaW1pdHMgYW5kIHRoZSBjdXJyZW50
IG5vZGUgdXNhZ2UgY291bnRzLgoKV2hlbiBhIGRvbWFpbiBpcyB0b3JuIGRvd24sIHRoZSBub2Rl
IGRhdGEgaXRzZWxmIGlzIGNsZWFuZWQgdXAgYnV0IHRoZSBub2RlCnVzYWdlIGNvdW50cyBhcmUg
bm90LiAgQSBsYXRlciBkb21haW4gcmV1c2luZyB0aGUgc2FtZSBkb21pZCBjYW4gY3JlYXRlIGZl
d2VyCm5vZGVzIGJlZm9yZSBiZWluZyBkZWVtZWQgdG8gYmUgb3ZlciBxdW90YS4KClJlc2V0IHRo
ZSBjb3VudCB3aGVuIHRoZSBub2RlIHBlcm1pc3Npb25zIGFyZSBjbGVhbmVkIHVwLgoKVGhpcyBp
cyBYU0EtNDgzIC8gQ1ZFLTIwMjYtMjM1NTYuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyaWkgU3VsdGFu
b3YgPGFuZHJpeS5zdWx0YW5vdkB2YXRlcy50ZWNoPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgQ29v
cGVyIDxhbmRyZXcuY29vcGVyM0BjaXRyaXguY29tPgoKZGlmZiAtLWdpdCBhL294ZW5zdG9yZWQv
c3RvcmUubWwgYi9veGVuc3RvcmVkL3N0b3JlLm1sCmluZGV4IDNmMzkwMTU1YWJhYy4uNTFkZjgx
ZTI0ZDY1IDEwMDY0NAotLS0gYS9veGVuc3RvcmVkL3N0b3JlLm1sCisrKyBiL294ZW5zdG9yZWQv
c3RvcmUubWwKQEAgLTUxMCw3ICs1MTAsOCBAQCBsZXQgcmVzZXRfcGVybWlzc2lvbnMgc3RvcmUg
ZG9taWQgPQogICAgICAgICAgICAgICAgIChOb2RlLmdldF9uYW1lIG5vZGUpIDsKICAgICAgICAg
ICAgIFNvbWUge25vZGUgd2l0aCBOb2RlLnBlcm1zfQogICAgICAgKQotICAgICAgc3RvcmUucm9v
dAorICAgICAgc3RvcmUucm9vdCA7CisgIHN0b3JlLnF1b3RhIDwtIFF1b3RhLmRlbCBzdG9yZS5x
dW90YSBkb21pZAogCiB0eXBlIG9wcyA9IHsKICAgICBzdG9yZTogdAo=

--=separator--
