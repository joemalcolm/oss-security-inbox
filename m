X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/06/4
Message-ID: <c6a45ff60ee7199e8fc18871764a6e598b83d76c.camel@orlitzky.com>
Date: Tue, 06 Sep 2022 08:31:12 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: sagemath denial of service with abort() in gmp: overflow in mpz type
Content-Type: text/plain; charset=utf-8

On Tue, 2022-09-06 at 11:50 +0000, Jeremy Stanley wrote:
> On 2022-09-06 08:47:58 +0300 (+0300), Georgi Guninski wrote:
> [...]
> > sagemath gives access to the python interpreter, so code execution
> > is trivial.
> [...]
> 
> I'm not familiar with sagemath, but is it intended to protect
> against such cases? Note that even if all it does is pass
> expressions into CPython's eval(), it's pretty much impossible to
> guard against misuse without completely sandboxing the underlying
> processes. Denial of service scenarios are really the least of
> worries in that case.

That's about right. Sage does provide a web-based notebook interface,
but the bottom line is that crashing is one of the nicer things you can
ask it to do if it will execute your commands.


