X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["597" "Friday" "19" "August" "2016" "16:58:51" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1608191655520.5616@wniryva>" "19" "[oss-security] CVE Request: Qemu: net: vmxnet: integer overflow in packet initialisation" nil nil nil "8" "2016081911:28:51" "[oss-security] CVE Request: Qemu: net: vmxnet: integer overflow in packet initialisation" (number mark "U       ppandit@redh Aug 19   19/597   " thread-indent "\"[oss-security] CVE Request: Qemu: net: vmxnet: integer overflow in packet initialisation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20371 invoked by uid 550); 19 Aug 2016 11:29:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20351 invoked from network); 19 Aug 2016 11:29:10 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1608191655520.5616@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 19 Aug 2016 11:28:58 +0000 (UTC)
cc: Li Qiang <liqiang6-s@360.cn>
Date: Fri, 19 Aug 2016 16:58:51 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Qemu: net: vmxnet: integer overflow in packet
 initialisation
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support, with 
network abstraction layer is vulnerable to an integer overflow issue. It could 
occur while initialisation of a new packets in the device.

A privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg03176.html

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
