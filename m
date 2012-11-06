X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/06/14
Message-ID: <20121106183039.GM13903@dhcp-25-225.brq.redhat.com>
Date: Tue, 6 Nov 2012 19:30:40 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2012-4461 -- kernel: kvm: invalid opcode oops on SET_SREGS with OSXSAVE bit set
Content-Type: text/plain; charset=utf-8

A flaw has been found in the way Linux kernel's KVM subsystem handled
vcpu->arch.cr4 X86_CR4_OSXSAVE bit set upon guest enter. On hosts
without the XSAVE feature and using qemu userspace an unprivileged
local user could use this flaw to crash the system.

Acknowledgements:

Red Hat would like to thank Jon Howell for reporting this issue.

Proposed upstream fix:
http://article.gmane.org/gmane.comp.emulators.kvm.devel/100742

References:
https://bugzilla.redhat.com/show_bug.cgi?id=862900
http://article.gmane.org/gmane.comp.emulators.kvm.devel/100742

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
