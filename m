X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/17
Message-ID: <c440a5af-5fd3-4475-9cb6-93cae38449c7@cpansec.org>
Date: Tue, 10 Nov 2026 17:42:54 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-120212: Web::Simple versions before 0.037 for Perl do not escape single quotes in HTML::Tags output
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-120212                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-120212

   Distribution:  Web-Simple
       Versions:  before 0.037
       MetaCPAN:  https://metacpan.org/dist/Web-Simple
       VCS Repo:  https://github.com/p5sagit/Web-Simple


Web::Simple versions before 0.037 for Perl do not escape single quotes
in HTML::Tags output

Description
-----------
Web::Simple versions before 0.037 for Perl do not escape single quotes
in HTML::Tags output.

HTML::Tags and XML::Tags escape a plain string value by replacing only
&, ", < and > with entities. A value interpolated into a single-quoted
attribute, as in <a href='$value'>, can therefore close the attribute
and add new ones, such as an event handler. Double-quoted attributes
are not affected.

An attacker who controls a value that an application interpolates into
a single-quoted attribute can inject script into the generated page.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
   ('Cross-site Scripting')

Workarounds
-----------
Use double-quoted attributes for values that may contain untrusted
data.

Solutions
---------
Upgrade to Web-Simple 0.037 or later.

References
----------
https://github.com/p5sagit/Web-Simple/commit/de0b7743f7015ec2c1c678dfdaa4bc6f5ccfb640.patch
https://metacpan.org/release/ETHER/Web-Simple-0.037/changes
https://www.cve.org/CVERecord?id=CVE-2026-5090

