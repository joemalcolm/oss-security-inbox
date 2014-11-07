X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/07/19
Message-ID: <CALx_OUDMcAEj=vTjPr8FGBhAeeaY1hYEbHrJ5PSanRrVdHCJHA@mail.gmail.com>
Date: Fri, 7 Nov 2014 08:54:21 -0800
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Re: Fuzzing objdump (PR 17512) and readelf (PR 17531)
Content-Type: text/plain; charset=utf-8

> I am currently playing a lot with this. afl is in a somewhat
> experimental state and you'll run into more problems trying to get it
> running, but if it runs it is much more convenient than zzuf.

The current versions should be pretty stable, but if you bump into any
problems, please just poke me!=)

Afl is kind of cool for tools like binutils or fileutils because it
can synthesize many formats or format variations on its own, e.g.:

http://lcamtuf.blogspot.com/2014/11/pulling-jpegs-out-of-thin-air.html

But yeah, there's plenty of low-hanging fruit in libbfd right now, so
non-instrumented fuzzing will get you pretty damn far, too.

/mz
