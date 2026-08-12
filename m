X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/3
Message-ID: <ff1ae084-d277-4145-bbaa-c13fcbe1afac@cpansec.org>
Date: Thu, 13 Aug 2026 00:18:02 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-17431: PDF::WebKit versions through 1.2 for Perl allow OS command injection via a 2-arg open() of the output path in to_pdf and of stylesheet paths in _style_tag_for
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-17431                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-17431
   Distribution:  PDF-WebKit
       Versions:  through 1.2

       MetaCPAN:  https://metacpan.org/dist/PDF-WebKit
       VCS Repo:  https://github.com/kingpong/perl-PDF-WebKit


PDF::WebKit versions through 1.2 for Perl allow OS command injection
via a 2-arg open() of the output path in to_pdf and of stylesheet paths
in _style_tag_for

Description
-----------
PDF::WebKit versions through 1.2 for Perl allow OS command injection
via a 2-arg open() of the output path in to_pdf and of stylesheet paths
in _style_tag_for.

to_pdf reads the generated PDF back from its path argument, and
_style_tag_for reads each entry of the stylesheets list, by assigning
the path to a local @ARGV and reading it with the diamond operator,
which opens each @ARGV element with Perl's 2-arg open(). A value that
begins or ends with a pipe ("| cmd", "cmd |") is run as a command
rather than opened as a file, and one that begins with a redirect (">
path", ">> path") opens that path for write or append. to_file forwards
its path argument to to_pdf and reaches the same read.

Any caller that forwards untrusted input as the output path or as a
stylesheets entry can run a command under the process UID; with the
"cmd |" form the command's output is returned in place of the PDF, and
with the "> path" form the named file is truncated. Stylesheets may
only be added to an HTML source, so a URL or file source exposes the
output path alone.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
   Command ('OS Command Injection')
- CWE-73 External Control of File Name or Path

Workarounds
-----------
No fixed release is available. Apply the patch, which reads both paths
with a 3-arg open so the value is never interpreted as a command or
redirect.

Otherwise, do not pass untrusted input as the output path to to_pdf or
to_file, or as an entry in the stylesheets list.

Note that the wkhtmltopdf project is no longer being developed, and
users of this package should migrate to alternative solutions.


References
----------
https://github.com/kingpong/perl-PDF-WebKit/issues/8
https://security.metacpan.org/patches/P/PDF-WebKit/1.2/CVE-2026-17431-r1.patch
https://wkhtmltopdf.org/status.html



