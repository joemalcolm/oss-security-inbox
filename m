X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["639" "Wednesday" "18" "January" "2017" "23:10:19" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701182308090.22270@wniryva>" "21" "[oss-security] CVE request Kernel: kvm: use-after-free issue while creating devices" nil nil nil "1" "2017011817:40:19" "[oss-security] CVE request Kernel: kvm: use-after-free issue while creating devices" (number mark "U       ppandit@redh Jan 18   21/639   " thread-indent "\"[oss-security] CVE request Kernel: kvm: use-after-free issue while creating devices\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9309 invoked by uid 550); 18 Jan 2017 17:40:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9286 invoked from network); 18 Jan 2017 17:40:36 -0000
Date: Wed, 18 Jan 2017 23:10:19 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: NCSC Security <security@ncsc.gov.uk>
Message-ID: <alpine.LFD.2.20.1701182308090.22270@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 18 Jan 2017 17:40:25 +0000 (UTC)
Subject: [oss-security] CVE request Kernel: kvm: use-after-free issue while creating
 devices

   Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support 
is vulnerable to a use-after-free flaw. It could occur while creating devices, 
via ioctl('/dev/kvm', ...) calls.

A user/process could use this flaw to crash the host kernel resulting in DoS 
or potentially escalate their privileges on a system.

Upstream patch:
---------------
   -> https://git.kernel.org/linus/a0f1d21c1ccb1da66629627a74059dd7f5ac9c61

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1414506

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
