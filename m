X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/20/1
Message-ID: <20130220004017.GS14748@dhcp-25-225.brq.redhat.com>
Date: Wed, 20 Feb 2013 01:40:18 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Kurt Seifried <kseifrie@...hat.com>
Subject: CVE request -- Linux kernel: mm: thp: pmd_present and PROT_NONE local DoS
Content-Type: text/plain; charset=utf-8

Most VM places are using pmd_none but a few are still using pmd_present.
The meaning is about the same for the pmd. However pmd_present would
return the wrong value on PROT_NONE ranges. When the code using
pmd_present gets a false negative, the kernel will crash.

An unprivileged local user could use this flaw to crash the system.

Upstream fix:
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux.git;a=commit;h=027ef6c8

References:
https://bugzilla.redhat.com/show_bug.cgi?id=912898

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
