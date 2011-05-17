X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/17/4
Message-ID: <20110517121201.0b40eda4@redhat.com>
Date: Tue, 17 May 2011 12:12:01 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Closed list
Content-Type: text/plain; charset=utf-8

On Mon, 2 May 2011 22:40:46 +0400 Solar Designer wrote:

> A secondary goal behind requiring access to advisories and updates
> (not just metainfo) would be to be able to draw the line between
> vendors and companies that build their own Linux distros in house.
> The latter could also publish an RSS feed showing how they update
> their packages, yet they would not be a vendor to anyone other than
> themselves...  On the other hand, publishing updates without
> publishing the distro itself doesn't make them more of a vendor to
> others.  So to achieve this goal we'd probably need to require the
> distro itself to be public (in at least one form - e.g., Red
> Hat's .src.rpm's are sufficient), not just advisories and updates.

I think we are likely to need exceptions to the "open as RHEL srpms"
requirement.  It seems SUSE's SLE would not satisfy it (see
distro-patches wiki), and I'm pretty sure we'd not benefit from not
allowing SUSE folks, or asking them use the list info for OpenSUSE, but
not for SLE.

-- 
Tomas Hoger / Red Hat Security Response Team
