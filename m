X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/3
Message-ID: <a1991a1f1ea2e4cafd7331446b1ce16b@cpansec.org>
Date: Mon, 23 Nov 2026 23:08:09 -0400
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-134880: XML::Sig versions before 0.74 for Perl allow code execution via a document's Algorithm attribute that verify resolves to a function name and calls
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-134880                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-134880

   Distribution:  XML-Sig
       Versions:  before 0.74
       MetaCPAN:  https://metacpan.org/dist/XML-Sig
       VCS Repo:  https://github.com/perl-net-saml2/perl-XML-Sig


XML::Sig versions before 0.74 for Perl allow code execution via a
document's Algorithm attribute that verify resolves to a function name
and calls

Description
-----------
XML::Sig versions before 0.74 for Perl allow code execution via a
document's Algorithm attribute that verify resolves to a function name
and calls.

The text after the last `#` in the DigestMethod and SignatureMethod
Algorithm attributes is looked up with Digest::SHA->can. That returns a
code reference for any fully qualified function name, Perl builtins in
the CORE namespace included. The digest function is called on the
canonical form of the referenced element, so the document picks both
the function and its argument.

An attacker who can submit a signed document can run a command as the
verifying process.

Problem types
-------------
- CWE-470 Use of Externally-Controlled Input to Select Classes or Code

Solutions
---------
Upgrade to XML-Sig 0.74 or later.

References
----------
https://github.com/perl-net-saml2/perl-XML-Sig/commit/140489c923bec19ad31e6946a806aa8bc3367cc8.patch
https://metacpan.org/release/TIMLEGGE/XML-Sig-0.74/changes

