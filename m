X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/2
Message-ID: <af52ae3c2b406a13312729a8efa10fd0@cpansec.org>
Date: Thu, 24 Sep 2026 21:17:05 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-92289: Lemonldap::NG::Portal versions from 2.23.0 before 2.23.4 for Perl allow a PKCE bypass for public Relying Parties in "PKCE or secret" mode because checkEndPointAuthenticationCredentials does not verify the client secret
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-92289                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-92289

   Distribution:  Lemonldap-NG-Portal
       Versions:  from 2.23.0 before 2.23.4
       MetaCPAN:  https://metacpan.org/dist/Lemonldap-NG-Portal
       VCS Repo:  https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng


Lemonldap::NG::Portal versions from 2.23.0 before 2.23.4 for Perl allow
a PKCE bypass for public Relying Parties in "PKCE or secret" mode
because checkEndPointAuthenticationCredentials does not verify the
client secret

Description
-----------
Lemonldap::NG::Portal versions from 2.23.0 before 2.23.4 for Perl allow
a PKCE bypass for public Relying Parties in "PKCE or secret" mode
because checkEndPointAuthenticationCredentials does not verify the
client secret.

With oidcRPMetaDataOptionsRequirePKCE set to 2, the authorization
endpoint issues a code even when the request carries no code_challenge,
and token() admits the exchange as long as a challenge was stored or an
authentication method was returned for the caller.
checkEndPointAuthenticationCredentials() skips the secret comparison
for a Relying Party marked public and still returns the method deduced
from the request, so any Basic or form credential satisfies the secret
branch. validatePKCEChallenge() then passes, because neither a
challenge nor a verifier is present.

An attacker who intercepts an authorization code issued to a public
Relying Party can exchange it for the user's access, ID and refresh
tokens by replaying the client_id with an arbitrary secret, which is
the attack PKCE prevents. Dynamic client registration creates every
Relying Party in this mode.

Problem types
-------------
- CWE-1390 Weak Authentication

Workarounds
-----------
For deployments that cannot upgrade to 2.23.4, set RequirePKCE to 1 on
public Relying Parties so that a code challenge is always required.
Relying Parties created through dynamic registration are always in
"PKCE or secret" mode, so that endpoint has to be disabled as well.

Solutions
---------
Upgrade to Lemonldap-NG-Portal 2.23.4 or later.

References
----------
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/work_items/3719
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.23.4

