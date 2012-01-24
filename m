X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/24/8
Message-ID: <1327435624.27688.12.camel@new-desktop>
Date: Tue, 24 Jan 2012 21:07:03 +0100
From: Nicolas Grégoire <nicolas.gregoire@...rri.fr>
To: oss-security@...ts.openwall.com
Subject: XSLT issue in MoinMoin
Content-Type: text/plain; charset=utf-8

Hello,

some vulnerabilities have been published with version 1.9.3 of
MoinMoin : http://moinmo.in/SecurityFixes

The XSS already has a CVE but not the XSLT issue. This issue is very
similar to CVE-2012-0057 patched in PHP 5.3.9 (except the XSLT engine
which is here '4Suite').

The patch is simply a documentation update, given that 4Suite (afaik)
doesn't allow to desactivate its extensions :
http://hg.moinmo.in/moin/1.9/rev/99e2309a7ec0

Regards,
Nicolas Grégoire


