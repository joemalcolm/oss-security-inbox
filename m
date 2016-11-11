X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/11/10
Message-ID: <20161111183744.nwribaatdctrb3kv@jwilk.net>
Date: Fri, 11 Nov 2016 19:37:44 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Pipelight: broken validation of dependency installer signature
Content-Type: text/plain; charset=utf-8

Pipelight <http://pipelight.net/cms/about.html> is a wrapper for using Windows 
plugins in Linux browsers. The software comes with an option to update the 
install-dependency script, which contains the plugin database. The downloaded 
code was supposed to be verified against a GPG key, but the verification code 
was broken.

Bug report: https://bugs.launchpad.net/pipelight/+bug/1632502
Committed fix: https://bitbucket.org/mmueller2012/pipelight/commits/c9fc745d46be

-- 
Jakub Wilk
