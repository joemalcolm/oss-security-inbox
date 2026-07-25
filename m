X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/25/4
Message-ID: <03de1e4c-f337-480d-ad0f-19ba9650a61a@cpansec.org>
Date: Sat, 25 Jul 2026 09:13:31 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-16766: Catalyst::View::Wkhtmltopdf versions before 0.6.1 for Perl allow shell command injection (RCE) via PDF render options
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-16766                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-16766
   Distribution:  Catalyst-View-Wkhtmltopdf
       Versions:  before 0.6.1

       MetaCPAN: https://metacpan.org/dist/Catalyst-View-Wkhtmltopdf
       VCS Repo: https://github.com/robrwo/Catalyst-View-Wkhtmltopdf


Catalyst::View::Wkhtmltopdf versions before 0.6.1 for Perl allow shell
command injection (RCE) via PDF render options

Description
-----------
Catalyst::View::Wkhtmltopdf versions before 0.6.1 for Perl allow shell
command injection (RCE) via PDF render options.

Options are passed directly to the wkhtmltopdf command without
sanitization.

Any web application that passes user-controlled options such as the
page_size, orientation or margins without validation allows shell
command injection.

Version 0.6.0 was released with an incomplete fix for this issue.

Note that the wkhtmltopdf project is no longer being developed, and
users of this package should migrate to alternative solutions.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
   Command ('OS Command Injection')

Workarounds
-----------
For deployments that cannot upgrade, ensure the application does not
allow unvalidated wkhtmltopdf options to be submitted.


Solutions
---------
Upgrade to Catalyst::View::Wkhtmltopdf version 0.6.1 or later.


References
----------
https://github.com/robrwo/Catalyst-View-Wkhtmltopdf/security/advisories/GHSA-42w4-jj8w-6p98
https://metacpan.org/release/RRWO/Catalyst-View-Wkhtmltopdf-v0.6.0/changes
https://github.com/mc7244/Catalyst-View-Wkhtmltopdf/issues/6



