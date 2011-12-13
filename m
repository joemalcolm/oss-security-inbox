X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/13/1
Message-ID: <4EE6CC84.9000309@redhat.com>
Date: Tue, 13 Dec 2011 09:24:44 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: OpenIPMI: IPMI event daemon creates PID file with world writeable permissions
Content-Type: text/plain; charset=utf-8

Hi,

A insecure file permissions flaw was found in the way IPMI event daemon 
of the OpenIPMI (Intelligent Platform Management Interface) library and 
tools created its PID file (it was created with 0666 permissions). A 
local user could use this flaw to kill arbitrary running process during 
ipmievd service shutdown.

This has been assigned CVE-2011-4339

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=742837


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
