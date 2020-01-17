X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/17/3
Message-ID: <3a7ec6d5-2959-3daa-a540-ac6389dc15f0@tao.at>
Date: Fri, 17 Jan 2020 09:10:07 +0100
From: Sven Schwedas <sven.schwedas@....at>
To: oss-security@...ts.openwall.com
Subject: Re: Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume
Content-Type: text/plain; charset=utf-8

On 17.01.20 05:21, Jeffrey Walton wrote:
> I agree with Lennart Poettering. This seems CVE worthy given RDRAND is
> often used to get the kernel generator (and other userland generators)
> in good working order.

>From my understanding it's harmless as far as linux's kernel generator
is concerned, as it's just xor'd to other entropy sources?

CVEs should only be needed on a case-by-case basis for userland
generators that aren't properly engineered.
