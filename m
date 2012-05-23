X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/23/7
Message-ID: <20120523103511.GX20735@dhcp-25-225.brq.redhat.com>
Date: Wed, 23 May 2012 12:35:12 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request -- kernel: huge pages: memory leak on mmap failure
Content-Type: text/plain; charset=utf-8

Description of problem:
When called for anonymous (non-shared) mappings, hugetlb_reserve_pages()
does a resv_map_alloc(). It depends on code in hugetlbfs's
vm_ops->close() to release that allocation.

However, in the mmap() failure path, we do a plain unmap_region()
without the remove_vma() which actually calls vm_ops->close(). 

An unprivileged local user could use this flaw to crash the system.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=824345
http://www.spinics.net/lists/linux-mm/msg34763.html

Proposed upstream fix:
https://lkml.org/lkml/2012/5/21/385

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
