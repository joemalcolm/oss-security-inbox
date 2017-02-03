X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6579" "Friday" "3" "February" "2017" "10:11:16" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1611643.gXHh0u0goj@blackgate>" "164" "[oss-security] podofo: heap-based buffer overflow in PoDoFo::PdfTokenizer::GetNextToken (PdfTokenizer.cpp)" nil nil nil "2" "2017020309:11:16" "[oss-security] podofo: heap-based buffer overflow in PoDoFo::PdfTokenizer::GetNextToken (PdfTokenizer.cpp)" (number mark "U       ago@gentoo.o Feb  3  164/6579  " thread-indent "\"[oss-security] podofo: heap-based buffer overflow in PoDoFo::PdfTokenizer::GetNextToken (PdfTokenizer.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21941 invoked by uid 550); 3 Feb 2017 09:11:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21833 invoked from network); 3 Feb 2017 09:11:33 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Fri, 03 Feb 2017 10:11:16 +0100
Message-ID: <1611643.gXHh0u0goj@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] podofo: heap-based buffer overflow in PoDoFo::PdfTokenizer::GetNextToken (PdfTokenizer.cpp)

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered an heap overflow. The upstream project denies me to=
=20
open a new ticket. So, I=E2=80=99m unable to communicate with them.
This will probably forwarded the the -users mailing list.

The complete ASan output:

# podofopdfinfo $FILE
=3D=3D13498=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address=20
0x62100001dd00 at pc 0x7fdb98e8ab81 bp 0x7ffcef268950 sp 0x7ffcef268948
WRITE of size 1 at 0x62100001dd00 thread T0
    #0 0x7fdb98e8ab80 in PoDoFo::PdfTokenizer::GetNextToken(char const*&,=20
PoDoFo::EPdfTokenType*) /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfTokenizer.cpp:319:35
    #1 0x7fdb98e8bb56 in PoDoFo::PdfTokenizer::GetNextNumber()=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfTokenizer.cpp:356:27
    #2 0x7fdb98e57903 in PoDoFo::PdfParserObject::ReadObjectNumber()=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfParserObject.cpp:105:30
    #3 0x7fdb98e58d00 in=20
PoDoFo::PdfParserObject::ParseFile(PoDoFo::PdfEncrypt*, bool)=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfParserObject.cpp:134:9
    #4 0x7fdb98e38c91 in PoDoFo::PdfParser::ReadTrailer() /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfParser.cpp:603:56
    #5 0x7fdb98e33127 in PoDoFo::PdfParser::ReadDocumentStructure()=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfParser.cpp:283:9
    #6 0x7fdb98e30e0f in=20
PoDoFo::PdfParser::ParseFile(PoDoFo::PdfRefCountedInputDevice const&, bool)=
=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfParser.cpp:220:9
    #7 0x7fdb98e2f1d4 in PoDoFo::PdfParser::ParseFile(char const*, bool)=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfParser.cpp:164:11
    #8 0x7fdb9908c3f3 in PoDoFo::PdfMemDocument::Load(char const*)=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/doc/PdfMemDocument.cpp:186:16
    #9 0x50e8cb in count_pages(char const*, bool const&) /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocountpages/countpages.cpp:4=
5:14
    #10 0x50ecd6 in main /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocountpages/countpages.cpp:8=
6:24
    #11 0x7fdb97a6861f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #12 0x41b5a8 in _start (/usr/bin/podofocountpages+0x41b5a8)

0x62100001dd00 is located 0 bytes to the right of 4096-byte region=20
[0x62100001cd00,0x62100001dd00)
allocated by thread T0 here:
    #0 0x4d4565 in calloc /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:72
    #1 0x7fdb98e17989 in PoDoFo::podofo_calloc(unsigned long, unsigned long=
)=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfMemoryManagement.cpp:139:9
    #2 0x7fdb98e621f8 in PoDoFo::PdfRefCountedBuffer::ReallyResize(unsigned=
=20
long) /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfRefCountedBuffer.cpp:166:59
    #3 0x7fdb98e86044 in PoDoFo::PdfRefCountedBuffer::Resize(unsigned long)=
=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfRefCountedBuffer.h:307:9
    #4 0x7fdb98e86044 in=20
PoDoFo::PdfRefCountedBuffer::PdfRefCountedBuffer(unsigned long)=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfRefCountedBuffer.h:227
    #5 0x7fdb98e86044 in PoDoFo::PdfTokenizer::PdfTokenizer()=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfTokenizer.cpp:186
    #6 0x7fdb98e2debe in PoDoFo::PdfParser::PdfParser(PoDoFo::PdfVecObjects=
*)=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfParser.cpp:76:7
    #7 0x7fdb9908c3a5 in PoDoFo::PdfMemDocument::Load(char const*)=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/doc/PdfMemDocument.cpp:185:21
    #8 0x50e8cb in count_pages(char const*, bool const&) /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocountpages/countpages.cpp:4=
5:14
    #9 0x50ecd6 in main /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocountpages/countpages.cpp:8=
6:24
    #10 0x7fdb97a6861f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289

SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfTokenizer.cpp:319:35 in=20
PoDoFo::PdfTokenizer::GetNextToken(char const*&, PoDoFo::EPdfTokenType*)
Shadow bytes around the buggy address:
  0x0c427fffbb50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c427fffbb60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c427fffbb70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c427fffbb80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c427fffbb90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=3D>0x0c427fffbba0:[fa]fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fffbbb0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fffbbc0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fffbbd0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fffbbe0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fffbbf0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07=20
  Heap left redzone:       fa
  Heap right redzone:      fb
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack partial redzone:   f4
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
=3D=3D13498=3D=3DABORTING

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
https://github.com/asarubbo/poc/blob/master/00146-podofo-heapoverflow-PdfTo=
kenizer

Timeline:
2017-02-02: bug discovered
2017-02-03: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/03/podofo-heap-based-buffer-overflow-i=
n-podofopdftokenizergetnexttoken-pdftokenizer-cpp

--=20
Agostino Sarubbo
Gentoo Linux Developer
