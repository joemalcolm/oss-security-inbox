X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3331" "Sunday" "1" "January" "2017" "16:52:34" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2609162.lMrVaOLpFB@arcadia>" "99" "[oss-security] libtiff: stack-based buffer overflow in _TIFFVGetField (tif_dir.c)" nil nil nil "1" "2017010115:52:34" "[oss-security] libtiff: stack-based buffer overflow in _TIFFVGetField (tif_dir.c)" (number mark "U       ago@gentoo.o Jan  1   99/3331  " thread-indent "\"[oss-security] libtiff: stack-based buffer overflow in _TIFFVGetField (tif_dir.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30686 invoked by uid 550); 1 Jan 2017 15:51:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30597 invoked from network); 1 Jan 2017 15:51:03 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 01 Jan 2017 16:52:34 +0100
Message-ID: <2609162.lMrVaOLpFB@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libtiff: stack-based buffer overflow in _TIFFVGetField (tif_dir.c)

Description:
Libtiff is a software that provides support for the Tag Image File Format 
(TIFF), a widely used format for storing image data.

A crafted tiff file revealed a stack buffer overflow.

The complete ASan output:

# tiffsplit $FILE
TIFFReadDirectory: Warning, Unknown field with tag 317 (0x13d) encountered.
=================================================================
==10362==ERROR: AddressSanitizer: stack-buffer-overflow on address 
0x7f3824f00090 at pc 0x7f3829624fbb bp 0x7fffe0eb1da0 sp 0x7fffe0eb1d98
WRITE of size 4 at 0x7f3824f00090 thread T0
    #0 0x7f3829624fba in _TIFFVGetField /tmp/portage/media-
libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_dir.c:1077:29
    #1 0x7f382960f202 in TIFFVGetField /tmp/portage/media-
libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_dir.c:1198:6
    #2 0x7f382960f202 in TIFFGetField /tmp/portage/media-
libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_dir.c:1182
    #3 0x50a719 in tiffcp /tmp/portage/media-
libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffsplit.c:183:2
    #4 0x50a719 in main /tmp/portage/media-
libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffsplit.c:89
    #5 0x7f382871561f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #6 0x419a78 in _init (/usr/bin/tiffsplit+0x419a78)

Address 0x7f3824f00090 is located in stack of thread T0 at offset 144 in frame
    #0 0x5099cf in main /tmp/portage/media-
libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffsplit.c:59

  This frame has 18 object(s):
    [32, 40) 'bytecounts.i263.i'
    [64, 72) 'bytecounts.i.i'
    [96, 98) 'bitspersample.i'
    [112, 114) 'samplesperpixel.i'
    [128, 130) 'compression.i'
    [144, 146) 'shortv.i' 0x0fe7849d8010: 02 f2[02]f2 00 f2 f2 f2 04 f2 04 f2 
04 f2 00 f2
  0x0fe7849d8020: f2 f2 04 f2 04 f2 00 f2 f2 f2 00 f2 f2 f2 00 f2
  0x0fe7849d8030: f2 f2 00 f2 f2 f2 02 f3 00 00 00 00 00 00 00 00
  0x0fe7849d8040: f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5
  0x0fe7849d8050: f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5
  0x0fe7849d8060: f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5
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
==10362==ABORTING

Affected version:
4.0.7

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00104-libtiff-stackoverflow-_TIFFVGetField

Timeline:
2016-12-04: bug discovered and reported to upstream
2017-01-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/01/libtiff-stack-based-buffer-overflow-in-_tiffvgetfield-tif_dir-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
