X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/18/3
Message-ID: <20131118151728.GP22293@dhcp-25-225.brq.redhat.com>
Date: Mon, 18 Nov 2013 16:17:29 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Kurt Seifried <kseifrie@...hat.com>
Subject: CVE-2013-4592 -- Linux kernel: kvm: memory leak when memory slot is moved with assigned device
Content-Type: text/plain; charset=utf-8

When a user memory slot is moved (ie. the base_gfn changes), iommu pages
are neither unpinned nor unmapped.  The memory for these pages then
cannot be recovered without rebooting the system.

Local user with ability to assign device (with access to PCI sysfs files
for a device) could use this flaw to DoS the system.

Upstream fixes:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=12d6e7538e2d418c08f082b1b44ffa5fb7270ed8
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=e40f193f5bb022e927a57a4f5d5194e4f12ddb74

References:
https://bugzilla.redhat.com/show_bug.cgi?id=1031702

-- 
Petr Matousek / Red Hat Security Response Team
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA

Content of type "application/pgp-signature" skipped
