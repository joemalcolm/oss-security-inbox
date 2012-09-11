X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/11/10
Message-Id: <201209111724.12213.geissert@debian.org>
Date: Tue, 11 Sep 2012 17:24:10 -0500
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2012-2238: trytond missing permissions check in button model
Content-Type: text/plain; charset=utf-8

Hi,

FYI, there's an issue affecting trytond 2.4's button model, allowing an 
unauthorised user to execute otherwise-restricted code.

References:
http://news.tryton.org/2012/09/security-releases-for-trytond-24-series.html
http://hg.tryton.org/2.4/trytond/rev/279f0031b461
https://bugs.tryton.org/issue2757 (still hidden as of this time)

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
