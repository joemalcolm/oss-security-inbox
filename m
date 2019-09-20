X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["804" "Friday" "20" "September" "2019" "16:02:32" "+0530" "P J P" "ppandit@redhat.com" nil "22" nil "^cc:" nil nil "9" nil nil (number mark "        ppandit@redh Sep 20   22/804   " thread-indent "\"[oss-security] CVE-2019-14821 Kernel: KVM: OOB memory access via mmio ring buffer\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-14821 Kernel: KVM: OOB memory access via mmio ring buffer" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3538 invoked by uid 550); 20 Sep 2019 10:33:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3517 invoked from network); 20 Sep 2019 10:33:07 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1909201557410.24344@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Fri, 20 Sep 2019 10:32:55 +0000 (UTC)
cc: Matt Delco <delco@chromium.org>
Date: Fri, 20 Sep 2019 16:02:32 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-14821 Kernel: KVM: OOB memory access via mmio ring buffer
To: oss security list <oss-security@lists.openwall.com>

   Hello,

An out-of-bounds access issue was found in the way Linux kernel's KVM 
hypervisor implements Coalesced MMIO write operation. It operates on a MMIO 
ring buffer 'struct kvm_coalesced_mmio' object, wherein write indices 
'ring->first' and 'ring->last' value could be supplied by a host user-space 
process.

An unprivileged host user/process with access to '/dev/kvm' device could use 
this flaw to crash the host kernel resulting in DoS OR potentially escalate 
privileges on the system.

Upstream patch:
---------------
   -> https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=b60fe990c6b07ef6d4df67bc0530c7c90a62623a

This issue was reported by Matt Delco of Google Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
