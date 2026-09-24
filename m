X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/10
Message-ID: <17795494-f07c-4900-9e88-ed86e07dcfcd@cpansec.org>
Date: Thu, 24 Sep 2026 23:39:15 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-97230: IO::Socket::SSL::SelfCertificate versions 1.00 for Perl contains malware which executes Python code from an obfuscated URL
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-97230                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-97230

   Distribution:  IO-Socket-SSL-SelfCertificate
       Versions:  1.00
       MetaCPAN: https://metacpan.org/dist/IO-Socket-SSL-SelfCertificate


IO::Socket::SSL::SelfCertificate versions 1.00 for Perl contains
malware which executes Python code from an obfuscated URL

Description
-----------
IO::Socket::SSL::SelfCertificate versions 1.00 for Perl contains
malware which executes Python code from an obfuscated URL.

The generate_certificate runs a Python script saved as a certificate
file.  The pyhton script attempts to retrieve code from a hardcoded
http URL that is obfuscated with base64 encoding and run the response
body directly.

The impact is that arbitrary code can be invoked as the user, without a
dropped script being saved on the affected host.

The releases have no test scripts nor build hooks.  The intention may
have been to trigger the payload after installation.

The dropper script is in lib/Crypt/SelfCertificate/sample/cert.pem.

This is similar to CVE-2026-95831 for the module
Crypt::SelfCertificate.

The SHA-256 digests of the files are

ba24ee8ec3b7f47f65bed62e16fb413ace50653cf44bd8ea90914390922831e0 
IO-Socket-SSL-SelfCertificate-1.00.tar.gz
821d38830e5eb8607738421c25ac25f59fff02a6ab67daa32fbd020429454dac 
IO-Socket-SSL-SelfCertificate-1.00/lib/IO/Socket/SSL/SelfCertificate/sample/cert.pem

d483cb7b23b7271cb11cf242bff4a2e1c02df0b9525eb0429abeea8961c399d5 
IO-Socket-SSL-SelfCertificate-1.00-upload.tar.gz

Problem types
-------------
- CWE-506 Embedded Malicious Code

Impacts
-------
- CAPEC-253 Remote Code Inclusion

Solutions
---------
Systems on which the affected package was installed should be
considered potentially compromised and investigated accordingly.

References
----------
https://www.nntp.perl.org/group/perl.cpan.testers.discuss/2026/09/msg4756.html
https://www.cve.org/CVERecord?id=CVE-2026-95831



