X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4087" "Wednesday" "7" "June" "2017" "12:55:26" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<752768.651672767-sendEmail@localhost>" "66" "[oss-security] ytnef: memory allocation failure in TNEFFillMapi (ytnef.c)" "^Date:" nil nil "6" "2017060712:55:26" "[oss-security] ytnef: memory allocation failure in TNEFFillMapi (ytnef.c)" (number mark "        ago@gentoo.o Jun  7   66/4087  " thread-indent "\"[oss-security] ytnef: memory allocation failure in TNEFFillMapi (ytnef.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3508 invoked by uid 550); 7 Jun 2017 12:55:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3259 invoked from network); 7 Jun 2017 12:55:42 -0000
Message-ID: <752768.651672767-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-363338.398587988"
Date: Wed, 7 Jun 2017 12:55:26 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ytnef: memory allocation failure in TNEFFillMapi (ytnef.c)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-363338.398587988
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
ytnef is Yeraze’s TNEF Stream Reader – for winmail.dat files.

The complete ASan output of the issue:

# ytnefprint $FILE
==11998==AddressSanitizer CHECK failed: /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/sanitizer_common/sanitizer_common.cc:120 "((0 && "unable to mmap")) != (0)" (0x0, 0x0)
    #0 0x4d95cf in __asan::AsanCheckFailed(char const*, int, char const*, unsigned long long, unsigned long long) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/asan_rtl.cc:69
    #1 0x4f4335 in __sanitizer::CheckFailed(char const*, int, char const*, unsigned long long, unsigned long long) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/sanitizer_common/sanitizer_termination.cc:79
    #2 0x4e3962 in __sanitizer::ReportMmapFailureAndDie(unsigned long, char const*, char const*, int, bool) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/sanitizer_common/sanitizer_common.cc:120
    #3 0x4ed265 in __sanitizer::MmapOrDie(unsigned long, char const*, bool) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/sanitizer_common/sanitizer_posix.cc:132
    #4 0x424c6a in __sanitizer::LargeMmapAllocator::Allocate(__sanitizer::AllocatorStats*, unsigned long, unsigned long) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:41
    #5 0x424c6a in __sanitizer::CombinedAllocator<__sanitizer::SizeClassAllocator64, __sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64 >, __sanitizer::LargeMmapAllocator >::Allocate(__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64 >*, unsigned long, unsigned long, bool, bool) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/../sanitizer_common/sanitizer_allocator_combined.h:70
    #6 0x424c6a in __asan::Allocator::Allocate(unsigned long, unsigned long, __sanitizer::BufferedStackTrace*, __asan::AllocType, bool) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/asan_allocator.cc:407
    #7 0x41f1fb in __asan::Allocator::Calloc(unsigned long, unsigned long, __sanitizer::BufferedStackTrace*) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/asan_allocator.cc:605
    #8 0x41f1fb in __asan::asan_calloc(unsigned long, unsigned long, __sanitizer::BufferedStackTrace*) /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/asan_allocator.cc:786
    #9 0x4cf7ba in calloc /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/asan_malloc_linux.cc:75
    #10 0x7fe45c3e4e53 in TNEFFillMapi /tmp/ytnef-1.9.2/lib/ytnef.c:424:19
    #11 0x7fe45c3e1384 in TNEFMapiProperties /tmp/ytnef-1.9.2/lib/ytnef.c:396:7
    #12 0x7fe45c3f6b47 in TNEFParse /tmp/ytnef-1.9.2/lib/ytnef.c:1184:15
    #13 0x7fe45c3f59d3 in TNEFParseFile /tmp/ytnef-1.9.2/lib/ytnef.c:1042:10
    #14 0x508814 in main /tmp/ytnef-1.9.2/ytnefprint/main.c:80:9
    #15 0x7fe45b50b78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #16 0x419c38 in _start (/usr/bin/ytnefprint+0x419c38)

Affected version:
1.9.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-9473

Reproducer:
https://github.com/asarubbo/poc/blob/master/00246-ytnef-memallocfailures

Timeline:
2017-03-27: bug discovered and reported to upstream
2017-05-24: blog post about the issue
2017-06-07: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/05/24/ytnef-memory-allocation-failure-in-tneffillmapi-ytnef-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-363338.398587988--

