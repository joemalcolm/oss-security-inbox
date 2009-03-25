X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/25/5
Message-ID: <87tz5iovj1.fsf@mid.deneb.enyo.de>
Date: Wed, 25 Mar 2009 09:29:22 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: Lua 5.1.4
Content-Type: text/plain; charset=utf-8

* Kees Cook:

> Has anyone looked at the Lua fixes[1] in 5.1.4?  I'm not familiar with the
> codebase, but it seems that several may have security implications:

As far as I can see, they have security implications if you run
untrusted script code (or untrusted bytecode).  I don't think we've
got such software in our code base, but I might be mistaken.

There are additional issues if you run untrusted bytecode, these
issues haven't been fixed (and are very difficult to fix).
