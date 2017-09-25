X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1628" "Monday" "25" "September" "2017" "07:04:25" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com>" "45" "Re: [oss-security] CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()" nil nil nil "9" "2017092511:04:25" "[oss-security] CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()" (number mark "U       vdronov@redh Sep 25   45/1628  " thread-indent "\"Re: [oss-security] CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()\"\n") "<2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>" ("<2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21863 invoked by uid 550); 25 Sep 2017 11:04:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21843 invoked from network); 25 Sep 2017 11:04:37 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 154826147E
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Mon, 25 Sep 2017 07:04:25 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <466141472.14007261.1506337465946.JavaMail.zimbra@redhat.com>
In-Reply-To: <2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>
References: <2113704961.13214334.1506089666956.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.200.44, 10.4.195.2]
Thread-Topic: CVE-2017-14489: Linux kernel: scsi: nlmsg is not properly parsed in iscsi_if_rx()
Thread-Index: gkd0qV23MyyXWIu3XbwzK7w8u71B1FTIlwG+
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 25 Sep 2017 11:04:26 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-14489: Linux kernel: scsi: nlmsg is not
 properly parsed in iscsi_if_rx()

heololo,

an additional research shows that the very latest kernels are not showing
a crash with a reproducer. git bisect showed that:

commit 7f564528a480084e2318cd48caba7aef4a54a77f (between v4.11 and v4.12-rc1)
is the first commit a crash is not reproduced with:

commit 7f564528a480084e2318cd48caba7aef4a54a77f
Author: Steffen Klassert <steffen.klassert@secunet.com>
Date:   Sat Apr 8 20:36:24 2017 +0200
skbuff: Extend gso_type to unsigned int.

i.e. this is commit which fixed the crash. checking the code, it looks like
struct skb_shared_info's fields were reordered, so a field which overwrite
was causing a panic has been moved. nevertheless, the buffer overwrite is still
there, so a suggested patch 9923803 (or its later version) is still needed.

for a proof compare a flaw description:

> ev = nlmsg_data(nlh) will acutally get skb_shinfo(SKB) instead and set a
> new value to skb_shinfo(SKB)->nr_frags by ev->type.

and the commit message:

>    The remaining two byte hole is moved to the
>    beginning of the structure, this protects us
>    from immediate overwites on out of bound writes
>    to the sk_buff head.
> 
>    Structure layout on x86-64 before the change:
> 
>    struct skb_shared_info {
>            unsigned char              nr_frags;
>            __u8                       tx_flags;
> 
>    Structure layout on x86-64 after the change:
> 
>    struct skb_shared_info {
>            short unsigned int         _unused;
>            unsigned char              nr_frags;
>            __u8                       tx_flags;

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
