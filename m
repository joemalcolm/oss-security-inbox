X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["716" "Thursday" "13" "October" "2016" "08:46:51" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>" "20" "[oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)" "^Date:" nil nil "10" "2016101312:46:51" "[oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)" (number mark "        vdronov@redh Oct 13   20/716   " thread-indent "\"[oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)\"\n") "<1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>" ("<1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29710 invoked by uid 550); 13 Oct 2016 12:47:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28668 invoked from network); 13 Oct 2016 12:47:04 -0000
Message-ID: <1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>
In-Reply-To: <1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>
References: <1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.0.183]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF49 (Linux)/8.0.6_GA_5922)
Thread-Topic: kernel: ACPI table override is allowed when securelevel is enabled
Thread-Index: dJ4f9CJmfLHxyqL283vejSBe0Vb98Ld+diYF
Date: Thu, 13 Oct 2016 08:46:51 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)
To: oss-security@lists.openwall.com

Hello,

It was found that when gcc stack protector is turned on, proc_keys_show() can
cause a panic in the Linux kernel due to the stack corruption. This happens
because xbuf[] is not big enough to hold a 64-bit timeout value rendered as weeks.

CVE-2016-7042 was assigned to this flaw internally by the Red Hat. Please, use it
in the public communications regarding this flaw.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1373966 (patch)

https://bugzilla.redhat.com/show_bug.cgi?id=1373499 (reproducer, patch)

Note: Unfortunately, I'm not sure if the patch was already sent to security@kernel.org
or alike by the patch author.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
