X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/15/7
Message-ID: <20120315172246.GC27407@dhcp-25-225.brq.redhat.com>
Date: Thu, 15 Mar 2012 18:22:46 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2012-1179 kernel: thp: __split_huge_page() mapcount != page_mapcount BUG_ON()
Content-Type: text/plain; charset=utf-8

In some cases it may happen that pmd_none_or_clear_bad() is called
with the mmap_sem hold in read mode. In those cases the huge page
faults can allocate hugepmds under pmd_none_or_clear_bad() and that
can trigger a false positive from pmd_bad() that will not like to see
a pmd materializing as trans huge.

A privileged user in the KVM guest can use this flaw to crash the host.
An unprivileged local user could use this flaw to crash the system.

For detailed info please consult the upstream patch.

Proposed upstream patch:
http://comments.gmane.org/gmane.linux.kernel.mm/75413

References:
http://comments.gmane.org/gmane.linux.kernel.mm/75413
https://bugzilla.redhat.com/show_bug.cgi?id=803793

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
