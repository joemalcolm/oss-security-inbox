X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/24/32
Message-ID: <20140924232709.75fa4ad1@pc>
Date: Wed, 24 Sep 2014 23:27:09 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

Tavis Ormandy just tweetet this:
https://twitter.com/taviso/status/514887394294652929

The bash patch seems incomplete to me, function parsing is still
brittle. e.g. $ env X='() { (a)=>\' sh -c "echo date"; cat echo


-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
