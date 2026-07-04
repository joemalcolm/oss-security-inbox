X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/04/10
Message-ID: <55dffe32-9335-435c-814a-c0a6be470710@cpansec.org>
Date: Sat, 4 Jul 2026 18:59:21 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-12740: Plack::Middleware::OAuth versions through 0.10 for Perl do not support the OAuth 2.0 state parameter
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-12740                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-12740
   Distribution:  Plack-Middleware-OAuth
       Versions:  through 0.10

       MetaCPAN:  https://metacpan.org/dist/Plack-Middleware-OAuth
       VCS Repo:  https://github.com/c9s/Plack-Middleware-OAuth


Plack::Middleware::OAuth versions through 0.10 for Perl do not support
the OAuth 2.0 state parameter

Description
-----------
Plack::Middleware::OAuth versions through 0.10 for Perl do not support
the OAuth 2.0 state parameter.

RequestTokenV2 builds the provider authorization redirect without
issuing a state value, and AccessTokenV2 exchanges the callback code
and registers the resulting token into the session (register_session)
without verifying that the callback corresponds to an authorization
request this session initiated.

Any application that uses this middleware for OAuth 2.0 login is
exposed to login cross-site request forgery: because the callback is
not bound to the session that began the flow, an attacker who starts an
authorization with their own provider account can deliver the resulting
callback to a victim, causing the victim's session to complete the
attacker's authorization and associating the attacker's provider
identity and access token with that session. Where the application
persists this as an account link, the attacker may retain access to the
victim's account through their own provider credentials.

Problem types
-------------
- CWE-352 Cross-Site Request Forgery (CSRF)

Workarounds
-----------
Use the latest version from the git repository, with the patch applied.


References
----------
https://rt.cpan.org/Ticket/Display.html?id=179874
https://github.com/c9s/Plack-Middleware-OAuth/pull/13
https://security.metacpan.org/patches/P/Plack-Middleware-OAuth/0.10/CVE-2026-12740-r1.patch
https://datatracker.ietf.org/doc/html/rfc6749#section-10.12



