X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/13/7
Message-ID: <alpine.LFD.2.20.1701131706000.25713@wniryva>
Date: Fri, 13 Jan 2017 17:09:40 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE-2017-2584 Kernel: kvm: use after free in complete_emulated_mmio
Content-Type: text/plain; charset=utf-8

   Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support 
is vulnerable to a use after free flaw. It could occur on x86 platform, when 
emulating instructions fxsave, fxrstor, sgdt, etc.

A user/process could use this flaw to crash the host kernel resulting in DoS.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kvm/msg143571.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1413001

'CVE-2017-2584' is assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
