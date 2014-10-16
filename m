X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/16/15
Message-ID: <20141016223833.4ba7fffa@pc.quadriga-www.com>
Date: Thu, 16 Oct 2014 22:38:33 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: attacking hsts through ntp
Content-Type: text/plain; charset=utf-8

Am Thu, 16 Oct 2014 14:34:25 -0600
schrieb Kurt Seifried <kseifried@...hat.com>:

> I did not know that. One concern I have is also HSTS has no tools to
> manage them in browsers, at least when I last checked, has that
> changed? There is some room for DoS due to this on the client side.

chrome://net-internals/#hsts

Not pretty or easy to use, but helps debugging stuff (especially with
HPKP which is quite picky when you do it wrong). I don't know about
Firefox or others.

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
