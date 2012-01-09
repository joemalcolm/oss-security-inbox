X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/09/8
Message-ID: <87fwfozn1i.fsf@mid.deneb.enyo.de>
Date: Mon, 09 Jan 2012 20:35:53 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: Malicious devices & vulnerabilties
Content-Type: text/plain; charset=utf-8

* Kurt Seifried:

> Firewire has DMA. 
>
> http://cansecwest.com/core05/2005-firewire-cansecwest.swf
>
> eSATA - also does DMA.
>
> Thunderbolt also does DMA. 
>
> In other words a lot of the newer/higher end interfaces all do DMA
> which is ... a problem.

Gigabit Ethernet adapters also do DMA.  Is it really the case that the
(e)SATA implementation is as problematic as IEEE 1394?  I don't think
SATA exposes the DMA functionality over the wire.
