X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["573" "Tuesday" "18" "December" "2018" "14:23:07" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812181420590.5773@xnncv>" "19" "[oss-security] CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array" nil nil nil "12" "2018121808:53:07" "[oss-security] CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array" (number mark "U       ppandit@redh Dec 18   19/573   " thread-indent "\"[oss-security] CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20110 invoked by uid 550); 18 Dec 2018 08:53:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20092 invoked from network); 18 Dec 2018 08:53:24 -0000
Date: Tue, 18 Dec 2018 14:23:07 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: saar amar <saaramar5@gmail.com>
Message-ID: <nycvar.YSQ.7.76.1812181420590.5773@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Tue, 18 Dec 2018 08:53:12 +0000 (UTC)
Subject: [oss-security] CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather
 array

   Hello,

An out-of-bound stack buffer r/w access issue was found in QEMU's generic RDMA 
back-end implementation. It could occur when a driver tries to build 
scatter/gather element's array in build_host_sge_array() routine.

A guest user/process could use this flaw to crash the QEMU process resulting 
in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg02822.html

This issue was reported by Saar Amar.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
