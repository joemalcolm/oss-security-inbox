X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/10
Message-ID: <20260721211130.rynLdWRC@steffen%sdaoden.eu>
Date: Tue, 21 Jul 2026 23:11:30 +0200
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

Jan Schaumann wrote in
 <al_Adqw5WhhLWX_9@...meister.org>:
 |As observed on social media[1], the Linux kernel
 |published 432 CVEs between 2026-07-19T09:09 and
 |2026-07-20T16:27 (in addition to the >40 other CVEs
 |already published this month alone):
 |
 |https://lore.kernel.org/linux-cve-announce/
 |
 |I understand the position that CVEs were always a
 |flawed way to track or prioritize security changes,
 |and "but it's the only thing we have" isn't a great
 |argument in favor.
 |
 |But this onslaught really shows it's not feasible to
 |attempt to prioritize individual kernel changes.
 |
 |You might attempt to process this large set of changes
 |by pointing an LLM at the intake and asking it to
 |prioritize them for your environment based on the
 |additional context you may be able to feed it with,
 |but if it spits out a dozen today and another 25 the
 |next, you haven't won much.
 |
 |Alternatively, you might shrug and wait to see which
 |of these will get a logo and catchy name in the next
 |few weeks and then try to focus on those.
 |
 |Another approach might be to sit back, have a nice cup
 |of zen, and just always pull all updates and then
 |update your entire fleet of systems on a weekly basis,
 |which, yes, I sure would like to be able to do, but
 |reality keeps getting in my way.
 |
 |I'm not sure what to do here going forward.

I wonder a bit what your desire is.
When the Linux kernel sees an update release, it is boldly
mentioned that all users of this kernel series should update.
I mean, locally i see the last LTS kernel i use

  $ du -sh /usr/src/linux-6.18
  1.7G    /usr/src/linux-6.18

is larger than an entire (DragonFly BSD), FreeBSD, NetBSD and
OpenBSD distribution, and as i track the git, i usually see dozens
of new *megabytes* coming in after a new kernel release, so given
this gigantic codebase, with so much fluctuation, nothing but big
numbers can be expected.

Of course, if you are the (hopefully, and hopefully well, payed)
patch pumpkin of some Linux distribution, who is expected to
selectively and really mindfully backport "all necessary" fixes
into the kernel series used by your distribution, then, sympathy.

Other than that i would think you update the kernel, and when some
LTS (or otherwise supported) backport of the mainline kernel
progress is actually not really good, it will be fixed by the next
kernel update.

Then again i would also see the mentioned current flood under the
Linu[sx]-specific "every bug is a security vulnerability" (or vice
versa was "the bone of contention", no?).  For example if
a certain firmware version of some certain (notebook) system is
known to reset each 10-15 minutes under a certain workload, then
forcing early reject of traffic while the hardware resets in order
to not go further until the later error (EIO) occurs, also in
order to avoid some memcache fragmentation, also because in some
other codepath it is already done like that (it also sounds good,
but that aside).  You know.  Is this a real vulnerability -- i do
not know, the commit message does not say how long it takes the
firmware to reset, and all that.
(One could, maybe and also, file away this under "hardware quirk",
of which exist many.)

What i know for sure is that being a patch pumpkin and being
responsible for several linux kernel series is surely a hard thing
to do.

Regarding the CVE flood topic as such, AI or not AI incurred.
Well, i saw the last perl thing which i liked.  (I would write
a script that formats some input as desired, like
  2016-09-30
  -12,75
  :Edeka
  Öl, Spüli, Milch, O-saft, Tofu, Äpfel, Kichererbsen
that can be parsed with awk.  (STATE_PARTNER and message are
optional: well-formedness.))
I "hate" the Apache flood for a long time, i prefilter it.  (I can
easily access one nonetheless, if it interests me.  Happened.)
Fwiw i like the cURL reports, they are really meaningful and give
pointers i can follow.  Of course if there would be hundreds...
I am lucky not to have to penetrate AI produced blown up nada
reports initiated by some a..ole.  (And knocking on wood.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
