X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/15/3
Message-ID: <20190615155740.GA2960@kroah.com>
Date: Sat, 15 Jun 2019 17:57:40 +0200
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
Content-Type: text/plain; charset=utf-8

On Sat, Jun 15, 2019 at 11:49:03AM -0400, Alex Gaynor wrote:
> I do not have a solution to this problem. I wanted to raise awareness of
> it, in the hope that it would start a discussion which might come to a
> solution.

Why not just do a simple "you must upgrade to the latest version X to
fix a bunch of bugs" type of announcement?  No need to worry about crazy
backports and cherry-picking, that always fails in the end.

thanks,

greg k-h
