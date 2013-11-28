X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/28/12
Message-ID: <alpine.LFD.2.10.1311282307500.20723@javelin.pnq.redhat.com>
Date: Thu, 28 Nov 2013 23:10:46 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE Request: Linux kernel: net: uninitialised memory leakage
Content-Type: text/plain; charset=utf-8

   Hello,

Linux kernel built with the networking support(CONFIG_NET), is vulnerable to a 
memory leakage flaw. It occurs while doing the recvmsg(2), recvfrom(2), 
recvmmsg(2) socket calls.

A user/program could use this flaw to leak kernel memory bytes.

Upstream fix:
-------------
  -> https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=bceaa90240b6019ed73b49965eac7d167610be69

Reference:
----------
  -> https://bugzilla.redhat.com/show_bug.cgi?id=1035875


Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
