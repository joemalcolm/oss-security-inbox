X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["670" "Tuesday" "26" "September" "2017" "10:26:27" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1709261022090.10045@wniryva>" "20" "[oss-security] CVE-2017-12154 Kernel: kvm: nVMX: L2 guest could access hardware(L0) CR8 register" nil nil nil "9" "2017092604:56:27" "[oss-security] CVE-2017-12154 Kernel: kvm: nVMX: L2 guest could access hardware(L0) CR8 register" (number mark "U       ppandit@redh Sep 26   20/670   " thread-indent "\"[oss-security] CVE-2017-12154 Kernel: kvm: nVMX: L2 guest could access hardware(L0) CR8 register\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11598 invoked by uid 550); 26 Sep 2017 04:56:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11576 invoked from network); 26 Sep 2017 04:56:48 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 5E70580469
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Tue, 26 Sep 2017 10:26:27 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Jim Mattson <jmattson@google.com>
Message-ID: <nycvar.YSQ.7.76.1709261022090.10045@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Tue, 26 Sep 2017 04:56:36 +0000 (UTC)
Subject: [oss-security] CVE-2017-12154 Kernel: kvm: nVMX: L2 guest could access hardware(L0)
 CR8 register

   Hello,

Linux kernel built with the KVM virtualisation support(CONFIG_KVM), with 
nested virtualisation(nVMX) feature enabled(nested=1), is vulnerable to a 
crash due to disabled external interrupts. As L2 guest could access(r/w) 
hardware CR8 register of the host(L0).

In a nested virtualisation setup, L2 guest user could use this flaw to 
potentially crash the host(L0) resulting in DoS.

Upstream patch
--------------
   -> https://git.kernel.org/linus/51aa68e7d57e3217192d88ce90fd5b8ef29ec94f

This issue was reported by Jim Mattson of Google.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
