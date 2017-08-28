X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3995" "Monday" "28" "August" "2017" "14:39:23" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<676040.933092253-sendEmail@localhost>" "105" "[oss-security] openjpeg: stack-based buffer overflow write in pgxtoimage (convert.c)" nil nil nil "8" "2017082814:39:23" "[oss-security] openjpeg: stack-based buffer overflow write in pgxtoimage (convert.c)" (number mark "U       ago@gentoo.o Aug 28  105/3995  " thread-indent "\"[oss-security] openjpeg: stack-based buffer overflow write in pgxtoimage (convert.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20027 invoked by uid 550); 28 Aug 2017 14:39:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20009 invoked from network); 28 Aug 2017 14:39:39 -0000
Message-ID: <676040.933092253-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 28 Aug 2017 14:39:23 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-363004.952975647"
Subject: [oss-security] openjpeg: stack-based buffer overflow write in pgxtoimage (convert.c)

------MIME delimiter for sendEmail-363004.952975647
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
openjpeg is an open-source JPEG 2000 library.

The complete ASan output of the issue:

# opj_compress -n 1 -i $FILE -o null.j2k
==159529==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7fde59900160 at pc 0x000000450bef bp 0x7ffe7641f3c0 sp 0x7ffe7641eb70
WRITE of size 36 at 0x7fde59900160 thread T0
    #0 0x450bee in scanf_common /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/../sanitizer_common/sanitizer_common_interceptors_format.inc:343
    #1 0x451d20 in __interceptor___isoc99_vfscanf /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/../sanitizer_common/sanitizer_common_interceptors.inc:1265
    #2 0x451e02 in __interceptor___isoc99_fscanf /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/../sanitizer_common/sanitizer_common_interceptors.inc:1282
    #3 0x525417 in pgxtoimage /var/tmp/portage/media-libs/openjpeg-9999/work/openjpeg-9999/src/bin/jp2/convert.c:1188:9
    #4 0x50b520 in main /var/tmp/portage/media-libs/openjpeg-9999/work/openjpeg-9999/src/bin/jp2/opj_compress.c:1831:21
    #5 0x7fde5d0c1680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x41bc18 in _start (/usr/bin/opj_compress+0x41bc18)

Address 0x7fde59900160 is located in stack of thread T0 at offset 352 in frame
    #0 0x52523f in pgxtoimage /var/tmp/portage/media-libs/openjpeg-9999/work/openjpeg-9999/src/bin/jp2/convert.c:1158

  This frame has 16 object(s):
    [32, 33) 'c1.i192'
    [48, 49) 'c2.i193'
    [64, 65) 'c3.i'
    [80, 81) 'c4.i'
    [96, 97) 'c1.i188'
    [112, 113) 'c2.i'
    [128, 129) 'c1.i183'
    [144, 145) 'c1.i'
    [160, 164) 'w'
    [176, 180) 'h'
    [192, 196) 'prec'
    [208, 244) 'cmptparm'
    [288, 289) 'endian1'
    [304, 305) 'endian2'
    [320, 352) 'signtmp'
    [384, 416) 'temp' 0x0ffc4b318020: f2 f2 f2 f2 01 f2 01 f2 00 00 00 00[f2]f2 f2 f2
  0x0ffc4b318030: 00 00 00 00 f3 f3 f3 f3 00 00 00 00 00 00 00 00
  0x0ffc4b318040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0ffc4b318050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0ffc4b318060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0ffc4b318070: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
==159529==ABORTING
Aborted

Affected version:
2.2.0

Fixed version:
N/A

Commit fix:
https://github.com/uclouvain/openjpeg/commit/e5285319229a5d77bf316bb0d3a6cbd3cb8666d9

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
Waiting for a CVE assignment

Reproducer:
https://github.com/asarubbo/poc/blob/master/00327-openjpeg-stackoverflow-pgxtoimage

Timeline:
2017-08-18: bug discovered and reported to upstream
2017-08-18: upstream released a patch
2017-08-28: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/08/28/openjpeg-stack-based-buffer-overflow-write-in-pgxtoimage-convert-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-363004.952975647--

