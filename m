X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/8
Message-ID: <awleJmUnVkfJaJKB@t430s.bluhm.invalid>
Date: Fri, 27 Nov 2026 11:40:42 +0100
From: Alexander Bluhm <alexander.bluhm@....net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-122093: Strong::Random versions through 0.96 for Perl allow every later rand output to be predicted from three earlier ones
Content-Type: text/plain; charset=utf-8

On Thu, Nov 26, 2026 at 11:38:51AM +0000, John Haxby wrote:
>  
> 
> > On 26 Nov 2026, at 08:36, Jakub Wilk <jwilk@...lk.net> wrote:
> > 
> > * Robert Rothenberg <rrwo@...nsec.org>, 2026-11-25 00:32:
> >> Workarounds
> >> -----------
> >> Replace Strong::Random with a cryptographically secure source such as Crypt::URandom or Crypt::SysRandom.
> > 
> > There's also RAND_bytes() in Net::SSLeay, which is more likely to be already installed on your system than the two above (but also much more heavyweight, so YMMV).
> > 
> > -- 
> > Jakub Wilk
> 
> Or just open /dev/urandom and read stuff from it :)

Is UNIX only.  Does not work after chroot(2).

> Or, and I don't know the perl incantation, use getrandom(2) which works even in a container where there's no /dev to speak of.

Is Linux only.

> macOS has getentropy(2) and /dev/urandom.

Yet another one.

In OpenBSD we believe that our arc4random(3) in libc is the best
random source a userland program can use.  As OpenBSD ports maintainer
I try to patch all the *::Random modules to that, but there are too
many of them to catch all.

What would help the Perl ecosystem, would be one and only one of
these *::Random modules in Core.  Then every platform maintainer
can patch it to the platform's best way.  And Perl applications can
migrate to this API without the need to choose between good, bad,
and ugly random sources.

bluhm

Download attachment "signature.asc" of type "application/pgp-signature" (871 bytes)
