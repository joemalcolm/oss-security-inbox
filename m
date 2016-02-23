X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/23/5
Message-ID: <66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5B@IRSMSX106.ger.corp.intel.com>
Date: Tue, 23 Feb 2016 13:41:06 +0000
From: "Cornea, Alexandru" <alexandru.cornea@...el.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: "Maxim, Costel" <costel.maxim@...el.com>, Alan Stern <stern@...land.harvard.edu>
Subject: CVE Request: Linux kernel USB hub invalid memory access in hub_activate()
Content-Type: text/plain; charset=utf-8

Hello,

    Quickly plugging in and unplugging a USB hub can lead to a null pointer dereference in kernel (local denial of service) or the USB port to which the hub is connected becomes unusable, for kernel versions 2.6.32 < 4.4.
    The issue occurs when the USB hub gets disconnected before or while the routine for USB hub activation is running - hub_activate() function.

Bug reported on the kernel USB mailing list: http://www.spinics.net/lists/linux-usb/msg132311.html

Issue is fixed in kernel 4.4, by commit: https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=e50293ef9775c5

Could a CVE please be assigned to this issue? (it has not been previously requested anywhere else)

Thanks,
   Alex

---
Regards,

Alexandru Cornea
Security QA Engineer
Intel SSG OTC Romania


