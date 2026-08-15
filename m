X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/15/4
Message-ID: <f7325244ba756f28e0bc5aa57db2fe88@cpansec.org>
Date: Sat, 15 Aug 2026 10:27:27 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-15689: Dancer2::Plugin::Auth::Extensible versions through 0.713 for Perl allow password reset link poisoning via the request Host header in _default_email_password_reset and _default_welcome_send
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-15689                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-15689
   Distribution:  Dancer2-Plugin-Auth-Extensible
       Versions:  through 0.713

       MetaCPAN:  
https://metacpan.org/dist/Dancer2-Plugin-Auth-Extensible
       VCS Repo:  
https://github.com/PerlDancer/Dancer2-Plugin-Auth-Extensible


Dancer2::Plugin::Auth::Extensible versions through 0.713 for Perl allow
password reset link poisoning via the request Host header in
_default_email_password_reset and _default_welcome_send

Description
-----------
Dancer2::Plugin::Auth::Extensible versions through 0.713 for Perl allow
password reset link poisoning via the request Host header in
_default_email_password_reset and _default_welcome_send.

Both default emails emit a link of the form `$base/login/$code`, whose
authority comes from the request Host header, or from X-Forwarded-Host
under behind_proxy (obtained from Dancer2's request->base function). A
POST to /login carrying submit_reset and a username needs no
authentication: it stores a fresh reset code against that account and
mails the account holder a link to a host of the sender's choosing. The
welcome mail takes the same path when the application calls create_user
with email_welcome set.

Through 0.711 the handlers read `request->uri_base` and `request->base`
directly; Versions 0.712 and later provide an uri_base configuration
key that defaults to the untrusted `request->uri_base` when unset.

The default configuration with reset_password_handler enabled and the
default message text, a recipient who follows the link hands a working
reset code to the sender's host, which is enough to take over the
account.

Problem types
-------------
- CWE-640 Weak Password Recovery Mechanism for Forgotten Password

Workarounds
-----------
No fixed release is available. In 0.712 and later, set the uri_base
configuration key to the application's own base URL; otherwise reject
requests whose host is not an expected application hostname, including
X-Forwarded-Host under behind_proxy.


References
----------
https://metacpan.org/release/ABEVERLEY/Dancer2-Plugin-Auth-Extensible-0.711/source/lib/Dancer2/Plugin/Auth/Extensible.pm#L1031-1053
https://metacpan.org/release/ABEVERLEY/Dancer2-Plugin-Auth-Extensible-0.711/source/lib/Dancer2/Plugin/Auth/Extensible.pm#L1097-1121
https://metacpan.org/release/ABEVERLEY/Dancer2-Plugin-Auth-Extensible-0.712/source/lib/Dancer2/Plugin/Auth/Extensible.pm#L178-194
https://metacpan.org/release/ABEVERLEY/Dancer2-Plugin-Auth-Extensible-0.713/source/lib/Dancer2/Plugin/Auth/Extensible.pm#L178-196
https://metacpan.org/release/ABEVERLEY/Dancer2-Plugin-Auth-Extensible-0.713/changes

