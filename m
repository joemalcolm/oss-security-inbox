X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["582" "Thursday" "28" "July" "2016" "17:31:12" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1607281725190.28945@wniryva>" "17" "[oss-security] CVE Request Qemu: virtio: infinite loop in virtqueue_pop" "^cc:" nil nil "7" "2016072812:01:12" "[oss-security] CVE Request Qemu: virtio: infinite loop in virtqueue_pop" (number mark "U       ppandit@redh Jul 28   17/582   " thread-indent "\"[oss-security] CVE Request Qemu: virtio: infinite loop in virtqueue_pop\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21661 invoked by uid 550); 28 Jul 2016 12:01:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21640 invoked from network); 28 Jul 2016 12:01:29 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1607281725190.28945@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Thu, 28 Jul 2016 12:01:17 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Thu, 28 Jul 2016 17:31:12 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request Qemu: virtio: infinite loop in virtqueue_pop
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick emulator(Qemu) built with the virtio framework is vulnerable to an 
infinite loop issue. It could occur if the guest was to set the I/O descriptor 
buffer length to be zero. A privileged user inside guest could use this flaw 
to potentially crash the Qemu instance on the host resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-07/msg06246.html

This issue was discovered by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
