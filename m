X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/30/3
Message-ID: <20131030145230.GW20584@dhcp-25-225.brq.redhat.com>
Date: Wed, 30 Oct 2013 15:52:31 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: vdavydov@...allels.com, khorenko@...allels.com, vvs@...allels.com
Subject: CVE Request -- Linux kernel: ipc: ipc_rcu_putref refcount races
Content-Type: text/plain; charset=utf-8

A flaw was found in the way ipc_rcu_putref() function handled reference
counter decrementing. Without external synchronization reference counter
might not be adjusted properly, as presented with the freeque() vs
do_msgsnd() race, leading to memory leaks.

An unprivileged local user could use this flaw to cause OOM conditions,
potentially crashing the system.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=1024854
https://wiki.openvz.org/Download/kernel/rhel6-testing/042stab084.3

Upstream patch:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=6062a8
(making the refcounter atomic hunks)

Acknowledgements:

Red Hat would like to thank Vladimir Davydov (Parallels) for reporting
this issue.

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
