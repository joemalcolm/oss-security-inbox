X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["665" "Wednesday" "13" "April" "2016" "23:38:26" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1604132336250.29012@wniryva>" "23" "[oss-security] CVE request Qemu: i386: leakage of stack memory to guest in kvmvapic.c" "^cc:" nil nil "4" "2016041318:08:26" "[oss-security] CVE request Qemu: i386: leakage of stack memory to guest in kvmvapic.c" (number mark "        ppandit@redh Apr 13   23/665   " thread-indent "\"[oss-security] CVE request Qemu: i386: leakage of stack memory to guest in kvmvapic.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11352 invoked by uid 550); 13 Apr 2016 18:08:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11330 invoked from network); 13 Apr 2016 18:08:48 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1604132336250.29012@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
cc: Donghai Zdh <donghai.zdh@alibaba-inc.com>
Date: Wed, 13 Apr 2016 23:38:26 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: i386: leakage of stack memory to guest in
 kvmvapic.c
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the Task Priority Register(TPR) optimizations for 
32-bit Windows guests, is vulnerable to a information leakage issue. It could 
occur while accessing Task Priority Register(TPR).

A privileged user/process inside guest could use this issue to leak host 
memory bytes.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-04/msg01118.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1313686

This issue was discovered by Donghai Zdh of Alibaba Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
