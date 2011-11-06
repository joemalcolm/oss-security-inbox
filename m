X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/06/4
Message-ID: <87vcqwewu1.fsf@mid.deneb.enyo.de>
Date: Sun, 06 Nov 2011 22:59:34 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: caml-light insecure temporary files
Content-Type: text/plain; charset=utf-8

* David Holland:

> I don't know if anyone besides us still ships caml-light; it is long
> dead upstream and obsoleted by ocaml. AFAICT neither Debian nor Red
> Hat does. But just in case: it uses mktemp() insecurely, and also does
> unsafe things in /tmp during make install.

Moscow ML includes a copy of the affected code, and it's perhaps less
obsolete than caml-light.  It seems to be part of the FreeBSD ports
collection.
