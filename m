X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/01/4
Message-ID: <4EB00F35.1090909@redhat.com>
Date: Tue, 01 Nov 2011 20:54:37 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: libcap/capsh: does not chdir after chroot
Content-Type: text/plain; charset=utf-8

Hi All,

It was found that capsh program, usually shipped with the libcap
package, did not do a chdir("/") after calling chroot, when called with
a "--chroot" option. This resulted in the current directory being
outside the chroot.

This has been assigned CVE-2011-4099

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=722694


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
