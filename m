X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/14/1
Message-ID: <alpine.BSF.2.21.9999.2011141426320.48674@aneurin.horsfall.org>
Date: Sat, 14 Nov 2020 14:35:01 +1100 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: Buffer Overflow in raptor widely unfixed in Linux distros
Content-Type: text/plain; charset=utf-8

On Fri, 13 Nov 2020, Hanno Böck wrote:

[...]

> It may be interesting to discuss how this happened. From my side I feel 
> I did what I should do - I reported it to the project and later 
> disclosed it publicly on oss-security. Apparently it seems there is no 
> reliable process to make sure publicly reported vulns eventually get 
> patched in distros if there is no active upstream.

There's always the "Full Disclosure" list (URL forgotten, but 
http://lists.grok.org.uk rings a bell).

Their policy is simple: provide ample warning, then disclose the bug; the 
problem is that Big Corporations brush off a bug report with "We're 
working on it" and actually do nothing, because fixing bugs takes time 
and money.  Funny how quickly a bug is fixed when it's published...

-- Dave
