X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/07/14
Message-ID: <20150207213939.GA23823@nef.pbox.org>
Date: Sat, 7 Feb 2015 22:39:39 +0100
From: Alistair Crooks <agc@...src.org>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Spencer regexp heap overflow?
Content-Type: text/plain; charset=utf-8

Hi,

We were contacted in retrospect by a researcher about this blog entry
he'd written and published:

	https://guidovranken.wordpress.com/2015/02/04/full-disclosure-heap-overflow-in-h-spencers-regex-library-on-32-bit-systems/

and I haven't seen anything flying across this list, so I thought I'd
bring it to people's attention here.

There's a fix in NetBSD HEAD for this, and it will flow out to the
release branches in due course.

I have to admit we're having a hard time trying to think of a service
that exposes regcomp(3) over the internet - there's a reason that
Google did re2 for Google code, after all - but I may well be missing
something...

Regards,
Alistair

NetBSD/pkgsrc security
