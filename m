X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/08/10
Message-ID: <4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>
Date: Wed, 08 Jun 2016 21:52:51 +0200
From: Roman Drahtmueller <draht@...altsekun.de>
To: oss-security@...ts.openwall.com,Marcus Meissner <meissner@...e.de>
Subject: Re: CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations
Content-Type: text/plain; charset=utf-8

Hi Marcus,

> Hi,
> 
> the openssl team usually announces those LOW issues together with the
> other
> issues during their semi regular advisories.
> 
> (And usually as soon as these LOW CVE issues are getting added to git,
> a
> new advisory is not far away.)
> 

The only low part here appears to be the number of samples needed for a full recovery. 
Are we sure that a "low" rating is justified?
DSA is basically dead, until the constant time switch is flicked. The only countermeasure so far is turning it off. 

Thx,
Roman.

-- 
schaltsekun.de
