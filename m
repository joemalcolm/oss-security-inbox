X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["479" "Wednesday" "18" "October" "2017" "08:21:11" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<877467503.21605361.1508329271692.JavaMail.zimbra@redhat.com>" "13" "Re: [oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors" nil nil nil "10" "2017101812:21:11" "[oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors" (number mark "U       vdronov@redh Oct 18   13/479   " thread-indent "\"Re: [oss-security] CVE-2017-12190: Linux kernel: block: memory leak when merging small consecutive buffers in SCSI IO vectors\"\n") "<1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>" ("<2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>" "<466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com>" "<1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17608 invoked by uid 550); 18 Oct 2017 12:21:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17587 invoked from network); 18 Oct 2017 12:21:23 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com D757D4901C
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Wed, 18 Oct 2017 08:21:11 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <877467503.21605361.1508329271692.JavaMail.zimbra@redhat.com>
In-Reply-To: <1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>
References: <2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com> <466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com> <1454353123.19019329.1507651438402.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.34.245.35, 10.4.195.19]
Thread-Topic: CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()
Thread-Index: gkd0qV23MyyXWIu3XbwzK7w8u71B1FTIlwG+kChVwnoj2kprJw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 18 Oct 2017 12:21:12 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-12190: Linux kernel: block: memory leak
 when merging small consecutive buffers in SCSI IO vectors

Hello,

A patch fixing this issue was accepted upstream:

commit 95d78c28b5a85bacbc29b8dba7c04babb9b0d467 fix unbalanced page refcounting in bio_map_user_iov

I would also consider next 2 related patches if backporting:

commit 2b04e8f6bbb196cab4b232af0f8d48ff2c7a8058 more bio_map_user_iov() leak fixes
commit 1cfd0ddd82232804e03f3023f6a58b50dfef0574 bio_copy_user_iov(): don't ignore ->iov_offset #v4.5+

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
