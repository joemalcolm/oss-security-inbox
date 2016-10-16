X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3467" "Sunday" "16" "October" "2016" "20:52:31" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<11022030.6ZF3cfAM3U@arcadia>" "96" "[oss-security] mupdf: mujstest: global-buffer-overflow in my_getline (jstest_main.c)" nil nil nil "10" "2016101618:52:31" "[oss-security] mupdf: mujstest: global-buffer-overflow in my_getline (jstest_main.c)" (number mark "U       ago@gentoo.o Oct 16   96/3467  " thread-indent "\"[oss-security] mupdf: mujstest: global-buffer-overflow in my_getline (jstest_main.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3775 invoked by uid 550); 16 Oct 2016 18:52:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3757 invoked from network); 16 Oct 2016 18:52:15 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Sun, 16 Oct 2016 20:52:31 +0200
Message-ID: <11022030.6ZF3cfAM3U@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] mupdf: mujstest: global-buffer-overflow in my_getline (jstest_main.c)

A note outside the blog post:
This issue does not affect any library, but it is only in the mujstest binary.
There aren't known applications which use mujstest, but if you have an 
application or website which relies on mujstest you are invited to apply the 
patch or use the newer package when it will be released. Thanks.

Description:
Mujstest, which is part of mupdf is a scriptable tester for mupdf + js.

A fuzzing revealed a global buffer overflow write.

The complete ASan output:

# mujstest $FILE
==1278==ERROR: AddressSanitizer: global-buffer-overflow on address 
0x0000013c7280 at pc 0x0000004fa432 bp 0x7ffea75837d0 sp 0x7ffea75837c8
WRITE of size 1 at 0x0000013c7280 thread T0
    #0 0x4fa431 in my_getline /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/platform/x11/jstest_main.c:214:5
    #1 0x4fa431 in main /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/platform/x11/jstest_main.c:335
    #2 0x7fb62229661f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #3 0x41ade8 in _init (/usr/bin/mujstest+0x41ade8)

0x0000013c7280 is located 0 bytes to the right of global variable 
'getline_buffer' defined in 'platform/x11/jstest_main.c:24:13' (0x13c6280) of 
size 4096
SUMMARY: AddressSanitizer: global-buffer-overflow /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/platform/x11/jstest_main.c:214:5 in my_getline
Shadow bytes around the buggy address:
  0x000080270e00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x000080270e10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x000080270e20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x000080270e30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x000080270e40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x000080270e50:[f9]f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9
  0x000080270e60: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9
  0x000080270e70: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9
  0x000080270e80: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9
  0x000080270e90: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9
  0x000080270ea0: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07 
  Heap left redzone:       fa
  Heap right redzone:      fb
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack partial redzone:   f4
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
==1278==ABORTING

Affected version:
1.9a

Fixed version:
1.10 (not yet released)

Commit fix:
http://git.ghostscript.com/?p=mupdf.git;h=446097f97b71ce20fa8d1e45e070f2e62676003e

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2016-08-04: bug discovered
2016-08-05: bug reported to upstream
2016-09-22: upstream released a patch
2016-09-24: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/09/24/mupdf-mujstest-global-buffer-overflow-in-my_getline-jstest_main-c/


-- 
Agostino Sarubbo
Gentoo Linux Developer
