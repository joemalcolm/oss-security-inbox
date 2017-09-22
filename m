X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3552" "Friday" "22" "September" "2017" "06:57:13" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<693071.669756563-sendEmail@localhost>" "90" "[oss-security] bladeenc: global buffer overflow in iteration_loop (loop.c)" nil nil nil "9" "2017092206:57:13" "[oss-security] bladeenc: global buffer overflow in iteration_loop (loop.c)" (number mark "U       ago@gentoo.o Sep 22   90/3552  " thread-indent "\"[oss-security] bladeenc: global buffer overflow in iteration_loop (loop.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22010 invoked by uid 550); 22 Sep 2017 06:57:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21986 invoked from network); 22 Sep 2017 06:57:30 -0000
Message-ID: <693071.669756563-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Fri, 22 Sep 2017 06:57:13 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-208011.783267469"
Subject: [oss-security] bladeenc: global buffer overflow in iteration_loop (loop.c)

------MIME delimiter for sendEmail-208011.783267469
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
bladeenc is an mp3 encoder.

There is a write overflow by default without a crafted file in the bladeenc command-line tool. The upstream website does not work anymore for me.
The complete ASan output of the issue:

# bladeenc $FILE
==15358==ERROR: AddressSanitizer: global-buffer-overflow on address 0x00000141c3b4 at pc 0x00000052afc8 bp 0x7ffcb9e50bb0 sp 0x7ffcb9e50ba8
WRITE of size 4 at 0x00000141c3b4 thread T0
    #0 0x52afc7 in iteration_loop /var/tmp/portage/media-sound/bladeenc-0.94.2-r1/work/bladeenc-0.94.2/bladeenc/loop.c:728:20
    #1 0x54fb91 in codecEncodeChunk /var/tmp/portage/media-sound/bladeenc-0.94.2-r1/work/bladeenc-0.94.2/bladeenc/codec.c:353:2
    #2 0x519694 in main /var/tmp/portage/media-sound/bladeenc-0.94.2-r1/work/bladeenc-0.94.2/bladeenc/main.c:518:23
    #3 0x7f3d35989680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #4 0x419dc8 in getenv (/usr/bin/bladeenc+0x419dc8)

0x00000141c3b4 is located 44 bytes to the left of global variable 'lo_quant_s' defined in 'loop.c:372:17' (0x141c3e0) of size 156
0x00000141c3b4 is located 0 bytes to the right of global variable 'hi_quant_l' defined in 'loop.c:370:17' (0x141c360) of size 84
SUMMARY: AddressSanitizer: global-buffer-overflow /var/tmp/portage/media-sound/bladeenc-0.94.2-r1/work/bladeenc-0.94.2/bladeenc/loop.c:728:20 in iteration_loop
Shadow bytes around the buggy address:
  0x00008027b820: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x00008027b830: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x00008027b840: 00 00 00 f9 f9 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9
  0x00008027b850: f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 00 00 00 00
  0x00008027b860: 00 00 00 00 00 00 00 f9 f9 f9 f9 f9 00 00 00 00
=>0x00008027b870: 00 00 00 00 00 00[04]f9 f9 f9 f9 f9 00 00 00 00
  0x00008027b880: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 04
  0x00008027b890: f9 f9 f9 f9 00 00 00 00 00 00 00 00 00 00 00 00
  0x00008027b8a0: 00 00 00 00 00 00 00 04 f9 f9 f9 f9 04 f9 f9 f9
  0x00008027b8b0: f9 f9 f9 f9 00 00 00 00 00 00 00 00 00 00 00 00
  0x00008027b8c0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07 
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
==15358==ABORTING
Aborted

Affected version:
0.94.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14648

Timeline:
2017-09-19: bug discovered
2017-09-19: blog post about the issue
2017-09-21: CVE assigned

Note:
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/19/bladeenc-global-buffer-overflow-in-iteration_loop-loop-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-208011.783267469--

