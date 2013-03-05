X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/05/9
Message-ID: <alpine.LFD.2.03.1303051535280.9898@redhat.com>
Date: Tue, 5 Mar 2013 15:38:49 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE request: Linux kernel: xfs: _xfs_buf_find NULL pointer dereference
Content-Type: text/plain; charset=utf-8

   Hello,

Linux kernel built with support for XFS file system is vulnerable to a NULL
pointer dereference flaw. This occurs while accessing blocks beyond the end
of the file system, possibly on a corrupted device.

A user able to mount the file system could use this flaw to crash the kernel, 
resulting in DoS.

Upstream fix:
-------------
  -> https://git.kernel.org/linus/eb178619f930fa2ba2348de332a1ff1c66a31424

Reference:
----------
  -> https://bugzilla.redhat.com/show_bug.cgi?id=918009

Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
DB7A 84C5 D3F9 7CD1 B5EB  C939 D048 7860 3655 602B
