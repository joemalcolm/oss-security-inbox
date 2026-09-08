X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/18
Message-ID: <79ba6421-f16d-4358-9a8a-ea76a5194885@cpansec.org>
Date: Tue, 8 Sep 2026 21:14:41 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-85630: HTML::FormHandler versions before 0.410002 for Perl render field attributes into HTML without escaping using the process_attrs method
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-85630                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-85630
   Distribution:  HTML-FormHandler
       Versions:  before 0.410002

       MetaCPAN:  https://metacpan.org/dist/HTML-FormHandler
       VCS Repo:  https://github.com/gshank/html-formhandler


HTML::FormHandler versions before 0.410002 for Perl render field
attributes into HTML without escaping using the process_attrs method

Description
-----------
HTML::FormHandler versions before 0.410002 for Perl render field
attributes into HTML without escaping using the process_attrs method.

Any application with fields or field labels where some attributes are
built from data rather than literals allows attacker-influenced text in
an attribute value that can override the field attributes or embed
JavaScript in rendered pages.

For example, the RadioGroup widget uses the process_attrs method via
the render_option and wrap_radio methods.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
   ('Cross-site Scripting')

Solutions
---------
Upgrade to HTML-FormHandler 0.410002 or later.

References
----------
https://metacpan.org/release/ABRAXXA/HTML-FormHandler-0.410002/changes
https://github.com/gshank/html-formhandler/commit/a887271e91d755e6486a9f433ae932deb1d2c4a6.patch



