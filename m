X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/16/3
Message-ID: <d4278f25-8ecd-4c9e-859c-d8d2989c85a1@cpansec.org>
Date: Thu, 16 Jul 2026 17:18:16 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-57073: HTML::Bare versions through 0.04 for Perl have an unbounded character lookahead
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-57073                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-57073
   Distribution:  HTML-Bare
       Versions:  through 0.04

       MetaCPAN:  https://metacpan.org/dist/HTML-Bare
       VCS Repo:  https://github.com/nanoscopic/perl-HTML-Bare


HTML::Bare versions through 0.04 for Perl have an unbounded character
lookahead

Description
-----------
HTML::Bare versions through 0.04 for Perl have an unbounded character
lookahead.

The parserc_parse function attempts to check for multicharacter strings
such as "<![CDATA" or element terminators such as ">" without checking
that the offsets are within the buffer.

Truncated strings such as "<a/" can trigger an out-of-bounds read.

Note that the latest version available on CPAN is version 0.02. Newer
versions are available on the git repository.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Workarounds
-----------
Apply the patch to version 0.02 (from CPAN) or version 0.04 (from the
git repository).


References
----------
https://github.com/nanoscopic/perl-HTML-Bare/pull/2
https://security.metacpan.org/patches/H/HTML-Bare/0.02/CVE-2026-57073-r1.patch
https://security.metacpan.org/patches/H/HTML-Bare/0.04/CVE-2026-57073-r2.patch



