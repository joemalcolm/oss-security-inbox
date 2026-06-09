X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/10
Message-ID: <336dcfa1-286b-4151-8552-bcd0f3784a0f@cpansec.org>
Date: Tue, 9 Jun 2026 08:41:40 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2009-10007: Catalyst::Plugin::Authentication versions before 0.10_027 for Perl is susceptible to session fixation attacks
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2009-10007                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2009-10007
   Distribution:  Catalyst-Plugin-Authentication
       Versions:  before 0.10_027

       MetaCPAN: https://metacpan.org/dist/Catalyst-Plugin-Authentication
       VCS Repo: 
https://github.com/perl-catalyst/Catalyst-Plugin-Authentication


Catalyst::Plugin::Authentication versions before 0.10_027 for Perl is
susceptible to session fixation attacks

Description
-----------
Catalyst::Plugin::Authentication versions before 0.10_027 for Perl is
susceptible to session fixation attacks.

Catalyst::Plugin::Authentication does not automatically change the
session id after authentication. An attacker that obtains a session id
cookie can use this to impersonate the victim.

Problem types
-------------
- CWE-384 Session Fixation

Workarounds
-----------
Users of Catalyst::Plugin::Session or Catalyst::Plugin::Starch should
call the change_session_id method after authentication.

Users of Plack::Middleware::Session should set the change_id flag after
logging in.

Users may also apply the linked patch.


Solutions
---------
Users should upgrade to version 0.10_027 or later.


References
----------
https://metacpan.org/release/ETHER/Catalyst-Plugin-Authentication-0.10_027/changes
https://github.com/perl-catalyst/Catalyst-Plugin-Authentication/commit/b1385ea87a2491b64f33169222af19982d0acce3.patch
https://metacpan.org/pod/Catalyst::Plugin::Session#change_session_id
https://metacpan.org/pod/Plack::Middleware::Session#change_id

Timeline
--------
- 2009-07-08: Catalyst::Plugin::Session version 0.25 released with the
   change_session_id method to protect against session fixation attacks,
   along with documentation how to use that with
   Catalyst::Plugin::Authentication
- 2026-06-07: Catalyst::Plugin::Authentication version 0.10_027
   released with change to avoid session fixation attacks



