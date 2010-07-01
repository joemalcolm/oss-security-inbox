X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/01/4
Message-ID: <i0gpbq$1q9$1@dough.gmane.org>
Date: Wed, 30 Jun 2010 20:00:52 -0500
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: ZNC NULL pointer dereference
Content-Type: text/plain; charset=utf-8

Hi,

A NULL pointer dereference has been reported in ZNC.

>From [1]:
> Fix a NULL pointer dereference with traffic stats
> 
> When something requested traffic statistics while there was an 
unauthenticated
> connection to ZNC, there was a NULL pointer dereference.

Please assign a CVE id.

References:
http://bugs.debian.org/584929
[1]http://znc.svn.sourceforge.net/viewvc/znc?view=revision&revision=2026

Regards,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net


