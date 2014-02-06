X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/06/12
Message-ID: <alpine.LFD.2.10.1402062311540.15326@javelin.pnq.redhat.com>
Date: Thu, 6 Feb 2014 23:14:23 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE Request: Linux kernel: SELinux local DoS
Content-Type: text/plain; charset=utf-8

    Hello,

Linux kernel built with the NSA SELinux Support(CONFIG_SECURITY_SELINUX) is 
vulnerable to a crash caused by an empty SELinux security context. When a file 
has an empty security context, listing it via 'ls(1)' could trigger this 
crash. Only user/processes with CAP_MAC_ADMIN privileges are allowed to set 
the SELinux security context of a file.

A user/process with CAP_MAC_ADMIN privileges could use this flaw to crash the 
kernel, resulting in a DoS.

Upstream fix:
-------------
   -> http://marc.info/?l=selinux&m=139110025203759&w=2

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1062356


Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
