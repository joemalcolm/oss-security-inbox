X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["734" "Wednesday" "30" "March" "2016" "08:52:57" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>" "21" "[oss-security] CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)" "^Date:" nil nil "3" "2016033012:52:57" "[oss-security] CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)" (number mark "        vdronov@redh Mar 30   21/734   " thread-indent "\"[oss-security] CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)\"\n") "<904926834.43261448.1459342199335.JavaMail.zimbra@redhat.com>" ("<904926834.43261448.1459342199335.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23791 invoked by uid 550); 30 Mar 2016 12:53:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23769 invoked from network); 30 Mar 2016 12:53:10 -0000
Message-ID: <183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>
In-Reply-To: <904926834.43261448.1459342199335.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.159]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF45 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: crash on invalid USB device descriptors (ims-pcu driver)
Thread-Index: AYotnA1cUYB0pFH9275OKy1/eLxryg==
Date: Wed, 30 Mar 2016 08:52:57 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request -- linux kernel: crash on invalid USB device
 descriptors (ims-pcu driver)
To: oss-security@lists.openwall.com

Hello,

If possible, we would like to obtain a CVE-ID for the following
securuty flaw.

A device pretending to be a device driven by the ims-pcu driver,
but leaving out either of the two interfaces present on the genuine
device will crash the driver and possibly the kernel. Thus, DoS
with physical access is possible. Kernels since v3.10 are vulnerable.

Initial reference with a proposed fix:
https://bugzilla.novell.com/show_bug.cgi?id=971628

An upstream patch:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=a0ad220c96692eda76b2e3fd7279f3dcd1d8a8ff

Red Hat security Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1320060

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
