X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/06/2
Message-ID: <2687145.rPMDp5lcoA@devil>
Date: Sun, 06 Apr 2014 19:32:41 +0200
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: CVE request: Icecast world readable log/logdir
Content-Type: text/plain; charset=utf-8

I just noticed that (at least on gentoo), the following package produces a 
world readable log:

Icecast (http://www.icecast.org):
# ls -la /var/log/icecast 
total 18648
drwxrw-r--  2 icecast nogroup     4096 Apr  6 12:23 .
drwxr-xr-x 15 root    root        4096 Apr  5 04:20 ..
-rw-r--r--  1 icecast nogroup  5646894 Apr  6 19:27 access.log
-rw-r--r--  1 icecast nogroup  3181987 Apr  6 19:27 error.log
-- 
Agostino Sarubbo
Gentoo Linux Developer
