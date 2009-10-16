X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/16/5
Message-ID: <20091016105823.03fed81f@redhat.com>
Date: Fri, 16 Oct 2009 10:58:23 +0200
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: QEMU VNC use-after-free
Content-Type: text/plain; charset=utf-8

Hi!

Use-after-free / double-free problems were reported for QEMU's VNC
server:

https://bugzilla.redhat.com/show_bug.cgi?id=501131
https://bugzilla.redhat.com/show_bug.cgi?id=505641

Problem can cause QEMU process (and hence virtual machine) to crash
(which is not security in most use cases, as VNC access means console
access for the virtual machine), but if used for code execution, it can
mean guest -> host escape.

Versions in between the following two commits are affected:

http://git.savannah.gnu.org/cgit/qemu.git/commit/?id=753b405331
http://git.savannah.gnu.org/cgit/qemu.git/commit/?id=198a0039c5

-- 
Tomas Hoger / Red Hat Security Response Team
