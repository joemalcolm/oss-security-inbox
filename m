X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/8
Message-Id: <4ABE3BCC-2C43-4CFA-9814-0EEC59C74780@stig.io>
Date: Thu, 13 Aug 2026 17:54:02 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-19487: Perl versions from 5.9.4 before 5.41.9 produce incorrect regular expression match results when a stale failure flag ends the Aho-Corasick prescan early in S_find_byclass
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-19487                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-19487
  Distribution:  perl
      Versions:  from 5.9.4 before 5.41.9

      MetaCPAN:  https://metacpan.org/dist/perl
      VCS Repo:  https://github.com/Perl/perl5


Perl versions from 5.9.4 before 5.41.9 produce incorrect regular
expression match results when a stale failure flag ends the
Aho-Corasick prescan early in S_find_byclass

Description
-----------
Perl versions from 5.9.4 before 5.41.9 produce incorrect regular
expression match results when a stale failure flag ends the
Aho-Corasick prescan early in S_find_byclass.

The prescan walks the subject for positions where the full pattern
could match, and the engine tries it from the leftmost one recorded. A
failing transition sets the failed flag, and a later successful
transition does not clear it, so the prescan reads the stale flag as a
failure and stops before it can record a candidate that starts earlier.
It takes a subject where one candidate is recorded and a later
character then forces a fallback through a fail link that succeeds.

Example:

  "ABCDE" =~ m/ABCF|BCDE|C/;    # matches C at offset 2, not BCDE
  "ABCDE" =~ m/ABCF|BCDE|C(G)/; # no match, BCDE missed

An alternation like this can miss input it should match, or match it on
the wrong branch, so an access or filtering decision made from the
result can be wrong.

Problem types
-------------
- CWE-670 Always-Incorrect Control Flow Implementation

Solutions
---------
Upgrade to Perl 5.42.0 or later, or apply the upstream patch.

References
----------
https://github.com/Perl/perl5/commit/1a21abacaf6f684928bae8baaa153733c8c238eb.patch
https://github.com/Perl/perl5/issues/22892


