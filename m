X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/12/5
Message-ID: <7a729d9a-55c7-48dd-8cd0-5e0d258c6766@cpansec.org>
Date: Fri, 12 Jun 2026 16:00:53 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-9641: Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default algorithm and number of iterations
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-9641                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-9641
   Distribution:  Crypt-PBKDF2
       Versions:  before 0.261630

       MetaCPAN:  https://metacpan.org/dist/Crypt-PBKDF2
       VCS Repo:  https://github.com/arodland/Crypt-PBKDF2


Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default
algorithm and number of iterations

Description
-----------
Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default
algorithm and number of iterations.

The default algorithm is HMAC-SHA1, which should only be used for
legacy systems.

These versions default to using 1000 iterations.

Depending on the chosen algorithm, 220,000 to 1,400,000 iterations
should be used.

Problem types
-------------
- CWE-916 Use of Password Hash With Insufficient Computational Effort

Workarounds
-----------
Change the default algorithm to something stronger, such as "HMACSHA2",
and the output_len accordingly (32 for SHA256).

The number of iterations should also be increased (600,000 for SHA256,
for example).


Solutions
---------
Upgrade to version 0.261630 or later.


References
----------
https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html#pbkdf2
https://metacpan.org/release/ARODLAND/Crypt-PBKDF2-0.261630/changes



