X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7755" "Tuesday" "18" "October" "2016" "17:02:24" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2195078.5G4Kuz0jSG@blackgate>" "150" "[oss-security] snzip: memory allocation failure in work_buffer_resize (snzip.c)" nil nil nil "10" "2016101815:02:24" "[oss-security] snzip: memory allocation failure in work_buffer_resize (snzip.c)" (number mark "U       ago@gentoo.o Oct 18  150/7755  " thread-indent "\"[oss-security] snzip: memory allocation failure in work_buffer_resize (snzip.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15512 invoked by uid 550); 18 Oct 2016 15:02:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15480 invoked from network); 18 Oct 2016 15:02:42 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Tue, 18 Oct 2016 17:02:24 +0200
Message-ID: <2195078.5G4Kuz0jSG@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.21-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] snzip: memory allocation failure in work_buffer_resize (snzip.c)

Description:
snzip is a compression/decompression tool based on snappy.

A fuzzing revealed a memory allocation failure.

The complete ASan output:

# snzip -d $FILE
=C8=A4=EF=BF=BD=3D=3D12351=3D=3DWARNING: AddressSanitizer failed to allocat=
e 0xffffffffc8617364=20
bytes
=3D=3D12351=3D=3DAddressSanitizer's allocator is terminating the process in=
stead of=20
returning 0
=3D=3D12351=3D=3DIf you don't like this behavior set allocator_may_return_n=
ull=3D1
=3D=3D12351=3D=3DAddressSanitizer CHECK failed: /var/tmp/portage/sys-devel/=
llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_allocator.cc:147 "((0)) !=3D (0)" (0x0, 0=
x0)
    #0 0x4ca7ed in AsanCheckFailed /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_rtl.cc:67=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20
    #1 0x4d1323 in __sanitizer::CheckFailed(char const*, int, char const*,=
=20
unsigned long long, unsigned long long) /var/tmp/portage/sys-devel/llvm-3.8=
.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_common.cc:159=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
    #2 0x4cf076 in __sanitizer::ReportAllocatorCannotReturnNull()=20
/var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_allocator.cc:147=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
    #3 0x424896 in=20
__sanitizer::CombinedAllocator<__sanitizer::SizeClassAllocator64<1055531162=
66496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap,=20
__asan::AsanMapUnmapCallback>,=20
__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64=
<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap, __asan::AsanMapUnmapCallba=
ck>=20
>, __sanitizer::LargeMmapAllocator >::ReturnNullOrDie() /var/tmp/portage/sy=
s-
devel/llvm-3.8.1-r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:1317=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
    #4 0x424896 in __asan::Allocator::Allocate(unsigned long, unsigned long=
,=20
__sanitizer::BufferedStackTrace*, __asan::AllocType, bool)=20
/var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:359=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
    #5 0x4205bd in __asan::Allocator::Reallocate(void*, unsigned long,=20
__sanitizer::BufferedStackTrace*) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:539=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20
    #6 0x4205bd in __asan::asan_realloc(void*, unsigned long,=20
__sanitizer::BufferedStackTrace*) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:732=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20
    #7 0x4c1231 in realloc /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:7=
9=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20
    #8 0x4fe72c in work_buffer_resize /tmp/portage/app-
arch/snzip-1.0.3/work/snzip-1.0.3/snzip.c:584:13=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20
    #9 0x51667b in snappy_java_uncompress /tmp/portage/app-
arch/snzip-1.0.3/work/snzip-1.0.3/snappy-java-format.c:193:7=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
    #10 0x4f68ea in main /tmp/portage/app-
arch/snzip-1.0.3/work/snzip-1.0.3/snzip.c:401:11=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
    #11 0x7fcbabbd261f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
    #12 0x419988 in _init (/usr/bin/snzip+0x419988)

Affected version:
1.0.3

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

Timeline:
2016-10-13: bug discovered
2016-10-13: bug reported to upstream
2016-10-08: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/10/18/snzip-memory-allocation-failure-in-=
work_buffer_resize-snzip-c

