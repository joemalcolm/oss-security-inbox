X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/09/2
Message-ID: <b91d07ac-d53d-4ac6-bab5-818b80ffa3f6@zmail14.collab.prod.int.phx2.redhat.com>
Date: Mon, 09 Jan 2012 00:11:24 -0500 (EST)
From: Kurt Seifried <kseifrie@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Malicious devices & vulnerabilties
Content-Type: text/plain; charset=utf-8

Firewire has DMA. 

http://cansecwest.com/core05/2005-firewire-cansecwest.swf

eSATA - also does DMA.

Thunderbolt also does DMA. 

In other words a lot of the newer/higher end interfaces all do DMA which is ... a problem.

-Kurt

----- Original Message -----
From: "Xi Wang" <xi.wang@...il.com>
To: oss-security@...ts.openwall.com
Sent: Sunday, January 8, 2012 1:13:37 PM
Subject: Re: [oss-security] Malicious devices & vulnerabilties

On Jan 8, 2012, at 6:19 AM, Florian Weimer wrote:
> I think they should be considered vulnerable.  Some applications need
> some robustness to attacks even from the local console (e.g., student
> computer rooms).

Thanks for bringing that up.  Student computer rooms are a
nice example, and a good old memory. ;-)

> USB is also a popular transport in many air-gapped environments.

What else might be on this "untrusted" device list?  Firewire?
I guess those in the PC box don't count.

- xi
