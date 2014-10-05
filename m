X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/05/11
Message-ID: <CADk+mPAVSiiK7EPMPUFPS_pbkRs1DpzK5dtAfgny1N8dyJQBTg@mail.gmail.com>
Date: Sun, 5 Oct 2014 17:01:48 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: mancha <mancha1@...o.com>
Cc: Solar Designer <solar@...nwall.com>, oss-security@...ts.openwall.com
Subject: Re: sysklogd vulnerability (CVE-2014-3634)
Content-Type: text/plain; charset=utf-8

2014-10-03 17:39 GMT+02:00 mancha <mancha1@...o.com>:

> On Fri, Oct 03, 2014 at 05:16:31PM +0200, Rainer Gerhards wrote:
> > Today is Germany's national holiday.  IIRC it was with 3500000000 or
> > 350000001. I probably can't check today. I think it was on ubuntu
> 12.04lts
> > fully patched.
> >
> > Sorry i have no better answer at the moment.
>
> In that case, Schönen Feiertag.
>
>
Danke!


> Maybe when you have some time you can provide a bit more particulars. On
> sysklogd, I'm not seeing it. But, the flaw does exist and there is OOB
> access so there's no reason not to apply the fix.
>
>

I have had a pretty deep look at it. Bottom line is that I couldn't
reproduce it manually either. So I checked the test environment. As it
turns out, the root cause for my ability to crash was that the test scripts
did not setup things properly for v3 ... some v5 binary modules kept be
used. Digging deeper in the old code, a crash seems as unlikely as said in
the initial report. The reason is that some masking happens, which in turn
prevents most problems with the negative PRIs. I'll update the advisory
soon. Sorry for the noise and thanks for keeping this straight.

Rainer

