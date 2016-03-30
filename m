X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/30/4
Message-ID: <183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>
Date: Wed, 30 Mar 2016 08:52:57 -0400 (EDT)
From: Vladis Dronov <vdronov@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)
Content-Type: text/plain; charset=utf-8

Hello,

If possible, we would like to obtain a CVE-ID for the following
securuty flaw.

A device pretending to be a device driven by the ims-pcu driver,
but leaving out either of the two interfaces present on the genuine
device will crash the driver and possibly the kernel. Thus, DoS
with physical access is possible. Kernels since v3.10 are vulnerable.

Initial reference with a proposed fix:
https://bugzilla.novell.com/show_bug.cgi?id=971628

An upstream patch:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=a0ad220c96692eda76b2e3fd7279f3dcd1d8a8ff

Red Hat security Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1320060

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
