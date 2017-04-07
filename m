X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/07/4
Message-ID: <87d1cods3z.fsf@redhat.com>
Date: Fri, 07 Apr 2017 13:50:40 -0400
From: fche@...hat.com (Frank Ch. Eigler)
To: oss-security@...ts.openwall.com
Subject: Re: libxslt math.random issue
Content-Type: text/plain; charset=utf-8


Florian Weimer wrote:

> FWIW, why is glibc not doing srand(RANDOMVECTOR) during startup... :/
>
> The C standard does not allow it.
>
> ”
> If rand is called before any calls to srand have been made, the same
> sequence shall be generated as when srand is first called with a seed
> value of 1.
> ”

Yes, but that does not imply that srand(1) needs to resolve to a
build-constant value.  https://gitlab.com/fche/randomer salts it with a
snippet from /dev/urandom, and stays POSIX-compatible & restartable.

- FChE
