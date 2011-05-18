X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/18/11
Message-ID: <20110518202932.GP17786@vostochny.stro.at>
Date: Wed, 18 May 2011 20:29:33 +0000
From: maximilian attems <max@...o.at>
To: Dan Rosenberg <dan.j.rosenberg@...il.com>
Cc: oss-security@...ts.openwall.com, klibc@...or.com
Subject: Re: [klibc] CVE request: klibc: ipconfig sh script with unescaped DHCP options
Content-Type: text/plain; charset=utf-8

On Wed, May 18, 2011 at 04:13:05PM -0400, Dan Rosenberg wrote:
> Might it be worth fixing the insecure temporary file usage?
> 
> 122         snprintf(fn, sizeof(fn), "/tmp/net-%s.conf", dev->name);
> 123         f = fopen(fn, "w");
> 
> What if someone else has already created that file, or put a symlink
> or hard link there? 

for the initramfs case I don't see how.
outside of initramfs usage I'd agree that this needs fixing.

> What if someone overwrites your string with
> command injection characters despite your stripping?

please be more verbose, what example do you have in mind?

thank you for the review.

-- 
maks
 
