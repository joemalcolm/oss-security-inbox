X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3505" "Sunday" "23" "October" "2016" "09:58:37" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1686747.IoBOjVF1Mp@arcadia>" "87" "[oss-security] jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c) (incomplete fix for CVE-2016-8887)" nil nil nil "10" "2016102307:58:37" "[oss-security] jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c) (incomplete fix for CVE-2016-8887)" (number mark "U       ago@gentoo.o Oct 23   87/3505  " thread-indent "\"[oss-security] jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c) (incomplete fix for CVE-2016-8887)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19495 invoked by uid 550); 23 Oct 2016 07:58:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19476 invoked from network); 23 Oct 2016 07:58:10 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sun, 23 Oct 2016 09:58:37 +0200
Message-ID: <1686747.IoBOjVF1Mp@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c) (incomplete fix for CVE-2016-8887)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing on an updated version (1.900.10) revealed that the 
NULL pointer access identified as CVE-2016-8887 which upstream declared to be 
fixed in the version 1.900.10 is still here.

The complete ASan output:

# imginfo -f $FILE
ASAN:DEADLYSIGNAL
=================================================================
==20885==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x00000041defd bp 0xbebebebebebebebe sp 0x7ffc4e4a4550 T0)
    #0 0x41defc in atomic_compare_exchange_strong /var/tmp/portage/sys-
devel/llvm-3.8.1-r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81
    #1 0x41defc in 
__asan::Allocator::AtomicallySetQuarantineFlag(__asan::AsanChunk*, void*, 
__sanitizer::BufferedStackTrace*) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:465
    #2 0x41defc in __asan::Allocator::Deallocate(void*, unsigned long, 
__sanitizer::BufferedStackTrace*, __asan::AllocType) /var/tmp/portage/sys-
devel/llvm-3.8.1-r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/asan_allocator.cc:525
    #3 0x41defc in __asan::asan_free(void*, __sanitizer::BufferedStackTrace*, 
__asan::AllocType) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:709
    #4 0x4c008c in free /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:41
    #5 0x7faeeeb2d430 in jp2_colr_destroy /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jp2/jp2_cod.c:450:3
    #6 0x7faeeeb32b0e in jp2_box_destroy /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jp2/jp2_cod.c:211:3
    #7 0x7faeeeb32b0e in jp2_box_get /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jp2/jp2_cod.c:314
    #8 0x7faeeeb369a0 in jp2_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jp2/jp2_dec.c:156:16
    #9 0x7faeeeac6a29 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/base/jas_image.c:392:16
    #10 0x4f1686 in main /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/appl/imginfo.c:188:16
    #11 0x7faeedbd361f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #12 0x418e68 in _init (/usr/bin/imginfo+0x418e68)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81 in 
atomic_compare_exchange_strong
==20885==ABORTING

Affected version:
1.900.10

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00002-jasper-NULLptr-jp2_colr_destroy

Timeline:
2016-10-22: bug re-discovered
2016-10-22: bug re-reported to upstream
2016-10-23: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/10/23/jasper-null-pointer-dereference-in-jp2_colr_destroy-jp2_cod-c-incomplete-fix-for-cve-2016-8887


-- 
Agostino Sarubbo
Gentoo Linux Developer
