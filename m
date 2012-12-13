X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/13/12
Message-ID: <20121213161906.GG2754@sentinelchicken.org>
Date: Thu, 13 Dec 2012 08:19:06 -0800
From: Tim <tim-security@...tinelchicken.org>
To: oss-security@...ts.openwall.com
Subject: Re: Robust XML validation
Content-Type: text/plain; charset=utf-8


> Validating against trusted schemas/DTDs would not be sufficient in my
> opinion. For example, such validations are not effective against the
> billion laughs attack (http://en.wikipedia.org/wiki/Billion_laughs).

But... isn't the point that you'd never accept a DTD or schema from an
untrusted source?  That is, never even bother to parse it and
arguably, reject documents from users that contain them.

tim
