X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/03/3
Message-ID: <878f6a682e3b533c003e3c06569784b1f442ad67.camel@gnome.org>
Date: Mon, 03 Jun 2019 11:24:19 -0500
From: Federico Mena Quintero <federico@...me.org>
To: oss-security@...ts.openwall.com
Cc: Albert Astals Cid <aacid@....org>
Subject: Crash / fix in bzip2
Content-Type: text/plain; charset=utf-8

Hello,

oss-fuzz found a crasher in bzip2, and Albert Astals Cid has written a
patch for it.  The full context of the bug is here:

https://gitlab.com/federicomenaquintero/bzip2/merge_requests/1

The patch itself is this:

https://gitlab.com/federicomenaquintero/bzip2/commit/15c918f1de00588321c857a10d0afdbaf96e4ce9

  Federico

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
