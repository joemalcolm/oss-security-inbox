X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/15
Message-ID: <fa0f4133-0afe-48e9-846a-db74ac7ff731@cpansec.org>
Date: Tue, 8 Sep 2026 21:11:00 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-19872: HTML::FormHandler versions before 0.410000 for Perl allow cross-site scripting via a submitted value rendered unescaped in an error message
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-19872                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-19872
   Distribution:  HTML-FormHandler
       Versions:  before 0.410000

       MetaCPAN:  https://metacpan.org/dist/HTML-FormHandler
       VCS Repo:  https://github.com/gshank/html-formhandler


HTML::FormHandler versions before 0.410000 for Perl allow cross-site
scripting via a submitted value rendered unescaped in an error message

Description
-----------
HTML::FormHandler versions before 0.410000 for Perl allow cross-site
scripting via a submitted value rendered unescaped in an error message.

The wrappers and renderers that emit a form's errors interpolate the
error string straight into HTML with no escaping. Two of the library's
own messages, no_match and not_allowed, splice the submitted value into
that string, and a failing type constraint puts the rejected value into
the message it builds, which _apply_actions hands to add_error.

A field declared with a check regexp, a check list or a type constraint
reaches those messages, with no custom validator and no non-default
configuration. Errors rendered through an application's own escaping
template layer rather than the library's rendering roles are not
affected.

A request over the network that submits markup to such a field gets it
back live inside the error span, running script in the victim's origin.
Re-rendering a rejected value later gives the stored variant.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
   ('Cross-site Scripting')

Solutions
---------
Upgrade to HTML-FormHandler 0.410000 or later.

References
----------
https://github.com/gshank/html-formhandler/commit/2574fdb4561f5c32d44cfbfbb3188345d49eb5a2.patch
https://metacpan.org/release/ABRAXXA/HTML-FormHandler-0.410000/changes



