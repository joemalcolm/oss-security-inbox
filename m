X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/26/8
Message-ID: <20111026151612.GG28067@dhcp-25-225.brq.redhat.com>
Date: Wed, 26 Oct 2011 17:16:12 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request -- kernel: sysctl: restrict write access to dmesg_restrict
Content-Type: text/plain; charset=utf-8

When dmesg_restrict is set to 1 CAP_SYS_ADMIN is needed to read the
kernel ring buffer. But a root user without CAP_SYS_ADMIN is able
to reset dmesg_restrict to 0.

This is an issue when e.g.  LXC (Linux Containers) are used and complete
user space is running without CAP_SYS_ADMIN.  A unprivileged and jailed
root user can bypass the dmesg_restrict protection.

Introduced by:
eaf06b241b091357e72b76863ba16e89610d31bd

Fixed by:
bfdc0b497faa82a0ba2f9dddcf109231dd519fcc

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
