X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/17/4
Message-ID: <1327005831.21431439.1508276673309.JavaMail.zimbra@redhat.com>
Date: Tue, 17 Oct 2017 17:44:33 -0400 (EDT)
From: Vladis Dronov <vdronov@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors
Content-Type: text/plain; charset=utf-8

Hello, oss-security@,

If somebody could help me a bit with this CVE? Could you please run a reproducer
from (it does only a number of disk reads and allocates a memory):

https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1495887.html

and check if the issue reproduces on your system? The system should have a scsi
disk, so for a virtual machine a virtio disk (/dev/vda) won't work, but a virtual
scsi disk (/dev/sda) should.

Please, check a value of 'Active(anon)' in /proc/meminfo before and after running
a reproducer, it should jump up for 40Mb and should not decrease, like this:

(as root)# grep anon /proc/meminfo ; ./sgio-leak /dev/sda ; grep anon /proc/meminfo
Active(anon):      39156 kB
Inactive(anon):     8368 kB
Active(anon):      79268 kB
Inactive(anon):     8368 kB
(as root)# grep anon /proc/meminfo ; ./sgio-leak /dev/sda ; grep anon /proc/meminfo
Active(anon):      79268 kB
Inactive(anon):     8368 kB
Active(anon):     119156 kB
Inactive(anon):     8368 kB

If the issue in not reproduced, 'Active(anon)' should jump up shortly but return to
the previous before-the-run value on an idle system.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
