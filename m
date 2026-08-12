X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/2
Message-ID: <ffa2ea1e-a452-4a97-847a-ab228db6d6f0@cpansec.org>
Date: Thu, 13 Aug 2026 00:15:12 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-16770: PDF::WebKit versions through 1.2 for Perl allow argument injection into wkhtmltopdf via meta tags in the source document
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-16770                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-16770
   Distribution:  PDF-WebKit
       Versions:  through 1.2

       MetaCPAN:  https://metacpan.org/dist/PDF-WebKit
       VCS Repo:  https://github.com/kingpong/perl-PDF-WebKit


PDF::WebKit versions through 1.2 for Perl allow argument injection into
wkhtmltopdf via meta tags in the source document

Description
-----------
PDF::WebKit versions through 1.2 for Perl allow argument injection into
wkhtmltopdf via meta tags in the source document.

For an HTML string or file source, the constructor collects every <meta
name="pdf-webkit-KEY" content="VALUE"> element in the document head
through _pdf_webkit_meta_tags and turns each one into a wkhtmltopdf
command line option. KEY is normalized to an option name matching
--[a-z0-9-]+ but is not checked against an allow list, VALUE is passed
through unchanged as the argument that follows it, and a VALUE of "yes"
emits the option as a bare flag. BUILD merges the meta derived options
last, so they also override the module defaults and the options passed
to new. Switches such as --enable-local-file-access and --cookie-jar
are reachable this way. The renderer is executed with an argument list
rather than a shell command, so this is argument injection and not
shell injection.

Any caller that renders untrusted HTML lets the document choose the
renderer's options and override those set by the application, including
options that read local files into the resulting PDF or write to a
chosen path. A URL source is not scanned, and the scan is skipped when
XML::LibXML, a recommended dependency, is not installed.

Problem types
-------------
- CWE-88 Improper Neutralization of Argument Delimiters in a Command
   ('Argument Injection')

Workarounds
-----------
No fixed release is available. Apply the patch, which restricts the
options taken from meta tags to an allow list of presentational
switches with checked values, extensible through the new
allowed_meta_options configuration attribute, and merges them before
the options passed to new rather than after.

Otherwise, applications that render untrusted HTML should remove meta
elements whose name attribute begins with the configured
meta_tag_prefix (default "pdf-webkit-") before passing the document to
new.

Note that the wkhtmltopdf project is no longer being developed, and
users of this package should migrate to alternative solutions.


References
----------
https://github.com/kingpong/perl-PDF-WebKit/issues/9
https://security.metacpan.org/patches/P/PDF-WebKit/1.2/CVE-2026-16770-r1.patch
https://wkhtmltopdf.org/status.html



