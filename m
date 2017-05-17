X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/17/6
Message-ID: <alpine.LFD.2.20.1705171622060.32210@wniryva>
Date: Wed, 17 May 2017 16:27:01 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Leo Gaspard <leo@...pard.io>
Subject: CVE-2017-7493 Qemu: 9pfs: guest privilege escalation in virtfs mapped-file mode
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to an improper access control issue. 
It could occur while accessing virtfs metadata files in mapped-file security 
mode.

A guest user could use this flaw to escalate their privileges inside guest.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-05/msg03663.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1451709

'CVE-2017-7493' has been assigned to this issue by Red Hat Inc.

It was reported by Leo Gaspard.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
