X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4885" "Wednesday" "6" "September" "2017" "19:01:57" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<518706.926933618-sendEmail@localhost>" "74" "[oss-security] graphicsmagick: memory allocation failure in MagickMalloc (memory.c)" nil nil nil "9" "2017090619:01:57" "[oss-security] graphicsmagick: memory allocation failure in MagickMalloc (memory.c)" (number mark "U       ago@gentoo.o Sep  6   74/4885  " thread-indent "\"[oss-security] graphicsmagick: memory allocation failure in MagickMalloc (memory.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7996 invoked by uid 550); 6 Sep 2017 19:02:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7956 invoked from network); 6 Sep 2017 19:02:15 -0000
Message-ID: <518706.926933618-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Wed, 6 Sep 2017 19:01:57 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-692202.827501209"
Subject: [oss-security] graphicsmagick: memory allocation failure in MagickMalloc (memory.c)

------MIME delimiter for sendEmail-692202.827501209
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
graphicsmagick is a collection of tools and libraries for many image formats.

The relevant ASan output of the issue:

# gm convert -negate -clip $file out
==25373==End of process memory map.
==25373==AddressSanitizer CHECK failed: 
/var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/sanitizer_common/sanitizer_common.cc:120 "((0 && "unable to mmap")) != (0)" (0x0, 0x0)
    #0 0x4d966f in AsanCheckFailed /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_rtl.cc:69
    #1 0x4f43d5 in __sanitizer::CheckFailed(char const*, int, char const*, unsigned long long, unsigned long long) /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/sanitizer_common/sanitizer_termination.cc:79
    #2 0x4e3a02 in __sanitizer::ReportMmapFailureAndDie(unsigned long, char const*, char const*, int, bool) /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/sanitizer_common/sanitizer_common.cc:120
    #3 0x4ed305 in __sanitizer::MmapOrDie(unsigned long, char const*, bool) /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/sanitizer_common/sanitizer_posix.cc:132
    #4 0x420a02 in __sanitizer::LargeMmapAllocator::Allocate(__sanitizer::AllocatorStats*, unsigned long, unsigned long) /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:41
    #5 0x420a02 in __sanitizer::CombinedAllocator<__sanitizer::SizeClassAllocator64, __sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64 >, __sanitizer::LargeMmapAllocator >::Allocate(__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64 >*, unsigned long, unsigned long, bool, bool) /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/../sanitizer_common/sanitizer_allocator_combined.h:70
    #6 0x420a02 in __asan::Allocator::Allocate(unsigned long, unsigned long, __sanitizer::BufferedStackTrace*, __asan::AllocType, bool) /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_allocator.cc:407
    #7 0x420a02 in __asan::asan_malloc(unsigned long, __sanitizer::BufferedStackTrace*) /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_allocator.cc:782
    #8 0x4cf664 in malloc /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_malloc_linux.cc:67
    #9 0x7fc323f784d6 in MagickMalloc /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/memory.c:156:10
    #10 0x7fc31e2b41a3 in ReadSUNImage /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/coders/sun.c:549:20
    #11 0x7fc323b96e88 in ReadImage /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/constitute.c:1607:13
    #12 0x7fc323a29f18 in ConvertImageCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:4348:22
    #13 0x7fc323a660c5 in MagickCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:8869:17
    #14 0x7fc323b1185b in GMCommandSingle /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:17396:10
    #15 0x7fc323b0e991 in GMCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:17449:16
    #16 0x7fc322379680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #17 0x419cd8 in _init (/usr/bin/gm+0x419cd8)

/usr/bin/gm convert: abort due to signal 6 (SIGABRT) "Abort"...

Affected version:
1.3.26

Fixed version:
N/A

Commit fix:
http://hg.code.sf.net/p/graphicsmagick/code/rev/493da54370aa

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14165

Reproducer:
https://github.com/asarubbo/poc/blob/master/00334-graphicsmagick-memallocfailure-MagickMalloc

Timeline:
2017-07-14: bug discovered and reported to upstream privately
2017-08-16: bug reported to the public upstream bugtracker
2017-08-20: upstream released a fix
2017-09-06: blog post about the issue
2017-09-06: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/06/graphicsmagick-memory-allocation-failure-in-magickmalloc-memory-c-2/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-692202.827501209--

