X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/20/2
Message-ID: <20111020091016.GC23346@dhcp-25-225.brq.redhat.com>
Date: Thu, 20 Oct 2011 11:10:17 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: qemu: CVE-2011-3346
Content-Type: text/plain; charset=utf-8

CVE-2011-3346 qemu: local DoS with SCSI CD-ROM

Paolo Bonzini of Red Hat found a buffer overflow in QEMU's SCSI
subsystem. hw/scsi-disk.c tries to zero a user-provided number of
bytes in a fixed-size buffer. An unprivileged local guest user
can potentially use this flaw to crash the guest.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=736038
https://bugzilla.redhat.com/show_bug.cgi?id=736038#c1

Upstream patches:
http://repo.or.cz/w/qemu.git/commit/7285477ab11831b1cf56e45878a89170dd06d9b9
http://repo.or.cz/w/qemu.git/commit/103b40f51e4012b3b0ad20f615562a1806d7f49a

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
