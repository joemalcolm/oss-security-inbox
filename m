X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/04/5
Message-ID: <72d70211-47ee-4c9a-8d51-8fcfbf381c35@cpansec.org>
Date: Wed, 4 Nov 2026 14:31:58 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-114627: Web::Simple versions before 0.036 for Perl do not escape values interpolated into double-quoted strings in HTML::Tags output
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-114627                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-114627

   Distribution:  Web-Simple
       Versions:  before 0.036
       MetaCPAN:  https://metacpan.org/dist/Web-Simple
       VCS Repo:  https://github.com/p5sagit/Web-Simple


Web::Simple versions before 0.036 for Perl do not escape values
interpolated into double-quoted strings in HTML::Tags output

Description
-----------
Web::Simple versions before 0.036 for Perl do not escape values
interpolated into double-quoted strings in HTML::Tags output.

Under use HTML::Tags or use XML::Tags, a double-quoted string literal
becomes a StringThing object that holds each interpolated value as a
separate part. The escaping step passes such objects through, and
stringify joins their interpolated parts as is. A value passed on its
own, as in <p>, $value, </p>, is entity-escaped, but the same value in
"Hello $value" is not.

An attacker who controls a value that an application interpolates into
a double-quoted string can inject script into the generated page.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
   ('Cross-site Scripting')

Solutions
---------
Upgrade to Web-Simple 0.036 or later.

References
----------
https://github.com/p5sagit/Web-Simple/commit/01e575827fdd9ba3a08063fd414b1de465380015.patch
https://metacpan.org/release/ETHER/Web-Simple-0.036/changes

