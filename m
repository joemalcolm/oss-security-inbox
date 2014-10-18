X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/18/9
Message-ID: <1413635222.6447.65.camel@debian.org>
Date: Sat, 18 Oct 2014 14:27:02 +0200
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: attacking hsts through ntp
Content-Type: text/plain; charset=utf-8

On ven., 2014-10-17 at 10:17 +0000, Stephen Röttger wrote:
> > The solution would be to have a more reliable PC time. How do we do
> that?
> 
> We're currently working on an IETF draft to bring authentication to NTP:
> https://tools.ietf.org/html/draft-ietf-ntp-network-time-security-04 and
> would be happy for people to take a look and give feedback.
> If you don't want to read the draft, let me know and I will outline the
> protocol for you.

What about RFC 5906 and the current authentication schemes
(http://www.eecis.udel.edu/~mills/ntp/html/authentic.html) ?

I'm unsure they really used (usable) in a non-controlled environment but
at least there's already something in place.

Regards,
-- 
Yves-Alexis

Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
