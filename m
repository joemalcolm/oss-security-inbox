X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/17/2
Message-ID: <alpine.LFD.2.20.1702171300440.22691@wniryva>
Date: Fri, 17 Feb 2017 13:03:11 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE-2017-6058 Qemu: net: vmxnet3: OOB NetRxPkt::ehdr_buf access when doing vlan stripping
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support is 
vulnerable to an out-of-bounds access issue. It could occur while stripping 
VLAN header from 'eth_buf' buffer in receiving packets.

A remote user/process could use this issue to crash Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-02/msg03527.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1423358

Note:- It requires 'VLANSTRIP' feature to be enabled on the vmxnet3 device.


'CVE-2017-6058' assigned via -> https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
