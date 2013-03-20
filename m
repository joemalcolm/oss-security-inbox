X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/20/7
Message-ID: <CAA7hUgEJ2j9FP-5w5PaLBK-A2X4Qz3UG9bcE9nmzD816bS4AtA@mail.gmail.com>
Date: Wed, 20 Mar 2013 10:40:59 +0100
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: XSS flaws fixed in ganglia
Content-Type: text/plain; charset=utf-8

Hi,

On 26 February 2013 21:33, Kurt Seifried <kseifried@...hat.com> wrote:
> Sorry I forgot about this after all the XML excitement. Please use
> CVE-2013-1770 for this issue.

FTR, this is supposed to be fixed by the following commit by upstream:
https://github.com/ganglia/ganglia-web/commit/552965f33bf79d41ccbec3f1f26840c8bab54ad6

I haven't reviewed it, though.

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
