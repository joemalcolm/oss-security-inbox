X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/08/10
Message-ID: <20120108220818.353d2a1f@fb6vu8j9i2>
Date: Sun, 8 Jan 2012 22:08:18 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Malicious devices & vulnerabilties
Content-Type: text/plain; charset=utf-8

Am Sun, 8 Jan 2012 09:07:25 -0800
schrieb Greg KH <greg@...ah.com>:

> They should be considered buggy, yes, and as such, the kernel
> developers will fix any reported problems (or we should, if not,
> please let me know.)
> 
> But note, as these almost always fall under the "you have physical
> access" category, their security impact is generally considered low.

As far as publicly known, it's likely that Stuxnet was originally
spread via a security problem with USB.

Also, I'd doubt the "physical access" category. It may just require a
bit of social engineering ("I have the file you requested on this usb
stick").

Considering that I'd strongly disagree classifying such issues "low
impact".

At least for pluggable devices, I'd consider such issues rather
serious. It's another thing with PCI or other devices that require
significant work to attach to a piece of hardware.



-- 
Hanno Böck		mail/jabber: hanno@...eck.de
GPG: BBB51E42		http://www.hboeck.de/

Download attachment "signature.asc" of type "application/pgp-signature" (837 bytes)
