X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/25/1
Message-ID: <1459656894.1199601277483143500.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 25 Jun 2010 12:25:43 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: timekeeping: Prevent oops when GENERIC_TIME=n
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-2243 for this.

Thanks.

----- "Eugene Teo" <eugeneteo@...nel.sg> wrote:

> "Aaro Koskinen reported an issue in kernel.org bugzilla #15366, where
> on 
> non-GENERIC_TIME systems, accessing 
> /sys/devices/system/clocksource/clocksource0/current_clocksource
> results 
> in an oops.
> 
> It seems the timekeeper/clocksource rework missed initializing the 
> curr_clocksource value in the !GENERIC_TIME case."
> 
> Upstream commit:
> http://git.kernel.org/linus/ad6759fbf35d104dbf573cd6f4c6784ad6823f7e
> 
> I believe distros are using GENERIC_TIME=y, at least this is the case
> in 
> our supported kernels.
> 
> Thanks, Eugene
> -- 
> main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i);
> }
