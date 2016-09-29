X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/29/6
Message-ID: <20160929103210.bm5itc2cu4a672ws@jwilk.net>
Date: Thu, 29 Sep 2016 12:32:10 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2016-7545 -- SELinux sandbox escape
Content-Type: text/plain; charset=utf-8

* Christos Zoulas <christos@...las.com>, 2016-09-26, 13:53:
>On the BSDs TIOCSTI has been limited to the superuser since the 4.4BSD Lite 2 
>release in 1995 (IIRC).

Hmm. I've just tried OpenBSD 5.7 and FreeBSD 10.3, and TIOCSTI works fine for 
non-root users.

-- 
Jakub Wilk
