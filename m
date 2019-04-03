X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["856" "Wednesday" "3" "April" "2019" "08:29:50" "-0400" "Vladis Dronov" "vdronov@redhat.com" nil "21" nil nil nil nil "4" nil nil (number mark "U       vdronov@redh Apr  3   21/856   " thread-indent "\"[oss-security] CVE-2019-3837: RHEL6: memory leak in tcp_recvmsg() with NET_DMA\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-3837: RHEL6: memory leak in tcp_recvmsg() with NET_DMA" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30432 invoked by uid 550); 3 Apr 2019 12:30:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30406 invoked from network); 3 Apr 2019 12:30:02 -0000
Date: Wed, 3 Apr 2019 08:29:50 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <668237346.17178030.1554294590342.JavaMail.zimbra@redhat.com>
In-Reply-To: <2137792357.17176799.1554294133038.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.106, 10.4.195.8]
Thread-Topic: CVE-2019-3837: RHEL6: memory leak in tcp_recvmsg() with NET_DMA
Thread-Index: kSqwL5M6beH30JM3UuDnyWWMj1h4eg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Wed, 03 Apr 2019 12:29:50 +0000 (UTC)
Subject: [oss-security] CVE-2019-3837: RHEL6: memory leak in tcp_recvmsg() with NET_DMA

Heololo,

It was found that the net_dma code in tcp_recvmsg() in the RHEL6 kernel is
thread-unsafe. So an unprivileged multi-threaded userspace application
calling recvmsg() for the same network socket in parallel executed on
ioatdma-enabled hardware with net_dma enabled can leak the memory,
crash the host leading to a denial-of-service, or cause a random memory
corruption.

This flaw was assigned an id of CVE-2019-3837.

net_dma was disabled in the upstream Linux kernel since v3.13-rc5 by
the 77873803363c "net_dma: mark broken" and then completely removed
by the 7bced397510a "net_dma: simple removal".

So this flaw affects RHEL-6 only and any (LTS) Linux kernel (of any
distribution) which has not backported the net_dma disabling commits
mentioned above.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security | Senior Software Engineer
