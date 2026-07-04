X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/04/9
Message-ID: <43836296-9c6f-4fa9-8045-786f68363c8e@cpansec.org>
Date: Sat, 4 Jul 2026 18:55:31 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-12746: Dancer2::Plugin::Auth::OAuth::Provider versions before 0.23 for Perl do not support the OAuth 2.0 state parameter
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-12746                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-12746
   Distribution:  Dancer2-Plugin-Auth-OAuth
       Versions:  before 0.23

       MetaCPAN: https://metacpan.org/dist/Dancer2-Plugin-Auth-OAuth
       VCS Repo: https://github.com/biafra/perl-Dancer2-Plugin-Auth-OAuth


Dancer2::Plugin::Auth::OAuth::Provider versions before 0.23 for Perl do
not support the OAuth 2.0 state parameter

Description
-----------
Dancer2::Plugin::Auth::OAuth::Provider versions before 0.23 for Perl do
not support the OAuth 2.0 state parameter.

The authentication_url method builds the provider authorization
redirect without issuing a state value, and the callback method
exchanges the callback code and registers the resulting token into the
session without verifying that the callback corresponds to an
authorization request this session initiated.

Any application that uses this plugin for OAuth 2.0 login is exposed to
login cross-site request forgery: because the callback is not bound to
the session that began the flow, an attacker who starts an
authorization with their own provider account can deliver the resulting
callback to a victim, causing the victim's session to complete the
attacker's authorization and associating the attacker's provider
identity and access token with that session. Where the application
persists this as an account link, the attacker may retain access to the
victim's account through their own provider credentials.

Problem types
-------------
- CWE-352 Cross-Site Request Forgery (CSRF)

Solutions
---------
Upgrade to version 0.23 or later.


References
----------
https://metacpan.org/release/BIAFRA/Dancer2-Plugin-Auth-OAuth-0.23/diff/BIAFRA/Dancer2-Plugin-Auth-OAuth-0.22
https://github.com/biafra/perl-Dancer2-Plugin-Auth-OAuth/commit/806420fc2abbe13bede4461475f2f3dcd7daf5f2.patch
https://datatracker.ietf.org/doc/html/rfc6749#section-10.12

Timeline
--------
- 2026-06-22: Version 0.23 released with a fix.



