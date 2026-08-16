X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/16/2
Message-ID: <cd874c640bc29741a24feeca9bd741a0@cpansec.org>
Date: Sun, 16 Aug 2026 10:24:25 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-19349: Lemonldap::NG::Portal versions from 2.0.0 before 2.16.9, from 2.17.0 before 2.21.5, from 2.22.0 before 2.23.3 for Perl allow authentication bypass via an OAuth2 state parameter stored as an SSO session in the GitHub and LinkedIn backends
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-19349                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-19349
   Distribution:  Lemonldap-NG-Portal
       Versions:  from 2.0.0 before 2.16.9
                  from 2.17.0 before 2.21.5
                  from 2.22.0 before 2.23.3

       MetaCPAN:  https://metacpan.org/dist/Lemonldap-NG-Portal
       VCS Repo:  https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng


Lemonldap::NG::Portal versions from 2.0.0 before 2.16.9, from 2.17.0
before 2.21.5, from 2.22.0 before 2.23.3 for Perl allow authentication
bypass via an OAuth2 state parameter stored as an SSO session in the
GitHub and LinkedIn backends

Description
-----------
Lemonldap::NG::Portal versions from 2.0.0 before 2.16.9, from 2.17.0
before 2.21.5, from 2.22.0 before 2.23.3 for Perl allow authentication
bypass via an OAuth2 state parameter stored as an SSO session in the
GitHub and LinkedIn backends.

Before redirecting to the identity provider, extractFormInfo() creates
the state session with the positional call `getApacheSession( undef, 1,
0, 'GitHubState' )`. getApacheSession() takes a session id followed by
a named argument hash, so the trailing arguments become that hash,
`kind` defaults to SSO, and the state is written to the global session
storage as a regular SSO session. Its identifier is handed to the
unauthenticated visitor as the state parameter of the redirection URL.

Any visitor who reaches the GitHub or LinkedIn endpoint can replay that
identifier as a session cookie and obtain a valid SSO session without
authenticating. The session holds neither _user nor
authenticationLevel, which the shipped bootstrap configuration accepts
because it grants virtual hosts a "default => accept" access rule;
deployments whose rules test the user or require an authentication
level are less exposed. Only configurations with the GitHub or LinkedIn
authentication module enabled are affected.

Problem types
-------------
- CWE-305 Authentication Bypass by Primary Weakness
- CWE-628 Function Call with Incorrectly Specified Arguments

Workarounds
-----------
For deployments that cannot upgrade, disable the GitHub and LinkedIn
authentication modules.

Solutions
---------
Upgrade to Lemonldap-NG-Portal 2.16.9, 2.21.5 or 2.23.3 or later. Only
2.23.3 is on CPAN; the 2.16.9 and 2.21.5 LTS releases are available
from https://lemonldap-ng.org/download.html.

References
----------
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.23.3
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.21.5
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.16.9

