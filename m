X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/20/38
Message-ID: <CALx_OUAENF0rSn8be9QmWWqvF4P5B03rcv-4-9qM177kbFfTag@mail.gmail.com>
Date: Thu, 20 Nov 2014 10:55:14 -0800
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Fuzzing project brainstorming
Content-Type: text/plain; charset=utf-8

> If it came from a mutation-based fuzzer, the original (not-mutated) sample
> can be useful too.

FWIW, in afl, crashing entries that are otherwise very distant from
the original starting corpus can be generally linked back to the
"parent", non-crashing synthesized test case that the fuzzer was
working with at the time - often producing pretty small diffs. This
can, but doesn't have to, help =)

/mz
