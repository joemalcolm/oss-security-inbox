X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/20
Message-ID: <lAcUgmfSTD6YfF29yvDOHQ@lichtvoll.de>
Date: Fri, 06 Nov 2026 18:03:49 +0100
From: Martin Steigerwald <martin@...htvoll.de>
To: oss-security@...ts.openwall.com
Subject:  Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Greetings.

Matt Johnston - 06.11.26, 03:05:13 CET:
> Prior to ~2019 when the OpenSSH change was made, Debian
> would have shown a different manpage that only documents
> NULL for error [1].
> Changing system APIs is problematic!

That.

If applications do not check for a NULL pointer:

Let them crash!

Really.

Am I the only one thinking that the work-around in OpenSSH will not be 
enough to truly address this issue? Do we really know whether this 
behavior can not cause security havoc anywhere else?

The work-around in OpenSSH is important. Thanks!

But is it sufficient?

> https://www.man7.org/linux/man-pages/man3/crypt.3.html#RETURN_VALUE
> 
>    On success, a pointer to the hashed password is returned.  On
>    error, NULL is returned.

Best,
-- 
Martin


