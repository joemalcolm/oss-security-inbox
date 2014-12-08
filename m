X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/08/10
Message-ID: <20141208232616.393d3f99@pc>
Date: Mon, 8 Dec 2014 23:26:16 +0100
From: Hanno Böck <hanno@...eck.de>
To: Peter van Dijk <peter.van.dijk@...herlabs.nl>
Cc: oss-security@...ts.openwall.com
Subject: Re: PowerDNS Security Advisory 2014-02
Content-Type: text/plain; charset=utf-8

Thanks for the info.

Right now details on this vuln seem to be scarce. I asked myself some
questions, but I don't know DNS internals very well.

As this affects three implementations the obvious first question would
be if others are affected, too. Has this been checked?

And is this only a DoS for the attacked server or would it also allow
some completely new kind of DNS reflection attack (i.e. generating a
loop where every loop iteration generates an UDP packet send to a
victim)?


-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
