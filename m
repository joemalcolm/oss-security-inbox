X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/16
Message-ID: <312cdf6e-8803-435c-9a5f-7257a32c4b88@cpansec.org>
Date: Tue, 8 Sep 2026 21:12:01 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-85484: HTML::FormHandler versions before 0.410002 for Perl render option group labels and radio button labels into HTML without escaping
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-85484                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-85484
   Distribution:  HTML-FormHandler
       Versions:  before 0.410002

       MetaCPAN:  https://metacpan.org/dist/HTML-FormHandler
       VCS Repo:  https://github.com/gshank/html-formhandler


HTML::FormHandler versions before 0.410002 for Perl render option group
labels and radio button labels into HTML without escaping

Description
-----------
HTML::FormHandler versions before 0.410002 for Perl render option group
labels and radio button labels into HTML without escaping.

The Select, RadioGroup, CheckboxGroup and HorizCheckboxGroup widgets
render a group label unescaped, Select into a label attribute and the
other three into element content. RadioGroup also renders each radio
button's own label unescaped.

Any application whose option list is built from data rather than
literals, using options_from, an options_fieldname method, or the DBIC
model, allows attacker-influenced text in a label that can override the
options or embed JavaScript in rendered pages.

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
https://github.com/gshank/html-formhandler/commit/49b562e0fed5146fc1a372c5fa8a879876b8841d.patch



