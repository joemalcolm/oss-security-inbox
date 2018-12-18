X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["718" "Wednesday" "19" "December" "2018" "00:45:34" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812190041530.7329@xnncv>" "21" "[oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing" nil nil nil "12" "2018121819:15:34" "[oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing" (number mark "U       ppandit@redh Dec 19   21/718   " thread-indent "\"[oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt processing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11956 invoked by uid 550); 18 Dec 2018 19:15:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11938 invoked from network); 18 Dec 2018 19:15:50 -0000
Date: Wed, 19 Dec 2018 00:45:34 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Cfir Cohen <cfir@google.com>
Message-ID: <nycvar.YSQ.7.76.1812190041530.7329@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Tue, 18 Dec 2018 19:15:38 +0000 (UTC)
Subject: [oss-security] CVE-2018-16882 Kernel: KVM: nVMX: use after free in posted interrupt
 processing

   Hello,

A use after free issue was found in the way Linux kernel's KVM hypervisor 
processed posted interrupts, when nested(=1) virtualization is enabled. In 
nested_get_vmcs12_pages(), in case of an error while processing posted 
interrupt address, it unmaps the 'pi_desc_page' without resetting 'pi_desc' 
descriptor address. Which is latter used in pi_test_and_clear_on().

A guest user/process could use this flaw to crash the host kernel resulting in 
DoS.

Upstream patch:
---------------
   -> https://marc.info/?l=kvm&m=154514994222809&w=2

This issue was reported by Cfir Cohen of google.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
