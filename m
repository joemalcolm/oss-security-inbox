X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/07/4
Message-ID: <52019063.20707@gt.net>
Date: Tue, 06 Aug 2013 17:10:11 -0700
From: Nathan March <nathan@...net>
To: oss-security@...ts.openwall.com
CC: Kurt Seifried <kseifried@...hat.com>,  Assign a CVE Identifier <cve-assign@...re.org>, "Steven M. Christey" <coley@...re.org>
Subject: Re: OpenX Ad Server Backdoor CVE?
Content-Type: text/plain; charset=utf-8

On 8/6/2013 4:52 PM, Kurt Seifried wrote:
> According to a post by Heise Security, a backdoor has been spotted in
> the popular open source ad software OpenX [1][2]. Appearantly the
> backdoor has been present since at least November 2012. I tried to
> download the source to verify the information, but it appears the
> files have been removed.

I can confirm this is in 2.8.10 that was downloaded on July 15th. It's 
inside the /etc/plugins/openXVideoAds.zip at 
./plugins/deliveryLog/vastServeVideoPlayer/flowplayer/3.1.1/flowplayer-3.1.1.min.js

md5sum on the zip matches 6b3459f16238aa717f379565650cb0cf

- Nathan

-- 
Nathan March<nathan@...net>
Gossamer Threads Inc. http://www.gossamer-threads.com/
Tel: (604) 687-5804 Fax: (604) 687-5806

