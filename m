X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3948" "Wednesday" "9" "November" "2016" "15:45:30" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<4429782.ZdpFBnFWqz@blackgate>" "91" "[oss-security] libdwarf: memory allocation failure in do_decompress_zlib (dwarf_init_finish.c)" nil nil nil "11" "2016110914:45:30" "[oss-security] libdwarf: memory allocation failure in do_decompress_zlib (dwarf_init_finish.c)" (number mark "U       ago@gentoo.o Nov  9   91/3948  " thread-indent "\"[oss-security] libdwarf: memory allocation failure in do_decompress_zlib (dwarf_init_finish.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20054 invoked by uid 550); 9 Nov 2016 14:46:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16016 invoked from network); 9 Nov 2016 14:45:46 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Wed, 09 Nov 2016 15:45:30 +0100
Message-ID: <4429782.ZdpFBnFWqz@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.26-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libdwarf: memory allocation failure in do_decompress_zlib (dwarf_init_finish.c)

If it is suitable for a CVE please assign one. Thanks.

Description:
libdwarf is a library to consume and produce DWARF debug information.

A fuzz on an updated version revealed a memory allocation failure.

The complete ASan output:

# dwarfdump $FILE
==27994==WARNING: AddressSanitizer failed to allocate 0x62696c2f7273752f bytes 
==27994==AddressSanitizer's allocator is terminating the process instead of 
returning 0 
==27994==If you don't like this behavior set allocator_may_return_null=1 
==27994==AddressSanitizer CHECK failed: /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_allocator.cc:147 "((0)) != (0)" (0x0, 0x0) 
   #0 0x4ca3ed in __asan::AsanCheckFailed(char const*, int, char const*, 
unsigned long long, unsigned long long) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_rtl.cc:67 
   #1 0x4d0f23 in __sanitizer::CheckFailed(char const*, int, char const*, 
unsigned long long, unsigned long long) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_common.cc:159 
   #2 0x4cec76 in __sanitizer::ReportAllocatorCannotReturnNull() 
/var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_allocator.cc:147 
   #3 0x42204c in 
__sanitizer::CombinedAllocator<__sanitizer::SizeClassAllocator64<105553116266496ul, 
4398046511104ul, 0ul, __sanitizer::SizeClassMap, 
__asan::AsanMapUnmapCallback>, 
__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64<105553116266496ul, 
4398046511104ul, 0ul, __sanitizer::SizeClassMap, __asan::AsanMapUnmapCallback> 
>, __sanitizer::LargeMmapAllocator >::ReturnNullOrDie() /var/tmp/portage/sys-
devel/llvm-3.8.1-r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:1317 
   #4 0x42204c in __asan::Allocator::Allocate(unsigned long, unsigned long, 
__sanitizer::BufferedStackTrace*, __asan::AllocType, bool) 
/var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:359 
   #5 0x42204c in __asan::asan_malloc(unsigned long, 
__sanitizer::BufferedStackTrace*) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:718 
   #6 0x4c0ab1 in malloc /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:53 
   #7 0x5b582e in do_decompress_zlib 
/tmp/dwarf-20161021/libdwarf/dwarf_init_finish.c:1085:12 
   #8 0x5b582e in _dwarf_load_section 
/tmp/dwarf-20161021/libdwarf/dwarf_init_finish.c:1159 
   #9 0x5bb479 in dwarf_srcfiles 
/tmp/dwarf-20161021/libdwarf/./dwarf_line.c:336:11 
   #10 0x5145cd in print_one_die_section 
/tmp/dwarf-20161021/dwarfdump/print_die.c:812:28 
   #11 0x512262 in print_infos 
/tmp/dwarf-20161021/dwarfdump/print_die.c:371:16 
   #12 0x4faafa in process_one_file 
/tmp/dwarf-20161021/dwarfdump/dwarfdump.c:1371:9 
   #13 0x4faafa in main /tmp/dwarf-20161021/dwarfdump/dwarfdump.c:654 
   #14 0x7f578f45a61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289 
   #15 0x419588 in _start (/usr/bin/dwarfdump-asan+0x419588)

Affected version:
20161021

Fixed version:
N/A

Commit fix:
https://sourceforge.net/p/libdwarf/code/ci/583f8834083b5ef834c497f5b47797e16101a9a6/

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00024-libdwarf-memalloc-do_decompress_zlib

Timeline:
2016-11-02: bug discovered and reported to upstream
2016-11-05: upstream released a patch
2016-11-07: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/07/libdwarf-memory-allocation-failure-in-do_decompress_zlib-dwarf_init_finish-c
