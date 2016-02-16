X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/16/2
Message-ID: <alpine.LFD.2.20.1602161702480.9762@wniryva>
Date: Tue, 16 Feb 2016 17:06:13 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Zuozhi Fzz <zuozhi.fzz@...baba-inc.com>
Subject: CVE request Qemu: usb: multiple eof_timers in ohci leads to null pointer dereference
Content-Type: text/plain; charset=utf-8

   Hello,

Qemu emulator built with the USB OHCI emulation support is vulnerable to a 
null pointer dereference issue. It could occur when OHCI transitions to a 
OHCI_USB_OPERATIONAL state, leading to creation of multiple eof timers. A 
privileged user inside guest could use this flaw to crash the Qemu process on 
the host, resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg03374.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1304794

This issue was discovered by Zuozhi Fzz of Alibaba Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
