X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/03/13/1
Message-ID: <CAD-N9QVuufAueZc5jeC0agddo3gE05YLjLOT4-q0n2wGJtMf=w@mail.gmail.com>
Date: Sun, 13 Mar 2022 20:59:49 +0800
From: Dongliang Mu <mudongliangabcd@...il.com>
To: oss-security@...ts.openwall.com
Subject: Memory leak in Linux HID-elo driver
Content-Type: text/plain; charset=utf-8

Hi oss-security,

There is one memory leak in Linux HID driver, introduced in v5.13.0.
When hid_parse in elo_probe fails, it forgets to call usb_put_dev to
decrease the refcount, leading to memory leak in the Linux kernel.

This is fixed by 817b8b9c5396 [1] and already backported to Linux
stable 5.15 and 5.16.

I am not sure how to request one CVE on the CVE request webpage. Any
help would be appreciated.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=817b8b9c5396d2b2d92311b46719aad5d3339dbe
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fbf42729d0e91332e8ce75a1ecce08b8a2dab9c1

--
My best regards to you.

     No System Is Safe!
     Dongliang Mu
