X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/17
Message-ID: <1c60707b-0721-46ed-851d-2a5fbdf2134c@cpansec.org>
Date: Tue, 8 Sep 2026 21:13:39 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-85485: HTML::FormHandler versions before 0.410002 for Perl render some error messages into HTML without escaping
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-85485                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-85485
   Distribution:  HTML-FormHandler
       Versions:  before 0.410002

       MetaCPAN:  https://metacpan.org/dist/HTML-FormHandler
       VCS Repo:  https://github.com/gshank/html-formhandler


HTML::FormHandler versions before 0.410002 for Perl render some error
messages into HTML without escaping

Description
-----------
HTML::FormHandler versions before 0.410002 for Perl render some error
messages into HTML without escaping.

The Table form layout and the Bootstrap 2 and 3 wrappers splice each
error string straight into the surrounding markup. Version 0.410000,
the fix for CVE-2026-19872, escaped the equivalent values in the other
layouts and wrappers, and 0.410002 extended that to these three.

Error messages that contain attacker-influenced content such as
rejected field values could embed JavaScript in rendered pages.

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
https://github.com/gshank/html-formhandler/commit/2ea9e138dbfe231e317c13936abe6583217c807f.patch



