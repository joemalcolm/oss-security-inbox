X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6141" "Wednesday" "1" "February" "2017" "16:09:29" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2630972.8N57SaZZCj@blackgate>" "152" "[oss-security] podofo: infinite loop in PoDoFo::PdfPage::GetInheritedKeyFromObject (PdfPage.cpp)" nil nil nil "2" "2017020115:09:29" "[oss-security] podofo: infinite loop in PoDoFo::PdfPage::GetInheritedKeyFromObject (PdfPage.cpp)" (number mark "U       ago@gentoo.o Feb  1  152/6141  " thread-indent "\"[oss-security] podofo: infinite loop in PoDoFo::PdfPage::GetInheritedKeyFromObject (PdfPage.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30379 invoked by uid 550); 1 Feb 2017 15:09:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30327 invoked from network); 1 Feb 2017 15:09:45 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 01 Feb 2017 16:09:29 +0100
Message-ID: <2630972.8N57SaZZCj@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] podofo: infinite loop in PoDoFo::PdfPage::GetInheritedKeyFromObject (PdfPage.cpp)

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered an infinite loop. The upstream project denies me to=
=20
open a new ticket. So, I=E2=80=99m unable to communicate with them.

The complete ASan output:

# podofopdfinfo $FILE
=3D=3D8407=3D=3DERROR: AddressSanitizer: stack-overflow on address 0x7ffcff=
058fe0 (pc=20
0x000000425a5f bp 0x6400000003f0 sp 0x7ffcff058fe0 T0)
    #0 0x425a5e in GenericScopedLock /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:179
    #1 0x425a5e in __sanitizer::SizeClassAllocator64<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap,=20
__asan::AsanMapUnmapCallback>::PopulateFreeList(__sanitizer::AllocatorStats=
*,=20
__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64=
<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap, __asan::AsanMapUnmapCallba=
ck>=20
>*, unsigned long, __sanitizer::SizeClassAllocator64<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap,=20
__asan::AsanMapUnmapCallback>::RegionInfo*) /tmp/portage/sys-devel/llvm-3.9=
.0-
r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:540
    #2 0x426297 in __sanitizer::SizeClassAllocator64<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap,=20
__asan::AsanMapUnmapCallback>::AllocateBatch(__sanitizer::AllocatorStats*,=
=20
__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64=
<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap, __asan::AsanMapUnmapCallba=
ck>=20
>*, unsigned long) /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:359
    #3 0x4262f6 in=20
__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64=
<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap, __asan::AsanMapUnmapCallba=
ck>=20
>::Refill(__sanitizer::SizeClassAllocator64<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap,=20
__asan::AsanMapUnmapCallback>*, unsigned long) /tmp/portage/sys-
devel/llvm-3.9.0-r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:1003
    #4 0x4298ed in=20
__sanitizer::SizeClassAllocatorLocalCache<__sanitizer::SizeClassAllocator64=
<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap, __asan::AsanMapUnmapCallba=
ck>=20
>::Allocate(__sanitizer::SizeClassAllocator64<105553116266496ul,=20
4398046511104ul, 0ul, __sanitizer::SizeClassMap,=20
__asan::AsanMapUnmapCallback>*, unsigned long) /tmp/portage/sys-
devel/llvm-3.9.0-r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:952
    #5 0x4298ed in=20
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
>*, unsigned long, unsigned long, bool, bool) /tmp/portage/sys-
devel/llvm-3.9.0-r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_allocator.h:1324
    #6 0x4298ed in __asan::Allocator::Allocate(unsigned long, unsigned long=
,=20
__sanitizer::BufferedStackTrace*, __asan::AllocType, bool) /tmp/portage/sys-
devel/llvm-3.9.0-r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/asan_allocator.cc:368
    #7 0x50e8b8 in operator new(unsigned long) /tmp/portage/sys-
devel/llvm-3.9.0-r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/asan_new_delete.cc:78
    #8 0x7f2e77512621 in PoDoFo::PdfVariant::PdfVariant(PoDoFo::PdfDictiona=
ry=20
const&) /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfVariant.cpp:151:20
    #9 0x7f2e77495f6d in PoDoFo::PdfObject::PdfObject(PoDoFo::PdfReference=
=20
const&, char const*) /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfObject.cpp:62:7
    #10 0x7f2e7751dcf8 in=20
PoDoFo::PdfVecObjects::GetObject(PoDoFo::PdfReference const&) const=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfVecObjects.cpp:151:15
    #11 0x7f2e7749afe1 in PoDoFo::PdfObject::GetIndirectKey(PoDoFo::PdfName=
=20
const&) const /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfObject.cpp:237:30
    #12 0x7f2e77741533 in PoDoFo::PdfPage::GetInheritedKeyFromObject(char=20
const*, PoDoFo::PdfObject const*) const /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/doc/PdfPage.cpp:230:26
    #13 0x7f2e777415a4 in PoDoFo::PdfPage::GetInheritedKeyFromObject(char=20
const*, PoDoFo::PdfObject const*) const /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/doc/PdfPage.cpp:232:20
    [.....]
    #254 0x7f2e777415a4 in PoDoFo::PdfPage::GetInheritedKeyFromObject(char=
=20
const*, PoDoFo::PdfObject const*) const /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/doc/PdfPage.cpp:232:20

SUMMARY: AddressSanitizer: stack-overflow /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:179 in GenericScopedLock
=3D=3D8407=3D=3DABORTING

Affected version:
0.9.4

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00145-podofo-infiniteloop-PdfPa=
ge

Timeline:
2017-01-05: bug discovered
2017-02-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/01/podofo-infinite-loop-in-podofopdfpa=
gegetinheritedkeyfromobject-pdfpage-cpp

--=20
Agostino Sarubbo
Gentoo Linux Developer
