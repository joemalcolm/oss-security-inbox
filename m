X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/21/9
Message-ID: <20150121141504.GA1656@jwilk.net>
Date: Wed, 21 Jan 2015 15:15:04 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: heap overflow in procmail
Content-Type: text/plain; charset=utf-8

* Tavis Ormandy <taviso@...gle.com>, 2014-09-03, 11:52:
>I noticed a heap overflow in procmail when parsing addresses with 
>unbalanced quotes.

Unfortunately, there's more:
https://bugs.debian.org/769937

Apparently procmail upstream is inactive; and nobody understands how 
this code works.

At this point, I'd recommend that formail users switch to reformail[0], 
which is mostly (but not completely) compatible with formail.

[0] http://www.courier-mta.org/reformail.html

-- 
Jakub Wilk
