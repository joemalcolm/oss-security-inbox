X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/24/5
Message-ID: <1629487.68S4Xka9K7@devil>
Date: Sun, 24 Feb 2013 20:00:57 +0100
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: monkeyd world-readable logdir
Content-Type: text/plain; charset=utf-8

Monkeyd, a small, fast, and scalable web server, produces, at least on gentoo 
a world-readable log.

# ls /var/log/monkeyd/master.log -la
-rw-r--r-- 1 root root 0 Feb 24 19:56 /var/log/monkeyd/master.log

Upstream site: http://www.monkey-project.com/

-- 
Agostino Sarubbo
Gentoo Linux Developer
