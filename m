X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1249" "Thursday" "22" "September" "2016" "07:58:47" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>" "25" "[oss-security] kernel: ACPI table override is allowed when securelevel is enabled" nil nil nil "9" "2016092211:58:47" "[oss-security] kernel: ACPI table override is allowed when securelevel is enabled" (number mark "U       vdronov@redh Sep 22   25/1249  " thread-indent "\"[oss-security] kernel: ACPI table override is allowed when securelevel is enabled\"\n") "<912924205.2209607.1474545108818.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7609 invoked by uid 550); 22 Sep 2016 13:04:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9547 invoked from network); 22 Sep 2016 11:59:00 -0000
Date: Thu, 22 Sep 2016 07:58:47 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>
In-Reply-To: <912924205.2209607.1474545108818.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.0.234]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF48 (Linux)/8.0.6_GA_5922)
Thread-Topic: kernel: ACPI table override is allowed when securelevel is enabled
Thread-Index: dJ4f9CJmfLHxyqL283vejSBe0Vb98A==
Subject: [oss-security] kernel: ACPI table override is allowed when securelevel is enabled

Hello,

A vulnerability was found in the RHEL7 kernel. When RHEL7 is booted with UEFI Secure Boot enabled,
securelevel is set. The kernel uses the state of securelevel to prevent userspace from inserting
untrusted privileged code at runtime.

The ACPI tables provided by firmware can be overwritten using the initrd. From the kernel documentation:

  If the ACPI_INITRD_TABLE_OVERRIDE compile option is true, it is possible to
  override nearly any ACPI table provided by the BIOS with an instrumented,
  modified one.

RHEL7 has CONFIG_ACPI_INITRD_TABLE_OVERRIDE kernel config option enabled, and will load ACPI tables
appended to the initrd, even if booted with UEFI Secure Boot enabled and securelevel set.

Upstream patch: https://github.com/mjg59/linux/commit/a4a5ed2835e8ea042868b7401dced3f517cafa76

The securelevel patchset was not accepted to an upstream kernel, see http://www.zdnet.com/article/matthew-garrett-is-not-forking-linux/
and https://linux.slashdot.org/story/15/10/06/1553233/matthew-garrett-forks-the-linux-kernel ,it is
maintained now by MJG: https://github.com/mjg59/linux .

CVE-2016-3699 was assigned to this security flaw internally by the Red Hat.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
