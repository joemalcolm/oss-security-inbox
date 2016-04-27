X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/27/2
Message-ID: <143C0AFC63FC204CB0C55BB88F3A8ABBE376A3@EX01.corp.qihoo.net>
Date: Wed, 27 Apr 2016 03:03:47 +0000
From: 李强 <liqiang6-s@....cn>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: "cve-assign@...re.org" <cve-assign@...re.org>
Subject: CVE Request: Out-of-bands write issue found in qemu
Content-Type: text/plain; charset=utf-8

Hi,

The qemu has an out-of-bands bug in uart_write() function.

In uart_write() function from hw/char/cadence_uart.c, the ‘offset’ isn’t checked and after it is divided by 4 and used to index the ‘r’ array, it will cause an out-of-bands memory write. The value can be controlled by guest and can cause the qemu crash or code execution on host.

The patch is here:
https://lists.nongnu.org/archive/html/qemu-devel/2016-04/msg02711.html

Thanks,

Li Qiang of the Cloud Security Team, Qihoo 360 Inc.

