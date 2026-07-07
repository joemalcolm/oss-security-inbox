X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/18
Message-ID: <4e6307d9-6dca-4924-aacd-a27f3b34070a@cpansec.org>
Date: Tue, 7 Jul 2026 23:13:16 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-14895: String::Util versions before 1.36 for Perl are susceptible to a regular expression denial of service
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-14895                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-14895
   Distribution:  String-Util
       Versions:  before 1.36

       MetaCPAN:  https://metacpan.org/dist/String-Util
       VCS Repo:  https://github.com/scottchiefbaker/String-Util


String::Util versions before 1.36 for Perl are susceptible to a regular
expression denial of service

Description
-----------
String::Util versions before 1.36 for Perl are susceptible to a regular
expression denial of service.

The trim and rtrim functions stripped trailing whitespace with
s/\s*$//u. Because \s* matches greedily and the $ anchor fails whenever
a non-whitespace character follows the whitespace, the regex engine
retries the match at each offset of a long whitespace run, producing
quadratic backtracking. The fix replaces \s*$ with \s+$.

Any caller that passes untrusted input to trim or rtrim can trigger CPU
exhaustion with a string containing a long run of whitespace.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Workarounds
-----------
For deployments that cannot upgrade, enforce a maximum length on
strings before passing them to the trim and rtrim functions.

Note that the HTML form field maxlength attribute is only enforced
client-side.


Solutions
---------
Upgrade to version 1.36 or later.


References
----------
https://github.com/scottchiefbaker/String-Util/commit/f8150867aaeb8f57c59601aefb2193f2caed8745.patch
https://metacpan.org/release/BAKERSCOT/String-Util-1.36/diff/BAKERSCOT/String-Util-1.35#lib/String/Util.pm
https://github.com/scottchiefbaker/String-Util/releases



