X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["731" "Tuesday" "14" "February" "2017" "00:45:22" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702140042040.10163@wniryva>" "25" "[oss-security] CVE-2017-5973 Qemu: usb: infinite loop while doing control transfer in xhci_kick_epctx" nil nil nil "2" "2017021319:15:22" "[oss-security] CVE-2017-5973 Qemu: usb: infinite loop while doing control transfer in xhci_kick_epctx" (number mark "U       ppandit@redh Feb 14   25/731   " thread-indent "\"[oss-security] CVE-2017-5973 Qemu: usb: infinite loop while doing control transfer in xhci_kick_epctx\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27710 invoked by uid 550); 13 Feb 2017 19:15:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27676 invoked from network); 13 Feb 2017 19:15:39 -0000
Date: Tue, 14 Feb 2017 00:45:22 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702140042040.10163@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 13 Feb 2017 19:15:28 +0000 (UTC)
Subject: [oss-security] CVE-2017-5973 Qemu: usb: infinite loop while doing control transfer
 in xhci_kick_epctx

   Hello,

Quick emulator(Qemu) built with the USB xHCI controller emulator support is 
vulnerable to an infinite loop issue. It could occur while processing control 
transfer descriptor's sequence in xhci_kick_epctx.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-02/msg01101.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1421626

This issue was reported by Mr Li Qiang of 360.cn Inc.

'CVE-2017-5973' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
