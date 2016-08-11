X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["582" "Friday" "12" "August" "2016" "01:24:44" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1608120118130.16386@wniryva>" "20" "[oss-security] CVE request Qemu: an infinite loop during packet fragmentation" nil nil nil "8" "2016081119:54:44" "[oss-security] CVE request Qemu: an infinite loop during packet fragmentation" (number mark "U       ppandit@redh Aug 12   20/582   " thread-indent "\"[oss-security] CVE request Qemu: an infinite loop during packet fragmentation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12263 invoked by uid 550); 11 Aug 2016 19:55:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12245 invoked from network); 11 Aug 2016 19:55:03 -0000
Date: Fri, 12 Aug 2016 01:24:44 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1608120118130.16386@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Thu, 11 Aug 2016 19:54:51 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: an infinite loop during packet fragmentation

    Hello,

Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support,
with network abstraction layer is vulnerable to an infinite loop issue.
It could occur while fragmenting packets in the device.

A privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg01601.html

This issue was reported by Li Qiang of 360.cn Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
