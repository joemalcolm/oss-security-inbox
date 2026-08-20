X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/1
Message-ID: <6eeef013f4e102e330485ebcef7a6153@cpansec.org>
Date: Wed, 19 Aug 2026 21:43:21 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-75628: Punk::OAuth2 versions before 0.03 for Perl allow an attacker-chosen off-site redirect after login because same_origin_path accepts a backslash or tab in the return parameter
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-75628                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-75628
   Distribution:  Punk-OAuth2
       Versions:  before 0.03

       MetaCPAN:  https://metacpan.org/dist/Punk-OAuth2


Punk::OAuth2 versions before 0.03 for Perl allow an attacker-chosen
off-site redirect after login because same_origin_path accepts a
backslash or tab in the return parameter

Description
-----------
Punk::OAuth2 versions before 0.03 for Perl allow an attacker-chosen
off-site redirect after login because same_origin_path accepts a
backslash or tab in the return parameter.

oauth2_login reads the return parameter from the initiation request,
runs same_origin_path over it, and stores the survivor in the session
flow record as the post-login redirect target. That check rejects a
value that does not begin with a slash, one with a slash as its second
byte, and one containing CR or LF. A backslash and a tab pass. The URL
Standard treats a backslash as equivalent to a slash for special
schemes, so `/\evil.example` parses with the authority `evil.example`.
It also strips ASCII tab before parsing, so a tab between two leading
slashes leaves `//evil.example`.

A crafted link to the application's own login route lands the victim on
the attacker's site after a genuine authentication. The redirect
carries no authorization code or access token.

Problem types
-------------
- CWE-601 URL Redirection to Untrusted Site ('Open Redirect')

Workarounds
-----------
For deployments that cannot upgrade to 0.03, strip the return query
parameter from requests to the oauth2_login initiation route at the
reverse proxy. Logins then use the configured redirect_ok destination.

Solutions
---------
Upgrade to Punk-OAuth2 0.03 or later.

References
----------
https://metacpan.org/release/LNATION/Punk-OAuth2-0.03/changes
https://metacpan.org/release/LNATION/Punk-OAuth2-0.02/source/include/pox/pox_util.h#L94
https://datatracker.ietf.org/doc/html/rfc9700#section-4.11.1
https://url.spec.whatwg.org/#relative-slash-state
https://url.spec.whatwg.org/#concept-basic-url-parser
