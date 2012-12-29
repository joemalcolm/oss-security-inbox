X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/29/7
Message-ID: <50DF002E.5000708@gmx.de>
Date: Sat, 29 Dec 2012 15:37:34 +0100
From: Tilmann Haak <tilmann.haak@....de>
To: oss-security@...ts.openwall.com
Subject: CVE request: MoinMoin Wiki (XSS in rss link)
Content-Type: text/plain; charset=utf-8

Hi all,

there is an XSS issue in MoinMoin wiki, version 1.9.5. Function
rsslink() in "theme/__init__.py" does not properly escape the page name
parameter.

Details can be found at: http://moinmo.in/SecurityFixes

A fix is available at: http://hg.moinmo.in/moin/1.9/rev/c98ec456e493

Could you please assign a CVE number?

kind regards,
   Tilmann
