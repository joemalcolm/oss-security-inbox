X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/07/7
Message-ID: <545C38AF.5070004@internot.info>
Date: Fri, 07 Nov 2014 14:12:47 +1100
From: Joshua Rogers <oss@...ernot.info>
To: oss-security@...ts.openwall.com
Subject: Re: Re: CVE-Request: dpkg handling of 'control' and warnings format string vulnerability
Content-Type: text/plain; charset=utf-8

On 07/11/14 12:27, Seth Arnold wrote:
> It is not safe to build packages from untrusted sources.
> It is not safe to install packages from untrusted sources.
I agree.
But, if you are analyzing a .deb file to see what it contains, etc., you
are not necessarily installing it.(e.g. dry-run)
And what about programs that use dpkg to list the details of the package?


Thanks
-- 
-- Joshua Rogers <https://internot.info/>
