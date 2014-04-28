X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/28/3
Message-ID: <20140428083111.GB22438@scapa.corsac.net>
Date: Mon, 28 Apr 2014 10:31:12 +0200
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-0469: xbuffy stack-based buffer overflow in subject processing
Content-Type: text/plain; charset=utf-8

Hi,

just to let the list know that a Debian (and derivatives, like Ubuntu)
specific vulnerability was found and fixed in xbuffy (a program to
monitor mailboxes and newsgroups and show a mail count).

The vulnerability was a stack-based buffer overflow, which could be
triggered by a remote attacker sending a carefully crafted mail.

It was introduced by a Debian-specific patch, and the software looks
dead upstream, so we issued CVE-2014-0469 from our pool.

The fix is only available in unstable [1] now, but stable and oldstable
should follow soon.

[1]: http://packages.qa.debian.org/x/xbuffy/news/20140427T181904Z.html

Regards,
-- 
Yves-Alexis Perez

Download attachment "signature.asc" of type "application/pgp-signature" (491 bytes)
