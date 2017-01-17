X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["862" "Tuesday" "17" "January" "2017" "09:21:11" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<510000852.12772202.1484662871690.JavaMail.zimbra@redhat.com>" "28" "[oss-security] CVE request -- linux kernel: crash by spawning mcrypt(alg) with incompatible algorithm" nil nil nil "1" "2017011714:21:11" "[oss-security] CVE request -- linux kernel: crash by spawning mcrypt(alg) with incompatible algorithm" (number mark "U       vdronov@redh Jan 17   28/862   " thread-indent "\"[oss-security] CVE request -- linux kernel: crash by spawning mcrypt(alg) with incompatible algorithm\"\n") "<1400209807.12771760.1484662778034.JavaMail.zimbra@redhat.com>" ("<1400209807.12771760.1484662778034.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26454 invoked by uid 550); 17 Jan 2017 14:21:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26431 invoked from network); 17 Jan 2017 14:21:22 -0000
Date: Tue, 17 Jan 2017 09:21:11 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <510000852.12772202.1484662871690.JavaMail.zimbra@redhat.com>
In-Reply-To: <1400209807.12771760.1484662778034.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.0.197]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF50 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: crash by spawning mcrypt(alg) with incompatible algorithm
Thread-Index: npq4d0FqBeUhR7VC1oZILGyoPYORGQ==
Subject: [oss-security] CVE request -- linux kernel: crash by spawning mcrypt(alg) with
 incompatible algorithm

Hello,

Algorithms not compatible with mcryptd could be spawned by mcryptd with a direct
crypto_alloc_tfm invocation using a "mcryptd(alg)" name construct. This causes
mcryptd to crash the kernel if an arbitrary "alg" is incompatible and not intended
to be used with mcryptd.

This could be a potential attack to crash the kernel by user program using AF_ALG
to request an invalid algorithm such as mcryptd(md5).

Initial discussion:

https://marc.info/?l=dm-devel&m=148063708010538&w=2

Suggested Patch:

http://marc.info/?l=linux-crypto-vger&m=148096718218312&w=2

Upstream patch:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=48a992727d82cb7db076fa15d372178743b1f4cd

Red Hat Product Security Bugzilla:

https://bugzilla.redhat.com/show_bug.cgi?id=1404200

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
