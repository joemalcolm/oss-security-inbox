X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/29/10
Message-ID: <87mw66i3pp.fsf@mid.deneb.enyo.de>
Date: Mon, 29 Dec 2014 21:46:42 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request(s): libgcrypt
Content-Type: text/plain; charset=utf-8

* Joshua Rogers:

> Double free of 'hd':
> http://lists.gnupg.org/pipermail/gcrypt-devel/2014-December/003300.html

The patch seems incorrect because the copy of the pointer in the
caller is not updated when first free happens.

The error can only happen on a path with an allocation failure, right?

> off-by-one out-of-bounds read:
> http://lists.gnupg.org/pipermail/gcrypt-devel/2014-December/003299.html

This doesn't look like a security issue because the callers all use
in-range values.
