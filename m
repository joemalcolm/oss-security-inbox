X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/3
Message-ID: <0d8f7ac8-bf1d-4df6-bd93-3445064a2fc6@cpansec.org>
Date: Wed, 23 Sep 2026 08:58:30 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-95831: Crypt::SelfCertificate versions from 1.01 through 1.05 for Perl contains malware which executes Python code from an obfuscated URL
Content-Type: text/plain; charset=utf-8

On 23/09/2026 02:53, Sam James wrote:
> CPAN shows it doesn't have any reverse dependencies:
> https://metacpan.org/dist/Crypt-SelfCertificate/requires

We are not aware of reverse dependencies.

> The https://metacpan.org/dist/Crypt-SelfCertificate/changes page doesn't
> work for me, presumably because it's all been yanked.
Yes, all versions have been removed, however they may exist on 
independent mirrors.
> Did this module have any legitimate releases? From a dropdown on
> metacpan, it looks like it had 3 total releases (but I don't know if
> some got yanked -> missing): 1.00, 1.01, and 1.05.
1.00 did not have the dropper, but does not appear to have worked 
properly. It may have functioned as staging so that an upgrade would 
have installed the dropper.
> Is there any other background available? Has this author published any
> other modules (looks like no)? Have they been banned now (I assume yes)?

CPANSec are still investigating.


