X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["723" "Monday" "14" "December" "2015" "12:16:50" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512141212410.3982@wniryva>" "22" "[oss-security] CVE-2015-7549 Qemu: pci: msi-x: null pointer dereference issue" nil nil nil "12" "2015121406:46:50" "[oss-security] CVE-2015-7549 Qemu: pci: msi-x: null pointer dereference issue" (number mark "U       ppandit@redh Dec 14   22/723   " thread-indent "\"[oss-security] CVE-2015-7549 Qemu: pci: msi-x: null pointer dereference issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21634 invoked by uid 550); 14 Dec 2015 06:47:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21613 invoked from network); 14 Dec 2015 06:47:22 -0000
Date: Mon, 14 Dec 2015 12:16:50 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>
Message-ID: <alpine.LFD.2.20.1512141212410.3982@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: [oss-security] CVE-2015-7549 Qemu: pci: msi-x: null pointer dereference issue

   Hello,

Qemu emulator built with the PCI MSI-X support is vulnerable to null pointer 
dereference issue. It occurs when the controller attempts to write to the 
pending bit array(PBA) memory region. Because the MSI-X MMIO support did not 
define the .write method.

A privileges used inside guest could use this flaw to crash the Qemu process 
resulting in DoS issue.

Upstream fix:
-------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=43b11a91dd861a946b231b89b754285

CVE-2015-7549 has been assigned to this issue by Red Hat Inc.

This issue was reported by Qinghao Tang of QIHU 360 Marvel Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
