X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/21/4
Message-ID: <AANLkTilq8EW00nhZGLFCpwuw2o76UepmEMJirMc_eYq6@mail.gmail.com>
Date: Wed, 21 Jul 2010 09:36:57 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: btrfs
Content-Type: text/plain; charset=utf-8

Fixes for two issues in btrfs were committed upstream:

1.  The BTRFS_IOC_CLONE and BTRFS_IOC_CLONE_RANGE ioctls allowed a
local user to overwrite append-only files.

2.  The BTRFS_IOC_CLONE_RANGE ioctl was subject to an integer overflow
in specifying offsets to copy from a file, which potentially allows a
local user to read sensitive filesystem data.

Reference:
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=2ebc3464781ad24474abcbd2274e6254689853b5

-Dan
