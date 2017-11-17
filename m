X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["635" "Friday" "17" "November" "2017" "11:14:21" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1711171112070.7823@wniryva>" "19" "[oss-security] CVE-2017-16845 Qemu: ps2: information leakage via post_load routine" nil nil nil "11" "2017111705:44:21" "[oss-security] CVE-2017-16845 Qemu: ps2: information leakage via post_load routine" (number mark "U       ppandit@redh Nov 17   19/635   " thread-indent "\"[oss-security] CVE-2017-16845 Qemu: ps2: information leakage via post_load routine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26501 invoked by uid 550); 17 Nov 2017 05:44:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26481 invoked from network); 17 Nov 2017 05:44:37 -0000
Date: Fri, 17 Nov 2017 11:14:21 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Cyrille Chatras <cyrille.chatras@orange.com>
Message-ID: <nycvar.YSQ.7.76.1711171112070.7823@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 17 Nov 2017 05:44:26 +0000 (UTC)
Subject: [oss-security] CVE-2017-16845 Qemu: ps2: information leakage via post_load
 routine

   Hello,

Quick Emulator(Qemu) built with the PS/2 keyboard and mouse emulation support 
along with the migration feature enabled is vulnerable to an information 
leakage flaw. It could occur while loading a migrated snapshot on the 
destination host in PS2 post_load routine.

A privileged user could use this flaw to leak destination host memory bytes.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-11/msg02982.html

This issue was reported by Cyrille Chatras of Orange.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
