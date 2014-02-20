X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/20/5
Message-ID: <alpine.LFD.2.10.1402201501580.22280@javelin.pnq.redhat.com>
Date: Thu, 20 Feb 2014 15:04:11 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE request: Linux kernel: nfs: information leakage
Content-Type: text/plain; charset=utf-8

    Hello,

Linux kernel build with the NFS file system(CONFIG_NFS_FS) along with the 
support for NFSv4 protocol(CONFIG_NFS_V4) is vulnerable to an information 
leakage flaw. It could occur while writing to a file wherein NFS server has 
offered write delegation to the client. Such delegation allows NFS client to 
perform the said operation locally without instant interaction with the 
server.

A user/program could use this flaw to leak kernel memory bytes.

Upstream fix:
-------------
   -> https://git.kernel.org/linus/263b4509ec4d47e0da3e753f85a39ea12d1eff24

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1067341


Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
