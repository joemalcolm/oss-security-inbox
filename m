X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/14/9
Message-ID: <alpine.LFD.2.20.1610141644230.13950@wniryva>
Date: Fri, 14 Oct 2016 16:46:18 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Huawei PSIRT <psirt@...wei.com>
Subject: CVE request Qemu: char: divide by zero error in serial_update_parameters
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the 16550A UART emulation support is 
vulnerable to a divide by zero issue. It could occur while updating serial 
device parameters in 'serial_update_parameters'.

A privileged guest user could use this flaw to crash the Qemu process instance 
on the host, resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02461.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1384909

This issue was reported by Huawei Product Security Incident Response Team 
(PSIRT), Huawei Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
