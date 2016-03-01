X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1022" "Tuesday" "1" "March" "2016" "15:47:58" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1603011538510.26817@wniryva>" "28" "[oss-security] CVE request Qemu: OOB access in address_space_rw leads to segmentation fault" nil nil nil "3" "2016030110:17:58" "[oss-security] CVE request Qemu: OOB access in address_space_rw leads to segmentation fault" (number mark "U       ppandit@redh Mar  1   28/1022  " thread-indent "\"[oss-security] CVE request Qemu: OOB access in address_space_rw leads to segmentation fault\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19652 invoked by uid 550); 1 Mar 2016 10:18:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19633 invoked from network); 1 Mar 2016 10:18:15 -0000
Date: Tue, 1 Mar 2016 15:47:58 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Donghai Zdh <donghai.zdh@alibaba-inc.com>
Message-ID: <alpine.LFD.2.20.1603011538510.26817@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE request Qemu: OOB access in address_space_rw leads to segmentation
 fault

   Hello,

Qemu emulator built to use 'address_space_translate' to map an address to a 
MemoryRegionSection is vulnerable to an OOB r/w access issue. It could occur 
while doing pci_dma_read/write calls. Affects Qemu versions >= 1.6.0 and <= 
2.3.1.

A privileged user inside guest could use this flaw to crash the guest instance 
resulting in DoS.

Upstream patches:
-----------------
   ->  http://git.qemu.org/?p=qemu.git;a=commit;h=c3c1bb99d1c11978d9ce94d1bd
   ->  http://git.qemu.org/?p=qemu.git;a=commit;h=e4a511f8cc6f4a46d409fb5c9f
   ->  http://git.qemu.org/?p=qemu.git;a=commit;h=965eb2fcdfe919ecced6c34803
   ->  http://git.qemu.org/?p=qemu.git;a=commit;h=b242e0e0e2969c044a318e56f7
  [*] https://lists.gnu.org/archive/html/qemu-stable/2016-01/msg00060.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1300771

This issue was discovered by  Donghai Zdh of Alibaba Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
