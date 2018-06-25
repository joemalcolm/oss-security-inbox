X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/25/1
Message-ID: <20180625051008.kx4kdv72lvvudalt@sivokote.iziade.m$>
Date: Mon, 25 Jun 2018 08:10:08 +0300
From: Georgi Guninski <guninski@...inski.com>
To: oss-security@...ts.openwall.com
Subject: Re: Intel hyper-threading security issues
Content-Type: text/plain; charset=utf-8

On Wed, Jun 20, 2018 at 12:48:55AM +0400, Loganaden Velvindron wrote:
> OpenBSD has gone ahead and disabled Intel Hyper threading with a
> fairly detailed comment about the reasons behind:
> 
> https://www.mail-archive.com/source-changes@openbsd.org/msg99141.html
>
According to journos Intel won't patch this:

https://www.theregister.co.uk/2018/06/22/intel_tlbleed_key_data_leak/
Meet TLBleed: A crypto-key-leaking CPU attack that Intel reckons we
shouldn't worry about
How to extract 256-bit signing keys with 99.8% success

Intel has, for now, no plans to specifically address a side-channel
vulnerability in its processors that can be potentially exploited by
malware to extract encryption keys and other sensitive info from
applications.
 
