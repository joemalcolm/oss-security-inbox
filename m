X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/20/18
Message-ID: <20141120135537.7ffabfe5@pc>
Date: Thu, 20 Nov 2014 13:55:37 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Fuzzing findings (and maybe CVE requests) - Image/GraphicsMagick, elfutils, GIMP, gdk-pixbuf, file, ndisasm, less
Content-Type: text/plain; charset=utf-8

Am Thu, 20 Nov 2014 15:43:15 +0300
schrieb Alexander Cherepanov <cherepan@...me.ru>:

> less crashed or imagemagick called from lesspipe?

less itself. I tried with disabled lesspipe. Seems to be some kind of
unicode multibyte char decoding issue. Probably unrelated to gif.
It's only exposed with asan or valgrind.

Interesting: With all its power afl wasn't able to find this issue.

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
