X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["702" "Monday" "30" "May" "2016" "14:22:03" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605301419050.26205@wniryva>" "24" "[oss-security] CVE-2016-4453 Qemu: display: vmsvga: infinite loop in vmsvga_fifo_run() routine" "^cc:" nil nil "5" "2016053008:52:03" "[oss-security] CVE-2016-4453 Qemu: display: vmsvga: infinite loop in vmsvga_fifo_run() routine" (number mark "U       ppandit@redh May 30   24/702   " thread-indent "\"[oss-security] CVE-2016-4453 Qemu: display: vmsvga: infinite loop in vmsvga_fifo_run() routine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3701 invoked by uid 550); 30 May 2016 08:52:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3673 invoked from network); 30 May 2016 08:52:25 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1605301419050.26205@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 30 May 2016 08:52:13 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Mon, 30 May 2016 14:22:03 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-4453 Qemu: display: vmsvga: infinite loop in vmsvga_fifo_run()
 routine
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the VMware-SVGA "chipset" emulation support is 
vulnerable to an infinite loop issue. It could occur while processing VGA 
commands via its FIFO buffer.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg05270.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1336650

This issue was discovered and reported by Li Qiang of 360.cn Inc. 
CVE-2016-4453 is assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
