X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/01/2
Message-ID: <4EAF45C9.4020902@redhat.com>
Date: Mon, 31 Oct 2011 19:05:13 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Eugene Teo <eugene@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: oom: fix integer overflow of points in oom_badness
Content-Type: text/plain; charset=utf-8

On 10/31/2011 06:09 PM, Eugene Teo wrote:
> An integer overflow will happen on 64bit archs if task's sum of rss,
> swapents and nr_ptes exceeds (2^31)/1000 value. This was introduced by
> commit f755a04 oom: use pte pages in OOM score. This can cause a denial
> of service.
>
> https://lkml.org/lkml/2011/10/31/138
>
> Eugene
Please use CVE-2011-4097 for this issue

-- 

-Kurt Seifried / Red Hat Security Response Team

