X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["244" "Friday" "2" "August" "2019" "05:35:54" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1514907576.6426295.1564738554354.JavaMail.zimbra@redhat.com>" "6" "Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" nil nil nil "8" "2019080209:35:54" "[oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" (number mark "U       vdronov@redh Aug  2    6/244   " thread-indent "\"Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user\"\n") "<613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>" ("<470270831.4241339.1563979659491.JavaMail.zimbra@redhat.com>" "<613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28020 invoked by uid 550); 2 Aug 2019 09:36:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27994 invoked from network); 2 Aug 2019 09:36:06 -0000
Date: Fri, 2 Aug 2019 05:35:54 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1514907576.6426295.1564738554354.JavaMail.zimbra@redhat.com>
In-Reply-To: <613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>
References: <470270831.4241339.1563979659491.JavaMail.zimbra@redhat.com> <613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.43.2.29, 10.4.195.19]
Thread-Topic: bluetooth: hci_uart: 0x0 address execution as nonprivileged user
Thread-Index: nQ2NW4PMqDCIyYMsAp+X/R9JmEkJkMZhkuUhZ6cKgmU=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 02 Aug 2019 09:35:54 +0000 (UTC)
Subject: Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth:
 hci_uart: 0x0 address execution as nonprivileged user

The fix was accepted upstream as:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b36a1552d7319bbfd5cf7f08726c23c5c66d4f73

Best regards,
Vladis Dronov | Red Hat, Inc. | The Core Kernel | Senior Software Engineer
