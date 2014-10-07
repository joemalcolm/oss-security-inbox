X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/07/22
Message-ID: <CAOp4FwTepLbfUKKZz3HScCxmrbA1choW1g_4NBPwDi6RpYQuhA@mail.gmail.com>
Date: Tue, 7 Oct 2014 16:33:23 +0400
From: Loganaden Velvindron <loganaden@...il.com>
To: oss-security@...ts.openwall.com
Cc: Hanno Böck <hanno@...eck.de>
Subject: Re: Thoughts on Shellshock and beyond
Content-Type: text/plain; charset=utf-8

On Tue, Oct 7, 2014 at 3:59 PM, David A. Wheeler <dwheeler@...eeler.com> wrote:
>> * Heartbleed is an out of bounds memory read. Well understood and yes,
>   it should be possible to implement mitigations against these kinds of
>   things.
>
> It is not only possible, I have already posted a list of ways to find Heartbleed:
> http://www.dwheeler.com/essays/heartbleed.html
>
> I think identifying specific ways to counter classes of vulnerabilities is really important.
>
>> What class of bug is Shellshock? "Weird feature invented in
>   pre-Internet era"? How do you conquer this class of bugs?
>
> I am still struggling with this one.  I am trying to create that list here:
> http://www.dwheeler.com/essays/shellshock.html#detect-or-prevent
>
> But to be honest, that list is pretty pathetic. This is a challenging class of vulnerability to detect or prevent ahead of time. Ideas would be very welcome.

I've noticed that OpenBSD developers tend to be very careful when
introducing new features. Typically, a commit for a new feature is
reviewed by a senior developer for possible security problems.

Before code is committed, it is posted on a public mailing list where
the diff is peer-reviewed. IMHO, this is what makes OpenBSD stand out
from other projects: systematic peer-review of patches by people who
analyse it from the security angle, and a developer tree that always
compile.



>
> --- David A.Wheeler



-- 
This message is strictly personal and the opinions expressed do not
represent those of my employers, either past or present.
