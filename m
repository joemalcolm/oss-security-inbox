X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/05/3
Message-ID: <20130405140516.GE26194@suse.de>
Date: Fri, 5 Apr 2013 16:05:16 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: kernel information leak in fs/compat_ioctl.c VIDEO_SET_SPU_PALETTE
Content-Type: text/plain; charset=utf-8

Hi,

Should also get a CVE.

https://github.com/torvalds/linux/commit/12176503366885edd542389eed3aaf94be163fdb

commit 12176503366885edd542389eed3aaf94be163fdb
Author: Kees Cook <keescook@...omium.org>
Date:   Thu Oct 25 13:38:16 2012 -0700

    fs/compat_ioctl.c: VIDEO_SET_SPU_PALETTE missing error check

    The compat ioctl for VIDEO_SET_SPU_PALETTE was missing an error check
    while converting ioctl arguments.  This could lead to leaking kernel
    stack contents into userspace.

    Patch extracted from existing fix in grsecurity.

Ciao, Marcus
