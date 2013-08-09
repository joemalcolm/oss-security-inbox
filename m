X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/09/7
Message-ID: <1777398.QCavq5Ahkj@devil>
Date: Fri, 09 Aug 2013 19:15:16 +0200
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: nullmailer world readable /etc/nullmailer/remotes
Content-Type: text/plain; charset=utf-8

Hello,

On Gentoo, the file /etc/nullmailer/remotes is installed with wrong 
permissions:

~ # ls -la /etc/nullmailer/remotes 
-rw-r--r-- 1 root root 971 Aug  9 18:58 /etc/nullmailer/remotes

Nullmailer-1.11-r2 contains the fix, all prior versions are affected.

Please assign a CVE.
-- 
Agostino Sarubbo
Gentoo Linux Developer
