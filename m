X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/16/2
Message-ID: <fda07eb9-1952-4557-b1c0-0dca1ad1a2c5@cpansec.org>
Date: Thu, 16 Jul 2026 17:17:35 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13401: XML::Bare versions through 0.53 for Perl will hang in an infinite loop when parsing malformed attributes
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13401                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13401
   Distribution:  XML-Bare
       Versions:  through 0.53

       MetaCPAN:  https://metacpan.org/dist/XML-Bare
       VCS Repo:  https://github.com/nanoscopic/perl-XML-Bare


XML::Bare versions through 0.53 for Perl will hang in an infinite loop
when parsing malformed attributes

Description
-----------
XML::Bare versions through 0.53 for Perl will hang in an infinite loop
when parsing malformed attributes.

The parserc_parse function never advances the attribute-parse state
cursor on certain malformed attribute forms, looping forever.

Nameless attributes such as "<a ='c'>" or unbalanced quotes "<a
b='''''''c'>" can trigger this condition.

Problem types
-------------
- CWE-835 Loop with Unreachable Exit Condition ('Infinite Loop')

Workarounds
-----------
Apply the patch.


References
----------
https://github.com/nanoscopic/perl-XML-Bare/pull/2
https://security.metacpan.org/patches/X/XML-Bare/0.53/CVE-2026-13401-r1.patch



