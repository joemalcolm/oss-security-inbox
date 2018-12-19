X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["540" "Wednesday" "19" "December" "2018" "12:49:47" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812191246500.14650@xnncv>" "19" "[oss-security] CVE-2018-20216 QEMU: pvrdma: infinite loop in pvrdma_qp_send/recv" nil nil nil "12" "2018121907:19:47" "[oss-security] CVE-2018-20216 QEMU: pvrdma: infinite loop in pvrdma_qp_send/recv" (number mark "U       ppandit@redh Dec 19   19/540   " thread-indent "\"[oss-security] CVE-2018-20216 QEMU: pvrdma: infinite loop in pvrdma_qp_send/recv\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32171 invoked by uid 550); 19 Dec 2018 07:20:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32153 invoked from network); 19 Dec 2018 07:20:07 -0000
Date: Wed, 19 Dec 2018 12:49:47 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@163.com>
Message-ID: <nycvar.YSQ.7.76.1812191246500.14650@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Wed, 19 Dec 2018 07:19:55 +0000 (UTC)
Subject: [oss-security] CVE-2018-20216 QEMU: pvrdma: infinite loop in pvrdma_qp_send/recv

   Hello,

An infinite loop issue was found in QEMU's implementation of VMWare's 
paravirtual RDMA device. It could occur while transferring QP ring objects' 
data in pvrdma_qp_send/recv functions.

A guest user/process could use this flaw to cause infinite loop resulting in 
DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg03052.html

This issue was reported by Li Qiang.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
