X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/26/26
Message-ID: <20141126210109.2978acc6@pc>
Date: Wed, 26 Nov 2014 21:01:09 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Apple goto fail - lessons that should be learned
Content-Type: text/plain; charset=utf-8

On Wed, 26 Nov 2014 12:34:15 -0500 (EST)
"David A. Wheeler" <dwheeler@...eeler.com> wrote:

> I've previously done this exercise with:
> * Heartbleed: http://www.dwheeler.com/essays/heartbleed.html
> * Shellshock: http://www.dwheeler.com/essays/shellshock.html
> * POODLE: http://www.dwheeler.com/essays/poodle-sslv3.html

I've written something similar on POODLE (and BERserk), not sure if I
posted this here before:
https://blog.hboeck.de/archives/858-Dancing-protocols,-POODLEs-and-other-tales-from-TLS.html

Not surprisingly I come to somewhat similar conclusions (protocol
downgrade protection, encrypt-then-mac etc.)
BERserk has somewhat similar problems, e.g. it's basically also a "we
don't deprecate weak/old crypto" (PKCS #1 1.5 and RSA with e=3).

But the most important conclusion from POODLE is imho: Be very careful
with implementing workarounds for broken hard/software - and don't do
them if they compromise security.


-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
