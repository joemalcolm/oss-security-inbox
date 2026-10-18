X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/18/3
Message-ID: <30b3dfe7-3fc5-438f-95c1-08a25235af04@cpansec.org>
Date: Sun, 18 Oct 2026 12:33:35 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-78497: JQ::Lite versions before 2.51 for Perl execute Perl code embedded in a query's regular expression by compiling it with string eval
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-78497                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78497

   Distribution:  JQ-Lite
       Versions:  before 2.51
       MetaCPAN: https://metacpan.org/dist/JQ-Lite
       VCS Repo: https://github.com/kawamurashingo/JQ-Lite


JQ::Lite versions before 2.51 for Perl execute Perl code embedded in a
query's regular expression by compiling it with string eval

Description
-----------
JQ::Lite versions before 2.51 for Perl execute Perl code embedded in a
query's regular expression by compiling it with string eval.

The pattern given to test(), match(), or the match and =~ conditions of
select() is placed in a `qr'...'` literal and compiled as source text,
so a `(?{ ... })` code block in it runs without `use re 'eval'`. Single
quotes in the pattern are escaped, but a code block runs in place and
needs none.

An attacker who supplies a query, or text that an application inserts
into the pattern of one, can execute arbitrary Perl code in the calling
process.

Problem types
-------------
- CWE-95 Improper Neutralization of Directives in Dynamically Evaluated
   Code ('Eval Injection')

Solutions
---------
Upgrade to JQ-Lite 2.51 or later.

References
----------
https://github.com/kawamurashingo/JQ-Lite/commit/c461721ae3d5a90d6d94dbb234c1b8dfee5c1769.patch
https://metacpan.org/release/SHINGO/JQ-Lite-2.51/changes



