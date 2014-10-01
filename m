X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/01/23
Message-Id: <1412197254.2525278.174089561.7978AE3E@webmail.messagingengine.com>
Date: Wed, 01 Oct 2014 23:00:54 +0200
From: Hannes Frederic Sowa <hannes@...essinduktion.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: linux kernel net_get_random_once bug
Content-Type: text/plain; charset=utf-8

Hello,

On Wed, Oct 1, 2014, at 20:04, Andrew Tappert wrote:
> My colleague Tom O'Connor and I have identified a security bug in the
> Linux kernel that results in drastically degraded randomness of IP IDs,
> TCP sequence numbers, and ephemeral port numbers on affected systems.
> The bug existed in kernel versions 3.13 and 3.14.  We are posting here
> rather than to the private "distros" list because the bug has already
> been fixed.  However, we don't think that the security implications of
> the bug have been acknowledged anywhere, and we think it needs a CVE.  A
> full write-up on the bug is posted at
> http://secondlookforensics.com/ngro-linux-kernel-bug/.

I totally agree that this needs a CVE and I thought it was already taken
care of by the people on security@...nel.org. I am sorry to not have
checked for a CVE request afterwards.

The corresponding fix is here:
<https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=3d4405226d27b3a215e4d03cfa51f536244e5de7>

Thanks a lot,
Hannes
