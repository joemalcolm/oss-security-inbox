X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/05/5
Message-ID: <CALx_OUDAbpdg=8_1gR_6fD98W=QOazF43KHkYtwa=cNw3jSM=g@mail.gmail.com>
Date: Tue, 4 Nov 2014 18:25:02 -0800
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

> Thanks a lot for your explanation! The data for most things that you
> describe seems to be available from valgrind so it could be scripted.

Sort of. Microsoft actually had a triage tool along these lines
("!exploitable" or something like that). It's always pretty coarse in
the end, though.

This reminds me... Mateusz Jurczyk and Gynvael Coldwind were fuzzing
ffmpeg on several thousand cores for a while and bumped into something
around 1k seemingly distinctive crashes:

http://googleonlinesecurity.blogspot.com/2014/01/ffmpeg-and-thousand-fixes.html

I can imagine that their initial enthusiasm has quickly waned when
they realized how much effort it's going to take to triage all that
and get it fixed. In this case, I think they had a pretty good
relationship with the maintainers, which probably helped a lot =)

> That's after deduping by a call stack as available in valgrind output:-(

The codebase is kind of bad, but I'd imagine that there aren't
hundreds of fundamentally distinctive bugs in libbfd that can be
reached via strings or equivalent (unless the library is configured
with all the exotic binary formats that are normally off).

There are definitely many instances where the same bad coding pattern
is copied and pasted into several dozen places, though. For example,
the srec bugs I initially bumped were essentially widespread
throughout the entire file, with something like a dozen possible crash
locations.

/mz
