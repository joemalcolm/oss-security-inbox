X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/04/20
Message-ID: <87vckbtxhr.fsf@mid.deneb.enyo.de>
Date: Sat, 05 May 2012 00:03:28 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: more tight ioctl permissions in dl2k driver
Content-Type: text/plain; charset=utf-8

* Marcus Meissner:

> Stephan Mueller reported lack of capable(CAP_NET_ADMIN) checks
> in private ioctls in the dl2k network card driver.

Have you tested the driver with actual hardware under load?
The last time I tested it, it was not really usable.
