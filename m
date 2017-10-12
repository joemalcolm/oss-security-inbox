X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/12/17
Message-ID: <nycvar.YSQ.7.76.1710122333130.10613@wniryva>
Date: Thu, 12 Oct 2017 23:35:35 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE-2017-12188 Kernel: KVM: MMU potential stack buffer overrun during page walks
Content-Type: text/plain; charset=utf-8

    Hello,

Linux kernel built with the KVM virtualisation support(CONFIG_KVM), with 
nested virtualisation(nVMX) feature enabled(nested=1), is vulnerable to a 
stack buffer overflow issue. It could occur while traversing guest page table 
entries to resolve guest virtual address(gva).

A L1 guest could use this flaw to crash the host kernel resulting in DoS. OR 
potentially execute arbitrary code on the host to gain access to the host 
system.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kvm/msg156651.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1500380

'CVE-2017-12188' assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
