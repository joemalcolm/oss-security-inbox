X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/04/13
Message-ID: <4F04BC2F.6030202@redhat.com>
Date: Wed, 04 Jan 2012 13:53:03 -0700
From: Kurt Seifried <kseifrie@...hat.com>
To: oss-security@...ts.openwall.com
CC: Moritz Muehlenhoff <jmm@...ian.org>
Subject: Re: CVE request: Pidgin
Content-Type: text/plain; charset=utf-8

On 01/04/2012 10:26 AM, Moritz Muehlenhoff wrote:
> Hi,
> It seems that this older Pidgin issue never received a CVE assignment:
> http://www.pidgin.im/news/security/?id=50
>
> Cheers,
>         Moritz
Minor issue, but stuff in memory does have a bad habit of ending up in
other places (swap/etc.). Please use CVE-2011-4922 for this issue.

-- 

-- Kurt Seifried / Red Hat Security Response Team

