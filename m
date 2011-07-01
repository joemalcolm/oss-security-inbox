X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/01/8
Message-ID: <20110701223621.34a99e20@redhat.com>
Date: Fri, 1 Jul 2011 22:36:21 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: cxib@...urityreason.com
Subject: Re: Re: php ZipArchive::addGlob() crashes on invalid flags
Content-Type: text/plain; charset=utf-8

On Fri, 01 Jul 2011 18:34:51 +0200 Maksymilian Arciemowicz wrote:

> Using glob(3) with invalid flag may give unexpected results. Try
> glob(3) of netbsd implementations and use flags 0x39 0x40..

I don't have an easy way to test on netbsd, but looking at glob.h in
netbsd cvs, 0x40 is GLOB_ALTDIRFUNC, and 0x39 contains GLOB_APPEND,
which were problematic on glibc as well.  Both due to uninitialized
glob_t members.

-- 
Tomas Hoger / Red Hat Security Response Team
