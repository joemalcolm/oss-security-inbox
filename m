X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["682" "Tuesday" "31" "January" "2017" "13:23:56" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701311317010.32735@wniryva>" "24" "[oss-security] CVE-2017-2596 Kernel: kvm: page reference leakage in handle_vmon" nil nil nil "1" "2017013107:53:56" "[oss-security] CVE-2017-2596 Kernel: kvm: page reference leakage in handle_vmon" (number mark "U       ppandit@redh Jan 31   24/682   " thread-indent "\"[oss-security] CVE-2017-2596 Kernel: kvm: page reference leakage in handle_vmon\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13663 invoked by uid 550); 31 Jan 2017 07:54:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13632 invoked from network); 31 Jan 2017 07:54:12 -0000
Date: Tue, 31 Jan 2017 13:23:56 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1701311317010.32735@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 31 Jan 2017 07:54:01 +0000 (UTC)
Subject: [oss-security] CVE-2017-2596 Kernel: kvm: page reference leakage in handle_vmon

   Hello,

Linux kernel built with the KVM virtualisation support(CONFIG_KVM), with 
nested virtualisation(nVMX) feature enabled(nested=1), is vulnerable to host 
memory leakage issue. It could occur while emulating VMXON instruction in 
'handle_vmon'.

A L1 guest user could use this flaw to leak host memory potentially resulting 
in DoS.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kvm/msg144319.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1417812

'CVE-2017-2596' is assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
