X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/28
Message-ID: <20261109192427.GO23438@oevtugenva.nrevsny.pk>
Date: Mon, 9 Nov 2026 14:24:27 -0500
From: Rich Felker <dalias@...c.org>
To: Loganaden Velvindron <loganaden@...il.com>
Cc: oss-security@...ts.openwall.com, musl@...ts.openwall.com
Subject: Re: [musl] Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On Mon, Nov 09, 2026 at 10:43:38PM +0400, Loganaden Velvindron wrote:
> On Fri, 6 Nov 2026 at 21:17, Martin Steigerwald <martin@...htvoll.de> wrote:
> >
> > Greetings.
> >
> > Matt Johnston - 06.11.26, 03:05:13 CET:
> > > Prior to ~2019 when the OpenSSH change was made, Debian
> > > would have shown a different manpage that only documents
> > > NULL for error [1].
> 
> This is the approach I'm taking on my build of Alpine Linux.
> 
> I would like to also submit a patch to musl to have this as a build option.
> @musl, any interest in having this as a build option ?

I didn't see you'd also asked this on-list, so copying my answer here:

This will possibly be changed (to always return null for failure) in
the next release cycle anyway, but as a general principle we don't do
behavioral build options.

This was a very intentional choice from seeing how things went with
uclibc and the combinatorics of build-time options that developers
aren't familiar with when things break for users. It's not that any
one such option is intractable to deal with, but that if you're going
to support them, you eventually end up with lots of them.

You're of course free to apply your own patches locally and share them
with others since this is free software though. It's just not
something upstream will be responsible for as supported usage.

For Alpine specifically, I think we can very easily check if there are
any other packages doing wrong things like OpenSSH was. For example by
searching symbol tables for programs using crypt and grepping their
sources for the calls. I'm pretty sure we won't find any since this is
a very obscure hack they came up with for timing masking. Users may
however have self-compiled stuff that crashes if crypt returns null,
and there may even be packages that do, so I think we could use a good
advance warning to users when this is going to change, and refrain
from backporting a change to stable dists since it is a potentially
breaking change and *not* a security fix. So my recommendation would
be not trying to preempt any upstream change but taking part in a
process to identify anything that needs fixing for the eventual
upstream change and working out communication to make it as painless
and stability-respecting as possible.

Rich
