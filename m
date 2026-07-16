X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/16/1
Message-ID: <d7b80d99-7d9c-4506-a55a-95472f13b258@cpansec.org>
Date: Thu, 16 Jul 2026 17:16:51 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-57074: XML::Bare versions through 0.53 for Perl have an unbounded character lookahead
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-57074                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-57074
   Distribution:  XML-Bare
       Versions:  through 0.53

       MetaCPAN:  https://metacpan.org/dist/XML-Bare
       VCS Repo:  https://github.com/nanoscopic/perl-XML-Bare


XML::Bare versions through 0.53 for Perl have an unbounded character
lookahead

Description
-----------
XML::Bare versions through 0.53 for Perl have an unbounded character
lookahead.

The parserc_parse function attempts to check for multicharacter strings
such as "<![CDATA" or element terminators such as ">" without checking
that the offsets are within the buffer.

Truncated strings such as "<a/" can trigger an out-of-bounds read.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Workarounds
-----------
Apply the patch.


References
----------
https://github.com/nanoscopic/perl-XML-Bare/pull/1
https://security.metacpan.org/patches/X/XML-Bare/0.53/CVE-2026-57074-r1.patch


