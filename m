X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/14
Message-ID: <20261021091732.578858ca@hboeck.de>
Date: Wed, 21 Oct 2026 09:17:32 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

Hi,

On Wed, 21 Oct 2026 08:58:41 +0200
Solar Designer <solar@...nwall.com> wrote:

> I guess all other keys corresponding to CA root and intermediate certs
> will now be audited for having potentially weak private keys.
> 
> In fact, I'm surprised this wasn't the case already like it was for
> many PGP RSA keys many years ago:
> 
> https://openwall.com/lists/oss-security/2016/05/11/11
> 
> or perhaps it was, just not covering all key types and known
> weaknesses and/or not repeated often enough?  We need it automated,
> not something done occasionally when someone is in the mood.

I am definitely already doing that. That's what my badkeys project is
all about. I do automatically scan all CCADB certs for known
weaknesses. But, of course, the "all the known weaknesses" part is
tricky if you don't know what to look for.

I had a suggestion that I shall look for small ecdsa keys. I hadn't
implemented it. Will post the full story when I find time to write it
up. But, what do they say? Hindsight is 20/20.


-- 
Hanno Böck
https://hboeck.de/
