X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/23/5
Message-ID: <222967a7-b085-4036-a854-7388ffd12d12@cpansec.org>
Date: Sun, 23 Aug 2026 20:55:20 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-78183: DBD::Pg version 3.21.0 for Perl has a heap out-of-bounds write in quote_float
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-78183                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78183
   Distribution:  DBD-Pg
       Versions:  3.21.0

       MetaCPAN:  https://metacpan.org/dist/DBD-Pg
       VCS Repo:  https://github.com/bucardo/dbdpg


DBD::Pg version 3.21.0 for Perl has a heap out-of-bounds write in
quote_float

Description
-----------
DBD::Pg version 3.21.0 for Perl has a heap out-of-bounds write in
quote_float.

quote_float() allocates the length of the string + 1, which is the size
of the bare numeric symbol plus NULL.  But for special literals NaN,
Inf, +Inf, -Inf, Infinity, +Infinity, -Infinity it emits the literal
surrounded by quotes plus NULL, which is length + 3 bytes. Every
recognised literal (case-insensitive) overflows by 2 bytes, a single
quote and a NULL.

This can be reached by the $dbh->quote method, for example

     $dbh->quote( "Infinity", DBI::SQL_NUMERIC ).

This regression was introduced in 3.21.0 by the quote.c rewrite.

Problem types
-------------
- CWE-787 Out-of-bounds Write

Solutions
---------
Upgrade to version 3.21.1 or later.

References
----------
https://github.com/bucardo/dbdpg/security/advisories/GHSA-785p-fw3v-r822
https://metacpan.org/release/TURNSTEP/DBD-Pg-3.21.1/source/Changes
https://github.com/bucardo/dbdpg/commit/6d6f47ed2403cda55c82b1bad56e388ba7390065.patch
https://github.com/bucardo/dbdpg/commit/adacf1de872326a465e13f9e4281a674ebcd227e

