X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["891" "Friday" "20" "May" "2016" "12:15:55" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605201212030.30609@wniryva>" "26" "[oss-security] CVE-2016-4440 Kernel: kvm: vmx: incorrect state update leading to MSR access" nil nil nil "5" "2016052006:45:55" "[oss-security] CVE-2016-4440 Kernel: kvm: vmx: incorrect state update leading to MSR access" (number mark "U       ppandit@redh May 20   26/891   " thread-indent "\"[oss-security] CVE-2016-4440 Kernel: kvm: vmx: incorrect state update leading to MSR access\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29736 invoked by uid 550); 20 May 2016 06:46:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29717 invoked from network); 20 May 2016 06:46:15 -0000
Date: Fri, 20 May 2016 12:15:55 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1605201212030.30609@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Fri, 20 May 2016 06:46:03 +0000 (UTC)
Subject: [oss-security] CVE-2016-4440 Kernel: kvm: vmx: incorrect state update leading to
 MSR access

   Hello,

Linux kernel built with the Kernel-based virtual machine(CONFIG_KVM) along 
with Hyper-v Synthetic Interrupt Controller(SynIC) support is vulnerable to an 
undue APIC register access issue. In that a guest with SynIC enabled, could 
gain access to host's Machine Specific Registers(MSR).

A privileged user inside guest could use this flaw to crash the host kernel 
resulting in DoS OR potentially leverage it to escalate privileges on the 
host.

Upstream patch:
---------------
   -> http://permalink.gmane.org/gmane.comp.emulators.kvm.devel/152191

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1337806
   -> http://comments.gmane.org/gmane.comp.emulators.kvm.devel/152100

'CVE-2016-4440' has been assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
