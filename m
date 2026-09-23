X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/2
Message-ID: <87jyocg2dc.fsf@gentoo.org>
Date: Wed, 23 Sep 2026 02:53:03 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Cc: cve-announce@...urity.metacpan.org
Subject: Re: CVE-2026-95831: Crypt::SelfCertificate versions from 1.01 through 1.05 for Perl contains malware which executes Python code from an obfuscated URL
Content-Type: text/plain; charset=utf-8

Robert Rothenberg <rrwo@...nsec.org> writes:

> ========================================================================
> CVE-2026-95831                                       CPAN Security Group
> ========================================================================
>
>         CVE ID:  CVE-2026-95831
>
>   Distribution:  Crypt-SelfCertificate
>       Versions:  from 1.01 through 1.05
>       MetaCPAN:  https://metacpan.org/dist/Crypt-SelfCertificate
>
>
> Crypt::SelfCertificate versions from 1.01 through 1.05 for Perl
> contains malware which executes Python code from an obfuscated URL
>
> Description
> -----------
> Crypt::SelfCertificate versions from 1.01 through 1.05 for Perl
> contains malware which executes Python code from an obfuscated URL.
>
> The generate_certificate runs a Python script saved as a certificate
> file.  The pyhton script attempts to retrieve code from a hardcoded
> http URL that is obfuscated with base64 encoding and run the response
> body directly.
>
> The impact is that arbitrary code can be invoked as the user, without a
> dropped script being saved on the affected host.
>
> The releases have no test scripts nor build hooks.  The intention may
> have been to trigger the payload after installation.
>

Right, via the module's API: generate_certificates -> load_sample_certificate.

> For version 1.01, the dropper script is in
> lib/Crypt/SelfCertificate/sample/validate.p12.
>
> For version 1.05, the dropper script is in
> lib/Crypt/SelfCertificate/sample/cert7.pem.
>
> The SHA-256 digests of the files are
>
> fbff21f45ff748365062a5e36fb2d72558cad82a507a6f357f320b4fcdf07760
> Crypt-SelfCertificate-1.01.tar.gz
> 27b2d2d3174ad771474fff2521f5084ec231e9218ea8c832515aef1cbd5897bc
> lib/Crypt/SelfCertificate/sample/validate.p12
>
> 9fdfa7d69b034b77d4510cda567e8da1e486ca81c7daaadc5732a45c41d71991
> Crypt-SelfCertificate-1.05.tar.gz
> 27b2d2d3174ad771474fff2521f5084ec231e9218ea8c832515aef1cbd5897bc
> lib/Crypt/SelfCertificate/sample/cert7.pem
>
> Problem types
> -------------
> - CWE-506 Embedded Malicious Code
>
> Impacts
> -------
> - CAPEC-253 Remote Code Inclusion

CPAN shows it doesn't have any reverse dependencies:
https://metacpan.org/dist/Crypt-SelfCertificate/requires

The https://metacpan.org/dist/Crypt-SelfCertificate/changes page doesn't
work for me, presumably because it's all been yanked.

Did this module have any legitimate releases? From a dropdown on
metacpan, it looks like it had 3 total releases (but I don't know if
some got yanked -> missing): 1.00, 1.01, and 1.05.

Is there any other background available? Has this author published any
other modules (looks like no)? Have they been banned now (I assume yes)?

>
> Solutions
> ---------
> Systems on which the affected package was installed should be
> considered potentially compromised and investigated accordingly.
>
> References
> ----------
> https://www.nntp.perl.org/group/perl.cpan.testers.discuss/2026/09/msg4754.html
>
> Timeline
> --------
> - 2026-09-15: Crypt::SelfCertificate version 1.00 uploaded to CPAN
> - 2026-09-17: Crypt::SelfCertificate version 1.01 uploaded to CPAN
> - 2026-09-22: Crypt::SelfCertificate version 1.05 uploaded to CPAN
> - 2026-09-22: Malware identified by CPANSec scanning

thanks,
sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
