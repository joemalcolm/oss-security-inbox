X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/20/10
Message-ID: <20110620163220.GG24658@dhcp-25-225.brq.redhat.com>
Date: Mon, 20 Jun 2011 18:32:20 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: thp: madvise on top of /dev/zero private mapping can lead to panic
Content-Type: text/plain; charset=utf-8

Description of problem:
The huge_memory.c THP page fault was allowed to run if vm_ops was null
(which would succeed for /dev/zero MAP_PRIVATE, as the f_op->mmap
wouldn't setup a special vma->vm_ops and it would fallback to regular
anonymous memory) but other THP logics weren't fully activated for
vmas with vm_file not NULL (/dev/zero has a not NULL vma->vm_file).

Unprivileged local user could use this flaw to crash the server.

Upstream patch: 78f11a255749d09025f54d4e2df4fbcb031530e2

References:
https://bugzilla.redhat.com/show_bug.cgi?id=714761
https://bugzilla.kernel.org/show_bug.cgi?id=33682
http://www.spinics.net/lists/stable-commits/msg11762.html

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
