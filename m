X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/15/5
Message-ID: <5466FC66.9010706@internot.info>
Date: Sat, 15 Nov 2014 18:10:30 +1100
From: Joshua Roers <honey@...ernot.info>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-Request: dpkg handling of 'control' and warnings format string vulnerability
Content-Type: text/plain; charset=utf-8

On 06/11/14 17:07, Joshua Rogers wrote:
> The vulnerable function, warningv([..]), is called in many other places,
> and is not limited to '-i'.
Just for reference: the vulnerable function is actually
parse_error_msg([..]), not warningv([..]).

Thanks,
-- 
-- Joshua Rogers <https://internot.info/>
