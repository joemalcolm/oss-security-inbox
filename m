X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["721" "Friday" "7" "October" "2016" "16:46:11" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610071644500.8956@wniryva>" "24" "[oss-security] CVE request Qemu: usb: hcd-ehci: memory leak in ehci_process_itd" nil nil nil "10" "2016100711:16:11" "[oss-security] CVE request Qemu: usb: hcd-ehci: memory leak in ehci_process_itd" (number mark "U       ppandit@redh Oct  7   24/721   " thread-indent "\"[oss-security] CVE request Qemu: usb: hcd-ehci: memory leak in ehci_process_itd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15935 invoked by uid 550); 7 Oct 2016 11:16:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15915 invoked from network); 7 Oct 2016 11:16:27 -0000
Date: Fri, 7 Oct 2016 16:46:11 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1610071644500.8956@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Fri, 07 Oct 2016 11:16:16 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: usb: hcd-ehci: memory leak in ehci_process_itd

   Hello,

Qemu emulator(Qemu) built with the USB EHCI emulation support is vulnerable to 
a memory leakage flaw. It could occur while processing isochronous transfer 
descriptors(iTD), with buffer page select(PG) index that falls beyond buffer 
page array area.

A privileged user inside guest could use this flaw to leak Qemu memory bytes 
leading to a DoS on the host.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg06609.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1382668

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
