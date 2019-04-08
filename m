X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["771" "Monday" "8" "April" "2019" "10:07:52" "+0530" "P J P" "ppandit@redhat.com" nil "21" nil nil nil nil "4" nil nil (number mark "U       ppandit@redh Apr  8   21/771   " thread-indent "\"[oss-security] CVE-2019-3887 Kernel: KVM: nVMX: guest accesses L0 MSR causes potential DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-3887 Kernel: KVM: nVMX: guest accesses L0 MSR causes potential DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8126 invoked by uid 550); 8 Apr 2019 04:38:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8108 invoked from network); 8 Apr 2019 04:38:11 -0000
Date: Mon, 8 Apr 2019 10:07:52 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Marc Orr <marcorr@google.com>
Message-ID: <nycvar.YSQ.7.76.1904081004200.6584@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Mon, 08 Apr 2019 04:37:59 +0000 (UTC)
Subject: [oss-security] CVE-2019-3887 Kernel: KVM: nVMX: guest accesses L0 MSR causes
 potential DoS

   Hello,

A flaw was found in the way KVM hypervisor handled x2APIC Machine Specific 
Rregister(MSR) access with nested(=1) virtualization enabled. In that, L1 
guest could access L0's APIC register values via L2 guest, when 'virtualize 
x2APIC mode' is enabled.

A guest could use this flaw to potentially crash the host kernel resulting in 
DoS issue.

Upstream patches:
-----------------
   -> https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=acff78477b9b4f26ecdf65733a4ed77fe837e9dc
   -> https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=c73f4c998e1fd4249b9edfa39e23f4fda2b9b041

This issue was discovered by Marc Orr of Google Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
