X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["611" "Friday" "9" "September" "2016" "18:38:08" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609091835510.24544@wniryva>" "20" "[oss-security] CVE Request Qemu: vmware_vga: OOB stack memory access when processing svga command" nil nil nil "9" "2016090913:08:08" "[oss-security] CVE Request Qemu: vmware_vga: OOB stack memory access when processing svga command" (number mark "U       ppandit@redh Sep  9   20/611   " thread-indent "\"[oss-security] CVE Request Qemu: vmware_vga: OOB stack memory access when processing svga command\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12055 invoked by uid 550); 9 Sep 2016 13:08:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12036 invoked from network); 9 Sep 2016 13:08:27 -0000
Date: Fri, 9 Sep 2016 18:38:08 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>, Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1609091835510.24544@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Fri, 09 Sep 2016 13:08:15 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: vmware_vga: OOB stack memory access when processing
 svga command

   Hello,

Quick Emulator(Qemu) built with the VMware-SVGA "chipset" emulation support is 
vulnerable to an OOB stack memory write issue. It could occur while processing 
VGA commands in 'vmsvga_fifo_run' routine.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg01764.html

This issue was independently reported by Qinghao Tang and Li Qiang of 360.cn 
Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
