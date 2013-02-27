X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/27/11
Message-ID: <4130432.CH2LlkanmL@devil>
Date: Wed, 27 Feb 2013 10:20:33 +0100
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: psi+ stores the cache file as world-readable
Content-Type: text/plain; charset=utf-8

On Wednesday 27 February 2013 07:41:28 gremlin@...mlin.ru wrote:
> That's normal - users' home directories are normally accessible
> only by users themselves, and never by othe users:
> 
> gremlin@...n:~ > ls -ld .
> drwx-----x 47 gremlin users 20480 2013-02-26 17:48 ./

The default permission for the home is not 0700, but is 0755. So, for the 
stuff that resides in .cache which should always be .0700, is ok, for the 
stuff in e.g. .config the problem exist because it is 0755.
-- 
Agostino Sarubbo
Gentoo Linux Developer
