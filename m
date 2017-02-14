X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2265" "Tuesday" "14" "February" "2017" "09:14:24" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<1124371920.22967787.1487081664447.JavaMail.zimbra@redhat.com>" "80" "[oss-security] Re: Linux kernel: Reachable BUG_ON from userspace in sctp_wait_for_sndbuf()" nil nil nil "2" "2017021414:14:24" "[oss-security] Re: Linux kernel: Reachable BUG_ON from userspace in sctp_wait_for_sndbuf()" (number mark "U       vdronov@redh Feb 14   80/2265  " thread-indent "\"[oss-security] Re: Linux kernel: Reachable BUG_ON from userspace in sctp_wait_for_sndbuf()\"\n") "<1493423850.22912433.1487077339134.JavaMail.zimbra@redhat.com>" ("<1493423850.22912433.1487077339134.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3259 invoked by uid 550); 14 Feb 2017 14:14:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3238 invoked from network); 14 Feb 2017 14:14:35 -0000
Date: Tue, 14 Feb 2017 09:14:24 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1124371920.22967787.1487081664447.JavaMail.zimbra@redhat.com>
In-Reply-To: <1493423850.22912433.1487077339134.JavaMail.zimbra@redhat.com>
References: <1493423850.22912433.1487077339134.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.142]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF50 (Linux)/8.0.6_GA_5922)
Thread-Topic: Linux kernel: Reachable BUG_ON from userspace in sctp_wait_for_sndbuf()
Thread-Index: 88vXHQk2WoEm5EZy3iCYRN84vmX4t6VtVf8s
Subject: [oss-security] Re: Linux kernel: Reachable BUG_ON from userspace in
 sctp_wait_for_sndbuf()

CVE-2017-5986 was assigned, thanks.

> [Suggested description]
> It was reported that with Linux kernel, earlier than version
> v4.10-rc8, an application may trigger a BUG_ON() in
> sctp_wait_for_sndbuf() if the socket TX buffer is full, a thread is
> waiting on it to queue more data, and meanwhile another thread peels
> off the association being used by the first thread.
>
> ------------------------------------------
>
> [Additional Information]
> A panic (BUG_ON()) is triggerable by a random user in userspace. There is no reproducer, but triggering it is easy:
> - bind&list a socket
> - connect to it (may use localhost)
> - accept the association
> - create a second thread
> - push data until sendmsg returns AGAIN
> - call a blocking sendmsg()
> - (2nd thread) do peel off operation
> - read some data
> - panic
>
> ------------------------------------------
>
> [VulnerabilityType Other]
> CWE-617 - Reachable Assertion - http://cwe.mitre.org/data/definitions/617.html
>
> ------------------------------------------
>
> [Vendor of Product]
> kernel.org: Linux kernel
>
> ------------------------------------------
>
> [Affected Product Code Base]
> Linux kernel - fixed in v4.10-rc8
>
> ------------------------------------------
>
> [Affected Component]
> The Linux kernel, file net/sctp/socket.c, function sctp_wait_for_sndbuf()
>
> ------------------------------------------
>
> [Attack Type]
> Local
>
> ------------------------------------------
>
> [Impact Denial of Service]
> true
>
> ------------------------------------------
>
> [Attack Vectors]
> To exploit vulnerability a certain code should be run from a
> non-privileged user and a certain race condition in the kernel code
> should be hit
>
> ------------------------------------------
>
> [Reference]
> https://bugzilla.redhat.com/show_bug.cgi?id=1420276
> https://lkml.org/lkml/2017/1/30/238
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=2dcab598484185dea7ec22219c76dcdd59e3cb90
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>
> ------------------------------------------
>
> [Discoverer]
> Alexander Popov <alex.popov@linux.com>
>
> Use CVE-2017-5986.
> --- 
> CVE Assignment Team
