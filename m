X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["629" "Thursday" "25" "July" "2019" "10:34:14" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1050715419.4548171.1564065254120.JavaMail.zimbra@redhat.com>" "14" "Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" nil nil nil "7" "2019072514:34:14" "[oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" (number mark "U       vdronov@redh Jul 25   14/629   " thread-indent "\"Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user\"\n") "<CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>" ("<470270831.4241339.1563979659491.JavaMail.zimbra@redhat.com>" "<613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>" "<CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5930 invoked by uid 550); 25 Jul 2019 14:34:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5907 invoked from network); 25 Jul 2019 14:34:26 -0000
Date: Thu, 25 Jul 2019 10:34:14 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1050715419.4548171.1564065254120.JavaMail.zimbra@redhat.com>
In-Reply-To: <CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>
References: <470270831.4241339.1563979659491.JavaMail.zimbra@redhat.com> <613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com> <CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.43.2.29, 10.4.195.14]
Thread-Topic: CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user
Thread-Index: 8lAD7qitBcMvuPhcXgmfQzVNhT+4+Q==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Thu, 25 Jul 2019 14:34:14 +0000 (UTC)
Subject: Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth:
 hci_uart: 0x0 address execution as nonprivileged user

Hello,

> Does this always happen in a worker thread? Does this therefore mean
> that this is not exploitable by a local user even if vm.mmap_min_addr
> and SMEP/SMAP are disabled, since the user can't mmap zero page in the
> worker thread context?

Indeed, it looks like mrvl_setup() is called from hci_power_on workqueue
only, so the worker thread context. Unfortunately, hci_* code has around
20 call-sites for hci_uart_set_flow_control() and ->tiocm[gs]et() so I'm
not sure they 100% cannot be called in the user process context also.

Best regards,
Vladis Dronov | Red Hat, Inc. | The Core Kernel | Senior Software Engineer
