X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["903" "Friday" "22" "September" "2017" "10:14:26" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>" "27" "[oss-security] CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()" nil nil nil "9" "2017092214:14:26" "[oss-security] CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()" (number mark "U       vdronov@redh Sep 22   27/903   " thread-indent "\"[oss-security] CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()\"\n") "<1067852292.13209766.1506089176321.JavaMail.zimbra@redhat.com>" ("<1067852292.13209766.1506089176321.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9670 invoked by uid 550); 22 Sep 2017 14:14:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9645 invoked from network); 22 Sep 2017 14:14:39 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 5395320271
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Fri, 22 Sep 2017 10:14:26 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>
In-Reply-To: <1067852292.13209766.1506089176321.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.223, 10.4.195.16]
Thread-Topic: CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()
Thread-Index: gkd0qV23MyyXWIu3XbwzK7w8u71B1A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 22 Sep 2017 14:14:27 +0000 (UTC)
Subject: [oss-security] CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in
 iscsi_if_rx()

Heololo,

It was found that the iscsi_if_rx() function in 'drivers/scsi/scsi_transport_iscsi.c'
in the Linux kernel since v2.6.24-rc1 through 4.13.2 allows local users to cause
a denial of service (a system panic) by making a number of certain syscalls by
leveraging incorrect length validation in the kernel code.

Our tests show that indeed an unprivileged local user can easily cause (i.e. run a binary)
a system panic or a compete lock up. A wide range of kernel versions is affected, from
v2.6.24-rc1 till the latest ones.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1490421

https://www.suse.com/security/cve/CVE-2017-14489/

https://nvd.nist.gov/vuln/detail/CVE-2017-14489

http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-14489

A suggested upstream patch:

https://patchwork.kernel.org/patch/9923803/

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
