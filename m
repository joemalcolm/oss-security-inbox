X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/04/5
Message-ID: <CAMZuV15xa4hH1TTd_ToPzEi55W04yzoMckiPnE_CtRtqoPYLxQ@mail.gmail.com>
Date: Thu, 4 May 2023 20:23:45 +0200
From: Rainer Canavan <rainer.canavan@...nga.com>
To: oss-security@...ts.openwall.com
Subject: Re: Perl's HTTP::Tiny has insecure TLS cert default, affecting CPAN.pm and other modules
Content-Type: text/plain; charset=utf-8

On Thu, May 4, 2023 at 7:59 PM Sam Bull <9m199i@...bull.org> wrote:
[...]
> But, reporting a CVE where there is no vulnerability wastes a lot of time for the project
> maintainers, as we had last year with this CVE:
> https://github.com/aio-libs/aiohttp/issues/6801
>
> As far as we could tell, it seems a random user reported a DoS vulnerability to Github
> (maybe?) and got a CVE assigned, with no reproducer or any evidence of a vulnerability,
> and just a link to an issue which was never considered a security issue by anybody. None
> of us involved with the project were notified of the report either, we learnt about the
> CVE from other users asking us about it.
>
> It took months to get that satisfactorily revoked and stop getting users asking us about
> it (apparently there's no standardised way to tell if CVEs are revoked, so seems DB
> maintainers have to remove them on a case-by-case basis, making the process much longer).
> So, something somewhere is not fully working in the process.

As a project maintainer, you should be able to ask the CNA to REJECT a
CVE, or at least have it marked DISPUTED, and that state should be
reflected in all reasonable CVE databases. You'll still have to figure
out how to document it as a non-issue inside your project for your
users to find, but once you've established a working solution, that
should not take months to resolve. I'd suspect that the issue in
HTTP::Tiny would end up DISPUTED, since not validating TLS names is
not the generally expected behavior, although it is documented (in
bold no less).

Rainer
