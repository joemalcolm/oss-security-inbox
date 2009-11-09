X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/09/6
Message-ID: <87639j2yne.fsf@mid.deneb.enyo.de>
Date: Mon, 09 Nov 2009 22:09:41 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: X server umask issue
Content-Type: text/plain; charset=utf-8

* Josh Bressers:

> What I am wondering though, are there other files the X server creates that could
> be an issue for this? I'm not aware of any, but I'm also not an expert by any
> stretch of the imagination. Am I missing something else?

Doesn't the X server run binary plugins from various sources?  So we
really don't know what's going on in the process, and we should fix
this as a conservative measure (in Debian's terms, in a point release,
not through the ordinary security process).
