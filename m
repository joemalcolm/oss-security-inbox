X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/20/1
Message-ID: <578F2925.2090104@tu-bs.de>
Date: Wed, 20 Jul 2016 09:32:53 +0200
From: Christian Wressnegger <c.wressnegger@...bs.de>
To: oss-security@...ts.openwall.com
Cc: Fabian Yamaguchi <f.yamaguchi@...bs.de>, Alwin Maier <alwin.maier@...bs.de>
Subject: Buffer overflow in libarchive-3.2.0
Content-Type: text/plain; charset=utf-8

Hi oss-security,
(please note, I'm not on the list.)

We've recently discovered a vulnerability in libarchive-3.2.0 when
writing iso9660 containers and reported it to the developers.

https://github.com/libarchive/libarchive/issues/711

The issue has been addressed by the following commit

https://github.com/libarchive/libarchive/commit/3014e19820ea53c15c90f9d447ca3e668a0b76c6

and included in version 3.2.1 of the library.

I was wondering whether anybody could assign a CVE for this?

Thanks and kind regards,
Christian Wressnegger (TU Braunschweig)
