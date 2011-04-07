X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/07/9
Message-ID: <20110407211446.GE3934@redhat.com>
Date: Thu, 7 Apr 2011 15:14:47 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: tinyproxy runs as an open proxy when attempting to restrict allowable IP ranges
Content-Type: text/plain; charset=utf-8

A bug in tinyproxy prior to 1.8.3 would turn it into an open proxy if it
were defined with an "Allow" statement including an IP address range
(i.e. 192.168.0.0/24).

Could a CVE be assigned to this?

References:

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=621493
https://banu.com/bugzilla/show_bug.cgi?id=90
https://banu.com/cgit/tinyproxy/commit/?id=e8426f6662dc467bd1d827100481b95d9a4a23e4
https://bugzilla.redhat.com/show_bug.cgi?id=694658

-- 
Vincent Danen / Red Hat Security Response Team 
