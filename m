X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/08/11
Message-Id: <BC6E4871-BEC2-445B-9771-D4345D4597DC@stufft.io>
Date: Tue, 8 Apr 2014 16:27:27 -0400
From: Donald Stufft <donald@...fft.io>
To: oss-security@...ts.openwall.com
Subject: Re: OpenSSL 1.0.1 TLS/DTLS hearbeat information disclosure CVE-2014-0160
Content-Type: text/plain; charset=utf-8


On Apr 8, 2014, at 3:37 PM, Yves-Alexis Perez <corsac@...ian.org> wrote:

>  (for example, I'm still unsure how easy
> it really is to find some valuable data in those 64kB of process heap
> memory).

Real easy, here’s a Python script which looks for cookies https://gist.github.com/mitsuhiko/10130454

-----------------
Donald Stufft
PGP: 0x6E3CBCE93372DCFA // 7C6B 7C5D 5E2B 6356 A926 F04F 6E3C BCE9 3372 DCFA


Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
