X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["784" "Thursday" "3" "November" "2016" "11:15:49" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1614761186.10592613.1478186149176.JavaMail.zimbra@redhat.com>" "20" "[oss-security] CVE request -- linux kernel: crypto: GPF in lrw_crypt caused by null-deref" "^Date:" nil nil "11" "2016110315:15:49" "[oss-security] CVE request -- linux kernel: crypto: GPF in lrw_crypt caused by null-deref" (number mark "U       vdronov@redh Nov  3   20/784   " thread-indent "\"[oss-security] CVE request -- linux kernel: crypto: GPF in lrw_crypt caused by null-deref\"\n") "<18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>" ("<183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>" "<18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25708 invoked by uid 550); 3 Nov 2016 15:16:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25678 invoked from network); 3 Nov 2016 15:16:02 -0000
Message-ID: <1614761186.10592613.1478186149176.JavaMail.zimbra@redhat.com>
In-Reply-To: <18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>
References: <183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com> <18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.0.183]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF49 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)
Thread-Index: AYotnA1cUYB0pFH9275OKy1/eLxrytn6hq7ByIRo+lw=
Date: Thu, 3 Nov 2016 11:15:49 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- linux kernel: crypto: GPF in lrw_crypt caused by
 null-deref
To: oss-security@lists.openwall.com

Hello,

We would like to ask for a CVE-ID for the following security flaw.

The lrw_crypt() function in 'crypto/lrw.c' in the Linux kernel
before 4.5 allows local users to cause a system crash and a denial
of service by the NULL pointer dereference via accept(2) system call
for AF_ALG socket without calling setkey() first to set a cipher key.

Initial discussion:
https://groups.google.com/forum/#!msg/syzkaller/frb2XrB5aWk/xCXzkIBcDAAJ

Red Hat Product Security Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1386286

Initial upstream patch (followed by a set of the related patches):
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=dd504589577d8e8e70f51f997ad487a4cb6c026f

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
