X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/31/4
Message-ID: <dee5281a-f19e-4a76-b65c-8fdb36e0b668@cpansec.org>
Date: Sat, 31 Oct 2026 14:38:48 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: WebDyne for Perl (5 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-78188
   WebDyne versions from 2.014 before 3.022 for Perl issue session
   cookies without the Secure, HttpOnly and SameSite attributes

CVE-2026-78189
   WebDyne versions from 3.007 before 3.022 for Perl execute .psp files
   outside the document root via path traversal in the PSGI API route
   fallback

CVE-2026-78190
   WebDyne versions from 2.014 before 3.022 for Perl reflect request
   parameters unescaped into form field values, allowing cross-site
   scripting

CVE-2026-78191
   WebDyne versions from 2.031 before 3.022 for Perl execute files with
   .psp anywhere in the name as Perl pages

CVE-2026-78192
   WebDyne versions from 2.022 before 3.022 for Perl disclose
   application source to unauthenticated clients via the viewer in the
   default index page


========================================================================
CVE-2026-78188                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78188

   Distribution:  WebDyne
       Versions:  from 2.014 before 3.022
       MetaCPAN:  https://metacpan.org/dist/WebDyne
       VCS Repo:  https://github.com/aspeer/WebDyne


WebDyne versions from 2.014 before 3.022 for Perl issue session cookies
without the Secure, HttpOnly and SameSite attributes

Description
-----------
WebDyne versions from 2.014 before 3.022 for Perl issue session cookies
without the Secure, HttpOnly and SameSite attributes.

WebDyne::Session sets its session cookie with only a name, value and
path.

Browsers then send the session ID over plain HTTP and with cross-site
requests, and expose it to page scripts. A network attacker or an
injected script can steal the session, and another site can make
requests that carry it.

Problem types
-------------
- CWE-614 Sensitive Cookie in HTTPS Session Without 'Secure' Attribute
- CWE-1004 Sensitive Cookie Without 'HttpOnly' Flag
- CWE-1275 Sensitive Cookie with Improper SameSite Attribute

Solutions
---------
Upgrade to WebDyne 3.022 or later. The SameSite attribute also requires
CGI::Simple 1.22 or later.

References
----------
https://metacpan.org/release/ASPEER/WebDyne-3.022/changes


========================================================================
CVE-2026-78189                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78189

   Distribution:  WebDyne
       Versions:  from 3.007 before 3.022
       MetaCPAN:  https://metacpan.org/dist/WebDyne
       VCS Repo:  https://github.com/aspeer/WebDyne


WebDyne versions from 3.007 before 3.022 for Perl execute .psp files
outside the document root via path traversal in the PSGI API route
fallback

Description
-----------
WebDyne versions from 3.007 before 3.022 for Perl execute .psp files
outside the document root via path traversal in the PSGI API route
fallback.

When a request matches no file, the PSGI handler retries it as an API
route through api_filename. That keeps .. segments in the request path
and only checks that the joined path starts with the document root,
which a request for /../private passes.

A remote attacker can run the embedded Perl in any .psp file the server
can read, such as one uploaded to a directory outside the document
root.

Problem types
-------------
- CWE-22 Improper Limitation of a Pathname to a Restricted Directory
   ('Path Traversal')

Solutions
---------
Upgrade to WebDyne 3.022 or later.

References
----------
https://metacpan.org/release/ASPEER/WebDyne-3.022/changes


========================================================================
CVE-2026-78190                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78190

   Distribution:  WebDyne
       Versions:  from 2.014 before 3.022
       MetaCPAN:  https://metacpan.org/dist/WebDyne
       VCS Repo:  https://github.com/aspeer/WebDyne


WebDyne versions from 2.014 before 3.022 for Perl reflect request
parameters unescaped into form field values, allowing cross-site
scripting

Description
-----------
WebDyne versions from 2.014 before 3.022 for Perl reflect request
parameters unescaped into form field values, allowing cross-site
scripting.

The textfield, password_field and filefield tags fill their value
attribute from the request parameter of the same name.
WEBDYNE_CGI_AUTOESCAPE, which controls escaping of these values,
defaults to off. From 2.022, WebDyne::HTML::Tiny also replaced its
entity_encode method with one that returns its input unchanged, so
enabling WEBDYNE_CGI_AUTOESCAPE has no effect.

A remote attacker can inject script into any page using these tags
through a crafted link.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
   ('Cross-site Scripting')

Solutions
---------
Upgrade to WebDyne 3.022 or later.

References
----------
https://metacpan.org/release/ASPEER/WebDyne-3.022/changes


========================================================================
CVE-2026-78191                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78191

   Distribution:  WebDyne
       Versions:  from 2.031 before 3.022
       MetaCPAN:  https://metacpan.org/dist/WebDyne
       VCS Repo:  https://github.com/aspeer/WebDyne


WebDyne versions from 2.031 before 3.022 for Perl execute files with
.psp anywhere in the name as Perl pages

Description
-----------
WebDyne versions from 2.031 before 3.022 for Perl execute files with
.psp anywhere in the name as Perl pages.

WebDyne decides whether to run a requested file as a page by matching
its name against WEBDYNE_PSP_EXT_RE, which has no end anchor.

An application that accepts uploads by checking only the final
extension lets a remote attacker upload a file such as report.psp.pdf
and run its embedded Perl by requesting it.

Problem types
-------------
- CWE-777 Regular Expression without Anchors

Solutions
---------
Upgrade to WebDyne 3.022 or later.

References
----------
https://metacpan.org/release/ASPEER/WebDyne-3.022/changes


========================================================================
CVE-2026-78192                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78192

   Distribution:  WebDyne
       Versions:  from 2.022 before 3.022
       MetaCPAN:  https://metacpan.org/dist/WebDyne
       VCS Repo:  https://github.com/aspeer/WebDyne


WebDyne versions from 2.022 before 3.022 for Perl disclose application
source to unauthenticated clients via the viewer in the default index
page

Description
-----------
WebDyne versions from 2.022 before 3.022 for Perl disclose application
source to unauthenticated clients via the viewer in the default index
page.

WebDyne's wrapper scripts, such as webdyne.psgi, enable the built-in
index page by default. Its source viewer returns files under the
document root named in the source parameter of an HTMX request,
including .psp, .pm and .pl files.

A remote attacker can read the application's Perl code, including the
__PERL__ blocks of .psp pages and any credentials they hold.

Problem types
-------------
- CWE-540 Inclusion of Sensitive Information in Source Code
- CWE-1188 Initialization of a Resource with an Insecure Default

Solutions
---------
Upgrade to WebDyne 3.022 or later.

References
----------
https://metacpan.org/release/ASPEER/WebDyne-3.022/changes

