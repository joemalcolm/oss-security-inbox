X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/5
Message-Id: <E4CFC743-A21C-448F-8141-5E9FF5E1F22B@stig.io>
Date: Mon, 13 Jul 2026 17:43:01 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13221: Perl versions through 5.43.9 produce silently incorrect regular expression matches when an alternation of more than 65535 fixed string branches is compiled into a trie in Perl_study_chunk
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-13221                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-13221
  Distribution:  perl
      Versions:  through 5.43.9

      MetaCPAN:  https://metacpan.org/dist/perl
      VCS Repo:  https://github.com/Perl/perl5


Perl versions through 5.43.9 produce silently incorrect regular
expression matches when an alternation of more than 65535 fixed string
branches is compiled into a trie in Perl_study_chunk

Description
-----------
Perl versions through 5.43.9 produce silently incorrect regular
expression matches when an alternation of more than 65535 fixed string
branches is compiled into a trie in Perl_study_chunk.

When such branches are combined into a trie, the delta between the
first branch and the shared tail is stored in a 16-bit field. A branch
count above 65535 overflows the field, and the trie's match decision
table is truncated with no warning or error.

A pattern of this shape produces false positive matches (matching
strings it should not) and false negative matches (failing to match
strings it should). When such a pattern gates an access or filtering
decision, the result is wrong.

Problem types
-------------
- CWE-190 Integer Overflow or Wraparound

Solutions
---------
Apply the upstream patch. The fix is included in the Perl 5.43.10
development release.


References
----------
https://github.com/Perl/perl5/commit/03f74bbbd3a68350d926ee93d56ee4808c28c4c7.patch
https://github.com/Perl/perl5/issues/23388


