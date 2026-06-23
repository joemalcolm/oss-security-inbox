X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/1
Message-ID: <7289d5e7-0712-4a95-a3da-aed9fca4c307@cpansec.org>
Date: Tue, 23 Jun 2026 08:05:41 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-9733: Mojolicious::Plugin::Web::Auth::OAuth2 versions through 0.17 for Perl have an insecure default state parameter
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-9733                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-9733
   Distribution:  Mojolicious-Plugin-Web-Auth
       Versions:  through 0.17

       MetaCPAN: https://metacpan.org/dist/Mojolicious-Plugin-Web-Auth
       VCS Repo: https://github.com/hayajo/Mojolicious-Plugin-Web-Auth


Mojolicious::Plugin::Web::Auth::OAuth2 versions through 0.17 for Perl
have an insecure default state parameter

Description
-----------
Mojolicious::Plugin::Web::Auth::OAuth2 versions through 0.17 for Perl
have an insecure default state parameter.

When no state generator is specified in the constructor, the module
defaults to using a SHA-1 hash of predictable and low-entropy sources,
including the epoch time (which is leaked via the HTTP Date header) and
a call to Perl's built-in rand function.

A predictable state allows an attacker to hijack another user's session
through cross site request forgery (CSRF).

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Users should specify a state_generator function in the plugin
configuration that uses a secure CSPRNG such as Crypt::PRNG or (for
Mojolicious 9.46 or later) the Mojo::Util::random_bytes function. For
example,

   plugin 'Web::Auth',
     module => 'OAuth2',
     ...
     state_generator => sub {
       unpack("H*", Mojo::Util::random_bytes(20))
     };


References
----------
https://metacpan.org/release/HAYAJO/Mojolicious-Plugin-Web-Auth-0.17/source/lib/Mojolicious/Plugin/Web/Auth/OAuth2.pm#L129-131
https://datatracker.ietf.org/doc/html/rfc6749#section-10.12
https://security.metacpan.org/patches/M/Mojolicious-Plugin-Web-Auth/0.17/CVE-2026-9733-r2.patch



