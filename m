X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/12/11
Message-ID: <20130812181948.GK25525@dhcp-25-225.brq.redhat.com>
Date: Mon, 12 Aug 2013 20:19:49 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: libvirt-security@...hat.com
Subject: CVE Request -- libvirt: memory corruption in xenDaemonListDefinedDomains function
Content-Type: text/plain; charset=utf-8

Commit 632180d1 introduced memory corruption in
xenDaemonListDefinedDomains()
by starting to populate the names array at index -1, causing all sorts
of havoc in libvirtd such as aborts like the following

*** Error in `/usr/sbin/libvirtd': double free or corruption (out):
0x00007fffe00ccf20 ***

The xenDaemonListDefinedDomains() function is reached by the
virConnectListDefinedDomains() public API, which can be used on
read-only connections.

Introduced in:
libvirt v1.1.1

Introduced by:
http://libvirt.org/git/?p=libvirt.git;a=commit;h=632180d1

Fixed by:
http://libvirt.org/git/?p=libvirt.git;a=commit;h=0e671a16

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=996241

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
