X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/26/5
Message-ID: <20140926115849.6ca9ab7f@pc>
Date: Fri, 26 Sep 2014 11:58:49 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Fwd: Non-upstream patches for bash
Content-Type: text/plain; charset=utf-8

On Thu, 25 Sep 2014 23:19:24 +0530
Huzaifa Sidhpurwala <huzaifas@...hat.com> wrote:

> $ (for x in {1..200} ; do echo "for x$x in ; do :"; done; for x in
> {1..200} ; do echo done ; done) > test-script.sh $ bash test-script.sh

While I can reproduce the other example and get a segfault, I don't see
anything with this. Is there a typo in it? (tried some variants to
correct, but nothing leads to anything interesting)
I just get a syntax error:

$ (for x in {1..200} ; do echo "for x$x in ; do :"; done; for x in
{1..200} ; do echo done ; done) > test-script.sh $ bash test-script.sh
bash: syntax error near unexpected token `$'

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
