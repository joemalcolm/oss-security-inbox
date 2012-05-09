X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/09/7
Message-ID: <20120509192104.GC2769@dhcp-25-225.brq.redhat.com>
Date: Wed, 9 May 2012 21:21:05 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- kernel: futex: clear robust_list on execve
Content-Type: text/plain; charset=utf-8

On Tue, May 08, 2012 at 04:08:17AM +0400, Solar Designer wrote:
<snip>
> Well, if that process itself is multi-threaded (and
> other threads are not exiting yet), it possibly can be exploited
> (through affecting those other threads).  Is this the only attack
> scenario?

This is the attack scenario that I considered when filing this bug, yes.

> Do we know of any SUID/SGID/fscaps-privileged multi-threaded
> programs?  OK, I suppose that some proprietary ones exist (likely with
> plenty of vulnerabilities in them). ;-)

I haven't looked extensively for those. I can imagine such programs, but
I admit I come from Windows world, so I might be a little bit biased.

Petr
