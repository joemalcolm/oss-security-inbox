X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/25/8
Message-ID: <887FE7CFF6F8DE4BB3A9535F53AFD06A6F670AB2@il-ex2.zend.net>
Date: Sun, 25 Sep 2011 13:47:29 +0000
From: Zeev Suraski <zeev@...d.com>
To: Pierre Joye <pierre.php@...il.com>
CC: Vincent Danen <vdanen@...hat.com>, "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>, "security@....net" <security@....net>, Stas Malyshev <smalyshev@...arcrm.com>
Subject: RE: CVE request: is_a() function may allow arbitrary code execution in PHP 5.3.7/5.3.8
Content-Type: text/plain; charset=utf-8



> -----Original Message-----
> From: Pierre Joye [mailto:pierre.php@...il.com]
> Sent: Sunday, September 25, 2011 12:02 PM
> To: Stas Malyshev
> Cc: Vincent Danen; oss-security@...ts.openwall.com; security@....net
> Subject: Re: CVE request: is_a() function may allow arbitrary code execution
> in PHP 5.3.7/5.3.8
> 
> hi Stas,
> 
> I tend to disagree here. One of the CVE goal is not about declaring one or the
> other guilty of bad practice(s) but about informing users about security issues
> in the software they use and how to act correctly to fix these issues.

There aren't any security issues in PHP in that context.  Assigning a CVE to PHP in that context would create the impression that there is indeed an issue in PHP here.
It's not a matter of who's 'guilty' in terms of positioning - but in terms of where the actual security issue resides.  And it does not reside in PHP.
So I agree with Stas, it doesn't make sense to have a CVE here.  Otherwise, almost every change we make, including bug fixes, could somehow result in some faulty piece of code somewhere becoming vulnerable to something.

Zeev
