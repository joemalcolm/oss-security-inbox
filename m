X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["642" "Friday" "12" "August" "2016" "00:53:17" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1608120047520.6399@wniryva>" "22" "[oss-security] CVE Request Qemu: Information leak in vmxnet3_complete_packet" nil nil nil "8" "2016081119:23:17" "[oss-security] CVE Request Qemu: Information leak in vmxnet3_complete_packet" (number mark "U       ppandit@redh Aug 12   22/642   " thread-indent "\"[oss-security] CVE Request Qemu: Information leak in vmxnet3_complete_packet\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5614 invoked by uid 550); 11 Aug 2016 19:23:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5596 invoked from network); 11 Aug 2016 19:23:35 -0000
Date: Fri, 12 Aug 2016 00:53:17 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1608120047520.6399@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Thu, 11 Aug 2016 19:23:23 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: Information leak in vmxnet3_complete_packet

   Hello,

Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support is 
vulnerable to an information leakage issue. It could occur while processing 
transmit(tx) queue, when it reaches the end of packet.

A privileged user inside guest could use this leak host memory bytes to a 
guest.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg02108.html

Reference:
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1366369

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
