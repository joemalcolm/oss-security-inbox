X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/17/8
Message-ID: <4AB1B70C.5050007@redhat.com>
Date: Thu, 17 Sep 2009 12:11:56 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Willy Tarreau <w@....eu>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: tc: uninitialised kernel memory leak
Content-Type: text/plain; charset=utf-8

> So for now, we have:
> 
>   CVE-2009-3228 - tc_fill_tclass()

Fixed in v2.6.31-rc9, v2.4.37.6 (096ed17f).

>   CVE-2005-4881 - tc_fill_qdisc()  (at least)

Fixed in v2.6.13-rc1, v2.4.37.6 too (all three patches).

> So, let's go with these two numbers.  I'll fill them out later.  (My head
> hurts.)

Wow, my head hurts too... ;)

Eugene
