X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/06/4
Message-ID: <9bbe71c705197dba5a14743725499de5@cpansec.org>
Date: Sun, 06 Sep 2026 19:25:51 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-86304: MojoX::Authentication versions before 0.006 for Perl allow SAML authentication bypass because parse_assertion builds Net::SAML2::Binding::POST without a trust anchor
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-86304                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-86304
   Distribution:  MojoX-Authentication
       Versions:  before 0.006

       MetaCPAN:  https://metacpan.org/dist/MojoX-Authentication


MojoX::Authentication versions before 0.006 for Perl allow SAML
authentication bypass because parse_assertion builds
Net::SAML2::Binding::POST without a trust anchor

Description
-----------
MojoX::Authentication versions before 0.006 for Perl allow SAML
authentication bypass because parse_assertion builds
Net::SAML2::Binding::POST without a trust anchor.

parse_assertion in MojoX::Authentication::Model::SAML2 calls
Net::SAML2::Binding::POST->new with no cacert, cert_text or anchors
argument, then passes the returned XML to
Net::SAML2::Protocol::Assertion->new_from_xml with the IdP signing
certificate as cacert. In Net::SAML2 before 0.86 that certificate
guards only encrypted assertions, so the signature on an unencrypted
assertion is checked against the certificate the response itself
carries.

An attacker starts a SAML login, then posts a response signed with a
certificate of their own. The audience, InResponseTo and timestamp
checks that follow are all satisfiable by the attacker, so the response
authenticates any NameID it carries.

Problem types
-------------
- CWE-347 Improper Verification of Cryptographic Signature

Impacts
-------
- CAPEC-115 Authentication Bypass

Workarounds
-----------
For deployments that cannot upgrade, install Net::SAML2 0.86 or later.
SAML login then fails rather than accepting a forged assertion.

Solutions
---------
Upgrade to MojoX-Authentication 0.006 or later.

References
----------
https://metacpan.org/release/POLETTIX/MojoX-Authentication-0.006/source/Changes
https://metacpan.org/release/POLETTIX/MojoX-Authentication-0.004/source/lib/MojoX/Authentication/Model/SAML2.pm#L188
https://www.cve.org/CVERecord?id=CVE-2026-18089

Timeline
--------
- 2026-07-31: Version 0.006 released with fix.

