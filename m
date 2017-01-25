X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3302" "Wednesday" "25" "January" "2017" "10:10:35" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<4852597.N8d9Bx2SxP@blackgate>" "88" "[oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)" nil nil nil "1" "2017012509:10:35" "[oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)" (number mark "U       ago@gentoo.o Jan 25   88/3302  " thread-indent "\"[oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5647 invoked by uid 550); 25 Jan 2017 09:10:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5616 invoked from network); 25 Jan 2017 09:10:53 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 25 Jan 2017 10:10:35 +0100
Message-ID: <4852597.N8d9Bx2SxP@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing shows that a crafted image causes a NULL pointer 
access.

The complete ASan output:

# imginfo -f $FILE
cannot parse box data
ASAN:DEADLYSIGNAL
=================================================================
==6697==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x00000041da35 bp 0xbebebebebebebeae sp 0x7fff60ad6480 T0)
    #0 0x41da34 in atomic_compare_exchange_strong /tmp/portage/sys-
devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81
    #1 0x41da34 in 
__asan::Allocator::AtomicallySetQuarantineFlagIfAllocated(__asan::AsanChunk*, 
void*, __sanitizer::BufferedStackTrace*) /tmp/portage/sys-
devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
rt/lib/asan/asan_allocator.cc:468
    #2 0x41da34 in __asan::Allocator::Deallocate(void*, unsigned long, 
__sanitizer::BufferedStackTrace*, __asan::AllocType) /tmp/portage/sys-
devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
rt/lib/asan/asan_allocator.cc:522
    #3 0x41da34 in __asan::asan_free(void*, __sanitizer::BufferedStackTrace*, 
__asan::AllocType) /tmp/portage/sys-
devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
rt/lib/asan/asan_allocator.cc:725
    #4 0x4d271c in free /tmp/portage/sys-
devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
rt/lib/asan/asan_malloc_linux.cc:50
    #5 0x7f86ef11c995 in jp2_cdef_destroy /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_cod.c:230:3
    #6 0x7f86ef11e18e in jp2_box_destroy /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_cod.c:212:3
    #7 0x7f86ef11e18e in jp2_box_get /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_cod.c:319
    #8 0x7f86ef1219f6 in jp2_decode /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_dec.c:159:16
    #9 0x7f86ef0e4214 in jas_image_decode /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_image.c:444:16
    #10 0x50a3be in main /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/appl/imginfo.c:238:16
    #11 0x7f86ee1c478f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-
r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #12 0x419cd8 in _start (/usr/bin/imginfo+0x419cd8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/sys-
devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81 in 
atomic_compare_exchange_strong
==6697==ABORTING

Affected version:
2.0.10

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00124-jasper-nullptr-jp2_cdef_destroy

Timeline:
2017-01-18: bug discovered and reported upstream
2017-01-25: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/25/jasper-null-pointer-dereference-in-jp2_cdef_destroy-jp2_cod-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
