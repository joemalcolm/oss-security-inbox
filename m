X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["745" "Thursday" "8" "December" "2016" "13:02:04" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612081258430.26257@wniryva>" "25" "[oss-security] CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy" nil nil nil "12" "2016120807:32:04" "[oss-security] CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy" (number mark "U       ppandit@redh Dec  8   25/745   " thread-indent "\"[oss-security] CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22044 invoked by uid 550); 8 Dec 2016 07:32:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22017 invoked from network); 8 Dec 2016 07:32:22 -0000
Date: Thu, 8 Dec 2016 13:02:04 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: liq3ea@gmail.com, psirt@huawei.com
Message-ID: <alpine.LFD.2.20.1612081258430.26257@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Thu, 08 Dec 2016 07:32:10 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: display: cirrus_vga: a divide by zero in
 cirrus_do_copy

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to a divide by zero issue. It could occur while copying VGA data 
when cirrus graphics mode was set to be VGA.

A privileged user inside guest could use this flaw to crash the Qemu process 
instance on the host, resulting in DoS.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-12/msg00442.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1334398

This issue was independently reported by Qinghao Tang, Li Qiang of Qihoo 
360.cn Inc. and PSIRTeam of Huawei Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
