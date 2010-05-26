X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/26/1
Message-ID: <4BFC649E.3010202@redhat.com>
Date: Wed, 26 May 2010 08:00:30 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Josh Bressers <bressers@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request - kernel: GFS2: The setflags ioctl() doesn't check file ownership
Content-Type: text/plain; charset=utf-8

On 05/26/2010 04:07 AM, Josh Bressers wrote:
> Please use CVE-2010-1641

http://git.kernel.org/linus/7df0e0397b9a18358573274db9fdab991941062f

-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
