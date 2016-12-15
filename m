X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/15/3
Message-ID: <alpine.LFD.2.20.1612151224140.6050@wniryva>
Date: Thu, 15 Dec 2016 12:27:19 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE-2016-9588 Kernel: kvm: nVMX: uncaught software exceptions in L1 guest lead to DoS
Content-Type: text/plain; charset=utf-8

   Hello,

Linux kernel built with the KVM virtualisation support(CONFIG_KVM), with 
nested virtualisation(nVMX) feature enabled(nested=1), is vulnerable to an 
uncaught exceptions issue. It could occur if a L2 guest was to throw an 
exception which is not handled by L1 guest.

A L1 guest user could use this flaw to crash the guest resulting in DoS.

Upstream patch
--------------
   -> https://www.spinics.net/lists/kvm/msg142495.html

'CVE-2016-9588' has been assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
