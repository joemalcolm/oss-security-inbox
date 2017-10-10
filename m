X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1410" "Tuesday" "10" "October" "2017" "12:03:58" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>" "35" "[oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors" nil nil nil "10" "2017101016:03:58" "[oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors" (number mark "U       vdronov@redh Oct 10   35/1410  " thread-indent "\"[oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors\"\n") "<466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com>" ("<2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>" "<466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9669 invoked by uid 550); 10 Oct 2017 16:04:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9614 invoked from network); 10 Oct 2017 16:04:24 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com E45F6C04B303
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Tue, 10 Oct 2017 12:03:58 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>
In-Reply-To: <466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com>
References: <2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com> <466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.219, 10.4.195.23]
Thread-Topic: CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()
Thread-Index: gkd0qV23MyyXWIu3XbwzK7w8u71B1FTIlwG+kChVwno=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 10 Oct 2017 16:03:59 +0000 (UTC)
Subject: [oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small
 consecutive buffers in SCSI IO vectors

Heololo,

Vitaly Mayatskikh has found that bio_map_user_iov() and bio_unmap_user() in
'block/bio.c' do unbalanced pages refcounting if IO vector has small consecutive
buffers belonging to the same page. bio_add_pc_page() merges them into one, but
the page reference is never dropped, causing memory leak.

Regarding security affect, the flaw is somewhat useless for an attacker on
a local system as it requires SCSI disk to be present, root privileges or RAWIO
caps, but this can be quickly turned into a meaningful attack if a SCSI disk is
passed through to a virtual machine. An attacker can issue absolutely legit SCSI
read/write commands to a disk in his VM, that will make VM's memory pages used
for IO to be extra refcounted. Then attacker can power down a VM and the memory
will be definitely lost. Few exploit runs with power cycles in between, and
the whole host can get OOM.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1495089

A reproducer:

https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1495887.html

A proposed patch:

https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1495884.html

The patch for this flaw is not in the Linux kernel upstream at the moment of
this writing (Oct 10 2017) and is being discussed, see an ongoing discussion:

https://marc.info/?t=150605752800001&r=1&w=2

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
