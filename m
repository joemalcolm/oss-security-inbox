X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/20/40
Message-ID: <20141120201815.4087143c@pc>
Date: Thu, 20 Nov 2014 20:18:15 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Fuzzing project brainstorming
Content-Type: text/plain; charset=utf-8

On Fri, 21 Nov 2014 05:30:36 +1300
Amos Jeffries <squid3@...enet.co.nz> wrote:

> Since they are coming from fuzzing a copy of the exact input which led
> to it is also valuable. There is nothing worse than having to guess at
> what might have led to a crash when the input could literally have
> been anything at all.

I see it pretty much as a given condition that you give the copy of the
crashing input to the upstream devs. I can hardly think of a reason not
to do so (the only thing that comes to mind are confidential or
copyrighted files, I try to make sure I always start fuzzing with
inputs that are freely licensed or created by myself to avoid that).

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
