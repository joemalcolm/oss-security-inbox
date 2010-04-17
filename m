X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/17/2
Message-Id: <20100417181542.9c519ba2.michael.s.gilbert@gmail.com>
Date: Sat, 17 Apr 2010 18:15:42 -0400
From: Michael Gilbert <michael.s.gilbert@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: kernel: hvc_console: Fix race between hvc_close and hvc_remove
Content-Type: text/plain; charset=utf-8

On Thu, 04 Mar 2010 17:03:58 +0800 Eugene Teo wrote:

> Heads-up. You might want to backport this if your kernel is affected. We 
> are not requesting a CVE name for this as it does not affect any of our 
> Red Hat supported kernels.

are you sure about this?  i see the vulnerable code upstream in both
2.6.26 and 2.6.32.  does redhat not ship hvc in their kernels?  i think
this should get a cve id because the more vanilla distros will have
shipped with this included.

mike
