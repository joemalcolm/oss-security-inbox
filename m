X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/17/4
Message-ID: <20141017093252.GA4040@balvenie>
Date: Fri, 17 Oct 2014 11:32:53 +0200
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: attacking hsts through ntp
Content-Type: text/plain; charset=utf-8

On Fri, Oct 17, 2014 at 09:53:29AM +0200, Hanno Böck wrote:
> Am Thu, 16 Oct 2014 18:45:18 -0600
> schrieb Kurt Seifried <kseifried@...hat.com>:
> 
> > You can't trust remote servers you're getting the content from... what
> > if I send wonky times to try and screw with your browser? Or header
> > injection attacks? No thanks.
> 
> It's not entirely a bad idea. You could say "if http header time and
> system time differ severely (> 1 week or something) then don't connect
> to hsts sites".

Sounds a bit like kerberos
-- 
Yves-Alexis

Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
