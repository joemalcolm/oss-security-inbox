X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/08/3
Message-ID: <20130308034744.GD20032@dhcp-25-225.brq.redhat.com>
Date: Fri, 8 Mar 2013 04:47:44 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com, spender@...ecurity.net, Kurt Seifried <kseifrie@...hat.com>
Subject: Re: CVE Request -- Linux kernel: sctp: SCTP_GET_ASSOC_STATS stack overflow
Content-Type: text/plain; charset=utf-8

It's stack buffer overflow, not stack overflow, sorry.

On Fri, Mar 08, 2013 at 04:23:49AM +0100, Petr Matousek wrote:
> A local user could use the missing size check in
> sctp_getsockopt_assoc_stats() function to escalate their privileges. On
> x86 this might be mitigated by destination object size check as the
> destination size is known at compile time.
> 
> Upstream fix:
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=726bc6b0
> 
> Introduced by:
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=196d6759
> 
> Introduced in:
> v3.8-rc1
> 
> References:
> https://twitter.com/grsecurity/status/309805924749541376
> http://grsecurity.net/~spender/sctp.c

https://bugzilla.redhat.com/show_bug.cgi?id=919315

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
