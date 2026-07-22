X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/20
Message-ID: <20260722231420.Ush8CjHa@steffen%sdaoden.eu>
Date: Thu, 23 Jul 2026 01:14:20 +0200
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

John Haxby wrote in
 <D3A6B326-7BFA-4448-AA2D-54819DCB61E7@...il.com>:
 |> On 21 Jul 2026, at 22:11, Steffen Nurpmeso <steffen@...oden.eu> wrote:
 |> Jan Schaumann wrote in
 |> <al_Adqw5WhhLWX_9@...meister.org>:
 |>|As observed on social media[1], the Linux kernel
 |>|published 432 CVEs between 2026-07-19T09:09 and
 |>|2026-07-20T16:27 (in addition to the >40 other CVEs
 |>|already published this month alone):
 |>|
 |>|https://lore.kernel.org/linux-cve-announce/
 ...
 |> I wonder a bit what your desire is.
 |> When the Linux kernel sees an update release, it is boldly
 |> mentioned that all users of this kernel series should update.
 ...
 |> Of course, if you are the (hopefully, and hopefully well, payed)
 |> patch pumpkin of some Linux distribution, who is expected to
 |> selectively and really mindfully backport "all necessary" fixes
 |> into the kernel series used by your distribution, then, sympathy.
 ...
 |I was that patch pumpkin, or rather, one of the team that did that. \
 | Yes, 432 CVEs is a little higher than the average, but not wholly \
 |outrageous.  That's why we, and like-minded distros, automated CVE \
 |tracking and patching.   Analysing 432 fresh CVEs is daunting, but \
 |we have tools to help us and, equally tools to automate the backports \
 |to kernels that are no longer part one of the linux-stable branches.
 |
 |There was a public blog about this: https://blogs.oracle.com/linux/track\
 |ing-linux-stable-kernels-with-uek (it predates the flood gates opening, \
 |but the trend was obvious even then).   My erstwhile colleagues may \
 |have more to say on the topic, but I know that all the major distros \
 |worked hard to set up tooling and teams to handle, first of all, the \
 |kernel CVEs and then the more general problem of the floods from all \
 |quarters.

Thanks.  (I hope you now feel to have a more salubrious, as Rob
Pike put it, place to be be.)
Must be said, in the end it is not so that this blog gives
anything of substance that one would not have imagined already.
Unbreakable, that is a mission.

What would make up a story is how this "intersect patches with
your own needs automatically" works out over the years, in real
practice that is.  I followed now four LTS kernels over now seven
years, and i at times see new configuration options to be handled,
and, say with architectural vulnerabilities, cross dependencies
a.k.a. "infrastructural inter-dependencies" arise, where follow-up
commits are needed, .. whatever.
So really -- what i think is that at best several lines of
qualified specialists are ahead of me, and may they be payed well.

Thanks, and ciao.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
