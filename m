X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/05/8
Message-ID: <20160505103405.GA25044@openwall.com>
Date: Thu, 5 May 2016 13:34:05 +0300
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: broken RSA keys
Content-Type: text/plain; charset=utf-8

On Wed, May 04, 2016 at 09:18:26PM -0400, Stanislav Datskovskiy wrote:
> older versions of GPG
> will regard the bottom 32 bits of a modulus as the 'fingerprint',
> rather than performing a hash.

Are you sure?  Got an example?

I think the fingerprint was always a hash, with key id being last 32+
bits from it.  I think it is compatible with PGP 2.x's from 1990s.

Did I possibly miss some very early versions of GPG where this was not
true, transitioning from PGP 2.x to later GPG (which I did) and thus not
noticing this aspect?  (Just trying to see how your statement could
possibly be correct and consistent with my experience using PGP/GPG.)

Alexander
