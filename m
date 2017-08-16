X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7480" "Wednesday" "16" "August" "2017" "11:50:10" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<245955.605150328-sendEmail@localhost>" "123" "[oss-security] imagemagick: use-after-free in DestroyImage (image.c)" nil nil nil "8" "2017081611:50:10" "[oss-security] imagemagick: use-after-free in DestroyImage (image.c)" (number mark "U       ago@gentoo.o Aug 16  123/7480  " thread-indent "\"[oss-security] imagemagick: use-after-free in DestroyImage (image.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3204 invoked by uid 550); 16 Aug 2017 11:50:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3172 invoked from network); 16 Aug 2017 11:50:27 -0000
Message-ID: <245955.605150328-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Wed, 16 Aug 2017 11:50:10 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-839357.824836956"
Subject: [oss-security] imagemagick: use-after-free in DestroyImage (image.c)

------MIME delimiter for sendEmail-839357.824836956
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
imagemagick is a software suite to create, edit, compose, or convert bitmap images.

The complete ASan output of the issue:

# convert $FILE null
==151587==ERROR: AddressSanitizer: heap-use-after-free on address 0x627000037d50 at pc 0x7f4697f94380 bp 0x7ffd1011d370 sp 0x7ffd1011d368
READ of size 8 at 0x627000037d50 thread T0
    #0 0x7f4697f9437f in DestroyImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/image.c:1186:3
    #1 0x7f4690bfaebf in ReadMATImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/coders/mat.c:1374:14
    #2 0x7f4697dc8844 in ReadImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/constitute.c:497:13
    #3 0x7f4697dcbf01 in ReadImages /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/constitute.c:866:9
    #4 0x7f469760e319 in ConvertImageCommand /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickWand/convert.c:641:18
    #5 0x7f4697737225 in MagickCommandGenesis /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickWand/mogrify.c:183:14
    #6 0x5093e9 in MagickMain /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/utilities/magick.c:149:10
    #7 0x5093e9 in main /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/utilities/magick.c:180
    #8 0x7f469630f680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #9 0x41a1f8 in _init (/usr/bin/magick+0x41a1f8)

0x627000037d50 is located 13392 bytes inside of 13488-byte region [0x627000034900,0x627000037db0)
freed by thread T0 here:
    #0 0x4cf9f0 in __interceptor_cfree /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_malloc_linux.cc:55
    #1 0x7f4698003b8a in RelinquishMagickMemory /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/memory.c:1042:3
    #2 0x7f4697f942ed in DestroyImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/image.c:1221:19
    #3 0x7f4697fd6454 in DeleteImageFromList /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/list.c:298:12
    #4 0x7f4690bfab12 in ReadMATImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/coders/mat.c:1344:11
    #5 0x7f4697dc8844 in ReadImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/constitute.c:497:13
    #6 0x7f4697dcbf01 in ReadImages /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/constitute.c:866:9
    #7 0x7f469760e319 in ConvertImageCommand /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickWand/convert.c:641:18
    #8 0x7f4697737225 in MagickCommandGenesis /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickWand/mogrify.c:183:14
    #9 0x5093e9 in MagickMain /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/utilities/magick.c:149:10
    #10 0x5093e9 in main /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/utilities/magick.c:180
    #11 0x7f469630f680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289

previously allocated by thread T0 here:
    #0 0x4cfba8 in malloc /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_malloc_linux.cc:66
    #1 0x7f4697f8c474 in AcquireImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/image.c:169:19
    #2 0x7f4697f9026b in AcquireNextImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/image.c:395:15
    #3 0x7f4690bfd5ad in ReadMATImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/coders/mat.c:1284:5
    #4 0x7f4697dc8844 in ReadImage /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/constitute.c:497:13
    #5 0x7f4697dcbf01 in ReadImages /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/constitute.c:866:9
    #6 0x7f469760e319 in ConvertImageCommand /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickWand/convert.c:641:18
    #7 0x7f4697737225 in MagickCommandGenesis /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickWand/mogrify.c:183:14
    #8 0x5093e9 in MagickMain /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/utilities/magick.c:149:10
    #9 0x5093e9 in main /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/utilities/magick.c:180
    #10 0x7f469630f680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289

SUMMARY: AddressSanitizer: heap-use-after-free /var/tmp/portage/media-gfx/imagemagick-7.0.6.5/work/ImageMagick-7.0.6-5/MagickCore/image.c:1186:3 in DestroyImage
Shadow bytes around the buggy address:
  0x0c4e7fffef50: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c4e7fffef60: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c4e7fffef70: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c4e7fffef80: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c4e7fffef90: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
=>0x0c4e7fffefa0: fd fd fd fd fd fd fd fd fd fd[fd]fd fd fd fd fd
  0x0c4e7fffefb0: fd fd fd fd fd fd fa fa fa fa fa fa fa fa fa fa
  0x0c4e7fffefc0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c4e7fffefd0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c4e7fffefe0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c4e7fffeff0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
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
==151587==ABORTING

Affected version:
7.0.6-5

Fixed version:
7.0.6-6 (not released atm)

Commit fix:
https://github.com/ImageMagick/ImageMagick/commit/04178de2247e353fc095846784b9a10fefdbf890

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-12877

Reproducer:
https://github.com/asarubbo/poc/blob/master/00305-imagemagick-UAF-DestroyImage

Timeline:
2017-08-09: bug discovered and reported to upstream
2017-08-10: blog post about the issue
2017-08-15: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/08/10/imagemagick-use-after-free-in-destroyimage-image-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-839357.824836956--

