X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["553" "Monday" "15" "January" "2018" "23:34:52" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1801152331280.28933@wniryva>" "19" "[oss-security] CVE-2018-5683 Qemu: Out-of-bounds read in vga_draw_text routine" nil nil nil "1" "2018011518:04:52" "[oss-security] CVE-2018-5683 Qemu: Out-of-bounds read in vga_draw_text routine" (number mark "U       ppandit@redh Jan 15   19/553   " thread-indent "\"[oss-security] CVE-2018-5683 Qemu: Out-of-bounds read in vga_draw_text routine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20052 invoked by uid 550); 15 Jan 2018 18:05:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20028 invoked from network); 15 Jan 2018 18:05:17 -0000
Date: Mon, 15 Jan 2018 23:34:52 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: jiangxin1@huawei.com
Message-ID: <nycvar.YSQ.7.76.1801152331280.28933@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Mon, 15 Jan 2018 18:05:05 +0000 (UTC)
Subject: [oss-security] CVE-2018-5683 Qemu: Out-of-bounds read in vga_draw_text routine

   Hello,

Quick Emulator(QEMU) built with the VGA emulator support is vulnerable to an 
out-of-bounds access issue in vga_draw_text. It could occur while updating vga 
display area.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-01/msg02131.html

This issue was reported by Jiang Xin of Huawei.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
