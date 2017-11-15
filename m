X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1036" "Wednesday" "15" "November" "2017" "06:55:47" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<1436048890.32127631.1510746947605.JavaMail.zimbra@redhat.com>" "28" "[oss-security] CVE-2017-15115: Linux kernel: sctp: use-after-free in sctp_cmp_addr_exact()" nil nil nil "11" "2017111511:55:47" "[oss-security] CVE-2017-15115: Linux kernel: sctp: use-after-free in sctp_cmp_addr_exact()" (number mark "U       vdronov@redh Nov 15   28/1036  " thread-indent "\"[oss-security] CVE-2017-15115: Linux kernel: sctp: use-after-free in sctp_cmp_addr_exact()\"\n") "<70159780.32121371.1510746331117.JavaMail.zimbra@redhat.com>" ("<70159780.32121371.1510746331117.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30010 invoked by uid 550); 15 Nov 2017 11:56:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29977 invoked from network); 15 Nov 2017 11:55:59 -0000
Date: Wed, 15 Nov 2017 06:55:47 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1436048890.32127631.1510746947605.JavaMail.zimbra@redhat.com>
In-Reply-To: <70159780.32121371.1510746331117.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.17, 10.4.195.19]
Thread-Topic: CVE-2017-15115: Linux kernel: sctp: use-after-free in sctp_cmp_addr_exact()
Thread-Index: olpDUZuAxD/M8jTYSK+uB+CFnQpToA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 15 Nov 2017 11:55:47 +0000 (UTC)
Subject: [oss-security] CVE-2017-15115: Linux kernel: sctp: use-after-free in
 sctp_cmp_addr_exact()

Heololo,

It was found that in Linux kernel when peeling off an association to the socket
in another network namespace, all transports in this association are not to be
rehashed and keep use the old key in hashtable. A kernel would miss removing
transports from hashtable when closing the socket and all transports are being
freed. Later on a use-after-free could be caused when looking up an association
and dereferencing the transports.

This is a very old issue and it was fixed in Linux kernel v4.14-rc6, and may still
be not fixed in other distributions.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1513345

https://patchwork.ozlabs.org/patch/827077/

An upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=df80cd9b28b9ebaa284a41df611dbf3a2d05ca74

PS: I do not see that this fix has got into any stable tree, so posting about this
bug instead of the 100 other bugfixes in the past few weeks/months.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer

