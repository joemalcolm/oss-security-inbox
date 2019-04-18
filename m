X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/04/18/10
Message-ID: <CABXRUiSOsXJCh_hbgzD+=EVys-N=HK_h0kZ2GU=p+G2Y1daTSQ@mail.gmail.com>
Date: Thu, 18 Apr 2019 21:32:10 +0800
From: Fuqian Huang <huangfq.daxian@...il.com>
To: oss-security@...ts.openwall.com
Subject: Linux kernel < 4.14.111 drivers/media/pci/saa7164/saa7164-core.c kernel address dumps to user space
Content-Type: text/plain; charset=utf-8

In drivers/media/pci/saa7164/saa7164-core.c:1059,
saa7164_proc_show will dump the address of dev into procfs,
local user could read kernel address information via /proc/saa7164.

static int saa7164_proc_show(struct seq_file *m, void *v)
{
    ...
        seq_printf(m, "%s = %p\n", dev->name, dev);
    ...
}
