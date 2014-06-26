X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/26/17
Message-ID: <20140626193238.507c5845@hboeck.de>
Date: Thu, 26 Jun 2014 19:32:38 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: MediaWiki releases 1.19.17, 1.21.11, 1.22.8 and 1.23.1
Content-Type: text/plain; charset=utf-8

On Wed, 25 Jun 2014 17:03:33 -0700
Chris Steipp <csteipp@...imedia.org> wrote:

> Since the bug is public now
> (http://lists.wikimedia.org/pipermail/mediawiki-announce/2014-June/000155.html),
> I didn't get a CVE in advance because I thought this was likely a
> hardening fix. We couldn't find a way to exploit it to actually track
> a user on our site. However, we kept it private until we released the
> patch, since we weren't sure it couldn't be exploited on a wiki with
> non-standard image handling.

This is probably another very fundamental question of CVE assignment,
but IMHO: "We're not sure if this can be exploited" is certainly worth
a CVE.

I'd suggest that one gets assigned.

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
