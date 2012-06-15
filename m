X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/06/15/1
Message-ID: <4FDAB9F9.9000403@redhat.com>
Date: Fri, 15 Jun 2012 09:58:41 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: NetworkManager creates an open network when asked to create an adhoc-WPA network
Content-Type: text/plain; charset=utf-8

Hi All,

In NetworkManager, when a new wireless network was created with
WPA/WPA2 security, it created an open/insecure network.
>From the commit, it seems the bug exists in the kernel.

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=782627
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=655972
http://cgit.freedesktop.org/NetworkManager/NetworkManager/commi/?id=69247a00eacd00617acbf1dfcee8497437b8ad39

The patch disables WPA adhoc networks completely untill a better
solution is found.

Can a CVE id be please assigned to this issue?


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team

