X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/23/4
Message-ID: <a9fa49fc-b7fc-4182-ac6e-913a15637aab@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 23 Sep 2011 14:00:13 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Missing input sanitation in various X GLX calls
Content-Type: text/plain; charset=utf-8

I'm assign this as "X.org multiple input sanitization flaws"

Use CVE-2010-4818

Thanks.

-- 
    JB

----- Original Message -----
> Hi,
> 
> https://bugs.freedesktop.org/show_bug.cgi?id=28823
> is a tracker bug for input sanitation lacking in various GLX X calls.
> 
> Reporter is me@...fdog.net
> 
> These can probably allow a attacker with access to the GLX calls
> (typically just the logged in user) to crash the X server or execute
> code within it.
> 
> (Not thought about WebGL introduced crash potential here.)
> 
> The lacking checks were reported and fixed in x.org git in 2010, so
> they
> probably need a 2010 CVE id. (Single one should be sufficient I
> guess.)
> 
> Ciao, Marcus
> 
