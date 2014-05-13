X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/13/3
Message-ID: <alpine.LFD.2.10.1405131552300.7354@javelin.pnq.redhat.com>
Date: Tue, 13 May 2014 15:56:14 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE request: Qemu: usb: fix up post load checks
Content-Type: text/plain; charset=utf-8

    Hello,

Correct post load checks:
1. dev->setup_len == sizeof(dev->data_buf)
     seems fine, no need to fail migration
2. When state is DATA, passing index > len
    will cause memcpy with negative length,
    resulting in heap overflow

An user able to alter the saved VM data(either on the disk or over the wire 
during migration) could use this flaw to to corrupt QEMU process memory on the 
(destination) host, which could potentially result in arbitrary code execution 
on the host with the privileges of the QEMU process.

Upstream fix:
-------------
   -> http://article.gmane.org/gmane.comp.emulators.qemu/272322

Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
