X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/06/18/1
Message-ID: <CALJHwhRQAcpZS_gOF0c80OHx+hj-nknXbkaspyc1=J4VjkRRDQ@mail.gmail.com>
Date: Thu, 18 Jun 2020 11:19:35 +1000
From: Wade Mealing <wmealing@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-10781 kernel: zram sysfs resource consumption
Content-Type: text/plain; charset=utf-8

Gday,

A user with a local account and the ability to read the
/sys/class/zram-control/hot_add file which on each read will create a
zram device node in the /dev/ directory.  This allocates kernel memory
and is not allocated to a user.

Continually reading this file may consume a large amount of system
memory and cause the system OOM killer to activate, terminating
userspace processes possibly making the system inoperable.

Acknowledgement:
Luca Bruno of Red Hat

Upstream discussion and patch
https://lore.kernel.org/linux-block/20200617103412.GA2027053@kroah.com/

Red Hat bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1847832

Thanks,

Wade Mealing

Product Security - Kernel
Red Hat

