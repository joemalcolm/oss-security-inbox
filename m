X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/07/5
Message-ID: <20161207141515.4f21682f@pc1>
Date: Wed, 7 Dec 2016 14:15:15 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Re: CVE-2016-8655 Linux af_packet.c race condition (local root)
Content-Type: text/plain; charset=utf-8

Hi,

I'm running kernel 4.8.12, which has the fix you pointed out included,
however:

> You can also run it with "crash" as the first argument to force a
> panic.

running your code with the "crash" parameter reliably panics this
kernel.
This doesn't seem right. Is this an incomplete or nonworking fix?

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
