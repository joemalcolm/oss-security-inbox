X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["625" "Friday" "14" "October" "2016" "16:42:09" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610141638130.13950@wniryva>" "20" "[oss-security] CVE request Qemu: dma: rc4030 divide by zero error in set_next_tick" nil nil nil "10" "2016101411:12:09" "[oss-security] CVE request Qemu: dma: rc4030 divide by zero error in set_next_tick" (number mark "U       ppandit@redh Oct 14   20/625   " thread-indent "\"[oss-security] CVE request Qemu: dma: rc4030 divide by zero error in set_next_tick\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7564 invoked by uid 550); 14 Oct 2016 11:12:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7546 invoked from network); 14 Oct 2016 11:12:26 -0000
Date: Fri, 14 Oct 2016 16:42:09 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Huawei PSIRT <psirt@huawei.com>
Message-ID: <alpine.LFD.2.20.1610141638130.13950@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 14 Oct 2016 11:12:14 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: dma: rc4030 divide by zero error in
 set_next_tick

   Hello,

Quick Emulator(Qemu) built with the JAZZ RC4030 chipset emulation support is 
vulnerable to a divide by zero issue. It could occur while computing its 
periodic timer's next tick value.

A privileged guest user could use this flaw to crash the Qemu process instance 
on the host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02577.html

This issue was reported by Huawei Product Security Incident Response Team 
(PSIRT), Huawei Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
