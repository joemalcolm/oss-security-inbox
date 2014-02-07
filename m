X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/07/11
Message-ID: <20140207204559.4e4ddd82@redhat.com>
Date: Fri, 7 Feb 2014 20:45:59 +0100
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: IcedTea-Web insecure temporary directory use - CVE-2013-6493
Content-Type: text/plain; charset=utf-8

Hi!

IcedTea-Web version 1.4.2 released earlier this week fixes an issue
related to handling of the directory that is used to store sockets for
communication between in browser plugin, and JVM running applets.  The
directory was usually created in /tmp, using predictable name, and its
ownership and permissions were not checked.  This issue was reported by
Michael Scherer of Red Hat and was assigned CVE-2013-6493.

References:
http://mail.openjdk.java.net/pipermail/distro-pkg-dev/2014-February/026192.html
http://icedtea.classpath.org/hg/icedtea-web/rev/228e3652214a
http://icedtea.classpath.org/hg/icedtea-web/rev/1e0507976663
https://bugzilla.redhat.com/show_bug.cgi?id=1010958

-- 
Tomas Hoger / Red Hat Security Response Team
