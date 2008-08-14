X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/14/2
Message-ID: <20080814150155.GA22912@falco.falcal.net>
Date: Thu, 14 Aug 2008 17:01:55 +0200
From: Raphael Marichez <falco@...too.org>
To: oss-security@...ts.openwall.com
Subject: HAVP 0.89 fixes a crash
Content-Type: text/plain; charset=utf-8


Hi,

havp (http://www.server-side.de/) seems to fix a DoS:

03.08.2008
HAVP 0.89 released
- Fix possible retry loop and hang (thanks to Peter Warasin @ endian.it)
- Always send Via: header, fixes some IIS problems (e.g. MSNBC)

Original report:

https://sourceforge.net/mailarchive/message.php?msg_name=487CDF51.5060201%40endian.com


-- 
Raphael Marichez aka Falco
Gentoo Linux Security Team
