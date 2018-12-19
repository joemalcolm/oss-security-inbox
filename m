X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["576" "Wednesday" "19" "December" "2018" "12:52:06" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812191250250.14650@xnncv>" "19" "[oss-security] CVE-2018-20125 QEMU: pvrdma: null dereference or excessive memory allocation when creating QP/CQ" nil nil nil "12" "2018121907:22:06" "[oss-security] CVE-2018-20125 QEMU: pvrdma: null dereference or excessive memory allocation when creating QP/CQ" (number mark "U       ppandit@redh Dec 19   19/576   " thread-indent "\"[oss-security] CVE-2018-20125 QEMU: pvrdma: null dereference or excessive memory allocation when creating QP/CQ\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11703 invoked by uid 550); 19 Dec 2018 07:22:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11683 invoked from network); 19 Dec 2018 07:22:22 -0000
Date: Wed, 19 Dec 2018 12:52:06 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@163.com>
Message-ID: <nycvar.YSQ.7.76.1812191250250.14650@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Wed, 19 Dec 2018 07:22:10 +0000 (UTC)
Subject: [oss-security] CVE-2018-20125 QEMU: pvrdma: null dereference or excessive memory
 allocation when creating QP/CQ

   Hello,

A Null pointer dereference issue was found in QEMU's implementation of 
VMWare's paravirtual RDMA device. It could occur while creating CQ/QP ring 
objects in pvrdma_ring_init() routine.

A guest user/process could use this flaw to crash QEMU process or allocate 
excessive memory on host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg02823.html

This issue was reported by Li Qiang.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
