X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["774" "Thursday" "12" "October" "2017" "23:35:35" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1710122333130.10613@wniryva>" "25" "[oss-security] CVE-2017-12188 Kernel: KVM: MMU potential stack buffer overrun during page walks" nil nil nil "10" "2017101218:05:35" "[oss-security] CVE-2017-12188 Kernel: KVM: MMU potential stack buffer overrun during page walks" (number mark "U       ppandit@redh Oct 12   25/774   " thread-indent "\"[oss-security] CVE-2017-12188 Kernel: KVM: MMU potential stack buffer overrun during page walks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23730 invoked by uid 550); 12 Oct 2017 18:05:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23701 invoked from network); 12 Oct 2017 18:05:52 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com D5909C04D2B3
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Thu, 12 Oct 2017 23:35:35 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1710122333130.10613@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Thu, 12 Oct 2017 18:05:41 +0000 (UTC)
Subject: [oss-security] CVE-2017-12188 Kernel: KVM: MMU potential stack buffer overrun during
 page walks

    Hello,

Linux kernel built with the KVM virtualisation support(CONFIG_KVM), with 
nested virtualisation(nVMX) feature enabled(nested=1), is vulnerable to a 
stack buffer overflow issue. It could occur while traversing guest page table 
entries to resolve guest virtual address(gva).

A L1 guest could use this flaw to crash the host kernel resulting in DoS. OR 
potentially execute arbitrary code on the host to gain access to the host 
system.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kvm/msg156651.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1500380

'CVE-2017-12188' assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
