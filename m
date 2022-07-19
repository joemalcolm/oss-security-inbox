X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/19/3
Message-ID: <22bea0b4f2b4411682adf3fdd8883afb@huawei.com>
Date: Tue, 19 Jul 2022 02:14:27 +0000
From: "Weigang (Jimmy)" <weigang12@...wei.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: "openeuler-security@...neuler.org" <openeuler-security@...neuler.org>
Subject: CVE-2021-33656: Linux kernel: When setting font with malicous data by ioctl cmd PIO_FONT,kernel will write memory out of bounds.(<5.10.127)
Content-Type: text/plain; charset=utf-8

Fix has been released in Linux kernel stable tree: https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/tree/releases/5.10.127/vt-drop-old-font-ioctls.patch.
