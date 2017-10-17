X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1202" "Tuesday" "17" "October" "2017" "17:44:33" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1327005831.21431439.1508276673309.JavaMail.zimbra@redhat.com>" "30" "Re: [oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors" nil nil nil "10" "2017101721:44:33" "[oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors" (number mark "U       vdronov@redh Oct 17   30/1202  " thread-indent "\"Re: [oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors\"\n") "<1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>" ("<2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>" "<466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com>" "<1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17881 invoked by uid 550); 17 Oct 2017 21:44:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17851 invoked from network); 17 Oct 2017 21:44:45 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 8E4CF37E79
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Tue, 17 Oct 2017 17:44:33 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1327005831.21431439.1508276673309.JavaMail.zimbra@redhat.com>
In-Reply-To: <1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>
References: <2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com> <466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com> <1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.227, 10.4.195.14]
Thread-Topic: CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()
Thread-Index: gkd0qV23MyyXWIu3XbwzK7w8u71B1FTIlwG+kChVwnopHe6FJw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 17 Oct 2017 21:44:33 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-12190: Linux kernel: block: memory leak
 when merging small consecutive buffers in SCSI IO vectors

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
