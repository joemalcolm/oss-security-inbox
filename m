X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/08/11
Message-ID: <7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>
Date: Wed, 08 Jun 2016 22:10:03 +0200
From: Roman Drahtmueller <draht@...altsekun.de>
To: oss-security@...ts.openwall.com,Marcus Meissner <meissner@...e.de>
Subject: Re: CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations
Content-Type: text/plain; charset=utf-8


> Are we sure that a "low" rating is justified?
> DSA is basically dead, until the constant time switch is flicked. The
> only countermeasure so far is turning it off. 

Maybe I should be a little more verbose on this:
1) attacker recovers the DSA host key. 
2) attacker mitm-attacks client connections to the server and recovers the user's private key by exploiting the vulnerable openssl on the client side 
3) ...

The same principles apply when the computational burden is reversed for client auth, aren't they?

R.

-- 
schaltsekun.de
