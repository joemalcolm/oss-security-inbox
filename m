X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/05/19
Message-ID: <CALoOobP1ZMj222dXwA_EucGGOpN9fJxHDKfAM5krTyk2BfXVDg@mail.gmail.com>
Date: Fri, 5 Dec 2014 14:03:25 -0800
From: Paul Pluzhnikov <ppluzhnikov@...il.com>
To: oss-security@...ts.openwall.com
Cc: Sriraman Tallam <tmsriram@...gle.com>
Subject: Re: Offset2lib: bypassing full ASLR on 64bit Linux
Content-Type: text/plain; charset=utf-8

On Fri, Dec 5, 2014 at 1:07 PM, Hanno Böck <hanno@...eck.de> wrote:
>
> On Fri, 05 Dec 2014 15:55:27 -0500
> Daniel Micay <danielmicay@...il.com> wrote:
>
> > The context of the architecture you're testing on is required for the
> > numbers to be meaningful. It's known to be expensive on x86 and should
> > be nearly free elsewhere if there aren't compiler / linker perf bugs.

FWIW, we've measured 1-2.5% degradation in our highly-optimized x86_64
binaries, and Sri's patch avoids most of it.

Sri also tells me that H.J. Lu committed a patch for pie+copyrelocs to
GNU-ld, and made the GCC copyreloc optimization (which has been
committed) the default when linker support is available.

-- 
Paul Pluzhnikov
