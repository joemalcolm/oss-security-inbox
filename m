X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/19/3
Message-ID: <87hbn7zczt.fsf@mid.deneb.enyo.de>
Date: Mon, 19 Apr 2010 17:19:18 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: fetchmail 4.6.3...6.3.16 DoS in -v -v mode in multibyte locales on invalid input
Content-Type: text/plain; charset=utf-8

* Matthias Andree:

> Type:		malloc() Buffer overrun with printable characters

Is this the right summary?  It sounds like a heap buffer overflow, but
based on the description, I think it's just an infinite loop
allocating lots of memory.
