X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["589" "Thursday" "13" "December" "2018" "15:02:30" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1812131459590.12493@xnncv>" "19" "[oss-security] CVE-2018-20123 QEMU: pvrdma: memory leakage in device hotplug" nil nil nil "12" "2018121309:32:30" "[oss-security] CVE-2018-20123 QEMU: pvrdma: memory leakage in device hotplug" (number mark "U       ppandit@redh Dec 13   19/589   " thread-indent "\"[oss-security] CVE-2018-20123 QEMU: pvrdma: memory leakage in device hotplug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16141 invoked by uid 550); 13 Dec 2018 09:32:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16122 invoked from network); 13 Dec 2018 09:32:46 -0000
Date: Thu, 13 Dec 2018 15:02:30 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@163.com>
Message-ID: <nycvar.YSQ.7.76.1812131459590.12493@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Thu, 13 Dec 2018 09:32:34 +0000 (UTC)
Subject: [oss-security] CVE-2018-20123 QEMU: pvrdma: memory leakage in device hotplug

   Hello,

A memory leakage issue was found in the way QEMU initialised its VMWare's 
paravirtual RDMA device. In pvrdma_realize() routine, if an error occurred, it 
did not release memory resources allocated to various objects.

A guest user/process could use this flaw to leak host memory, resulting in DoS 
for host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg02817.html

This issue was reported by Li Qiang of 163.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
