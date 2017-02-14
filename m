X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["699" "Tuesday" "14" "February" "2017" "08:02:19" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<1493423850.22912433.1487077339134.JavaMail.zimbra@redhat.com>" "22" "[oss-security] Linux kernel: Reachable BUG_ON from userspace in sctp_wait_for_sndbuf()" nil nil nil "2" "2017021413:02:19" "[oss-security] Linux kernel: Reachable BUG_ON from userspace in sctp_wait_for_sndbuf()" (number mark "U       vdronov@redh Feb 14   22/699   " thread-indent "\"[oss-security] Linux kernel: Reachable BUG_ON from userspace in sctp_wait_for_sndbuf()\"\n") "<984594319.22911409.1487077208310.JavaMail.zimbra@redhat.com>" ("<984594319.22911409.1487077208310.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30718 invoked by uid 550); 14 Feb 2017 13:02:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30697 invoked from network); 14 Feb 2017 13:02:30 -0000
Date: Tue, 14 Feb 2017 08:02:19 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1493423850.22912433.1487077339134.JavaMail.zimbra@redhat.com>
In-Reply-To: <984594319.22911409.1487077208310.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.142]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF50 (Linux)/8.0.6_GA_5922)
Thread-Topic: Linux kernel: Reachable BUG_ON from userspace in sctp_wait_for_sndbuf()
Thread-Index: 88vXHQk2WoEm5EZy3iCYRN84vmX4tw==
Subject: [oss-security] Linux kernel: Reachable BUG_ON from userspace in
 sctp_wait_for_sndbuf()

Hello,

I'm not sure if now I should be posting this on os-sec@ after requesting
a CVE-ID via MITRE's web-form. Anyway.

It was reported that with Linux kernel, earlier than version v4.10-rc8, an application
may trigger a BUG_ON() in sctp_wait_for_sndbuf() if the socket TX buffer is full, a thread
is waiting on it to queue more data, and meanwhile another thread peels off the association
being used by the first thread.

References:

https://lkml.org/lkml/2017/1/30/238

https://bugzilla.redhat.com/show_bug.cgi?id=1420276

Upstream patch:

https://github.com/torvalds/linux/commit/2dcab598484185dea7ec22219c76dcdd59e3cb90

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
