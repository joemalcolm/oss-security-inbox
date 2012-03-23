X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/23/14
Message-ID: <4F6CC70E.2050201@redhat.com>
Date: Fri, 23 Mar 2012 12:55:10 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Todd C. Miller" <Todd.Miller@...rtesan.com>
Subject: Re: CVE for OpenBSD random() bug?
Content-Type: text/plain; charset=utf-8

On 03/22/2012 07:24 AM, Todd C. Miller wrote:
>> It would seem this fits into the "weaker then advertised" class of
>> security problem. Thoughts/comments (anyone strongly against this)?
> 
> Since random(3) is not a cryptographically secure random function
> I'm not sure that is makes sense to assign a CVE.
> 
> I suppose it really depends on the likelihood of someone calling
> srandom(0); I don't know why anyone would do that on purpose.  If
> you must use random(3) instead of something stronger like arc4random(3),
> it is possible to seed the PRNG via /dev/arandom using srandomdev(3)
> or set the seed state manually via initstate(3), both of which
> provide more than just 32 bits of seed data.
> 
>  - todd

I guess if no-one thought it would be used insecurely it wouldn't need
to be fixed ;). Also not all security uses of randomness are strictly
crypto related (e.g. array seeds to defeat HashDoS, etc.).

Please use CVE-2012-1577 for this issue.


-- 
Kurt Seifried Red Hat Security Response Team (SRT)
