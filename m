X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/15/4
Message-ID: <alpine.LFD.2.10.1404152311020.3927@javelin.pnq.redhat.com>
Date: Tue, 15 Apr 2014 23:20:49 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE request Qemu: out of bounds buffer access, guest triggerable via IDE SMART
Content-Type: text/plain; charset=utf-8

    Hello,

An out of bounds memory access flaw was found in Qemu's IDE device model. It 
leads to Qemu's memory corruption via buffer overwrite(4 bytes). It occurs 
while executing IDE SMART commands.

A guest's user could use this flaw to corrupt Qemu process's memory on the 
host.

Upstream fix:
-------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2014-04/msg02016.html

Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
