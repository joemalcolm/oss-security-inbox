X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1449" "Wednesday" "18" "March" "2015" "13:25:03" "+0100" "Quentin Casasnovas" "quentin.casasnovas@oracle.com" "<20150318122502.GA24063@chrystal.uk.oracle.com>" "31" "[oss-security] CVE Request: Linux kernel execution in the early microcode loader." nil nil nil "3" "2015031812:25:03" "[oss-security] CVE Request: Linux kernel execution in the early microcode loader." (number mark "        quentin.casa Mar 18   31/1449  " thread-indent "\"[oss-security] CVE Request: Linux kernel execution in the early microcode loader.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21556 invoked by uid 550); 18 Mar 2015 12:23:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21537 invoked from network); 18 Mar 2015 12:23:08 -0000
Message-ID: <20150318122502.GA24063@chrystal.uk.oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.22 (2013-10-16)
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Date: Wed, 18 Mar 2015 13:25:03 +0100
From: Quentin Casasnovas <quentin.casasnovas@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux kernel execution in the early microcode loader.
To: CVE-assign <cve-assign@mitre.org>,
        oss-sec <oss-security@lists.openwall.com>

Hi,

The Linux kernel Intel early microcode loader was vulnerable to a stack
overflow.  This issue was fixed in upstream commit f84598bd7c

  https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=f84598bd7c851f8b0bf8cd0d7c3be0d73c432ff4

And was introduced in kernel 3.8+ in ec400dd ("x86/microcode_intel_early.c:
Early update ucode on Intel's CPU").

It potentially allows kernel execution using a specially crafted microcode,
and I could not see that CONFIG_CC_STACKPROTECTOR_REGULAR was of any help
since it left get_matching_model_microcode() unprotected on my build.  It
was protected using CONFIG_CC_STACKPROTECTOR_STRONG with gcc-4.9.2.

It is not relevant that the tampered microcode would be refused by the CPU
(since it is signed by Intel) because kernel execution would happen before
that.

The attack vector could be from anyone between Intel and people
shipping/packaging the microcode, or could potentially be used to get a
resilient backdoor on system already compromised by sticking a tampered
microcode on the initrd.  It would also allow root to get kernel execution
by recreating the initrd.  I admit these are overly paranoid scenarios, but
I _think_ there's still a privilege crossing from root to kernel exec which
could make sense on certain security model.

I could not see an answer from cve-assign when this issue was discussed on
security@kernel.org.  Could a CVE be assigned to this please?

Quentin
