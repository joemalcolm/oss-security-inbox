X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["616" "Thursday" "15" "December" "2016" "12:27:19" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612151224140.6050@wniryva>" "19" "[oss-security] CVE-2016-9588 Kernel: kvm: nVMX: uncaught software exceptions in L1 guest lead to DoS" nil nil nil "12" "2016121506:57:19" "[oss-security] CVE-2016-9588 Kernel: kvm: nVMX: uncaught software exceptions in L1 guest lead to DoS" (number mark "U       ppandit@redh Dec 15   19/616   " thread-indent "\"[oss-security] CVE-2016-9588 Kernel: kvm: nVMX: uncaught software exceptions in L1 guest lead to DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24497 invoked by uid 550); 15 Dec 2016 06:57:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24479 invoked from network); 15 Dec 2016 06:57:40 -0000
Date: Thu, 15 Dec 2016 12:27:19 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1612151224140.6050@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 15 Dec 2016 06:57:28 +0000 (UTC)
Subject: [oss-security] CVE-2016-9588 Kernel: kvm: nVMX: uncaught software exceptions in L1
 guest lead to DoS

   Hello,

Linux kernel built with the KVM virtualisation support(CONFIG_KVM), with 
nested virtualisation(nVMX) feature enabled(nested=1), is vulnerable to an 
uncaught exceptions issue. It could occur if a L2 guest was to throw an 
exception which is not handled by L1 guest.

A L1 guest user could use this flaw to crash the guest resulting in DoS.

Upstream patch
--------------
   -> https://www.spinics.net/lists/kvm/msg142495.html

'CVE-2016-9588' has been assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
