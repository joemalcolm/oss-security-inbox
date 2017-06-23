X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/23/5
Message-ID: <alpine.LFD.2.20.1706231946010.19155@wniryva>
Date: Fri, 23 Jun 2017 19:48:13 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE-2017-7518 Kernel: KVM: debug exception via syscall emulation
Content-Type: text/plain; charset=utf-8

    Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support 
is vulnerable to an incorrect debug exception(#DB) error. It could occur while 
emulating a syscall instruction.

A user/process inside guest could use this flaw to potentially escalate their 
privileges inside guest.

Note: Linux guests are not affected.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kvm/msg151817.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1464473
   -> https://www.spinics.net/lists/kvm/msg151819.html
   -> https://xenbits.xen.org/xsa/advisory-204.html

'CVE-2017-7518' has been assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
