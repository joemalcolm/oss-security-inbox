X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["654" "Tuesday" "22" "November" "2016" "13:16:46" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1611221311230.12350@wniryva>" "22" "[oss-security] CVE-2016-8630 kernel: kvm: x86: NULL pointer dereference duringinstruction decode" nil nil nil "11" "2016112207:46:46" "[oss-security] CVE-2016-8630 kernel: kvm: x86: NULL pointer dereference duringinstruction decode" (number mark "U       ppandit@redh Nov 22   22/654   " thread-indent "\"[oss-security] CVE-2016-8630 kernel: kvm: x86: NULL pointer dereference duringinstruction decode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5994 invoked by uid 550); 22 Nov 2016 07:47:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5976 invoked from network); 22 Nov 2016 07:47:04 -0000
Date: Tue, 22 Nov 2016 13:16:46 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Owen Hofmann <osh@google.com>
Message-ID: <alpine.LFD.2.20.1611221311230.12350@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 22 Nov 2016 07:46:53 +0000 (UTC)
Subject: [oss-security] CVE-2016-8630 kernel: kvm: x86: NULL pointer dereference duringinstruction
 decode

   Hello,

Linux kernel built with the Kernel-based Virtual Machine (CONFIG_KVM) support 
is vulnerable to a null pointer dereference flaw. It could occur on x86 
platform, when emulating an undefined instruction.

A user/process could use this flaw to crash the host kernel resulting in DoS.

Upstream patch:
---------------
   -> https://git.kernel.org/linus/d9092f52d7e61dd1557f2db2400ddb430e85937e

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1393350

CVE-2016-8630 was assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
