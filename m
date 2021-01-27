X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/27/2
Message-ID: <alpine.BSF.2.21.9999.2101272010280.36435@aneurin.horsfall.org>
Date: Wed, 27 Jan 2021 20:31:51 +1100 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: Baron Samedit: Heap-based buffer overflow in Sudo (CVE-2021-3156)
Content-Type: text/plain; charset=utf-8

> I think that's a very fair point. Also it seems the development trend in 
> sudo is to actually increase complexity even more and adding all kinds 
> of features that really should not be part of a suid tool, see e.g. 
> https://computingforgeeks.com/better-secure-new-sudo-release/

I just happen to have a very much simplified version called "ssu"; I 
worked on it and fixed a few gaping security holes...  They should have 
been obvious to any novice programmer (which said idiot^2 boss was not).

-- Dave
