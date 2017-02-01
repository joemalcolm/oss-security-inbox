X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["908" "Wednesday" "1" "February" "2017" "15:20:04" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702011514510.25859@wniryva>" "29" "[oss-security] CVE-2017-2615 Qemu: display: cirrus: oob access while doing bitblt copy backward mode" nil nil nil "2" "2017020109:50:04" "[oss-security] CVE-2017-2615 Qemu: display: cirrus: oob access while doing bitblt copy backward mode" (number mark "U       ppandit@redh Feb  1   29/908   " thread-indent "\"[oss-security] CVE-2017-2615 Qemu: display: cirrus: oob access while doing bitblt copy backward mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15559 invoked by uid 550); 1 Feb 2017 09:50:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15539 invoked from network); 1 Feb 2017 09:50:21 -0000
Date: Wed, 1 Feb 2017 15:20:04 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702011514510.25859@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Wed, 01 Feb 2017 09:50:10 +0000 (UTC)
Subject: [oss-security] CVE-2017-2615 Qemu: display: cirrus: oob access while doing bitblt
 copy backward mode

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to an out-of-bounds access issue. It could occur while copying VGA 
data via bitblt copy in backward mode.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS OR potentially execute arbitrary code on the host with 
privileges of Qemu process on the host.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-02/msg00015.html

It fixes
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=d3532a0db02296e687711b8cdc7791924efccea0

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1418200

This issue was reported by Li Qiang of 360.cn Inc.

CVE-2017-2615 was assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
