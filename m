X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/21/2
Message-ID: <20180621093754.GY53290@symphytum.spacehopper.org>
Date: Thu, 21 Jun 2018 10:37:54 +0100
From: Stuart Henderson <stu@...cehopper.org>
To: oss-security@...ts.openwall.com
Cc: secure@...el.com
Subject: Re: Intel hyper-threading security issues
Content-Type: text/plain; charset=utf-8

On 2018/06/21 07:56, Georgi Guninski wrote:
> On Wed, Jun 20, 2018 at 12:48:55AM +0400, Loganaden Velvindron wrote:
> > Hi all,
> > 
> > OpenBSD has gone ahead and disabled Intel Hyper threading with a
> > fairly detailed comment about the reasons behind:
> > 
> > https://www.mail-archive.com/source-changes@openbsd.org/msg99141.html
> >
> 
> Freebsd:
> 
> https://www.freebsd.org/security/advisories/FreeBSD-SA-05:09.htt.asc
> Topic:          information disclosure when using HTT
> Announced:      2005-05-13
> When running on processors supporting Hyper-Threading Technology, it is
> possible for a malicious thread to monitor the execution of another
> thread.
> V.   Solution
> 
> Disable Hyper-Threading Technology on processors that support it.

That isn't possible with some BIOS. For example, newer Lenovo machines
removed the option apparently due to perceived lack of demand...

