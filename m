X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/17/3
Message-ID: <20141017095329.62bf0cc4@pc>
Date: Fri, 17 Oct 2014 09:53:29 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: attacking hsts through ntp
Content-Type: text/plain; charset=utf-8

Am Thu, 16 Oct 2014 18:45:18 -0600
schrieb Kurt Seifried <kseifried@...hat.com>:

> You can't trust remote servers you're getting the content from... what
> if I send wonky times to try and screw with your browser? Or header
> injection attacks? No thanks.

It's not entirely a bad idea. You could say "if http header time and
system time differ severely (> 1 week or something) then don't connect
to hsts sites".

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
