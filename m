X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/08/1
Message-ID: <871uracugf.fsf@mid.deneb.enyo.de>
Date: Sun, 08 Jan 2012 12:19:44 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: Malicious devices & vulnerabilties
Content-Type: text/plain; charset=utf-8

* Xi Wang:

> I am wondering where to draw the line.  Should such device drivers
> be considered vulnerable or not?  Thanks.

I think they should be considered vulnerable.  Some applications need
some robustness to attacks even from the local console (e.g., student
computer rooms).

USB is also a popular transport in many air-gapped environments.
