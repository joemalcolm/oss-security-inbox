X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["565" "Tuesday" "18" "December" "2018" "14:20:49" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812181418260.5773@xnncv>" "19" "[oss-security] CVE-2018-20191 QEMU: pvrdma: uar_read leads to NULL dereference" nil nil nil "12" "2018121808:50:49" "[oss-security] CVE-2018-20191 QEMU: pvrdma: uar_read leads to NULL dereference" (number mark "U       ppandit@redh Dec 18   19/565   " thread-indent "\"[oss-security] CVE-2018-20191 QEMU: pvrdma: uar_read leads to NULL dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7518 invoked by uid 550); 18 Dec 2018 08:51:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7497 invoked from network); 18 Dec 2018 08:51:06 -0000
Date: Tue, 18 Dec 2018 14:20:49 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@163.com>
Message-ID: <nycvar.YSQ.7.76.1812181418260.5773@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 18 Dec 2018 08:50:54 +0000 (UTC)
Subject: [oss-security] CVE-2018-20191 QEMU: pvrdma: uar_read leads to NULL dereference

   Hello,

A Null pointer dereference issue was found in QEMU's implementation of 
VMWare's paravirtual RDMA device. It could occur while performing UAR read 
operation, as it did not define a routine to handle it.

A guest user/process could use this flaw to crash QEMU process on host, 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg03066.html

This issue was reported by Li Qiang.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
