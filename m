X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/31/5
Message-ID: <20131231070501.GA5874@kroah.com>
Date: Mon, 30 Dec 2013 23:05:01 -0800
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request - kernel: char: Int overflow in lp_do_ioctl()
Content-Type: text/plain; charset=utf-8

On Tue, Dec 31, 2013 at 02:33:57PM +0800, Yongjian Xu wrote:
> Hi,
> 
> https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/?id=1c2de820d66d704c7d6fffdd872b7670eb4e29bb
> 
> This is an integer overflow, and can be controlled via ioctl.
> 
> arg comes from user-space, so int overflow may occur in this:
> LP_TIME(minor) = arg * HZ/100;

What exactly can happen if you set that value to a really high number?
(hint, I really don't think anything happens at all, no matter what you
set that value to...)

How does this warrent a CVE?

thanks,

greg k-h
