X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1218" "Thursday" "15" "October" "2015" "02:35:02" "-0400" "Wade Mealing" "wmealing@redhat.com" "<631817816.36915863.1444890902322.JavaMail.zimbra@redhat.com>" "26" "[oss-security] CVE Request - Linux kernel - securelevel/secureboot bypass." nil nil nil "10" "2015101506:35:02" "[oss-security] CVE Request - Linux kernel - securelevel/secureboot bypass." (number mark "        wmealing@red Oct 15   26/1218  " thread-indent "\"[oss-security] CVE Request - Linux kernel - securelevel/secureboot bypass.\"\n") "<1938428163.35865956.1444710143133.JavaMail.zimbra@redhat.com>" ("<1938428163.35865956.1444710143133.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31797 invoked by uid 550); 15 Oct 2015 06:35:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31779 invoked from network); 15 Oct 2015 06:35:15 -0000
Message-ID: <631817816.36915863.1444890902322.JavaMail.zimbra@redhat.com>
In-Reply-To: <1938428163.35865956.1444710143133.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.49.77]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF41 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE Request - Linux kernel - securelevel/secureboot bypass.
Thread-Index: Y+TkNzIlb1319hHy2qk7Jj0llcmbiQ==
Cc: oss-security@lists.openwall.com
Date: Thu, 15 Oct 2015 02:35:02 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - Linux kernel - securelevel/secureboot bypass.
To: cve-assign@mitre.org

Gday,

I'm like to request a CVE for the following issue (paraphrasing Linn Crosetto):

-----

When the kernel was booted with UEFI Secure Boot enabled, securelevel is set. If kexec (either through crash or admin action) is then used to load the same kernel, after reboot securelevel is disabled. In this state, the system is missing the protections provided by securelevel, for example kexec may be used to load an unsigned kernel via the legacy system call kexec_load.

In the securelevel patchset, the state of UEFI Secure Boot is queried in the EFI stub, and sets a boot_params flag to indicate the state of UEFI Secure Boot. This flag is then used in setup_arch() to determine the correct state of securelevel. If the kernel is not booted via the EFI stub, securelevel is not set even if UEFI Secure Boot is enabled.

-----

TLDR: this allows a bypass the security mechanism of securelevel/secureboot combination.

This patchset affects Red Hat specific kernels as secureboot is not fully fully implemented upstream yet.

Thanks,

Wade Mealing
Red Hat Product Security team


References:
Patch: https://bugzilla.redhat.com/show_bug.cgi?id=1243998#c3
Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=1243998

