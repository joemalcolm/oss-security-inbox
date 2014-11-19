X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/19/3
Message-ID: <546BF2C0.6060000@mccme.ru>
Date: Wed, 19 Nov 2014 04:30:40 +0300
From: Alexander Cherepanov <cherepan@...me.ru>
To: oss-security@...ts.openwall.com
Subject: CVE Request: LibreOffice -- several issues
Content-Type: text/plain; charset=utf-8

Hi!

Could CVEs please be assigned to the following issues?

https://bugs.freedesktop.org/show_bug.cgi?id=86446
Crashes importing malformed .doc -- DoS

https://bugs.freedesktop.org/show_bug.cgi?id=86447
Crashes importing malformed .ppt -- DoS

https://bugs.freedesktop.org/show_bug.cgi?id=86448
Crashes importing malformed .rtf -- DoS

https://bugs.freedesktop.org/show_bug.cgi?id=86449
Crash importing malformed .rtf -- potentially exploitable for RCE

https://bugs.freedesktop.org/show_bug.cgi?id=86451
Crashes importing malformed .rtf

Tested with LibreOffice 3.5.4 on Debian Stable (amd64).

Found during one evening with zzuf.

IIUC any crasher (or 100% cpu usage) in LO is a security issue because 
it takes down all other windows with it. But Michael Meeks from 
officesecurity@...ts.freedesktop.org indicated that they are not 
interested in CVEs for DoS-only crashers (I haven't asked about RCE) 
because they still have 180 crashers in their own testing. All info 
about their testing is regularly posted to LO devel mailing list.

-- 
Alexander Cherepanov
