X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/17/9
Message-ID: <20141117135222.GA949@jwilk.net>
Date: Mon, 17 Nov 2014 14:52:22 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: Fuzzing findings (and maybe CVE requests) - Image/GraphicsMagick, elfutils, GIMP, gdk-pixbuf, file, ndisasm, less
Content-Type: text/plain; charset=utf-8

* Hanno Böck <hanno@...eck.de>, 2014-11-17, 13:33:
>I wasn't able to fuzz a crash out of 7z, arj, msgunfmt (gettext),

https://bugs.debian.org/763820
https://bugs.debian.org/769901

I don't remember the exact details, but I'm pretty sure it took at most 
a few hours of afl-fuzzing to find these crashers.

-- 
Jakub Wilk
