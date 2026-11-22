X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/22/11
Message-ID: <CAFfBHfZSJJJmA_o6AWuLzx6j01v71sJ+3ytgQavw5ba_gq98yw@mail.gmail.com>
Date: Sun, 22 Nov 2026 14:50:51 -0600
From: Aaron Rainbolt <arraybolt3@...il.com>
To: oss-security@...ts.openwall.com
Cc: Sam James <sam@...too.org>, Jiri Kucera <sanczes@...il.com>
Subject: Re: Fwd: Re: [Announce] GnuPG Security Advisory for GPGME (T8557,CVE-2026-129975)
Content-Type: text/plain; charset=utf-8

On Sun, Nov 22, 2026 at 2:34 PM Werner Koch <wk@...pg.org> wrote:
>
> On Sat, 21 Nov 2026 10:23, Sam James said:
> > Todd Zullinger points out something unfortunate: RH had this patched
> > downstream years ago.
> >
> > Werner, I assume that was never sent to you?
>
> Not that I can remember.
>
> We regularly received results from Coverity scans via Redhat.
> Fortunately they had already filtered them on plausibility and thus the
> mentioned one might have slipped through.  In particular because it was
> mostly about memory leakage in error paths.
>
> It is a bit strange that this was a one-off patch and never re-applied
> to newer releases.  That part of the code did not receive any serious
> updated in the last decades.
>
> FWIW: I recall that Coverity once offered us free scans but we would
> have had to sign an NDA with the requirement to immediately apply fixes
> only with the consent of Coverity :-(

AIUI Coverity offers free scans to just about everyone as long as they
can prove ownership of the project. The legal agreement is a bit
strange in some areas (i.e. you can't share screenshots of the UI or
raw analysis results with others), but fixing issues whenever you want
without explicit consent is fine, and I didn't have to file an NDA to
use it. See https://scan.coverity.com/policy.

I wrote a bit about concerns I had with the Coverity Scan user
agreement here back when Whonix was looking at it:
https://forums.whonix.org/t/add-sonarqube-and-or-coverity-code-scanner-to-whonix-github/14073/4
Since I wrote this, Whonix has gotten Coverity Scan set up on many of
our repos, and haven't run into any issues legal or otherwise, so I
think the concerns I had there were not a big deal.

--
Aaron

> Shalom-Salam,
>
>    Werner
>
> --
> The pioneers of a warless world are the youth that
> refuse military service.             - A. Einstein
