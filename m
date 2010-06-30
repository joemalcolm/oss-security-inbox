X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/30/3
Message-ID: <i0eik7$3fp$1@dough.gmane.org>
Date: Tue, 29 Jun 2010 23:53:36 -0500
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: HTML Purifier
Content-Type: text/plain; charset=utf-8

Hi,

HTML Purifier 4.1.1 fixes an IE-specific XSS vulnerability.

Upstream announcement:
http://htmlpurifier.org/news/2010/0531-4.1.1-released

Fix:
http://repo.or.cz/w/htmlpurifier.git/commit/d3abcb90e30592c619047d878cf9c72b7c5836a3

This one is required for the fix to apply (the change is overwritten by the 
fix):
http://repo.or.cz/w/htmlpurifier.git/commit/da94d3d6acdf417ac890426eb1fd239ba62b042d

Could a CVE id be assigned?

Thanks in advance.

Regards,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net


