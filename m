X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/07/11/22
Message-ID: <20120711221852.GC24047@kludge.henri.nerv.fi>
Date: Thu, 12 Jul 2012 01:18:52 +0300
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Overflow fix in bash 4.2 patch 33
Content-Type: text/plain; charset=utf-8

On Wed, Jul 11, 2012 at 06:15:07PM +0200, Marcus Meissner wrote:
> ftp://ftp.gnu.org/pub/gnu/bash/bash-4.2-patches/bash42-033
> 
> Reproducer:
> 	test -e /dev/fd/111111111111111111111111111111111

Hello,

Reported to Debian: http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=681278

- Henri Salo
