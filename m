X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/16/4
Message-ID: <6491df66-067c-4e47-b9ff-52279d3d745a@cpansec.org>
Date: Thu, 16 Jul 2026 17:18:54 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13397: HTML::Bare versions through 0.04 for Perl will hang in an infinite loop when parsing malformed attributes
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13397                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13397
   Distribution:  HTML-Bare
       Versions:  through 0.04

       MetaCPAN:  https://metacpan.org/dist/HTML-Bare
       VCS Repo:  https://github.com/nanoscopic/perl-HTML-Bare


HTML::Bare versions through 0.04 for Perl will hang in an infinite loop
when parsing malformed attributes

Description
-----------
HTML::Bare versions through 0.04 for Perl will hang in an infinite loop
when parsing malformed attributes.

The parserc_parse function never advances the attribute-parse state
cursor on certain malformed attribute forms, looping forever.

Nameless attributes such as "<a ='c'>" or unbalanced quotes "<a
b='''''''c'>" can trigger this condition.

Note that the latest version available on CPAN is version 0.02. Newer
versions are available on the git repository.

Problem types
-------------
- CWE-835 Loop with Unreachable Exit Condition ('Infinite Loop')

Workarounds
-----------
Apply the patch.


References
----------
https://github.com/nanoscopic/perl-HTML-Bare/pull/1
https://security.metacpan.org/patches/H/HTML-Bare/0.02/CVE-2026-13397-r1.patch



