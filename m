X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/18
Message-ID: <262440af-c81c-434f-9497-c9f6e7156f2f@cpansec.org>
Date: Thu, 20 Aug 2026 19:16:25 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-15743: Catalyst::Plugin::Static::Simple versions through 0.38 for Perl mark responses as publicly cacheable
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-15743                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-15743
   Distribution:  Catalyst-Plugin-Static-Simple
       Versions:  through 0.38

       MetaCPAN: https://metacpan.org/dist/Catalyst-Plugin-Static-Simple
       VCS Repo: 
https://github.com/perl-catalyst/Catalyst-Plugin-Static-Simple


Catalyst::Plugin::Static::Simple versions through 0.38 for Perl mark
responses as publicly cacheable

Description
-----------
Catalyst::Plugin::Static::Simple versions through 0.38 for Perl mark
responses as publicly cacheable.

The _serve_static method always sets the Cache-Control header to
"public", with no means of overriding it.  This advises proxies that
the content may be stored in a shared cache, and may be reused in
responses to requests from other users. (This includes requests with an
Authorization header.)

Configuring the expires time to "0" to disable caching, as documented,
is ignored.

Problem types
-------------
- CWE-524 Use of Cache Containing Sensitive Information

Workarounds
-----------
Apply the patch, and configure the default Cache-Control as needed.

For deployments that cannot apply the patch, a method modifier of
_serve_static in the Catalyst class can be used to override the
Cache-Control or Expires headers as needed.

References
----------
https://github.com/perl-catalyst/Catalyst-Plugin-Static-Simple/pull/3
https://security.metacpan.org/patches/C/Catalyst-Plugin-Static-Simple/0.38/CVE-2026-15743-r1.patch
https://datatracker.ietf.org/doc/html/rfc9111



