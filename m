X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/29/5
Message-ID: <914336965.2985431233255231152.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 29 Jan 2009 13:53:51 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: coley@...re.org
Subject: CVE Request (trickle)
Content-Type: text/plain; charset=utf-8

Hi Steve,

trickle has what is similar to all the RPATH flaws that got CVE ids a while back:
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=513456

It seems it could set a bad LD_PRELOAD path when the trickle command is run.

Thanks.

-- 
    JB
