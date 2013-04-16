X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/16/2
Message-ID: <20130416085528.GD5828@dhcp-25-225.brq.redhat.com>
Date: Tue, 16 Apr 2013 10:55:28 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2013-1922 -- qemu: qemu-nbd block format auto-detection vulnerability
Content-Type: text/plain; charset=utf-8

A security flaw was found in the way qemu-nbd, the QEMU Disk Network
Block Device server tool of QEMU, performed detection of image formats
(the image format has been previously autodetected). A guest operating
system administrator could write a header to particular raw disk image
format, describing another format than original one for that disk image,
leading to scenario in which after restart of that guest, QEMU would
detect new format of the image, and could allow the guest to read any
file on the host if QEMU was sufficiently privileged.

This issue was found by Daniel Berrange of Red Hat.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=923219
http://www.openwall.com/lists/oss-security/2013/04/15/3

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
