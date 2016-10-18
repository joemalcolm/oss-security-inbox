X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6807" "Tuesday" "18" "October" "2016" "17:17:37" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2620117.JbBQOqU5X0@blackgate>" "150" "[oss-security] libwmf: memory allocation failure in wmf_malloc (api.c)" nil nil nil "10" "2016101815:17:37" "[oss-security] libwmf: memory allocation failure in wmf_malloc (api.c)" (number mark "U       ago@gentoo.o Oct 18  150/6807  " thread-indent "\"[oss-security] libwmf: memory allocation failure in wmf_malloc (api.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3092 invoked by uid 550); 18 Oct 2016 15:17:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2026 invoked from network); 18 Oct 2016 15:17:56 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Tue, 18 Oct 2016 17:17:37 +0200
Message-ID: <2620117.JbBQOqU5X0@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.21-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libwmf: memory allocation failure in wmf_malloc (api.c)

Description:
libwmf is a library for reading vector images in Micros=C3=B8ft=E2=80=99s n=
ative Wind=C3=B8ws=20
Metafile Format (WMF) and for either (a) displaying them in, e.g., an X=20
window; or (b) converting them to more standard/open file formats such as,=
=20
e.g., the W3C=E2=80=99s XML-based Scaleable Vector Graphic (SVG) format.

A fuzzing through imagemagick revealed a memory allocation failure. It was=
=20
first reported to imagemagick developers(to double-check) which stated that=
=20
the issue is in libwmf.
Since the libwmf project is dead the issue has not been reported elsewhere.

The complete ASan output:

# identify $FILE
=3D=3D25497=3D=3DERROR: AddressSanitizer failed to allocate 0xfe769000 (426=
9182976)=20
bytes of LargeMmapAllocator (error code: 12)=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
=3D=3D25497=3D=3DProcess memory map follows:=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
[..cut here..]
=3D=3D25497=3D=3DEnd of process memory map.
=3D=3D25497=3D=3DAddressSanitizer CHECK failed: /var/tmp/portage/sys-devel/=
llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_common.cc:183 "((0 && "unable to mmap")) =
!=3D=20
(0)" (0x0, 0x0)
    #0 0x4c9f9d in AsanCheckFailed /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_rtl.cc:67
    #1 0x4d0ad3 in __sanitizer::CheckFailed(char const*, int, char const*,=
=20
unsigned long long, unsigned long long) /var/tmp/portage/sys-devel/llvm-3.8=
.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_common.cc:159
    #2 0x4d0cc1 in __sanitizer::ReportMmapFailureAndDie(unsigned long, char=
=20
const*, char const*, int, bool) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_common.cc:183
    #3 0x4d9cfa in __sanitizer::MmapOrDie(unsigned long, char const*, bool)=
=20
/var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_posix.cc:122
    #4 0x42208f in=20
__sanitizer::LargeMmapAllocator::Allocate(__sanitizer::AllocatorStats*,=20
unsigned long, unsigned long) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:1033
    #5 0x42208f in=20
__sanitizer::CombinedAllocator<__sanitizer::SizeClassAllocator64<1055531162=
66496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap,=20
__asan::AsanMapUnmapCallback>,=20
__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64=
<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap, __asan::AsanMapUnmapCallba=
ck>=20
>, __sanitizer::LargeMmapAllocator=20
>::Allocate(__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClas=
sAllocator64<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap, __asan::AsanMapUnmapCallba=
ck>=20
>*, unsigned long, unsigned long, bool, bool) /var/tmp/portage/sys-
devel/llvm-3.8.1-r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:1302
    #6 0x42208f in __asan::Allocator::Allocate(unsigned long, unsigned long=
,=20
__sanitizer::BufferedStackTrace*, __asan::AllocType, bool)=20
/var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:368
    #7 0x42208f in __asan::asan_malloc(unsigned long,=20
__sanitizer::BufferedStackTrace*) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:718
    #8 0x4c0661 in malloc /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:53
    #9 0x7f7173b4d337 in wmf_malloc /tmp/portage/media-libs/libwmf-0.2.8.4-
r6/work/libwmf-0.2.8.4/src/api.c:482
    #10 0x7f7173b5d2f8 in wmf_scan /tmp/portage/media-libs/libwmf-0.2.8.4-
r6/work/libwmf-0.2.8.4/src/player.c:143
    #11 0x7f7173d6dcf7 in ReadWMFImage /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/coders/wmf.c:2675:13
    #12 0x7f717fde7b12 in ReadImage /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/MagickCore/constitute.c:49=
6:13
    #13 0x7f718057f406 in ReadStream /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/MagickCore/stream.c:1012:9
    #14 0x7f717fde65ca in PingImage /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/MagickCore/constitute.c:22=
6:9
    #15 0x7f717fde6e25 in PingImages /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/MagickCore/constitute.c:32=
6:10
    #16 0x7f717f66c4c3 in IdentifyImageCommand /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/MagickWand/identify.c:319:=
18
    #17 0x7f717f70226a in MagickCommandGenesis /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/MagickWand/mogrify.c:183:14
    #18 0x4f1fb5 in MagickMain /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/utilities/magick.c:145:10
    #19 0x4f1fb5 in main /tmp/portage/media-
gfx/imagemagick-7.0.3.0/work/ImageMagick-7.0.3-0/utilities/magick.c:176
    #20 0x7f717e5a661f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #21 0x419138 in _init (/usr/bin/magick+0x419138)

Affected version:
0.2.8.4

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2016-09-14: bug discovered
2016-10-18: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/10/18/libwmf-memory-allocation-failure-in=
-wmf_malloc-api-c
