X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/12/5
Message-ID: <87r69y3h72.fsf@mid.deneb.enyo.de>
Date: Sat, 12 Jul 2008 23:50:41 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: DNS vulnerability: other relevant software
Content-Type: text/plain; charset=utf-8

* Eugene Teo:

> Actually, I'm not sure. I'm checking with my colleagues who may be more
> familiar with the implementation of net_random/random32() routine.

Gosh, I must be missing something.  This generator appears to be linear
(but the reduction to the available port range is not).

The comment is pretty clear, too:

 *      A 32 bit pseudo-random number is generated using a fast
 *      algorithm suitable for simulation. This algorithm is NOT
 *      considered safe for cryptographic use.

I haven't written an exploit because I'm not sure how to bypass the
modulo operation.  The modulus is 28233 = 3 * 3 * 3137 by default, so
it's not obvious to me how to recover the internal status without 2**51
effort.
