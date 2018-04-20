X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/04/20/2
Message-ID: <1871023181.21407601.1524216639486.JavaMail.zimbra@redhat.com>
Date: Fri, 20 Apr 2018 05:30:39 -0400 (EDT)
From: Vladis Dronov <vdronov@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: a number of CVEs for issues in the filesystem's code in the Linux kernel
Content-Type: text/plain; charset=utf-8

Hello,

It appeared that there is another reproducer for CVE-2018-1092 ("kernel:
NULL pointer dereference in ext4/mballoc.c:ext4_process_freed_data() when
mounting crafted ext4 image") which possibly affects a wider range of
systems (than a previous one):

https://bugzilla.kernel.org/show_bug.cgi?id=199275

It was verified that a crash caused by this reproducer (88.img) is fixed
by the same upstream commit 8e4b5eae5decd.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
