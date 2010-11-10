X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/10/8
Message-ID: <20101110180128.GQ5876@outflux.net>
Date: Wed, 10 Nov 2010 10:01:28 -0800
From: Kees Cook <kees@...ntu.com>
To: oss-security@...ts.openwall.com
Subject: Re: filesystem capabilities
Content-Type: text/plain; charset=utf-8

On Mon, Nov 08, 2010 at 12:37:35PM +0100, Sebastian Krahmer wrote:
> To me it looks like an error condition
> where you should die() if you see +s root AND fscaps applied.

Right now the kernel will only apply the caps and will ignore the setuid
bit, actually, if both are seen:

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=b5f22a59c0356655a501190959db9f7f5dd07e3f

-Kees

-- 
Kees Cook
Ubuntu Security Team
