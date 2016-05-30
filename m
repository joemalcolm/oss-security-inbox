X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["737" "Monday" "30" "May" "2016" "14:24:39" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605301422320.26205@wniryva>" "25" "[oss-security] CVE-2016-4454 Qemu: display: vmsvga: out-of-bounds read in vmsvga_fifo_read_raw() routine" nil nil nil "5" "2016053008:54:39" "[oss-security] CVE-2016-4454 Qemu: display: vmsvga: out-of-bounds read in vmsvga_fifo_read_raw() routine" (number mark "U       ppandit@redh May 30   25/737   " thread-indent "\"[oss-security] CVE-2016-4454 Qemu: display: vmsvga: out-of-bounds read in vmsvga_fifo_read_raw() routine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14241 invoked by uid 550); 30 May 2016 08:55:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14223 invoked from network); 30 May 2016 08:54:59 -0000
Date: Mon, 30 May 2016 14:24:39 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1605301422320.26205@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Mon, 30 May 2016 08:54:47 +0000 (UTC)
Subject: [oss-security] CVE-2016-4454 Qemu: display: vmsvga: out-of-bounds read in
 vmsvga_fifo_read_raw() routine

   Hello,

Quick Emulator(Qemu) built with the VMware-SVGA "chipset" emulation support is 
vulnerable to an information disclosure issue. It could occur while processing 
VGA commands via its FIFO buffer.

A privileged user inside guest could use this flaw to leak host memory bytes 
or crash the Qemu process resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg05271.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1336429


This issue was discovered and reported by Li Qiang of 360.cn Inc. 
CVE-2016-4454 was assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
