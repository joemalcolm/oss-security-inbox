X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/22/6
Message-ID: <7fde43e77a4f5043c7219f7f5f557bae@cpansec.org>
Date: Sat, 22 Aug 2026 10:54:08 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-75866: Punk::OAuth2::Server versions through 0.03 for Perl issue access tokens outside a client's registered scopes and grant types because no authorization path reads them
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-75866                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-75866
   Distribution:  Punk-OAuth2
       Versions:  through 0.03

       MetaCPAN:  https://metacpan.org/dist/Punk-OAuth2


Punk::OAuth2::Server versions through 0.03 for Perl issue access tokens
outside a client's registered scopes and grant types because no
authorization path reads them

Description
-----------
Punk::OAuth2::Server versions through 0.03 for Perl issue access tokens
outside a client's registered scopes and grant types because no
authorization path reads them.

Punk::OAuth2::Server::Store registers scopes and grant_types per client
and documents both as client registration. token dispatches on the
grant_type in the request body, so a client registered for
authorization_code alone can ask for client_credentials, and that arm
passes the requested scope straight to the minter, which signs it into
the at+jwt access token. authorize copies the query scope into the
authorization code record without comparing it against the
registration, leaving the optional consent hook as the only check
between an arbitrary scope and the issued code. redirect_uris on the
same client row is read and enforced.

A registered client can obtain a correctly signed token carrying any
scope it names, and a resource server running Punk::OAuth2::Checker
accepts that token and honours the scope. A client registered without a
secret authenticates on its client_id alone, so anyone who knows that
identifier can request one.

Problem types
-------------
- CWE-862 Missing Authorization

Workarounds
-----------
In a proxy ahead of Punk::OAuth2::Server, reject a token or
authorization request that asks for a grant type or scope the client is
not registered for.

Solutions
---------
Upgrade to Punk-OAuth2 0.04 or later.

References
----------
https://metacpan.org/release/LNATION/Punk-OAuth2-0.04/changes
https://metacpan.org/release/LNATION/Punk-OAuth2-0.03/view/lib/Punk/OAuth2/Server/Store.pm
https://datatracker.ietf.org/doc/html/rfc6749#section-3.3
https://datatracker.ietf.org/doc/html/rfc6749#section-5.2

