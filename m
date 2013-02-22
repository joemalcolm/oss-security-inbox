X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/22/16
Message-ID: <2326732.azha692O1B@devil>
Date: Fri, 22 Feb 2013 14:04:54 +0100
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: webfs world-readable log
Content-Type: text/plain; charset=utf-8

Hello,

webfs[1], a Lightweight HTTP server for static content creates its log with 
world-readable permission:

# ls /var/log/webfsd.log -la
-rw-r--r-- 1 root root 0 Feb 22 14:02 /var/log/webfsd.log

Please assign a CVE.
-- 
Agostino Sarubbo
Gentoo Linux Developer
