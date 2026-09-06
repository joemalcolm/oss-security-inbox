X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/06/1
Message-ID: <753e538496f3329d658cefa8f0b17e27@cpansec.org>
Date: Sun, 06 Sep 2026 14:48:48 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-86219: Authen::SASL::Perl::DIGEST_MD5 versions before 2.2100 for Perl accept replayed authentication responses via unverified nonce in server_step
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-86219                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-86219
   Distribution:  Authen-SASL
       Versions:  before 2.2100

       MetaCPAN:  https://metacpan.org/dist/Authen-SASL
       VCS Repo:  https://github.com/perl-authen-sasl/perl-authen-sasl


Authen::SASL::Perl::DIGEST_MD5 versions before 2.2100 for Perl accept
replayed authentication responses via unverified nonce in server_step

Description
-----------
Authen::SASL::Perl::DIGEST_MD5 versions before 2.2100 for Perl accept
replayed authentication responses via unverified nonce in server_step.

server_start generates a fresh nonce and sends it in the challenge, and
nothing later compares that value against the nonce the client returns.
server_step derives the expected digest from the client's own
parameters, so a response verifies whenever its digest matches the
nonce it carries. The count table it also checks is keyed on the
client-supplied nonce and starts empty in each new server object, so a
captured first response, carrying `nc=00000001`, passes that too. RFC
2831 defines the nonce in the response as the value the server sent in
the preceding challenge.

An attacker who observes one successful `qop=auth` exchange can replay
the captured response against a later session for the same service,
host, realm and user, and authenticate as that user without knowing the
password.

Problem types
-------------
- CWE-294 Authentication Bypass by Capture-replay

Impacts
-------
- CAPEC-115 Authentication Bypass

Solutions
---------
Upgrade to Authen-SASL 2.2100 or later.

References
----------
https://metacpan.org/release/EHUELS/Authen-SASL-2.2000/source/lib/Authen/SASL/Perl/DIGEST_MD5.pm#L203-222
https://metacpan.org/release/EHUELS/Authen-SASL-2.2000/source/lib/Authen/SASL/Perl/DIGEST_MD5.pm#L410-414
https://datatracker.ietf.org/doc/html/rfc2831#section-2.1.2
https://github.com/perl-authen-sasl/perl-authen-sasl/commit/94337367030612842924f697cead29964a96448d.patch
https://metacpan.org/release/EHUELS/Authen-SASL-2.2100/changes
https://www.cve.org/CVERecord?id=CVE-2025-40918
