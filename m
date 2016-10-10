X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["585" "Monday" "10" "October" "2016" "15:00:43" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610101456570.25689@wniryva>" "19" "[oss-security] CVE request Qemu: usb: xHCI: infinite loop vulnerability in xhci_ring_fetch" nil nil nil "10" "2016101009:30:43" "[oss-security] CVE request Qemu: usb: xHCI: infinite loop vulnerability in xhci_ring_fetch" (number mark "U       ppandit@redh Oct 10   19/585   " thread-indent "\"[oss-security] CVE request Qemu: usb: xHCI: infinite loop vulnerability in xhci_ring_fetch\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10001 invoked by uid 550); 10 Oct 2016 09:31:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9983 invoked from network); 10 Oct 2016 09:31:00 -0000
Date: Mon, 10 Oct 2016 15:00:43 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1610101456570.25689@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 10 Oct 2016 09:30:48 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: usb: xHCI: infinite loop vulnerability in
 xhci_ring_fetch

   Hello,

Quick Emulator(Qemu) built with the USB xHCI controller emulation support is 
vulnerable to an infinite loop issue. It could occur while processing USB 
command ring in 'xhci_ring_fetch'.

A privileged user/process inside guest could use this issue to crash the Qemu 
process on the host leading to DoS.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg01265.html

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
