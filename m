X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1141" "Sunday" "28" "February" "2016" "12:24:58" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<569930062.30129018.1456680298679.JavaMail.zimbra@redhat.com>" "26" "[oss-security] CVE request -- linux kernel: visor: crash on invalid USB device descriptors in treo_attach() in visor driver" nil nil nil "2" "2016022817:24:58" "[oss-security] CVE request -- linux kernel: visor: crash on invalid USB device descriptors in treo_attach() in visor driver" (number mark "U       vdronov@redh Feb 28   26/1141  " thread-indent "\"[oss-security] CVE request -- linux kernel: visor: crash on invalid USB device descriptors in treo_attach() in visor driver\"\n") "<1896285770.30128486.1456679748415.JavaMail.zimbra@redhat.com>" ("<1896285770.30128486.1456679748415.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8121 invoked by uid 550); 28 Feb 2016 17:25:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8098 invoked from network); 28 Feb 2016 17:25:11 -0000
Date: Sun, 28 Feb 2016 12:24:58 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <569930062.30129018.1456680298679.JavaMail.zimbra@redhat.com>
In-Reply-To: <1896285770.30128486.1456679748415.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.16]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF44 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: visor: crash on invalid USB device descriptors in treo_attach() in visor driver
Thread-Index: 3EnYO3wTjSVSE1TZAm4Eqpn2T4eCCw==
Subject: [oss-security] CVE request -- linux kernel: visor: crash on invalid USB device
 descriptors in treo_attach() in visor driver

Hello,

If possible, we would like to obtain a CVE-ID for the following issue.

Let me please, note, that this flaw is very similar to already existing
CVE-2015-7566 (https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-7566).
This is the same type of a flaw, which just exists in the different function
treo_attach() (instead of clie_5_attach()), so probably we can use the same
CVE-2015-7566 for this.

Description:

A local kernel crash on invalid USB device requiring the visor driver was reported.
The treo_attach() function of the [visor] driver, which is called during the driver
initialization process, was dereferencing the bulk-in and interrupt-in urbs without
first making sure they had been allocated by the core. Due to an incomplete sanity
check, the visor driver tries to dereference null-pointers, which results in crash. 

References:

Red Hat public Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=1312670

An upstream patch: http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=cb3232138e37129e88240a98a1d2aba2187ff57c

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
