X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/1
Message-ID: <af03595e2ef2fa6c4878240530e150c9@cpansec.org>
Date: Sat, 04 Jul 2026 22:33:26 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-14570: Crypt::DSA versions before 1.22 for Perl draw the DSA signing nonce and private key from a biased random generator, leading to private-key recovery
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-14570                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-14570
   Distribution:  Crypt-DSA
       Versions:  before 1.22

       MetaCPAN:  https://metacpan.org/dist/Crypt-DSA
       VCS Repo:  https://github.com/perl-Crypt-OpenPGP/Crypt-DSA


Crypt::DSA versions before 1.22 for Perl draw the DSA signing nonce and
private key from a biased random generator, leading to private-key
recovery

Description
-----------
Crypt::DSA versions before 1.22 for Perl draw the DSA signing nonce and
private key from a biased random generator, leading to private-key
recovery.

"Crypt::DSA::Util::makerandom forces the high bit of every value it
returns to obtain an exactly N-bit integer for prime search. The
signing nonce and the private key are drawn from makerandom. Because
the high bit is always set, the result is not uniform: its top bit is
fixed, producing insecure values."

An attacker who collects a modest number of signatures under an
affected key, together with the public key, can recover the private key
with a lattice attack.

Keys used to sign with an affected version should be considered
compromised and new keys should be generated.

Problem types
-------------
- CWE-330 Use of Insufficiently Random Values

Solutions
---------
Upgrade to version 1.22 or later, which draws the nonce and private key
uniformly via rejection sampling (Crypt::DSA::Util::randombelow) with
no forced high bit.

Revoke and regenerate any keys used to sign with an affected version.

Crypt::DSA was deprecated in version 1.20. You should migrate to
another solution.


References
----------
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.21/source/lib/Crypt/DSA/Util.pm#L56
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.22/diff/TIMLEGGE/Crypt-DSA-1.21#lib/Crypt/DSA/Util.pm
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.22/changes


