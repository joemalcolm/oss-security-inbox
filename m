X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/21/2
Message-ID: <20171121231112.68e6c0a6@redhat.com>
Date: Tue, 21 Nov 2017 23:11:12 +0100
From: Tomas Hoger <thoger@...hat.com>
To: John Lightsey <jd@...nel.net>
Cc: oss-security@...ts.openwall.com
Subject: Re: phusion passenger CVE-2017-1000384
Content-Type: text/plain; charset=utf-8

On Fri, 17 Nov 2017 14:58:43 -0600 John Lightsey wrote:

> > https://bugs.gentoo.org/634452
> 
> The commit for the arbitrary file read vulnerability mentioned in the
> Gentoo bug report is actually this one:
> 
> https://github.com/phusion/passenger/commit/4043718264095cde6623c2cbe8c644541036d7bf

Is passenger-status the only way to obtain the content of the target
file?  If so, this problem is mitigated in versions prior to 5.0.10
where root privileges were required to get the status information.

-- 
Tomas Hoger / Red Hat Product Security
