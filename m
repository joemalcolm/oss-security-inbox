X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/22/2
Message-ID: <73b6423d-7b32-435d-9501-e6db2cc15102@cpansec.org>
Date: Sat, 22 Aug 2026 00:59:05 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-77781: Tie::Hash::Regex versions before 2.0.0 for Perl will throw an exception on unparseable lookup keys
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-77781                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-77781
   Distribution:  Tie-Hash-Regex
       Versions:  before 2.0.0

       MetaCPAN:  https://metacpan.org/dist/Tie-Hash-Regex
       VCS Repo:  https://github.com/davorg-cpan/tie-hash-regex


Tie::Hash::Regex versions before 2.0.0 for Perl will throw an exception
on unparseable lookup keys

Description
-----------
Tie::Hash::Regex versions before 2.0.0 for Perl will throw an exception
on unparseable lookup keys.

The FETCH, EXISTS and DELETE methods throw an exception when on
malformed regular expressions.

Each method falls back to a regex match when the key is not already
stored in the hash, compiling the caller's key with a bare qr// and no
eval guard. A key that is not a valid regular expression pattern, such
as a single unmatched bracket, dies.

An application that looks up externally supplied strings in a tied hash
will die on an invalid key.

Problem types
-------------
- CWE-248 Uncaught Exception

Workarounds
-----------
For deployments that cannot be upgraded, ensure that calls to check the
existence of keys, fetch values from keys or delete keys are wrapped in
an eval block.

Solutions
---------
Upgrade to Tie::Hash::Regex version 2.0.0 or later.

References
----------
https://metacpan.org/release/DAVECROSS/Tie-Hash-Regex-2.0.0/source/Changes
https://github.com/davorg-cpan/tie-hash-regex/commit/4239732cb76233543e2ded8ff5e0f238af152e0c.patch



