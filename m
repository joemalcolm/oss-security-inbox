X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/28/3
Message-ID: <20120228151501.GH4015@dhcp-25-225.brq.redhat.com>
Date: Tue, 28 Feb 2012 16:15:02 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request -- kernel: cifs: dentry refcount leak when opening a FIFO on lookup leads to panic on unmount
Content-Type: text/plain; charset=utf-8

The cifs code will attempt to open files on lookup under certain
circumstances. What happens though if we find that the file we opened
was actually a FIFO or other special file? Currently, the open
filehandle just ends up being leaked leading to a dentry refcount
mismatch and oops on umount.

An unprivileged local user could use this flaw to crash the system.

Introduced by:
a6ce4932fbdbcd8f8e8c6df76812014351c32892 (Linux kernel 2.6.31)

Proposed upstream patch:
http://thread.gmane.org/gmane.linux.kernel.cifs/5526

References:
https://bugzilla.redhat.com/show_bug.cgi?id=798293
http://thread.gmane.org/gmane.linux.kernel.cifs/5526

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
