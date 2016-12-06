X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["507" "Wednesday" "7" "December" "2016" "00:46:26" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612070035380.7820@wniryva>" "17" "[oss-security] CVE request: Qemu: usb: ehci: memory leakage in ehci_init_transfer" nil nil nil "12" "2016120619:16:26" "[oss-security] CVE request: Qemu: usb: ehci: memory leakage in ehci_init_transfer" (number mark "U       ppandit@redh Dec  7   17/507   " thread-indent "\"[oss-security] CVE request: Qemu: usb: ehci: memory leakage in ehci_init_transfer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30337 invoked by uid 550); 6 Dec 2016 19:16:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30316 invoked from network); 6 Dec 2016 19:16:44 -0000
Date: Wed, 7 Dec 2016 00:46:26 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liq3ea@gmail.com>
Message-ID: <alpine.LFD.2.20.1612070035380.7820@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 06 Dec 2016 19:16:32 +0000 (UTC)
Subject: [oss-security] CVE request: Qemu: usb: ehci: memory leakage in ehci_init_transfer

   Hello,

Quick Emulator(Qemu) built with the USB EHCI Emulation support is vulnerable 
to a memory leakage issue. It could occur while processing packet data in 
'ehci_init_transfer'.

A guest user/process could use this issue to leak host memory, resulting in 
DoS for a host.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=791f97758e223de3290592d169f

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
