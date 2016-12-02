X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["686" "Friday" "2" "December" "2016" "12:13:14" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612021209120.5066@wniryva>" "21" "[oss-security] CVE request: Kernel: kvm: out of bounds memory access via vcpu_id" nil nil nil "12" "2016120206:43:14" "[oss-security] CVE request: Kernel: kvm: out of bounds memory access via vcpu_id" (number mark "U       ppandit@redh Dec  2   21/686   " thread-indent "\"[oss-security] CVE request: Kernel: kvm: out of bounds memory access via vcpu_id\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28231 invoked by uid 550); 2 Dec 2016 06:43:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28201 invoked from network); 2 Dec 2016 06:43:30 -0000
Date: Fri, 2 Dec 2016 12:13:14 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1612021209120.5066@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 02 Dec 2016 06:43:18 +0000 (UTC)
Subject: [oss-security] CVE request: Kernel: kvm: out of bounds memory access via vcpu_id

   Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support 
is vulnerable to an out-of-bounds memory access issue. It could occur on x86 
platform, while servicing I/O APIC requests with larger vcpu_id.

A guest user/process could use this flaw to crash the host kernel resulting in 
DoS or it could potentially be used to escalate privileges on a host.

Upstream patch:
---------------
   -> https://git.kernel.org/linus/81cdb259fb6d8c1c4ecfeea389ff5a73c07f5755

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1400804

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
