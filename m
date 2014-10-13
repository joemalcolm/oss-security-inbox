X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/13/1
Message-ID: <loom.20141013T051234-220@post.gmane.org>
Date: Mon, 13 Oct 2014 03:16:40 +0000 (UTC)
From: Martin Pool <mbp@...rcefrog.net>
To: oss-security@...ts.openwall.com
Subject: Re: [CVE Requests] rsync and librsync collisions
Content-Type: text/plain; charset=utf-8

Hi,

I'm the librsync (not rsync) maintainer. I can confirm this is a real bug, 
and I would like a CVE assigned.

I appreciate Mik reporting this.

Since it's now been discussed in public I don't see any point treating this 
as embargoed.

I'm working on his patch adding BLAKE2 (eg making it pass tests, having an 
option for back-compatibility) so that it can be released. 

-m

