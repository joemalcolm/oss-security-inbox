X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/07/28
Message-ID: <CALx_OUCgckddKKtrz1L+rMH18xQjmbz0q1hyyUaiLL7XLr8ybQ@mail.gmail.com>
Date: Tue, 7 Oct 2014 08:39:26 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Cc: langsec-discuss@...l.langsec.org
Subject: Re: Thoughts on Shellshock and beyond
Content-Type: text/plain; charset=utf-8

> So in short: you need to design and implement interfaces
> for every program which enforce explicit security boundaries.
> [...]
> I know this means re-implementing almost all code out there.

Well, that's the thing: ideas that sound good on paper are dime a
dozen. Most of them have been tried, too: people have designed systems
that fit Bell-LaPadula, created languages like Ada, reinvented the web
to strictly isolate code & data and each site from each other, etc.

Sometimes, efforts like this fail simply due to bad timing or bad
luck; but most of the time, they just produce solutions that are
unusable, unappealing, or otherwise difficult to work with.

Usable and practical security is hard, and we don't really have all
the answers there - we can barely scratch the surface today.

/mz
