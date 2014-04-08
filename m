X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/08/6
Message-ID: <alpine.LFD.2.10.1404082010380.31553@javelin.pnq.redhat.com>
Date: Tue, 8 Apr 2014 20:12:52 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE request Linux kernel: IB/core: crash while resolving passive side RoCE L2 address in cma_req_handler
Content-Type: text/plain; charset=utf-8

   Hello,

Linux kernel built with the InfiniBand communication link(CONFIG_INFINIBAND)
along with the support for Remote Direct Memory Access(RDMA) over Convered
Ethernet(RoCE), is vulnerable to a crash caused by invalid memory access.
It occurs while trying to resolve RoCE L2 address on the server side.

A remote unprivileged user/program could use this flaw to crash the kernel,
resulting in DoS.

Upstream fix:
-------------
   -> https://patchwork.kernel.org/patch/3896781/

Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
