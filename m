X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/04/1
Message-ID: <alpine.LFD.2.20.1601041714500.15987@wniryva>
Date: Mon, 4 Jan 2016 17:23:02 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Ling Liu <liuling-it@....cn>
Subject: CVE request Qemu: net: ne2000: OOB r/w in ioport operations
Content-Type: text/plain; charset=utf-8

   Hello,

Qemu emulator built with the NE2000 device emulation support is vulnerable to 
an OOB r/w access issue. It could occur while performing 'ioport' r/w 
operations.

A privileged(CAP_SYS_RAWIO) user/process could use this flaw to leak or 
corrupt Qemu memory bytes(3).

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg00050.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1264929

This issue was discovered by Ling Liu of Qihoo 360 Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
