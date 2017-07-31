X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/31/1
Message-ID: <5ba8733a-44fc-fe49-1f17-3dde40ad0e60@oracle.com>
Date: Mon, 31 Jul 2017 16:03:57 +0100
From: John Haxby <john.haxby@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak
Content-Type: text/plain; charset=utf-8

On 30/07/17 05:47, sohu0106 wrote:
> net/irda/af_irda.c
> 
> Sometimes irda_getsockopt() doesn't initialize all members of list field of irda_device_list struct.  This structure is then copied to
> userland.  It leads to leaking of contents of kernel stack memory.  We have to initialize them to zero , or it will allows local users to obtain potentially sensitive information from kernel stack memory by reading a copy of this structure
> 
> https://github.com/torvalds/linux/pull/440
> 

Have you requested a CVE for this?

jch
