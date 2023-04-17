X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/17/1
Message-ID: <20230417064047.dhrrkuzjmtx4yhgj@jwilk.net>
Date: Mon, 17 Apr 2023 08:40:47 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: <oss-security@...ts.openwall.com>
Subject: Re: CVE-2023-2002: Linux Bluetooth: Unauthorized management command execution
Content-Type: text/plain; charset=utf-8

* Steffen Nurpmeso <steffen@...oden.eu>, 2023-04-16 22:57:
>have you verified that they do not use isatty(3)

I'm pretty sure they do. But isatty(3) is implemented using the TCGETS 
ioctl, so that doesn't help.

-- 
Jakub Wilk
