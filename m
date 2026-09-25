X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/1
Message-ID: <d6246ea4522ad9a31c85efb31a55d02e@cpansec.org>
Date: Thu, 24 Sep 2026 21:12:12 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-92288: Lemonldap::NG::Portal versions from 2.20.0 before 2.21.6, from 2.22.0 before 2.23.4 for Perl allow unauthenticated OAuth2 token introspection because checkEndPointAuthenticationCredentials does not verify the client secret of a public Relying Party
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-92288                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-92288

   Distribution:  Lemonldap-NG-Portal
       Versions:  from 2.20.0 before 2.21.6
                  from 2.22.0 before 2.23.4
       MetaCPAN:  https://metacpan.org/dist/Lemonldap-NG-Portal
       VCS Repo:  https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng


Lemonldap::NG::Portal versions from 2.20.0 before 2.21.6, from 2.22.0
before 2.23.4 for Perl allow unauthenticated OAuth2 token introspection
because checkEndPointAuthenticationCredentials does not verify the
client secret of a public Relying Party

Description
-----------
Lemonldap::NG::Portal versions from 2.20.0 before 2.21.6, from 2.22.0
before 2.23.4 for Perl allow unauthenticated OAuth2 token introspection
because checkEndPointAuthenticationCredentials does not verify the
client secret of a public Relying Party.

checkEndPointAuthenticationCredentials() skips the secret comparison
for a Relying Party marked public and still returns the authentication
method deduced from the request, client_secret_basic or
client_secret_post. introspection() rejects a caller only when that
method is missing or none, so a request carrying a public client_id and
an arbitrary or empty secret passes the endpoint's authentication
check.

An attacker who holds an access token and knows the client_id of any
public Relying Party can confirm the token is active and read its
metadata, including scope, audience, expiry and the sub claim. The sub
claim is computed with the calling Relying Party's user identifier
attribute, so an attacker can translate a user identifier from one
Relying Party to another, defeating per-client and pseudonymous
identifiers.

Problem types
-------------
- CWE-1390 Weak Authentication

Solutions
---------
Upgrade to Lemonldap-NG-Portal 2.21.6 or 2.23.4 or later. Only 2.23.4
is on CPAN; the 2.21.6 LTS release is available from
https://lemonldap-ng.org/download.html.

References
----------
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/work_items/3719
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/work_items/3721
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.23.4
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.21.6

