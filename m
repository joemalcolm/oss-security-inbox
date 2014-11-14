X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/14/3
Message-ID: <20141114123745.GG32335@suse.de>
Date: Fri, 14 Nov 2014 13:37:45 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: Linux kernel: ttusb-dec: overflow by descriptor
Content-Type: text/plain; charset=utf-8

Hi,

Overflow in a DVB-T usb driver, it overflows into a small size stack array.

Ciao, Marcus

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=f2e323ec96077642d397bb1c355def536d489d16

commit f2e323ec96077642d397bb1c355def536d489d16
Author: Dan Carpenter <dan.carpenter@...cle.com>
Date:   Fri Sep 5 09:09:28 2014 -0300

    [media] ttusb-dec: buffer overflow in ioctl
        
    We need to add a limit check here so we don't overflow the buffer.
