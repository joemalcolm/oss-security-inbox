X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/07/5
Message-ID: <20140607194056.GA2871@zoho.com>
Date: Sat, 7 Jun 2014 19:40:56 +0000
From: mancha <mancha1@...o.com>
To: oss-security@...ts.openwall.com
Cc: Solar Designer <solar@...nwall.com>
Subject: Re: Linux kernel futex local privilege escalation (CVE-2014-3153)
Content-Type: text/plain; charset=utf-8

On Fri, Jun 06, 2014 at 07:37:03AM +0200, Thomas Gleixner wrote:
> 
> They should apply cleanly, if all stable tagged futex patches before
> that are applied.

I've placed a consolidated CVE-2014-3153 patch for 3.10.x at:

http://sf.net/projects/mancha/files/sec/linux-3.10.41_CVE-2014-3153.diff

Note: applies with trivial offsets to <3.10.37 due to f26c70a4.

--mancha


Content of type "application/pgp-signature" skipped
