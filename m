X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["701" "Monday" "11" "July" "2016" "13:49:51" "-0400" "CAI Qian" "caiqian@redhat.com" "<150590619.3922934.1468259391266.JavaMail.zimbra@redhat.com>" "14" "[oss-security] cvs request: local DoS using rename syscall on overlayfs on top of xfs to crash the kernel" nil nil nil "7" "2016071117:49:51" "[oss-security] cvs request: local DoS using rename syscall on overlayfs on top of xfs to crash the kernel" (number mark "U       caiqian@redh Jul 11   14/701   " thread-indent "\"[oss-security] cvs request: local DoS using rename syscall on overlayfs on top of xfs to crash the kernel\"\n") "<24304840.3922444.1468259116938.JavaMail.zimbra@redhat.com>" ("<24304840.3922444.1468259116938.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6117 invoked by uid 550); 11 Jul 2016 17:55:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3892 invoked from network); 11 Jul 2016 17:50:04 -0000
Date: Mon, 11 Jul 2016 13:49:51 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <150590619.3922934.1468259391266.JavaMail.zimbra@redhat.com>
In-Reply-To: <24304840.3922444.1468259116938.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC45 (Linux)/8.0.6_GA_5922)
Thread-Topic: cvs request: local DoS using rename syscall on overlayfs on top of xfs to crash the kernel
Thread-Index: 5KXRVZ1EonpxXtGdZcNuiK72xOF6YQ==
Subject: [oss-security] cvs request: local DoS using rename syscall on overlayfs on top of
 xfs to crash the kernel

I am requesting a CVE for this flaw.

An unprivileged user could run an exploit using rename syscall on
overlayfs on top of xfs to crash the kernel caused a denial of
service.

Exploit:
https://github.com/linux-test-project/ltp/blob/master/testcases/kernel/syscalls/rename/rename13.c

Patch can be found here with more in depth description,
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=11f3710417d026ea2f4fcf362d866342c5274185
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=54d5ca871e72f2bb172ec9323497f01cd5091ec7
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=9409e22acdfc9153f88d9b1ed2bd2a5b34d2d3ca
   CAI Qian
